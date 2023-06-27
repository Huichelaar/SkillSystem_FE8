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