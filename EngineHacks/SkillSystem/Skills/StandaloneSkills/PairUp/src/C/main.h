#ifndef MAIN_H
#define MAIN_H
#include "gbafe.h"

// Vanilla.
extern const u8 BattleCheckBraveEffect(BattleUnit* unit); //! FE8U = 0x802B095
extern const s8 BattleGenerateHit(struct BattleUnit* attacker, struct BattleUnit* defender); //! FE8U = 0x802B83D

// SkillSys.
struct NewBattleRound {
  /*00*/  struct BattleHit battleHit;
  /*04*/  u8 skillID;
  /*05*/  s8 hpChange;
  /*06*/  s16 popupDamage;
};
extern u8 SkillTester(Unit* unit, u8 skillID);
extern s8 prMovGetter(Unit* unit);

int PAU_getBattleHitCount(BattleUnit* unit);
s8 PAU_battleGenerateRoundHits(struct BattleUnit* attacker, struct BattleUnit* defender);
void PAU_clearRescueAndPairUpData();
s8 PAU_minMov(s8 mov, Unit* unit);

// Stats boosted by pair-up.
extern const s8 PAU_defStatBoost[6];  // stat boost given by defensive pair-up unit. Order: Str, Skl, Spd, Luk, Def, Res.
extern const s8 PAU_offStatBoost[6];  // stat boost given by offensive pair-up unit. ^

// Params. These are defined in PairUp.event.
extern u8 PAU_gaugeSize;
extern u8 PAU_actionID;
extern u16 UM_PairUpBottom;
extern u8 DualStrikeID;
extern u8 DualGuardID;
extern u8 PAU_gaugeSwordIconSkillID;
extern u8 PAU_gaugeShieldIconSkillID;
extern u8* PAU_pairUpBattleGaugeRAMAddress;
extern u8* PAU_pairUpBitsRAMAddress;

#endif // MAIN_H