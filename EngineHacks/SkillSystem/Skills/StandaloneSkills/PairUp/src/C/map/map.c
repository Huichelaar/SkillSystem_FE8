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

    smsHandle = SMS_GetNewInfoStruct(unit->yPos * 16 - PAU_mapOffs);

    smsHandle->yDisplay = unit->yPos * 16 - PAU_mapOffs;
    smsHandle->xDisplay = unit->xPos * 16 - PAU_mapOffs;

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

    smsHandle->yDisplay = unit->yPos * 16 + PAU_mapOffs;
    smsHandle->xDisplay = unit->xPos * 16 + PAU_mapOffs;

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
    
    muProc1->xSubOffset = PAU_mapOffs<<4;
    muProc1->ySubOffset = PAU_mapOffs<<4;
    muProc2->xSubOffset = -PAU_mapOffs<<4;
    muProc2->ySubOffset = -PAU_mapOffs<<4;
    
    PAU_muSortObjLayers();
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

// Mimics MU_SortObjLayers (0x8079BE0).
// Takes ySubPosition and xSubPosition into account as well.
void PAU_muSortObjLayers() {
  struct MUProc* procs[MU_MAX_COUNT];

  // Clear proc list
  CpuFill32(0, procs, MU_MAX_COUNT * sizeof(struct MUProc*));
  int count = 0;

  // Building proc list
  for (int i = 0; i < MU_MAX_COUNT; i++) {
    struct MUProc* proc = MU_GetByIndex(i);
    if (proc) {
      procs[count] = proc;
      count++;
    }
  }

  // Sorting proc list
  for (int i = 0; i < (count - 1); i++) {
    for (int j = (i + 1); j < count; j++) {
      int swap = FALSE;
      
      if (procs[i]->ySubPosition > procs[j]->ySubPosition)
        swap = TRUE;
      else if (procs[i]->ySubPosition < procs[j]->ySubPosition)
        ;
      else if (procs[i]->ySubOffset > procs[j]->ySubOffset)
        swap = TRUE;
      else if (procs[i]->ySubOffset < procs[j]->ySubOffset)
        ;
      else if (procs[i]->xSubPosition > procs[j]->xSubPosition)
        swap = TRUE;
      else if (procs[i]->xSubPosition < procs[j]->xSubPosition)
        ;
      else if (procs[i]->xSubOffset > procs[j]->xSubOffset)
        swap = TRUE;

      if (swap) {
        struct MUProc* tmp = procs[i];
        procs[i] = procs[j];
        procs[j] = tmp;
      }
    }
  }

  // Set obj layer based on order
  for (int i = 0; i < count; ++i)
    procs[i]->pAPHandle->objLayer = 10 - i;
}

// Mimics sub_807B4D0, not MU_SortObjLayers (0x8079BE0).
// Takes ySubPosition and xSubPosition into account as well.
void PAU_battleMuSortObjLayers() {
  const u8 priority[MU_MAX_COUNT] = {10, 9, 8, 7};
  u8 array[MU_MAX_COUNT];
  int i, j, pu;
  int count = gMapAnimData.actorCount_maybe;

  switch (gMapAnimData.actorCount_maybe) {
  case 2:
    if (battleBuffer[0].battleHit.attributes & BATTLE_HIT_ATTR_TATTACK) {
      count += 2;
    } else if (PAU_showBothMapSprites) {
      for (i = 0; i < MU_MAX_COUNT; ++i) {
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
      for (i = 0; i < MU_MAX_COUNT; ++i) {
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
  s16 baseX, baseY, offs = 0;
  
  baseX = pMUProc->xSubOffset>>4;
  baseY = pMUProc->ySubOffset>>4;
  offs = (timer & 1) ? +4 : -4;
  offs = (timer == 1) ? 2 : offs;
  
  MU_SetDisplayOffset(pMUProc, baseX + offs, baseY);

  if (timer >= 12) {
    MU_SetDisplayOffset(pMUProc, baseX + (offs >> 1), baseY);
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
  
  proc->smsHandle1->xDisplay += (PAU_mapOffs / proc->limit);
  proc->smsHandle1->yDisplay += (PAU_mapOffs / proc->limit);
  proc->muProc1->xSubOffset += (-PAU_mapOffs / proc->limit)<<4;
  proc->muProc1->ySubOffset += (-PAU_mapOffs / proc->limit)<<4;
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
  
  proc->muProc2->xSubOffset = -PAU_mapOffs<<4;
  proc->muProc2->ySubOffset = -PAU_mapOffs<<4;
}

void PAU_dropOffsetMSLoop(struct PAU_offsetMapSpriteProc* proc) {
  proc->timer++;
  if (proc->timer >= proc->limit)
    BreakProcLoop((Proc*)proc);
  
  proc->muProc1->xSubOffset -= (PAU_mapOffs / proc->limit)<<4;
  proc->muProc1->ySubOffset -= (PAU_mapOffs / proc->limit)<<4;
  proc->muProc2->xSubOffset -= (-PAU_mapOffs / proc->limit)<<4;
  proc->muProc2->ySubOffset -= (-PAU_mapOffs / proc->limit)<<4;
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
  struct PAU_swapMapSpriteProc* proc2 = NULL;
  int id1 = gMapAnimData.subjectActorId;
  int id2 = gMapAnimData.targetActorId;
  int id3 = 0;
  int mask = PAU_MAPSWAP_NODUAL;
  int x, y;
  
  if (PAU_showBothMapSprites && (!(battleBuffer[0].battleHit.attributes & BATTLE_HIT_ATTR_TATTACK))) {
    // Swap mainUnit and backupUnit's MUs if necessary.
    if (PAU_isPairedUp(gMapAnimData.actor[id1].unit)) {
      x = gMapAnimData.actor[id1].mu->xSubOffset>>4;
      y = gMapAnimData.actor[id1].mu->ySubOffset>>4;
      for (id3 = 0; id3 < MU_MAX_COUNT; id3++) {
        if ((gMapAnimData.actor[id3].unit != gMapAnimData.actor[id1].unit) &&
            (gMapAnimData.actor[id3].bu == gMapAnimData.actor[id1].bu))
          break;
      }
      
      // Determine mainUnit's offsets based on opponent's position.
      if (gMapAnimData.actor[id2].unit->xPos > gMapAnimData.actor[id1].unit->xPos)
        x = PAU_mapOffs;
      else if (gMapAnimData.actor[id2].unit->xPos < gMapAnimData.actor[id1].unit->xPos)
        x = -PAU_mapOffs;
      if (gMapAnimData.actor[id2].unit->yPos > gMapAnimData.actor[id1].unit->yPos)
        y = PAU_mapOffs;
      else if (gMapAnimData.actor[id2].unit->yPos < gMapAnimData.actor[id1].unit->yPos)
        y = -PAU_mapOffs;
      
      // Set offsets to default if end of final round.
      if (!(start) && (gMapAnimData.pCurrentRound->info & BATTLE_HIT_INFO_END)) {
        x = PAU_mapOffs;
        y = PAU_mapOffs;
      }
      
      // Invert offsets if unit procced Dual Strike this round.
      u8 proccedSkillID = ((struct NewBattleRound*)(gMapAnimData.pCurrentRound)-1)->skillID;
      if (proccedSkillID == (((int)&DualStrikeID) & 0xFF)) {
        x = -x;
        y = -y;
        mask &= ~PAU_MAPSWAP_NODUAL;
      }
      
      // If offsets are different from current ones, swap.
      if ((x != gMapAnimData.actor[id1].mu->xSubOffset>>4) ||
          (y != gMapAnimData.actor[id1].mu->ySubOffset>>4)) {
        proc2 = (struct PAU_swapMapSpriteProc*)ProcStartBlocking(PAU_swapMapSpriteProcInstr, proc);
        proc2->state = start | mask;
        proc2->frontID = id1;
        proc2->backID = id3;
        proc2->xStart = gMapAnimData.actor[id1].mu->xSubOffset>>4;
        proc2->yStart = gMapAnimData.actor[id1].mu->ySubOffset>>4;
        proc2->xEnd = x;
        proc2->yEnd = y;
      }
    }
    // Repeat, but for target unit.
    if (PAU_isPairedUp(gMapAnimData.actor[id2].unit)) {
      x = gMapAnimData.actor[id2].mu->xSubOffset>>4;
      y = gMapAnimData.actor[id2].mu->ySubOffset>>4;
      for (id3 = 0; id3 < MU_MAX_COUNT; id3++) {
        if ((gMapAnimData.actor[id3].unit != gMapAnimData.actor[id2].unit) &&
            (gMapAnimData.actor[id3].bu == gMapAnimData.actor[id2].bu))
          break;
      }
      
      // Determine mainUnit's offsets based on opponent's position.
      if (gMapAnimData.actor[id1].unit->xPos > gMapAnimData.actor[id2].unit->xPos)
        x = PAU_mapOffs;
      else if (gMapAnimData.actor[id1].unit->xPos < gMapAnimData.actor[id2].unit->xPos)
        x = -PAU_mapOffs;
      if (gMapAnimData.actor[id1].unit->yPos > gMapAnimData.actor[id2].unit->yPos)
        y = PAU_mapOffs;
      else if (gMapAnimData.actor[id1].unit->yPos < gMapAnimData.actor[id2].unit->yPos)
        y = -PAU_mapOffs;
      
      // Set offsets to default if end of final round.
      if (!(start) && (gMapAnimData.pCurrentRound->info & BATTLE_HIT_INFO_END)) {
        x = PAU_mapOffs;
        y = PAU_mapOffs;
      }
      
      // Invert offsets if unit procced Dual Guard this round.
      u8 proccedSkillID = ((struct NewBattleRound*)(gMapAnimData.pCurrentRound)-1)->skillID;
      if (proccedSkillID == (((int)&DualGuardID) & 0xFF)) {
        x = -x;
        y = -y;
        mask &= ~PAU_MAPSWAP_NODUAL;
        mask |= PAU_MAPSWAP_DUALGUARD;
      }
      
      // If offsets are different from current ones, swap.
      if ((x != gMapAnimData.actor[id2].mu->xSubOffset>>4) ||
          (y != gMapAnimData.actor[id2].mu->ySubOffset>>4)) {
        proc2 = (struct PAU_swapMapSpriteProc*)ProcStartBlocking(PAU_swapMapSpriteProcInstr, proc);
        proc2->state = start | mask | PAU_MAPSWAP_TARGET;
        proc2->frontID = id2;
        proc2->backID = id3;
        proc2->xStart = gMapAnimData.actor[id2].mu->xSubOffset>>4;
        proc2->yStart = gMapAnimData.actor[id2].mu->ySubOffset>>4;
        proc2->xEnd = x;
        proc2->yEnd = y;
      }
    }
    if (proc2)
      return 0;               // Yield.
  }
  
  if (start) {
    MapAnim_BeginSubjectFastAnim();
    return 1;                 // Don't yield.
  }
  EndProc(proc);
  return 0;                   // Yield.
}

void PAU_swapMSInit(struct PAU_swapMapSpriteProc* proc) {
  proc->timer = 0;
  proc->limit = 8;
  
  // Move camera, unless multiple swaps.
  if (!(proc->previous) && (!(proc->next))) {
    if (proc->state & PAU_MAPSWAP_TARGET)
      MapAnimProc_MoveCameraOntoTarget((Proc*)proc);
    else
      MapAnimProc_MoveCameraOntoSubject((Proc*)proc);
  }
  
  // Setup angle.
  proc->frontAngle = ArcTan2(proc->xStart, -proc->yStart) >> 8;
  proc->backAngle = ArcTan2(-proc->xStart, proc->yStart) >> 8;
}

// Play skill activation sound.
void PAU_swapMSPlay(struct PAU_swapMapSpriteProc* proc) {
  if (proc->state & PAU_MAPSWAP_NODUAL)
    return;
  
  int x = (gMapAnimData.actor[proc->frontID].bu->unit.xPos << 4) - gGameState.cameraRealPos.x;
  if (proc->state & PAU_MAPSWAP_START) {
    if (!(proc->state & PAU_MAPSWAP_DUALGUARD))
      PlaySpacialSoundMaybe(PAU_dualStrikeSkillActivationSound, x);
    else
      PlaySpacialSoundMaybe(PAU_dualGuardSkillActivationSound, x);
  } else if (PAU_swapBackActivationSound != -1)
    PlaySpacialSoundMaybe(PAU_swapBackActivationSound, x);
}

void PAU_swapMSLoop(struct PAU_swapMapSpriteProc* proc) {
  int angle, frontX, frontY, backX, backY;
  proc->timer++;
  
  if (proc->xStart == proc->xEnd) {
    angle = (proc->timer << 3) / (PAU_mapOffs << 1);
    frontY = proc->yStart < 0 ? proc->yStart + angle : proc->yStart - angle;
    gMapAnimData.actor[proc->frontID].mu->ySubOffset = frontY<<4;
    gMapAnimData.actor[proc->backID].mu->ySubOffset = -frontY<<4;
  } else if (proc->yStart == proc->yEnd) {
    angle = (proc->timer << 3) / (PAU_mapOffs << 1);
    frontX = proc->xStart < 0 ? proc->xStart + angle : proc->xStart - angle;
    gMapAnimData.actor[proc->frontID].mu->xSubOffset = frontX<<4;
    gMapAnimData.actor[proc->backID].mu->xSubOffset = -frontX<<4;
  } else {  // Move MUs in circular motion.
    angle = (proc->timer << 4) & 0xFF;
    frontX = gCosLookup[(angle + proc->frontAngle) & 0xFF] >> 6;
    frontY = -gSinLookup[(angle + proc->frontAngle) & 0xFF] >> 6;
    backX = gCosLookup[(angle + proc->backAngle) & 0xFF] >> 6;
    backY = -gSinLookup[(angle + proc->backAngle) & 0xFF] >> 6;
    gMapAnimData.actor[proc->frontID].mu->xSubOffset = frontX;
    gMapAnimData.actor[proc->frontID].mu->ySubOffset = frontY;
    gMapAnimData.actor[proc->backID].mu->xSubOffset = backX;
    gMapAnimData.actor[proc->backID].mu->ySubOffset = backY;
  }
  
  // Halfway through change which sprite gets drawn over which.
  if (proc->timer-1 == (proc->limit>>1))
    PAU_battleMuSortObjLayers();
  
  if (proc->timer >= proc->limit) {
    
    // Ensure final positions are correct.
    gMapAnimData.actor[proc->frontID].mu->xSubOffset = proc->xEnd<<4;
    gMapAnimData.actor[proc->frontID].mu->ySubOffset = proc->yEnd<<4;
    gMapAnimData.actor[proc->backID].mu->xSubOffset = -proc->xEnd<<4;
    gMapAnimData.actor[proc->backID].mu->ySubOffset = -proc->yEnd<<4;
    PAU_battleMuSortObjLayers();
    
    // Swap the ID of the actor/target if Dual Strike or Dual Guard.
    if (!(proc->state & PAU_MAPSWAP_NODUAL)) {
      if (!(proc->state & PAU_MAPSWAP_DUALGUARD))
        gMapAnimData.subjectActorId = proc->backID;
      else
        gMapAnimData.targetActorId = proc->backID;
    
      if ((proc->state & PAU_MAPSWAP_DUALGUARD) && (proc->state & PAU_MAPSWAP_START))
        ProcGoto((Proc*)proc, 1);             // Move camera back to actor.
    }
    
    BreakProcLoop((Proc*)proc);
  }
}

void PAU_swapMSEnd(struct PAU_swapMapSpriteProc* proc) {

  if (proc->state & PAU_MAPSWAP_START) {
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