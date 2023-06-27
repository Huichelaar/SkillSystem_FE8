#include <stdio.h>
#include "main.h"
#include "internal/internal.c"
#include "banim/banim.c"
#include "menu/menu.c"
#include "save/save.c"
#include "forecast/forecast.c"
#include "map/map.c"

// Replaces GetBattleHitCount at 0x2B081. Checks for Dual Strike.
int PAU_getBattleHitCount(BattleUnit* unit) {
  u8 hitCount = 1;
  hitCount = hitCount << BattleCheckBraveEffect(unit);
  
  // Add another round for Dual Strike.
  if (PAU_isPairedUp((Unit*)unit) == PAU_PAIRUP_OFFENSE) {
    u8 pairUpGauge = PAU_getBattleGauge();
    if (pairUpGauge + hitCount >= PAU_gaugeSize) {
      hitCount++;
    }
  }
  return hitCount;
}

// Replaces BattleGenerateRoundHits at 0x2B018. Can apply Dual Strike or Dual Guard.
// Taken from decomp.
// Returns TRUE if battle finished, FALSE otherwise.
s8 PAU_battleGenerateRoundHits(struct BattleUnit* attacker, struct BattleUnit* defender) {
  int i, count;
  u16 attrs; // NOTE: this is a bug! attrs are 19 bits in FE8 (they're 16 bits in previous games)

  if (!attacker->weapon)
    return FALSE;

  attrs = gBattleHitIterator->attributes;
  count = PAU_getBattleHitCount(attacker);

  for (i = 0; i < count; ++i) {
    
    if ((i > 0) && (PAU_isPairedUp((Unit*)attacker) == PAU_PAIRUP_OFFENSE) && (PAU_getBattleGauge() >= PAU_gaugeSize)) {
      // Apply Dual Strike to hit.
      ((struct NewBattleRound*)gBattleHitIterator)->skillID = (int)&DualStrikeID;
      gBattleHitIterator->attributes |= BATTLE_HIT_ATTR_SURESHOT;
      PAU_setBattleGauge(0);                      // Reset battle pair-up gauge.
    }
    else if ((PAU_isPairedUp((Unit*)defender) == PAU_PAIRUP_DEFENSE) && (PAU_getBattleGauge() >= PAU_gaugeSize)) {
      // Apply Dual Guard to hit.
      ((struct NewBattleRound*)gBattleHitIterator)->skillID = (int)&DualGuardID;
      gBattleHitIterator->attributes |= BATTLE_HIT_ATTR_GREATSHLD;
      PAU_setBattleGauge(0);                      // Reset battle pair-up gauge.
    }
    else if (PAU_isPairedUp((Unit*)attacker) == PAU_PAIRUP_OFFENSE ||
             PAU_isPairedUp((Unit*)defender) == PAU_PAIRUP_OFFENSE ||
             PAU_isPairedUp((Unit*)attacker) == PAU_PAIRUP_DEFENSE ||
             PAU_isPairedUp((Unit*)defender) == PAU_PAIRUP_DEFENSE) {
      PAU_setBattleGauge(PAU_getBattleGauge()+1); // Increment battle pair-up gauge.
    }
      
    gBattleHitIterator->attributes |= attrs;

    if (BattleGenerateHit(attacker, defender))
      return TRUE;
  }

  return FALSE;
}

// Clear pair-up gauge and unset pair-up flag at chapter end.
// Taken from decomp. sub_8019108.
void PAU_clearRescueAndPairUpData() {
  int i;
  
  // Clear pair-up data.
  PAU_clearPairUpData();

  for (i = 1; i < 0x40; ++i) {
    Unit* unit = GetUnit(i);

    if (!UNIT_IS_VALID(unit))
      continue;

    unit->state = unit->state &~ (US_UNSELECTABLE | US_RESCUING | US_RESCUED);
    unit->rescueOtherUnit = 0;

    SetUnitStatus(unit, 0);
  }

  RefreshEntityBmMaps();
  SMS_UpdateFromGameData();
}

// Use lowest mov of either of paired-up units.
// Added to the movement-getter.
s8 PAU_minMov(s8 mov1, Unit* unit) {
  u8 pairedUp = PAU_isPairedUp(unit);
  if (pairedUp != PAU_PAIRUP_OFFENSE && pairedUp != PAU_PAIRUP_DEFENSE)
    return mov1;
  
  s8 mov2 = prMovGetter(GetUnit(unit->rescueOtherUnit));
  
  if (mov2 < mov1)
    return mov2;
  return mov1;
}