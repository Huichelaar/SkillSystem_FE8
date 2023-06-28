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

// Offsets map sprites during pair-up action.
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
  if (proc->timer >= proc->limit) {
    //PAU_mapAddSMS(proc->unit2, PAU_PAIRUP_BACKUP);
    BreakProcLoop((Proc*)proc);
  }
  
  proc->muProc1->xSubOffset -= (PAU_mapFrontOffsX / proc->limit)<<4;
  proc->muProc1->ySubOffset -= (PAU_mapFrontOffsY / proc->limit)<<4;
  proc->muProc2->xSubOffset -= (PAU_mapBackOffsX / proc->limit)<<4;
  proc->muProc2->ySubOffset -= (PAU_mapBackOffsY / proc->limit)<<4;
}