#include "banim.h"

// TODO, implement.
u16 PAU_findPairUpBAnimID(Unit* unit) {
  return 0;
}

// Scales another AIS during Kakudai proc.
void PAU_scalePairUpPartner(void* oamDataScript, void* oamDataBuffer, AIStruct* newAIS, u16 aisSubjectID, struct KakudaiProc* proc, u16 scale) {
  s16 x, y;
  
  // Do nothing if no script.
  if (!oamDataScript)
    return;
  
  // Apply scaling to OAMData script.
  AffineSetOAMData(oamDataScript, oamDataBuffer, scale, scale, 0);
  
  // Get x and y values of sprite.
  if (proc->expand && (!aisSubjectID)) {
    x = GetValueFromEasingFunction(0, proc->lEndX, proc->lStartX, proc->timer, proc->limit) - PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, 88, proc->lStartY, proc->timer, proc->limit) + PAU_bAnimDistY;
  }
  else if ((!proc->expand) && (!aisSubjectID)) {
    x = GetValueFromEasingFunction(0, proc->lStartX, proc->lEndX, proc->timer, proc->limit) - PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, proc->lStartY, 88, proc->timer, proc->limit) + PAU_bAnimDistY;
  }
  else if (proc->expand) {
    x = GetValueFromEasingFunction(0, proc->rEndX, proc->rStartX, proc->timer, proc->limit) + PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, 88, proc->rStartY, proc->timer, proc->limit) + PAU_bAnimDistY;
  }
  else {
    x = GetValueFromEasingFunction(0, proc->rStartX, proc->rEndX, proc->timer, proc->limit) + PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, proc->rStartY, 88, proc->timer, proc->limit) + PAU_bAnimDistY;
  }
  
  // Prepare and display AIS.
  newAIS->pCurrentObjData = oamDataBuffer;
  newAIS->xPosition = x;
  newAIS->yPosition = y;
  newAIS->state2 = 0x400;
  newAIS->oam0base = 0;
  newAIS->oam1base = 0;
  newAIS->oam2base = 0x8680 | (aisSubjectID << 8) | (aisSubjectID << 13);
  DisplayAIS(newAIS);
}

// Start pair-up partner AISes during battle init.
void PAU_initPairUpPartner(AIStruct* frontAIS, AIStruct* backAIS, Unit* unit, u8 aisSubjectID) {
  if (!PAU_isPairedUp(unit))
    return;
  
  u16 bAnimID = PAU_findPairUpBAnimID(GetUnit(unit->rescueOtherUnit));
  const struct BattleAnim* bAnim = battleAnims[bAnimID];
  u32 flags = ((u32)bAnim->abbr[8]) |
              (((u32)bAnim->abbr[9])<<8) |
              (((u32)bAnim->abbr[10])<<16) |
              (((u32)bAnim->abbr[11])<<24);
  
  // Don't create AISes if either frameData or OAMData is compressed.
  if ((!(flags & (1 << BA2_AB_UNCOMPFRAMEDATA))) || (!(flags & (1 << BA2_AB_UNCOMPOAMDATA))))
    return;
  
  // Create Front AIS.
  struct BanimRoundScripts banimRoundScripts = PAU_backupBAnimRoundScripts[frontAIS->currentRoundType];
  const u32* script = &gAISFrames_DummyNoFrames;
  u32 frameOffs = 0;
  if (banimRoundScripts.frame_front != 255) {
    frameOffs = bAnim->modes[banimRoundScripts.frame_front];
    script = (u32*)((u32)(bAnim->script) + frameOffs);
  }
  AIStruct* newFrontAIS = CreateAIS(script, banimRoundScripts.priority_front);
  
  // Change some params.
  s16 xOffs = PAU_bAnimDistX;
  if (!aisSubjectID)
    xOffs = -xOffs;
  newFrontAIS->xPosition = frontAIS->xPosition + xOffs;             // X.
  newFrontAIS->yPosition = frontAIS->yPosition + PAU_bAnimDistY;    // Y.
  newFrontAIS->oam2base = frontAIS->oam2base + 0x1080;              // OAM2.
  newFrontAIS->state2 |= (frontAIS->state2 & 0x700);
  newFrontAIS->nextRoundId = 0;
  newFrontAIS->currentRoundType = frontAIS->currentRoundType;
  newFrontAIS->pSheetBuffer = frontAIS->pSheetBuffer + 0x1000;
  if (aisSubjectID)
    newFrontAIS->pStartObjData = bAnim->oam_r;
  else
    newFrontAIS->pStartObjData = bAnim->oam_l;
  
  // Create Back AIS.
  banimRoundScripts = PAU_backupBAnimRoundScripts[backAIS->currentRoundType];
  script = &gAISFrames_DummyNoFrames;
  frameOffs = 0;
  if (banimRoundScripts.frame_back != 255) {
    frameOffs = bAnim->modes[banimRoundScripts.frame_back];
    script = (u32*)((u32)(bAnim->script) + frameOffs);
  }
  AIStruct* newBackAIS = CreateAIS(script, banimRoundScripts.priority_back);
  
  // Change some params.
  newBackAIS->xPosition = backAIS->xPosition + xOffs;              // X.
  newBackAIS->yPosition = backAIS->yPosition + PAU_bAnimDistY;     // Y.
  newBackAIS->oam2base = backAIS->oam2base + 0x1080;               // OAM2.
  newBackAIS->state2 |= (backAIS->state2 & 0x700);
  newBackAIS->nextRoundId = 0;
  newBackAIS->currentRoundType = backAIS->currentRoundType;
  newBackAIS->pSheetBuffer = backAIS->pSheetBuffer + 0x1000;
  if (aisSubjectID)
    newBackAIS->pStartObjData = bAnim->oam_r;
  else
    newBackAIS->pStartObjData = bAnim->oam_l;
  
  // Start custom AISProc.
  struct PAU_aisProc* proc = (struct PAU_aisProc*)ProcFind(PAU_aisProcInstr);
  if (!proc) {
    proc = (struct PAU_aisProc*)ProcStart(PAU_aisProcInstr, ROOT_PROC_5);
    proc->leftFrontAIS = *(AIStruct**)0x2000000;
    proc->leftBackAIS = *(AIStruct**)0x2000004;
    proc->rightFrontAIS = *(AIStruct**)0x2000008;
    proc->rightBackAIS = *(AIStruct**)0x200000C;
    proc->puLeftFrontAIS = 0;
    proc->puLeftBackAIS = 0;
    proc->puRightFrontAIS = 0;
    proc->puRightBackAIS = 0;
    proc->timer = 0;
    proc->limit = 0;
    proc->state = 0;
  }
  if (aisSubjectID) {
    proc->puRightFrontAIS = newFrontAIS;
    proc->puRightBackAIS = newBackAIS;
  }
  else {
    proc->puLeftFrontAIS = newFrontAIS;
    proc->puLeftBackAIS = newBackAIS;
  }
}

void PAU_dualStrikeAnim(AIStruct* ais) {
  struct PAU_aisProc* proc = (struct PAU_aisProc*)ProcFind(PAU_aisProcInstr);
  if (!proc) {    // This proc should exist when we reach this.
    StartEfxSureShotAnime(ais);
    return;
  }  
  int aisSubjectID = GetAISSubjectId(ais);
  
  proc->state |= (1 << (aisSubjectID << 1));  // Set SWAPPING bit.
  proc->timer = 0;
  proc->limit = 60;
  
  // Camera, or just BG1 position.
  if (gSomethingRelatedToAnimAndDistance) {
    if (!aisSubjectID)
      SetBgPosition(1, 24, 0);
    else
      SetBgPosition(1, 232, 0);
  }
  // TODO movebattlecameraonto
  
  // Halt all AISes.
  proc->leftFrontAIS->state3 |= 0x20;
  proc->leftFrontAIS->state |= 0x8;
  proc->leftBackAIS->state3 |= 0x20;
  proc->leftBackAIS->state |= 0x8;
  proc->rightFrontAIS->state3 |= 0x20;
  proc->rightFrontAIS->state |= 0x8;
  proc->rightBackAIS->state3 |= 0x20;
  proc->rightBackAIS->state |= 0x8;
  
  /*
  if (proc->puLeftFrontAIS) {
    proc->puLeftFrontAIS->state3 |= 0x20;
    proc->puLeftFrontAIS->state |= 0x8;
    proc->puLeftBackAIS->state3 |= 0x20;
    proc->puLeftBackAIS->state |= 0x8;
  }
  if (proc->puRightFrontAIS) {
    proc->puRightFrontAIS->state3 |= 0x20;
    proc->puRightFrontAIS->state |= 0x8;
    proc->puRightBackAIS->state3 |= 0x20;
    proc->puRightBackAIS->state |= 0x8;
  }
  */
  
  PlaySoundAt(PAU_dualStrikeSkillActivationSound, 0x100, ais->xPosition, 1);
};

const ProcInstruction PAU_aisProcInstr[] = {
  PROC_SET_NAME("PAU_AISProc"),
  PROC_SLEEP(1),
  PROC_CALL_ROUTINE(PAU_haltBAnims),
  
  PROC_LABEL(0),
  PROC_LOOP_ROUTINE(PAU_adjustBAnimLocs),
  
  PROC_END    // TODO, delete proc when anim ends.
};

// Pauses paired-up units' bAnims.
void PAU_haltBAnims(struct PAU_aisProc* proc) {
  if (proc->puLeftFrontAIS) {
    proc->puLeftFrontAIS->state |= 0x8;
  }
  if (proc->puRightFrontAIS) {
    proc->puRightFrontAIS->state |= 0x8;
  }
};

// Adjusts x and y of backup bAnim.
void PAU_adjustBAnimLocs(struct PAU_aisProc* proc) {
  
  if (proc->puLeftFrontAIS) {
    if (proc->state & SWAPPINGLEFT)
      PAU_swapBAnimLocs(proc, 0);
    else if (proc->state & SWAPPEDLEFT) {
      proc->leftFrontAIS->xPosition = proc->puLeftFrontAIS->xPosition - PAU_bAnimDistX;
      proc->leftFrontAIS->yPosition = proc->puLeftFrontAIS->yPosition + PAU_bAnimDistY;
    }
    else {
      proc->puLeftFrontAIS->xPosition = proc->leftFrontAIS->xPosition - PAU_bAnimDistX;
      proc->puLeftFrontAIS->yPosition = proc->leftFrontAIS->yPosition + PAU_bAnimDistY;
    }
  }
  
  if (proc->puRightFrontAIS) {
    if (proc->state & SWAPPINGRIGHT)
      PAU_swapBAnimLocs(proc, 1);
    else if (proc->state & SWAPPEDRIGHT) {
      proc->rightFrontAIS->xPosition = proc->puRightFrontAIS->xPosition + PAU_bAnimDistX;
      proc->rightFrontAIS->yPosition = proc->puRightFrontAIS->yPosition + PAU_bAnimDistY;
    }
    else {
      proc->puRightFrontAIS->xPosition = proc->rightFrontAIS->xPosition + PAU_bAnimDistX;
      proc->puRightFrontAIS->yPosition = proc->rightFrontAIS->yPosition + PAU_bAnimDistY;
    }
  }
};

// Switches x and y of main bAnim and backup bAnim
// during skill activation. Performs circular motion.
void PAU_swapBAnimLocs(struct PAU_aisProc* proc, u8 right) {
  proc->timer++;
  
  // Find the correct AISes to swap.
  AIStruct* mainFrontAIS = 0;
  AIStruct* mainBackAIS = 0;
  AIStruct* backupFrontAIS = 0;
  AIStruct* backupBackAIS = 0;
  Unit* unit = 0;
  if (!right) {
    if (proc->state & SWAPPEDLEFT) {
      mainFrontAIS = proc->puLeftFrontAIS;
      mainBackAIS = proc->puLeftBackAIS;
      backupFrontAIS = proc->leftFrontAIS;
      backupBackAIS = proc->leftBackAIS;
      unit = (Unit*)gpUnitLeft_BattleStruct;
    }
    else {
      mainFrontAIS = proc->leftFrontAIS;
      mainBackAIS = proc->leftBackAIS;
      backupFrontAIS = proc->puLeftFrontAIS;
      backupBackAIS = proc->puLeftBackAIS;
      unit = GetUnit(((Unit*)gpUnitLeft_BattleStruct)->rescueOtherUnit);
    }
  }
  else {
    if (proc->state & SWAPPEDRIGHT) {
      mainFrontAIS = proc->puRightFrontAIS;
      mainBackAIS = proc->puRightBackAIS;
      backupFrontAIS = proc->rightFrontAIS;
      backupBackAIS = proc->rightBackAIS;
      unit = (Unit*)gpUnitRight_BattleStruct;
    }
    else {
      mainFrontAIS = proc->rightFrontAIS;
      mainBackAIS = proc->rightBackAIS;
      backupFrontAIS = proc->puRightFrontAIS;
      backupBackAIS = proc->puRightBackAIS;
      unit = GetUnit(((Unit*)gpUnitRight_BattleStruct)->rescueOtherUnit);
    }
  }
  
  // Swap depths at halfway point.
  u16 temp;
  s16 temp2;
  if (proc->timer == (proc->limit>>1)) {
    temp = mainFrontAIS->drawLayerPriority;
    mainFrontAIS->drawLayerPriority = backupFrontAIS->drawLayerPriority;
    backupFrontAIS->drawLayerPriority = temp;
    
    temp2 = mainFrontAIS->xPosition;
    mainFrontAIS->xPosition = backupFrontAIS->xPosition;
    backupFrontAIS->xPosition = temp2;
    temp2 = mainFrontAIS->yPosition;
    mainFrontAIS->yPosition = backupFrontAIS->yPosition;
    backupFrontAIS->yPosition = temp2;
    
    temp = mainBackAIS->drawLayerPriority;
    mainBackAIS->drawLayerPriority = backupBackAIS->drawLayerPriority;
    backupBackAIS->drawLayerPriority = temp;
    
    temp2 = mainBackAIS->xPosition;
    mainBackAIS->xPosition = backupBackAIS->xPosition;
    backupBackAIS->xPosition = temp2;
    temp2 = mainBackAIS->yPosition;
    mainBackAIS->yPosition = backupBackAIS->yPosition;
    backupBackAIS->yPosition = temp2;
    
    SortAISs();
  }
  
  // Change some relevant RAM locations on end.
  if (proc->timer >= proc->limit) {
    // Swap out AISes in 0x2000000
    *(AIStruct**)(0x2000000 + (right<<3)) = backupFrontAIS;
    *(AIStruct**)(0x2000004 + (right<<3)) = backupBackAIS;
    
    u16 bAnimID = PAU_findPairUpBAnimID(unit);
    gBattleAnimAnimationIndex[right] = bAnimID;
    gpBattleAnimFrameStartLookup[right] = battleAnims[bAnimID]->modes;      // SectionData.
    
    // state3 +0x40 might mean don't activate skill?
    // state +0x8 indicates pausing AIS.
    (*(AIStruct**)0x2000000)->state3 |= 0x40;
    (*(AIStruct**)0x2000000)->state &= ~8;
    (*(AIStruct**)0x2000004)->state3 |= 0x40;
    (*(AIStruct**)0x2000004)->state &= ~8;
    (*(AIStruct**)0x2000008)->state3 |= 0x40;
    (*(AIStruct**)0x2000008)->state &= ~8;
    (*(AIStruct**)0x200000C)->state3 |= 0x40;
    (*(AIStruct**)0x200000C)->state &= ~8;
    
    SwitchAISFrameDataFromBARoundType(backupFrontAIS, mainFrontAIS->currentRoundType);
    SwitchAISFrameDataFromBARoundType(backupBackAIS, mainBackAIS->currentRoundType);
    backupFrontAIS->nextRoundId = mainFrontAIS->nextRoundId;
    backupBackAIS->nextRoundId = mainBackAIS->nextRoundId;
    
    proc->timer = 0;
    if (!right) {
      proc->state &= ~SWAPPINGLEFT;
      proc->state ^= SWAPPEDLEFT;
    }
    else {
      proc->state &= ~SWAPPINGRIGHT;
      proc->state ^= SWAPPEDRIGHT;
    }
  }
};




