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

// Mimics sub_807B4D0, not MU_SortObjLayers (0x8079BE0).
// Takes ySubPosition and xSubPosition into account as well.
void PAU_muSortObjLayers() {
  const u8 priority[4] = {10, 9, 8, 7};
  u8 array[4];
  int i, j, pu;
  int count = gMapAnimData.actorCount_maybe;

  switch (gMapAnimData.actorCount_maybe) {
  case 2:
    if (battleBuffer[0].battleHit.attributes & BATTLE_HIT_ATTR_TATTACK) {
      count += 2;
    } else if (PAU_showBothMapSprites) {
      for (i = 0; i < 4; ++i) {
        if (gMapAnimData.actor[i].unit) {
          pu = PAU_isPairedUp(gMapAnimData.actor[i].unit);
          if (pu == PAU_PAIRUP_OFFENSE || pu == PAU_PAIRUP_DEFENSE)
            count++;
        }
      }
    }
    break;

  case 1:
    if (PAU_showBothMapSprites) {
      for (i = 0; i < 4; ++i) {
        if (gMapAnimData.actor[i].unit) {
          pu = PAU_isPairedUp(gMapAnimData.actor[i].unit);
          if (pu == PAU_PAIRUP_OFFENSE || pu == PAU_PAIRUP_DEFENSE)
            count++;
        }
      }
    }
    break;

  } // switch (gMapAnimData.actorCount_maybe)

  // Init ref array
  for (i = 0; i < count; ++i)
    array[i] = i;

  // Sort ref array
  for (i = 0; i < count-1; ++i) {
    for (j = i+1; j < count; ++j) {
      int swap = FALSE;
      
      if (gMapAnimData.actor[array[i]].unit->yPos > gMapAnimData.actor[array[j]].unit->yPos)
        swap = TRUE;
      else if (gMapAnimData.actor[array[i]].unit->yPos < gMapAnimData.actor[array[j]].unit->yPos)
        ;
      else if (gMapAnimData.actor[array[i]].mu->ySubOffset > gMapAnimData.actor[array[j]].mu->ySubOffset)
        swap = TRUE;
      else if (gMapAnimData.actor[array[i]].mu->ySubOffset < gMapAnimData.actor[array[j]].mu->ySubOffset)
        ;
      else if (gMapAnimData.actor[array[i]].unit->xPos > gMapAnimData.actor[array[j]].unit->xPos)
        swap = TRUE;
      else if (gMapAnimData.actor[array[i]].unit->xPos < gMapAnimData.actor[array[j]].unit->xPos)
        ;
      else if (gMapAnimData.actor[array[i]].mu->xSubOffset > gMapAnimData.actor[array[j]].mu->xSubOffset)
        swap = TRUE;

      if (swap) {
        u8 tmp = array[i];
        array[i] = array[j];
        array[j] = tmp;
      }
    }
  }

  // Apply
  for (i = 0; i < count; ++i)
    gMapAnimData.actor[array[i]].mu->pAPHandle->objLayer = priority[i];
}

// Replaces the original at 0x8079A10.
// Takes paired-up xOffs and yOffs into account.
void PAU_MU_CritFlash_SpriteShakeLoop(Proc* proc) {
  u8 timer = *(u8*)((u32)proc+0x30);
  struct MUProc* pMUProc = *(struct MUProc**)((u32)proc+0x2C);
  timer++;
  *(u8*)((u32)proc+0x30) = timer;
  u8 pu = PAU_isPairedUp(pMUProc->pUnit);
  s16 baseX = 0, baseY = 0;
  
  if (PAU_showBothMapSprites && (pu == PAU_PAIRUP_OFFENSE || pu == PAU_PAIRUP_DEFENSE)) {
    baseX = PAU_mapFrontOffsX;
    baseY = PAU_mapFrontOffsY;
  }
  
  MU_SetDisplayOffset(pMUProc, ((timer & 1) ? baseX+2 : baseX-2), baseY);

  if (timer >= 12) {
    MU_SetDisplayOffset(pMUProc, baseX, baseY);
    BreakProcLoop(proc);
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
  PROC_YIELD,
  PROC_CALL_ROUTINE(PAU_swapMSPlay),
  PROC_LOOP_ROUTINE(PAU_swapMSLoop),
  PROC_CALL_ROUTINE(PAU_swapMSEnd),
  PROC_YIELD,
  PROC_CALL_ROUTINE(MapAnim_BeginSubjectFastAnim),
  PROC_GOTO(0),
  
  // Move camera back to actor.
  PROC_LABEL(1),
  PROC_SLEEP(16),
  PROC_CALL_ROUTINE(MapAnimProc_MoveCameraOntoSubject),
  PROC_YIELD,
  PROC_CALL_ROUTINE(PAU_swapMSEnd),
  PROC_YIELD,
  PROC_CALL_ROUTINE(MapAnim_BeginSubjectFastAnim),
  
  PROC_LABEL(0),
  PROC_YIELD,
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
  
  // Find front Unit's actorID and move camera onto unit.
  if (!(proc->state & 2)) {           // Dual Strike.
    proc->frontID = gMapAnimData.subjectActorId;
    MapAnimProc_MoveCameraOntoSubject((Proc*)proc);
  } else {
    proc->frontID = gMapAnimData.targetActorId;
    MapAnimProc_MoveCameraOntoTarget((Proc*)proc);
  }
  
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
  
  // Setup angle.
  proc->frontAngle = ArcTan2(PAU_mapFrontOffsX, PAU_mapFrontOffsY) >> 8;
  proc->backAngle = ArcTan2(PAU_mapBackOffsX, PAU_mapBackOffsY) >> 8;
}

// Play skill activation sound.
void PAU_swapMSPlay(struct PAU_swapMapSpriteProc* proc) {
  int x = (gMapAnimData.actor[proc->frontID].bu->unit.xPos << 4) - gGameState.cameraRealPos.x;
  if (proc->state & 1) {
    if (!(proc->state & 2))           // Dual Strike.
      PlaySpacialSoundMaybe(PAU_dualStrikeSkillActivationSound, x);
    else
      PlaySpacialSoundMaybe(PAU_dualGuardSkillActivationSound, x);
  } else if (PAU_swapBackActivationSound != -1)
    PlaySpacialSoundMaybe(PAU_swapBackActivationSound, x);
}

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
    gMapAnimData.actor[proc->backID].mu->ySubPosition -= 1;   // Ensures sorting works.
    PAU_muSortObjLayers();
    gMapAnimData.actor[proc->backID].mu->ySubPosition += 1;
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
    
    if ((proc->state & 3) == 3)             // Dual Guard and start.
      ProcGoto((Proc*)proc, 1);             // Move camera back to actor.
    
    BreakProcLoop((Proc*)proc);
  }
}

void PAU_swapMSEnd(struct PAU_swapMapSpriteProc* proc) {

  if (proc->state & 1) {
    // Wait a little before action.
    proc->sleepTime = 8;
    proc->onCycle = _ProcSleepCallback;
  } else {
    EndProc(proc->parent);
  }

}

const ProcInstruction PAU_mapGaugeProcInstr[] = {
  PROC_SET_NAME("PAU_MapGaugeProc"),
  PROC_YIELD,
  PROC_LABEL(0),
  PROC_CALL_ROUTINE(PAU_mapGaugeInit),
  PROC_BLOCK,
  PROC_END
};

void PAU_mapGaugeScrEntries(struct PAU_mapGaugeProc* proc, u16 mask) {
  u16 scrEntry = GetIconTileIndex(0x604);
  u16 xLeft, xRight;
  
  if (gMapAnimData.actorCount_maybe == 1) {
    xLeft = proc->infoWindowProc->x - 1;
    xRight = xLeft;
  } else {
    xLeft = proc->infoWindowProc->x - 10;
    xRight = proc->infoWindowProc->x + 5;
  }
  
  // Left
  if (proc->leftPairUpType) {
    for (int i = 0; i < PAU_gaugeSize; i++) {
      if (i >= proc->leftGaugeVal)
        gBg0MapBuffer[(proc->infoWindowProc->y << 5) + xLeft + i] = scrEntry + ((proc->leftPairUpType - 1) << 1) + 1;
      else
        gBg0MapBuffer[(proc->infoWindowProc->y << 5) + xLeft + i] = scrEntry + ((proc->leftPairUpType - 1) << 1);
    }
  }
  
  // Right
  if (proc->rightPairUpType) {
    for (int i = 0; i < PAU_gaugeSize; i++) {
      if (i >= proc->rightGaugeVal)
        gBg0MapBuffer[(proc->infoWindowProc->y << 5) + xRight + i] = (scrEntry | 0x400) + ((proc->rightPairUpType - 1) << 1) + 1;
      else
        gBg0MapBuffer[(proc->infoWindowProc->y << 5) + xRight + i] = (scrEntry | 0x400) + ((proc->rightPairUpType - 1) << 1);
    }
  }
  
  EnableBgSyncByMask(BG0_SYNC_BIT);
}

void PAU_mapGaugeInit(struct PAU_mapGaugeProc* proc) {
  proc->infoWindowProc = (struct MAInfoFrameProc*)proc->parent;
  PAU_mapGaugeScrEntries(proc, 0);
}