#include "banim.h"

// TODO, implement.
u16 PAU_findPairUpBAnimID(Unit* unit) {
  return 0;
}

// Scales another AIS during Kakudai proc.
void PAU_scalePairUpPartner(void* oamDataScript, void* oamDataBuffer, AnimationInterpreter* newAIS, u16 aisSubjectID, struct KakudaiProc* proc, u16 scale) {
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