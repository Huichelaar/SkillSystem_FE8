#include "map.h"

// Draws mostly from RefreshUnitSprites, 0x80271A1.
// Offsets paired-up units when adding them to SMS array.
void PAU_mapAddSMS(Unit* unit, u8 pairupType) {
  struct SMSHandle* smsHandle;
  Unit* partner = GetUnit(unit->rescueOtherUnit);
  
  if (!UNIT_IS_VALID(partner))
    return;

  unit->pMapSpriteHandle = NULL;
  
  if (pairupType == PAU_PAIRUP_BACKUP) {
    if (partner->state & (US_HIDDEN | US_BIT9))
      return;
    if (gMapUnit[partner->yPos][partner->xPos] == 0)
      return;

    smsHandle = SMS_GetNewInfoStruct(unit->yPos * 16 + PAU_mapBackOffsY);

    smsHandle->yDisplay = unit->yPos * 16 + PAU_mapBackOffsY;
    smsHandle->xDisplay = unit->xPos * 16 + PAU_mapBackOffsX;

    smsHandle->oam2Base = SMS_RegisterUsage(GetUnitSMSId(unit)) + 0x80 + (GetUnitBattleMapSpritePaletteIndex(partner) & 0xf) * 0x1000;

    smsHandle->config = SMS_SIZE(GetUnitSMSId(unit));

    if (partner->state & 0x100)
      smsHandle->config += 3;
    if (partner->state & 0x1000000)
      smsHandle->config += 0x40;
  }
  else {    // Either PAU_PAIRUP_OFFENSE or PAU_PAIRUP_DEFENSE.
    if (unit->state & (US_HIDDEN | US_BIT9))
      return;
    if (gMapUnit[unit->yPos][unit->xPos] == 0)
      return;

    smsHandle = SMS_GetNewInfoStruct(unit->yPos * 16);

    smsHandle->yDisplay = unit->yPos * 16 + PAU_mapFrontOffsY;
    smsHandle->xDisplay = unit->xPos * 16 + PAU_mapFrontOffsX;

    smsHandle->oam2Base = SMS_RegisterUsage(GetUnitSMSId(unit)) + 0x80 + (GetUnitBattleMapSpritePaletteIndex(unit) & 0xf) * 0x1000;

    smsHandle->config = SMS_SIZE(GetUnitSMSId(unit));

    if (unit->state & 0x100)
      smsHandle->config += 3;
    if (unit->state & 0x1000000)
      smsHandle->config += 0x40;
  }
  unit->pMapSpriteHandle = smsHandle;
}

// Specialized version of MU_Create (0x8078464).
// This one will create an extra MU for the backup
// unit if main unit is paired-up.
struct MUProc* PAU_MU_CreateTwo(Unit* mainUnit) {
  struct MUProc* muProc1 = MU_Create(mainUnit);
  struct MUProc* muProc2;
  
  Unit* backupUnit = GetUnit(mainUnit->rescueOtherUnit);
  
  if (PAU_showBothMapSprites && PAU_isPairedUp(mainUnit) && PAU_isPairedUp(backupUnit) == PAU_PAIRUP_BACKUP) {
    muProc2 = MU_CreateInternal(backupUnit->xPos, backupUnit->yPos, backupUnit->pClassData->number, -1, GetUnitMapSpritePaletteIndex(backupUnit));
    
    muProc2->pUnit = backupUnit;
    muProc2->boolAttractCamera = FALSE;
    
    muProc1->xSubOffset = PAU_mapFrontOffsX<<4;
    muProc1->ySubOffset = PAU_mapFrontOffsY<<4;
    muProc2->xSubOffset = PAU_mapBackOffsX<<4;
    muProc2->ySubOffset = PAU_mapBackOffsY<<4;
  }
  return muProc1;
}

// Specialized version of ForEachProc (0x8002F98).
// This one accepts an extra arg in r2 which it will
// provide the function in arg r1 as its arg r1.
void PAU_ForEachProcExt(ProcInstruction* script, void func(Proc*, u8*), u8* commands) {
  int i;
  struct Proc* proc = gProcStatePool;

  for (i = 0; i < 64; i++) {
    if (proc->codeStart == script)
      func(proc, commands);
    proc = (Proc*)((u32)proc + 0x6C);
  }
}

// Offsets map sprites during pair-up and drop actions.
const ProcInstruction PAU_offsetMapSpriteProcInstr[] = {
  PROC_SET_NAME("PAU_OffsetMapSpriteProc"),
  PROC_YIELD,
  PROC_CALL_ROUTINE(PAU_puOffsetMSInit),
  PROC_LOOP_ROUTINE(PAU_puOffsetMSLoop),
  PROC_GOTO(0),
  
  PROC_LABEL(1),
  PROC_CALL_ROUTINE(PAU_dropOffsetMSInit),
  PROC_LOOP_ROUTINE(PAU_dropOffsetMSLoop),
  
  PROC_LABEL(0),
  PROC_END
};

void PAU_puOffsetMSInit(struct PAU_offsetMapSpriteProc* proc) {
  proc->timer = 0;
  proc->limit = 4;
  
  proc->muProc1 = (struct MUProc*)proc->parent;
  proc->unit1 = GetUnit(gActionData.targetIndex);
  proc->smsHandle1 = proc->unit1->pMapSpriteHandle;
  proc->unit2 = GetUnit(gActionData.subjectIndex);
  proc->smsHandle2 = proc->unit2->pMapSpriteHandle;
}

void PAU_puOffsetMSLoop(struct PAU_offsetMapSpriteProc* proc) {
  proc->timer++;
  if (proc->timer >= proc->limit) {
    PAU_mapAddSMS(proc->unit2, PAU_PAIRUP_BACKUP);
    BreakProcLoop((Proc*)proc);
  }
  
  proc->smsHandle1->xDisplay += (PAU_mapFrontOffsX / proc->limit);
  proc->smsHandle1->yDisplay += (PAU_mapFrontOffsY / proc->limit);
  proc->muProc1->xSubOffset += (PAU_mapBackOffsX / proc->limit)<<4;
  proc->muProc1->ySubOffset += (PAU_mapBackOffsY / proc->limit)<<4;
}

void PAU_dropOffsetMSInit(struct PAU_offsetMapSpriteProc* proc) {
  proc->timer = 0;
  proc->limit = 4;
  
  // Need three MUs, mainUnit's, backupUnit's and KOIDO's MU.
  if (!(gMoveUnitExtraDataArray[0].muIndex) ||
      !(gMoveUnitExtraDataArray[1].muIndex) ||
      !(gMoveUnitExtraDataArray[2].muIndex)) {
    EndProc((Proc*)proc);
    return;
  }
  
  proc->muProc1 = gMoveUnitExtraDataArray[0].pMUProc;
  EndProc((Proc*)gMoveUnitExtraDataArray[1].pMUProc);
  proc->muProc2 = gMoveUnitExtraDataArray[2].pMUProc;
  
  proc->muProc2->xSubOffset = PAU_mapBackOffsX<<4;
  proc->muProc2->ySubOffset = PAU_mapBackOffsY<<4;
}

void PAU_dropOffsetMSLoop(struct PAU_offsetMapSpriteProc* proc) {
  proc->timer++;
  if (proc->timer >= proc->limit)
    BreakProcLoop((Proc*)proc);
  
  proc->muProc1->xSubOffset -= (PAU_mapFrontOffsX / proc->limit)<<4;
  proc->muProc1->ySubOffset -= (PAU_mapFrontOffsY / proc->limit)<<4;
  proc->muProc2->xSubOffset -= (PAU_mapBackOffsX / proc->limit)<<4;
  proc->muProc2->ySubOffset -= (PAU_mapBackOffsY / proc->limit)<<4;
}

// Swap map sprites during battle.
const ProcInstruction PAU_swapMapSpriteProcInstr[] = {
  PROC_SET_NAME("PAU_SwapMapSpriteProc"),
  PROC_YIELD,
  PROC_CALL_ROUTINE(PAU_swapMSInit),
  PROC_LOOP_ROUTINE(PAU_swapMSLoop),
  PROC_END
  
};

// Replaces call to 0x813F9 in gMapAnimDefaultRound and the END_PROC command.
u8 PAU_startSwapMSProc(u8 start, Proc* proc) {
  struct PAU_swapMapSpriteProc* proc2;
  
  if (PAU_showBothMapSprites) {
    // Check if dual strike or dual guard triggered.
    u8 proccedSkillID = ((struct NewBattleRound*)(gMapAnimData.pCurrentRound)-1)->skillID;
    if (proccedSkillID == (((int)&DualStrikeID) & 0xFF)) {
      proc2 = (struct PAU_swapMapSpriteProc*)ProcStartBlocking(PAU_swapMapSpriteProcInstr, proc);
      proc2->state = start;
      return 0;               // Yield.
    } else if (proccedSkillID == (((int)&DualGuardID) & 0xFF)) {
      proc2 = (struct PAU_swapMapSpriteProc*)ProcStartBlocking(PAU_swapMapSpriteProcInstr, proc);
      proc2->state = start;
      proc2->state |= 2;      // Indicates it's Dual Guard.
      return 0;               // Yield.
    }
  }
  
  if (start) {
    MapAnim_BeginSubjectFastAnim();
    return 1;                 // Don't yield.
  }
  EndProc(proc);
  return 0;                   // Yield.
}

void PAU_swapMSInit(struct PAU_swapMapSpriteProc* proc) {
  proc->frontID = 0;
  proc->backID = 0;
  proc->timer = 0;
  proc->limit = 8;
  
  // Find front Unit's actorID.
  if (!(proc->state & 2))           // Dual Strike.
    proc->frontID = gMapAnimData.subjectActorId;
  else
    proc->frontID = gMapAnimData.targetActorId;
  
  // Find back Unit's actorID.
  if (proc->frontID < 2) {
    proc->backID = proc->frontID + 2;
    if (!(gMapAnimData.actor[proc->backID].bu == gMapAnimData.actor[proc->frontID].bu))
      proc->backID = proc->frontID + 1;
  } else {
    proc->backID = proc->frontID - 2;
    if (!(gMapAnimData.actor[proc->backID].bu == gMapAnimData.actor[proc->frontID].bu))
      proc->backID = proc->frontID - 1;
  }
  
  // Play skill activation sound.
  int x = (gMapAnimData.actor[proc->frontID].bu->unit.xPos << 4) - gGameState.cameraRealPos.x;
  if (proc->state & 1) {
    if (!(proc->state & 2))           // Dual Strike.
      PlaySpacialSoundMaybe(PAU_dualStrikeSkillActivationSound, x);
    else
      PlaySpacialSoundMaybe(PAU_dualGuardSkillActivationSound, x);
  } else if (PAU_swapBackActivationSound != -1)
    PlaySpacialSoundMaybe(PAU_swapBackActivationSound, x);
  
  // Setup angle.
  proc->frontAngle = ArcTan2(PAU_mapFrontOffsX, PAU_mapFrontOffsY) >> 8;
  proc->backAngle = ArcTan2(PAU_mapBackOffsX, PAU_mapBackOffsY) >> 8;
};

void PAU_swapMSLoop(struct PAU_swapMapSpriteProc* proc) {
  proc->timer++;
  
  // Move MUs in circular motion.
  int angle = (proc->timer << 4) & 0xFF;
  int frontX = gSinLookup[(angle + proc->frontAngle) & 0xFF] >> 6;
  int frontY = gCosLookup[(angle + proc->frontAngle) & 0xFF] >> 6;
  int backX = gSinLookup[(angle + proc->backAngle) & 0xFF] >> 6;
  int backY = gCosLookup[(angle + proc->backAngle) & 0xFF] >> 6;
  gMapAnimData.actor[proc->frontID].mu->xSubOffset = frontX;
  gMapAnimData.actor[proc->frontID].mu->ySubOffset = frontY;
  gMapAnimData.actor[proc->backID].mu->xSubOffset = backX;
  gMapAnimData.actor[proc->backID].mu->ySubOffset = backY;
  
  // Halfway through change which sprite gets drawn over which.
  if (proc->timer == (proc->limit>>1)) {
    gMapAnimData.actor[proc->backID].mu->ySubPosition += 1;   // Ensures sorting works.
    MU_SortObjLayers();
    gMapAnimData.actor[proc->backID].mu->ySubPosition -= 1;
  }
  
  if (proc->timer >= proc->limit) {
    
    // Ensure final positions are correct.
    gMapAnimData.actor[proc->frontID].mu->xSubOffset = PAU_mapBackOffsX<<4;
    gMapAnimData.actor[proc->frontID].mu->ySubOffset = PAU_mapBackOffsY<<4;
    gMapAnimData.actor[proc->backID].mu->xSubOffset = PAU_mapFrontOffsX<<4;
    gMapAnimData.actor[proc->backID].mu->ySubOffset = PAU_mapFrontOffsY<<4;
    
    // Swap the ID of the actor/target.
    if (!(proc->state & 2))
      gMapAnimData.subjectActorId = proc->backID;
    else
      gMapAnimData.targetActorId = proc->backID;
    BreakProcLoop((Proc*)proc);
    
    if (proc->state & 1) {
      // Wait a little before action.
      proc->sleepTime = 8;
      proc->onCycle = _ProcSleepCallback;
    } else {
      EndProc(proc->parent);
    }
  }
};