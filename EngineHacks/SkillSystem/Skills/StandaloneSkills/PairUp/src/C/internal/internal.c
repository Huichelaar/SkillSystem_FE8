#include "internal.h"

// Return 1 if unit is in offense pair-up mode, return 2 if in defense pair-up mode.
// Return 0 otherwise.
u8 PAU_isPairedUp(Unit* unit) {
  if (!(unit->state & US_RESCUING) && (unit->rescueOtherUnit != 0) && PAU_getPairUpFlag())
    return FALSE;
  
  Unit* rescuee = GetUnit(unit->rescueOtherUnit);
  if (SkillTester(rescuee, PAU_dualStrikeSkillID))
    return PAU_PAIRUP_OFFENSE;
  if (SkillTester(rescuee, PAU_dualGuardSkillID))
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
  return *PAU_pairUpBattleGaugeRAMAddress;
}

// Set value of battle pair-up gauge.
// battle pair-up gauge is a copy of the actual pair-up gauge.
void PAU_setBattleGauge(u8 val) {
  if (val > PAU_gaugeSize)
    val = PAU_gaugeSize;
  *PAU_pairUpBattleGaugeRAMAddress = val;
}

// Clears pair-up gauge, battle pair-up gauge and unsets pair-up flag.
void PAU_clearPairUpData() {
  PAU_setPairUpGauge(0);
  PAU_unsetPairUpFlag();
  PAU_setBattleGauge(0);
}