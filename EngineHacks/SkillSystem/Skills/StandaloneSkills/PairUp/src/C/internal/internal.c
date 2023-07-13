#include "internal.h"

// Return 1 if unit is in offense pair-up mode, return 2 if in defense pair-up mode,
// return 3 if unit is backup (paired-up but not active).
// Return 0 otherwise.
u8 PAU_isPairedUp(Unit* unit) {
  if (!((unit->state & (US_RESCUING | US_RESCUED)) && (unit->rescueOtherUnit != 0) && PAU_getPairUpFlag()))
    return PAU_NOT_PAIREDUP;
  
  if (unit->state & (US_RESCUED)) {
    if (SkillTester(unit, (int)&DualStrikeID) | SkillTester(unit, (int)&DualGuardID))
      return PAU_PAIRUP_BACKUP;
    return PAU_NOT_PAIREDUP;
  }
  
  Unit* traveller = GetUnit(unit->rescueOtherUnit);
  if (SkillTester(traveller, (int)&DualStrikeID))
    return PAU_PAIRUP_OFFENSE;
  if (SkillTester(traveller, (int)&DualGuardID))
    return PAU_PAIRUP_DEFENSE;
  
  return PAU_NOT_PAIREDUP;
}

void PAU_setPairUpFlag() {
  *PAU_pairUpBitsRAMAddress |= PAU_FLAG;
}

void PAU_unsetPairUpFlag() {
  *PAU_pairUpBitsRAMAddress &= ~PAU_FLAG;
}

u8 PAU_getPairUpFlag() {
  if (*PAU_pairUpBitsRAMAddress & PAU_FLAG)
    return TRUE;
  return FALSE;
}

void PAU_setSwitchFlag() {
  *PAU_pairUpBattleGaugeRAMAddress |= PAU_SWAPFLAG;
}

void PAU_unsetSwitchFlag() {
  *PAU_pairUpBattleGaugeRAMAddress &= ~PAU_SWAPFLAG;
}

u8 PAU_getSwitchFlag() {
  if (*PAU_pairUpBattleGaugeRAMAddress & PAU_SWAPFLAG)
    return TRUE;
  return FALSE;
}

// Return value of pair-up gauge.
u8 PAU_getPairUpGauge() {
  return *PAU_pairUpBitsRAMAddress & PAU_GAUGE;
}

// Set value of pair-up gauge.
void PAU_setPairUpGauge(u8 val) {
  val &= PAU_GAUGE;
  *PAU_pairUpBitsRAMAddress &= ~PAU_GAUGE;
  *PAU_pairUpBitsRAMAddress |= val;
}

// Return value of battle pair-up gauge.
// battle pair-up gauge is a copy of the actual pair-up gauge.
u8 PAU_getBattleGauge() {
  return *PAU_pairUpBattleGaugeRAMAddress & PAU_BATTLEGAUGE;
}

// Set value of battle pair-up gauge.
// battle pair-up gauge is a copy of the actual pair-up gauge.
void PAU_setBattleGauge(u8 val) {
  val &= PAU_BATTLEGAUGE;
  if (val > PAU_gaugeSize)
    val = PAU_gaugeSize;
  *PAU_pairUpBattleGaugeRAMAddress &= ~PAU_BATTLEGAUGE;
  *PAU_pairUpBattleGaugeRAMAddress |= val;
}

// Clears pair-up gauge, battle pair-up gauge and unsets both flags.
void PAU_clearPairUpData() {
  PAU_setPairUpGauge(0);
  PAU_unsetPairUpFlag();
  PAU_setBattleGauge(0);
  PAU_unsetSwitchFlag();
}