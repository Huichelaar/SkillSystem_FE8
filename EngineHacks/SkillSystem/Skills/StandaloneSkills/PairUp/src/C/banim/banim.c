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
    y = GetValueFromEasingFunction(0, 88, proc->lStartY, proc->timer, proc->limit) - PAU_bAnimDistY;
  }
  else if ((!proc->expand) && (!aisSubjectID)) {
    x = GetValueFromEasingFunction(0, proc->lStartX, proc->lEndX, proc->timer, proc->limit) - PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, proc->lStartY, 88, proc->timer, proc->limit) - PAU_bAnimDistY;
  }
  else if (proc->expand) {
    x = GetValueFromEasingFunction(0, proc->rEndX, proc->rStartX, proc->timer, proc->limit) + PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, 88, proc->rStartY, proc->timer, proc->limit) - PAU_bAnimDistY;
  }
  else {
    x = GetValueFromEasingFunction(0, proc->rStartX, proc->rEndX, proc->timer, proc->limit) + PAU_bAnimDistX;
    y = GetValueFromEasingFunction(0, proc->rStartY, 88, proc->timer, proc->limit) - PAU_bAnimDistY;
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
  newFrontAIS->yPosition = frontAIS->yPosition - PAU_bAnimDistY;    // Y.
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
  newBackAIS->yPosition = backAIS->yPosition - PAU_bAnimDistY;     // Y.
  newBackAIS->oam2base = backAIS->oam2base + 0x1080;               // OAM2.
  newBackAIS->state2 |= (backAIS->state2 & 0x700);
  newBackAIS->nextRoundId = 0;
  newBackAIS->currentRoundType = backAIS->currentRoundType;
  newBackAIS->pSheetBuffer = backAIS->pSheetBuffer + 0x1000;
  if (aisSubjectID)
    newBackAIS->pStartObjData = bAnim->oam_r;
  else
    newBackAIS->pStartObjData = bAnim->oam_l;
  
  SortAISs();
  
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

const ProcInstruction PAU_aisProcInstr[] = {
  PROC_SET_NAME("PAU_AISProc"),
  PROC_SLEEP(1),
  PROC_CALL_ROUTINE(PAU_haltBAnims),
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
    proc->puLeftFrontAIS->xPosition = proc->leftFrontAIS->xPosition - PAU_bAnimDistX;
    proc->puLeftFrontAIS->yPosition = proc->leftFrontAIS->yPosition - PAU_bAnimDistY;
  }
  if (proc->puRightFrontAIS) {
    proc->puRightFrontAIS->xPosition = proc->rightFrontAIS->xPosition + PAU_bAnimDistX;
    proc->puRightFrontAIS->yPosition = proc->rightFrontAIS->yPosition - PAU_bAnimDistY;
  }
};