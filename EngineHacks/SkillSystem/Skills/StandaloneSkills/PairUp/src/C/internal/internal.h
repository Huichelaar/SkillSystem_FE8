#ifndef INTERNAL_H
#define INTERNAL_H

// Pair-Up bits.
enum {
  PAU_FLAG = 0x80,
  PAU_GAUGE = 0x7F
};

u8 PAU_isPairedUp(Unit* unit);
// Pair-up types
enum {
  PAU_NOT_PAIREDUP = 0,
  PAU_PAIRUP_OFFENSE = 1,
  PAU_PAIRUP_DEFENSE = 2,
  PAU_PAIRUP_BACKUP = 3
};

void PAU_setPairUpFlag();
void PAU_unsetPairUpFlag();
u8 PAU_getPairUpFlag();
u8 PAU_getPairUpGauge();
void PAU_setPairUpGauge(u8 val);
u8 PAU_getBattleGauge();
void PAU_setBattleGauge(u8 val);
void PAU_clearPairUpData();

#endif // INTERNAL_H