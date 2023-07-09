#include "banim.h"

// Returns animID and corresponding spellAnimID (1 = Thrown Axe, 2 = Arrow, etc.) in spellAnimID.
u16 PAU_findPairUpBAnim(Unit* unit, s16* spellAnimID) {
  u8 item = GetUnitEquippedWeapon(unit) & 0xFF;
  u8 weaponType = GetItemType(item);
  const u16 *anim_instr = unit->pClassData->pBattleAnimDef;
  u16 specification, tempBAnimID = 0;
  
  for (int i = 0; ; i++) {
    if (!anim_instr[i*2])
      break;
    specification = anim_instr[i*2] >> 8;
    if (item) {
       if (specification == 0) {
         if (item == (anim_instr[i*2] & 0xFF)) {
           *spellAnimID = GetSpellAssocStructPtr(item)->type;
           if (*spellAnimID == NOSFERATUSPELL)
             *spellAnimID = PAU_nosferatuReplacementSpellID;
           if (*spellAnimID == -1)
             *spellAnimID = PAU_defaultMagicAnimsTable[weaponType];
           return anim_instr[i*2 + 1]-1;
         }
       }
       else if (specification == 1 && !tempBAnimID) {
         if (weaponType == (anim_instr[i*2] & 0xFF)) {
           *spellAnimID = GetSpellAssocStructPtr(item)->type;
           if (*spellAnimID == NOSFERATUSPELL)
             *spellAnimID = PAU_nosferatuReplacementSpellID;
           if (*spellAnimID == -1)
             *spellAnimID = PAU_defaultMagicAnimsTable[weaponType];
           tempBAnimID = anim_instr[i*2 + 1];
         }
       }
    }
    else {
       if (specification == 0) {
         *spellAnimID = GetSpellAssocStructPtr(anim_instr[i*2] & 0xFF)->type;
         if (*spellAnimID == NOSFERATUSPELL)
           *spellAnimID = PAU_nosferatuReplacementSpellID;
         if (*spellAnimID == -1)
           *spellAnimID = PAU_defaultMagicAnimsTable[GetItemType((u8)anim_instr[i*2] & 0xFF)];
         return anim_instr[i*2 + 1]-1;
       }
       else if (specification == 1) {
         if (!((anim_instr[i*2] & 0xFF) == 4) && !((anim_instr[i*2] & 0xFF) == 9)) {      // Ignore staff and unarmed animations.
           *spellAnimID = PAU_defaultMagicAnimsTable[anim_instr[i*2] & 0xFF];
           return anim_instr[i*2 + 1]-1;
         }
       }
    }
  }
  
  return tempBAnimID-1;
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
  
  s16 temp;
  u16 bAnimID = PAU_findPairUpBAnim(GetUnit(unit->rescueOtherUnit), &temp);
  const struct BattleAnim bAnim = battleAnims[bAnimID];
  u32 flags = ((u32)bAnim.abbr[8]) |
              (((u32)bAnim.abbr[9])<<8) |
              (((u32)bAnim.abbr[10])<<16) |
              (((u32)bAnim.abbr[11])<<24);
  
  // Don't create AISes if either frameData or OAMData is compressed.
  if ((!(flags & (1 << BA2_AB_UNCOMPFRAMEDATA))) || (!(flags & (1 << BA2_AB_UNCOMPOAMDATA))))
    return;
  
  // Create Front AIS.
  struct BanimRoundScripts banimRoundScripts = PAU_backupBAnimRoundScripts[frontAIS->currentRoundType];
  const u32* script = &gAISFrames_DummyNoFrames;
  u32 frameOffs = 0;
  if (banimRoundScripts.frame_front != 255) {
    frameOffs = bAnim.modes[banimRoundScripts.frame_front];
    script = (u32*)((u32)(bAnim.script) + frameOffs);
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
    newFrontAIS->pStartObjData = bAnim.oam_r;
  else
    newFrontAIS->pStartObjData = bAnim.oam_l;
  
  // Create Back AIS.
  banimRoundScripts = PAU_backupBAnimRoundScripts[backAIS->currentRoundType];
  script = &gAISFrames_DummyNoFrames;
  frameOffs = 0;
  if (banimRoundScripts.frame_back != 255) {
    frameOffs = bAnim.modes[banimRoundScripts.frame_back];
    script = (u32*)((u32)(bAnim.script) + frameOffs);
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
    newBackAIS->pStartObjData = bAnim.oam_r;
  else
    newBackAIS->pStartObjData = bAnim.oam_l;
  
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
    
    proc->leftOriginX = 0;
    proc->leftOriginY = 0;
    proc->rightOriginX = 0;
    proc->rightOriginY = 0;
    proc->leftMainAngle = 0;
    proc->leftBackAngle = 0;
    proc->rightMainAngle = 0;
    proc->rightBackAngle = 0;
    
    proc->timer = 0;
    proc->limit = 0;
    proc->state = 0;
  }
  
  s16 a, absA, b, absB, c;
  if (aisSubjectID) {
    proc->puRightFrontAIS = newFrontAIS;
    proc->puRightBackAIS = newBackAIS;
    
    proc->rightOriginX = newFrontAIS->xPosition + ((frontAIS->xPosition - newFrontAIS->xPosition)>>1) + bAnimCameraOffs;
    proc->rightOriginY = newFrontAIS->yPosition + ((frontAIS->yPosition - newFrontAIS->yPosition)>>1);
    
    a = frontAIS->xPosition - newFrontAIS->xPosition;
    b = frontAIS->yPosition - newFrontAIS->yPosition;
    absA = a < 0 ? -a : a;
    absB = b < 0 ? -b : b;
    proc->rightBackAngle = ArcTan2(absA>>1, absB>>1)>>8;
    proc->rightMainAngle = proc->rightBackAngle + 0x80;
  }
  else {
    proc->puLeftFrontAIS = newFrontAIS;
    proc->puLeftBackAIS = newBackAIS;
    
    proc->leftOriginX = newFrontAIS->xPosition + ((frontAIS->xPosition - newFrontAIS->xPosition)>>1) + bAnimCameraOffs;
    proc->leftOriginY = newFrontAIS->yPosition + ((frontAIS->yPosition - newFrontAIS->yPosition)>>1);
    
    a = frontAIS->xPosition - newFrontAIS->xPosition;
    b = frontAIS->yPosition - newFrontAIS->yPosition;
    absA = a < 0 ? -a : a;
    absB = b < 0 ? -b : b;
    proc->leftBackAngle = ArcTan2(absA>>1, absB>>1)>>8;
    proc->leftMainAngle = proc->leftBackAngle + 0x80;
  }
  c = Sqrt(a * a + b * b);        // Pythagoras.
  proc->radius = c>>1;
  proc->slope = 0x2000 / c;
}

void PAU_dualStrikeAnim(AIStruct* ais) {
  struct PAU_aisProc* proc = (struct PAU_aisProc*)ProcFind(PAU_aisProcInstr);
  if (!proc) {    // This proc should exist when we reach this.
    StartEfxSureShotAnime(ais);
    return;
  }
  ais->state3 &= ~0x20;   // General pain in the behind, this bit.
  int aisSubjectID = GetAISSubjectId(ais);
  
  // Move camera if applicable.
  if (gSomethingRelatedToAnimAndDistance && bAnimCameraTarget != aisSubjectID) {
    MoveBattleCameraOnto(GetOpponentFrontAIS(ais), -1);
    struct PAU_delayAISProc* proc2 = (struct PAU_delayAISProc*)ProcStart(PAU_delayAISProcInstr, (Proc*)proc);
    proc2->stateMask = (1 << (aisSubjectID << 1));  // Set SWAPPING bit.
    proc2->swapSound = PAU_dualStrikeSkillActivationSound;
    proc2->swapSoundXPos = ais->xPosition;
  }
  else {
    proc->state |= (1 << (aisSubjectID << 1));      // Set SWAPPING bit.
    if (PAU_dualStrikeSkillActivationSound != -1)
      PlaySoundAt(PAU_dualStrikeSkillActivationSound, 0x100, ais->xPosition, 1);
  }
  
  proc->timer = 0;
  proc->limit = PAU_dualBAnimSwapTime;
  
  // Halt all AISes.
  proc->leftFrontAIS->state |= 0x8;
  proc->leftBackAIS->state |= 0x8;
  proc->rightFrontAIS->state |= 0x8;
  proc->rightBackAIS->state |= 0x8;
};

void PAU_dualGuardAnim(AIStruct* ais) {
  struct PAU_aisProc* proc = (struct PAU_aisProc*)ProcFind(PAU_aisProcInstr);
  if (!proc) {    // This proc should exist when we reach this.
    StartEfxGenericAnime(ais);
    return;
  }
  ais->state3 &= ~0x20;   // General pain in the behind, this bit.
  int aisSubjectID = GetAISSubjectId(ais);
  
  // Move camera if applicable.
  if (gSomethingRelatedToAnimAndDistance && bAnimCameraTarget == aisSubjectID) {
    MoveBattleCameraOnto(ais, -1);
    struct PAU_delayAISProc* proc2 = (struct PAU_delayAISProc*)ProcStart(PAU_delayAISProcInstr, (Proc*)proc);
    proc2->stateMask = (1 << ((aisSubjectID ^ 1) << 1));  // Set SWAPPING bit.
    proc2->swapSound = PAU_dualGuardSkillActivationSound;
    proc2->swapSoundXPos = GetOpponentFrontAIS(ais)->xPosition;
  }
  else {
    proc->state |= (1 << ((aisSubjectID ^ 1) << 1));      // Set SWAPPING bit.
    if (PAU_dualGuardSkillActivationSound != -1)
      PlaySoundAt(PAU_dualGuardSkillActivationSound, 0x100, GetOpponentFrontAIS(ais)->xPosition, 1);
  }

  proc->state |= DUALGUARDACTIVE;
  proc->timer = 0;
  proc->limit = PAU_dualBAnimSwapTime;
  
  // Halt our AISes.
  ais->state |= 0x8;
  (*(AIStruct**)(0x2000004 + (aisSubjectID<<3)))->state |= 0x8;     // Back layer AIS.
};

// During level up, priority of banims change to fit them behind the level-up interface.
// Need to apply this priority change to backup banims as well.
void PAU_setPriorityDuringLvlUp(Proc* ekrLevelUpProc, u16 priority) {
  priority <<= 10;
  
  // Vanilla behaviour.
  AIStruct* right = *(AIStruct**)((u32)ekrLevelUpProc + 0x5C);
  AIStruct* left = *(AIStruct**)((u32)ekrLevelUpProc + 0x60);
  right->oam2base = (right->oam2base & 0xF3FF) | priority;
  left->oam2base = (left->oam2base & 0xF3FF) | priority;
  
  // Change display priority.
  struct PAU_aisProc* proc = (struct PAU_aisProc*)ProcFind(PAU_aisProcInstr);
  if (proc) {
    if (proc->puLeftFrontAIS)
      proc->puLeftFrontAIS->oam2base = (proc->puLeftFrontAIS->oam2base & 0xF3FF) | priority;
    if (proc->puRightFrontAIS)
      proc->puRightFrontAIS->oam2base = (proc->puRightFrontAIS->oam2base & 0xF3FF) | priority;
  }

}

const ProcInstruction PAU_aisProcInstr[] = {
  PROC_SET_NAME("PAU_AISProc"),
  PROC_SLEEP(1),
  PROC_CALL_ROUTINE(PAU_haltBAnims),
  
  PROC_LABEL(0),
  PROC_LOOP_ROUTINE(PAU_adjustBAnimLocs),
  
  PROC_END    // Proc is ended externally, when battle ends.
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
  s16 cameraOffs = -(s16)bAnimCameraOffs;
  
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
  if (proc->timer == (proc->limit>>1)) {
    temp = mainFrontAIS->drawLayerPriority;
    mainFrontAIS->drawLayerPriority = backupFrontAIS->drawLayerPriority;
    backupFrontAIS->drawLayerPriority = temp;

    temp = mainBackAIS->drawLayerPriority;
    mainBackAIS->drawLayerPriority = backupBackAIS->drawLayerPriority;
    backupBackAIS->drawLayerPriority = temp;

    SortAISs();
  }
  
  if (proc->timer < proc->limit) {
    s16 xOffs, yOffs;
    u8 angle = GetValueFromEasingFunction(0, 0, 0x80, proc->timer, proc->limit);
    if (right) {
      xOffs = gCosLookup[(angle + proc->rightMainAngle) & 0xFF] / proc->slope;
      mainFrontAIS->xPosition = proc->rightOriginX + xOffs + cameraOffs;
      yOffs = -gSinLookup[(angle + proc->rightMainAngle) & 0xFF] / proc->slope;
      mainFrontAIS->yPosition = proc->rightOriginY + yOffs;
      xOffs = gCosLookup[(angle + proc->rightBackAngle) & 0xFF] / proc->slope;
      backupFrontAIS->xPosition = proc->rightOriginX + xOffs + cameraOffs;
      yOffs = -gSinLookup[(angle + proc->rightBackAngle) & 0xFF] / proc->slope;
      backupFrontAIS->yPosition = proc->rightOriginY + yOffs;
    }
    else {
      xOffs = gCosLookup[(angle + proc->leftMainAngle) & 0xFF] / proc->slope;
      mainFrontAIS->xPosition = proc->leftOriginX + xOffs + cameraOffs;
      yOffs = -gSinLookup[(angle + proc->leftMainAngle) & 0xFF] / proc->slope;
      mainFrontAIS->yPosition = proc->leftOriginY + yOffs;
      xOffs = gCosLookup[(angle + proc->leftBackAngle) & 0xFF] / proc->slope;
      backupFrontAIS->xPosition = proc->leftOriginX + xOffs + cameraOffs;
      yOffs = -gSinLookup[(angle + proc->leftBackAngle) & 0xFF] / proc->slope;
      backupFrontAIS->yPosition = proc->leftOriginY + yOffs;
    }
  }
  else {    // Finish up.
    // Change some relevant RAM locations on end.
    // Swap out AISes in 0x2000000
    *(AIStruct**)(0x2000000 + (right<<3)) = backupFrontAIS;
    *(AIStruct**)(0x2000004 + (right<<3)) = backupBackAIS;
    
    s16 temp;
    u16 bAnimID = PAU_findPairUpBAnim(unit, &temp);
    gBattleAnimAnimationIndex[right] = bAnimID;
    gpBattleAnimFrameStartLookup[right] = battleAnims[bAnimID].modes;       // SectionData.
    
    // If +0x10 flag 0x4 isn't set, backup unit won't wait for HP to deplete after hitting enemy.
    backupFrontAIS->state3 = mainFrontAIS->state3;
    backupBackAIS->state3 = mainBackAIS->state3;
    mainFrontAIS->state |= 8;     // Pause the to be backup bAnim again.
    mainBackAIS->state |= 8;      // Can't rely on C0D, as standing motions don't have C0D.
    if (right && (proc->state & SWAPPEDRIGHT))
      proc->state &= ~DUALGUARDACTIVE;
    else if (!right && (proc->state & SWAPPEDLEFT))
      proc->state &= ~DUALGUARDACTIVE;
    
    if (!(proc->state & LASTROUND)) {
      
      // Force melee animations for paired-up unit at melee range.
      u8 frontRoundType = mainFrontAIS->currentRoundType;
      u8 backRoundType = mainBackAIS->currentRoundType;
      if (!(gSomethingRelatedToAnimAndDistance) &&
         ((right && (!(proc->state & SWAPPEDRIGHT))) ||
         (!(right) && (!(proc->state & SWAPPEDLEFT))))) {
        if (frontRoundType == 2 || frontRoundType == 3)
          frontRoundType -= 2;
        if (backRoundType == 2 || backRoundType == 3)
          backRoundType -= 2;
      }
      
      SwitchAISFrameDataFromBARoundType(backupFrontAIS, frontRoundType);
      SwitchAISFrameDataFromBARoundType(backupBackAIS, backRoundType);
      backupFrontAIS->nextRoundId = mainFrontAIS->nextRoundId;
      backupBackAIS->nextRoundId = mainBackAIS->nextRoundId;
      
      if (gSomethingRelatedToAnimAndDistance && 
          IsRoundTypeOffensive(GetAISCurrentRoundType(backupFrontAIS))) {
        MoveBattleCameraOnto(backupFrontAIS, -1);
        ProcGoto(ProcStart(PAU_delayAISProcInstr, (Proc*)proc), 1);
      }
      else {                                // Immediately re-enable AISes.
        // state +0x8 indicates pausing AIS.
        (*(AIStruct**)0x2000000)->state &= ~8;
        (*(AIStruct**)0x2000004)->state &= ~8;
        (*(AIStruct**)0x2000008)->state &= ~8;
        (*(AIStruct**)0x200000C)->state &= ~8;
      }
    }
    
    proc->timer = 0;
    if (right) {
      mainFrontAIS->xPosition = proc->rightOriginX + (PAU_bAnimDistX>>1) + cameraOffs;
      mainFrontAIS->yPosition = proc->rightOriginY + (PAU_bAnimDistY>>1);
      backupFrontAIS->xPosition = proc->rightOriginX - (PAU_bAnimDistX>>1) + cameraOffs;
      backupFrontAIS->yPosition = proc->rightOriginY - (PAU_bAnimDistY>>1);
      
      proc->state &= ~SWAPPINGRIGHT;
      proc->state ^= SWAPPEDRIGHT;
    }
    else {
      mainFrontAIS->xPosition = proc->leftOriginX - (PAU_bAnimDistX>>1) + cameraOffs;
      mainFrontAIS->yPosition = proc->leftOriginY + (PAU_bAnimDistY>>1);
      backupFrontAIS->xPosition = proc->rightOriginX + (PAU_bAnimDistX>>1) + cameraOffs;
      backupFrontAIS->yPosition = proc->rightOriginY - (PAU_bAnimDistY>>1);
      
      proc->state &= ~SWAPPINGLEFT;
      proc->state ^= SWAPPEDLEFT;
    }
    mainBackAIS->xPosition = mainFrontAIS->xPosition;
    mainBackAIS->yPosition = mainFrontAIS->yPosition;
    backupBackAIS->xPosition = backupFrontAIS->xPosition;
    backupBackAIS->yPosition = backupFrontAIS->yPosition;
  }
};

// Delays actions until camera has stopped moving.
// Delays a little more after that.
const ProcInstruction PAU_delayAISProcInstr[] = {
  PROC_SET_NAME("PAU_DelayAISProc"),
  PROC_YIELD,
  
  PROC_LABEL(0),
  PROC_LOOP_ROUTINE(PAU_waitUntilCameraStops),
  PROC_SLEEP(10),     // Camera finished moving, rest a bit before executing action.
  PROC_CALL_ROUTINE(PAU_applyStateMask),
  PROC_GOTO(2),
  
  PROC_LABEL(1),
  PROC_LOOP_ROUTINE(PAU_waitUntilCameraStops),
  PROC_SLEEP(10),     // Camera finished moving, rest a bit before executing action.
  PROC_CALL_ROUTINE(PAU_enableAISes),
  
  PROC_LABEL(2),
  PROC_END
};

// Wait for battle camera to stop moving.
void PAU_waitUntilCameraStops(struct PAU_delayAISProc* proc) {
  if (!bAnimCameraMoving)
    BreakProcLoop((Proc*)proc);
}

// Apply state mask to parent, instance of PAU_aisProc, state.
void PAU_applyStateMask(struct PAU_delayAISProc* proc) {
  ((struct PAU_aisProc*)proc->parent)->state ^= proc->stateMask;
  
  if (proc->swapSound != -1)
    PlaySoundAt(proc->swapSound, 0x100, proc->swapSoundXPos, 1);
}

// Enable AISes.
void PAU_enableAISes(struct PAU_delayAISProc* proc) {
    // state +0x8 set indicates AIS is paused.
    (*(AIStruct**)0x2000000)->state &= ~8;
    (*(AIStruct**)0x2000004)->state &= ~8;
    (*(AIStruct**)0x2000008)->state &= ~8;
    (*(AIStruct**)0x200000C)->state &= ~8;
}

// Draws pair-up gauge symbols when battle overlay gets drawn.
// Keeps track of symbols during battle.
// Also removes pair-up gauge when battle overlay gets removed.
const ProcInstruction PAU_bAnimGaugeProcInstr[] = {
  PROC_SET_NAME("PAU_BAnimGaugeAppearProc"),
  PROC_YIELD,
  
  PROC_LABEL(0),
  PROC_CALL_ROUTINE(PAU_bAnimGaugeAppearInit),
  PROC_LOOP_ROUTINE(PAU_bAnimGaugeAppearLoop),
  
  PROC_LABEL(1),
  PROC_BLOCK,
  
  PROC_END
};

void PAU_bAnimGaugeScrEntries(struct PAU_bAnimGaugeProc* proc, u16 mask) {
  u8 val = 0;
  u16 charOffs, scrEntryId;
  
  if (proc->leftPairUpType) {
    charOffs = 0;
    scrEntryId = 0xE0;
    val = proc->leftGaugeVal;
    for (int i = 0; i < PAU_gaugeSize; i++) {
      if (val > 0)
        val--;
      else
        charOffs = 1;
      gBg0MapBuffer[scrEntryId] = (0x0011 + ((proc->leftPairUpType - 1)<<1) + charOffs) & mask;
      scrEntryId += 0x20;
    }
  }
  
  if (proc->rightPairUpType) {
    charOffs = 0;
    scrEntryId = 0xFD;
    val = proc->rightGaugeVal;
    for (int i = 0; i < PAU_gaugeSize; i++) {
      if (val > 0)
        val--;
      else
        charOffs = 1;
      gBg0MapBuffer[scrEntryId] = (0x0411 + ((proc->rightPairUpType - 1)<<1) + charOffs) & mask;
      scrEntryId += 0x20;
    }
  }
  
  EnableBgSyncByMask(BG0_SYNC_BIT);
}

void PAU_bAnimGaugeAppearInit(struct PAU_bAnimGaugeProc* proc) {
  
  // Setup window0, unless effect is immediate.
  if (proc->limit > 1) {
    gLCDIOBuffer.win0_right = 240;
    gLCDIOBuffer.win0_left = 0;
    gLCDIOBuffer.win0_bottom = 0x68;
    gLCDIOBuffer.win0_top = 0x30;
    gLCDIOBuffer.winControl.win0_enableBg0 = 0;
    gLCDIOBuffer.winControl.win0_enableBg1 = 1;
    gLCDIOBuffer.winControl.win0_enableBg2 = 1;
    gLCDIOBuffer.winControl.win0_enableBg3 = 1;
    gLCDIOBuffer.winControl.win0_enableObj = 1;
    gLCDIOBuffer.winControl.win0_enableBlend = 1;
    gLCDIOBuffer.winControl.wout_enableBg0 = 1;
    gLCDIOBuffer.winControl.wout_enableBg1 = 1;
    gLCDIOBuffer.winControl.wout_enableBg2 = 1;
    gLCDIOBuffer.winControl.wout_enableBg3 = 1;
    gLCDIOBuffer.winControl.wout_enableObj = 1;
    gLCDIOBuffer.winControl.wout_enableBlend = 1;
    gLCDIOBuffer.dispControl.enableWin0 = 1;
  } else {
    if (proc->disappear)
      PAU_bAnimGaugeScrEntries(proc, 0);
    if (proc->ending)
      EndProc((Proc*)proc);
    else
      ProcGoto((Proc*)proc, 1);
  }
  
  if (!(proc->disappear)) {
    
    // Put gauge icons in BGVRAM.
    CpuFastCopy((void*)prGetMiscIconGfxThumb(0x604), (void*)0x6000220, 0x80);    // 0x600220 should be available.
    
    // Update screen entries.
    PAU_bAnimGaugeScrEntries(proc, 0xFFFF);
  }
  
  proc->timer = 0;
}

void PAU_bAnimGaugeAppearLoop(struct PAU_bAnimGaugeProc* proc) {
  int startX = 0, endX = 56;
  if (proc->disappear) {
    startX = 56;
    endX = 0;
  }
  proc->timer++;
  
  u8 x = (u8)GetValueFromEasingFunction(1, startX, endX, (u32)proc->timer, (u32)proc->limit);
  gLCDIOBuffer.win0_top = 0x30 + x;
  
  if (proc->timer >= proc->limit) {
    gLCDIOBuffer.dispControl.enableWin0 = 0;
    if (proc->disappear)
      PAU_bAnimGaugeScrEntries(proc, 0);
    if (proc->ending)
      EndProc((Proc*)proc);
    else
      BreakProcLoop((Proc*)proc);
  }
}

// Increment or clear gauge icons during actions.
void PAU_bAnimGaugeUpdate(struct PAU_bAnimGaugeProc* proc, u16 round) {
  u8 leftTarget = (gpUnitLeft_BattleStruct->unit.index == gBattleTarget.unit.index);
  u8 clearLeft = 0;
  u8 rightTarget = (gpUnitRight_BattleStruct->unit.index == gBattleTarget.unit.index);
  u8 clearRight = 0;
  
  u8 retaliate = (battleBuffer[round].battleHit.info & BATTLE_HIT_INFO_RETALIATION);
  u8 dualStrikeTriggered = (battleBuffer[round].skillID == (((int)&DualStrikeID) & 0xFF));
  u8 dualGuardTriggered = (battleBuffer[round].skillID == (((int)&DualGuardID) & 0xFF));
  
  if (proc->leftPairUpType) {
    if (leftTarget) {
      if (retaliate) {
        if (dualStrikeTriggered)
          clearLeft = 1;
      }
      else
        if (dualGuardTriggered)
          clearLeft = 1;
    }
    else
      if (retaliate) {
        if (dualGuardTriggered)
          clearLeft = 1;
      }
      else
        if (dualStrikeTriggered)
          clearLeft = 1;
  }
  
  else if (proc->rightPairUpType) {
    if (rightTarget) {
      if (retaliate) {
        if (dualStrikeTriggered)
          clearRight = 1;
      }
      else
        if (dualGuardTriggered)
          clearRight = 1;
    }
    else
      if (retaliate) {
        if (dualGuardTriggered)
          clearRight = 1;
      }
      else
        if (dualStrikeTriggered)
          clearRight = 1;
  }
  
  if (clearLeft)
    proc->leftGaugeVal = 0;
  else if (proc->leftPairUpType && (proc->leftGaugeVal < PAU_gaugeSize))
    proc->leftGaugeVal++;
  
  if (clearRight)
    proc->rightGaugeVal = 0;
  else if (proc->rightPairUpType && (proc->rightGaugeVal < PAU_gaugeSize))
    proc->rightGaugeVal++;
  
  proc->disappear = 0;
  proc->limit = 1;
  proc->ending = 0;
  ProcGoto((Proc*)proc, 0);
}