#include "forecast.h"

// Mimic vanilla's BKSEL. Many thanks to decomp for this.
const ProcInstruction PAU_forecastProcInstr[] = {
  PROC_SET_NAME("PAU_Forecast"),
  PROC_SET_DESTRUCTOR(BKSEL_Destructor),
  PROC_CALL_ROUTINE(ClearBG0BG1),
  PROC_SLEEP(0),
  PROC_CALL_ROUTINE(BKSEL_InitGfx),

  PROC_LABEL(0),
  PROC_WHILE_ROUTINE(MapEventEngineExists_),
  PROC_CALL_ROUTINE(PAU_forecastOnNewBattle),
  PROC_LOOP_ROUTINE(PAU_forecastLoopSlideIn),
  PROC_CALL_ROUTINE(0x80372E5),
  PROC_LOOP_ROUTINE(PAU_forecastLoopDisplay),
  
  PROC_LOOP_ROUTINE(PAU_forecastLoopSlideOut),
  PROC_GOTO(0),

  PROC_LABEL(1),
  PROC_LOOP_ROUTINE(PAU_forecastLoopSlideOut),

  PROC_END,
};

void PAU_forecastDrawContentsStandard(struct PAU_forecastProc* proc) {
  int damage;
  int critRate;

  BgMap_ApplyTsa((u16*)0x200422C, &gTSA_BattleForecastStandard, 0x1000);

  BgMapFillRect(gpStatScreenPageBg0Map, 10, 15, 0);

  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + 0x23, &proc->unitNameTextA, &gBattleActor.unit);

  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + 0x161, &proc->unitNameTextA, &gBattleTarget.unit);

  PutBattleForecastItemName(gpStatScreenPageBg0Map + 0x1A1, &proc->itemNameText, gBattleTarget.weaponBefore);

  if ((gBattleTarget.weapon == 0) && (gBattleTarget.weaponBroke == 0)) {
    damage = -1;

    gBattleTarget.battleEffectiveHitRate = 0xFF;
    gBattleTarget.battleEffectiveCritRate = 0xFF;
  } else {
    damage = gBattleTarget.battleAttack - gBattleActor.battleDefense;

    if (damage < 0) {
      damage = 0;
    }
  }

  if (gBattleTarget.hpInitial > 99) {
    sub_8004BB4(gpStatScreenPageBg0Map + 0x62, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + 0x62, 2, gBattleTarget.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2, 2, damage);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 + 0x40, 2, gBattleTarget.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 + 0x80, 2, gBattleTarget.battleEffectiveCritRate);

  damage = gBattleActor.battleAttack - gBattleTarget.battleDefense;

  if (GetItemIndex(gBattleActor.weapon) == ITEM_MONSTER_STONE) {
    damage = 0xFF;
  }

  if (damage < 0) {
    damage = 0;
  }

  critRate = gBattleActor.battleEffectiveCritRate;

  if (GetItemIndex(gBattleActor.weapon) == ITEM_MONSTER_STONE) {
    critRate = 0xFF;
  }

  if (critRate < 0) {
    critRate = 0;
  }

  if (gBattleActor.hpInitial > 99) {
    sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 - 0x40, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 - 0x40, 2, gBattleActor.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8, 2, damage);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 + 0x40, 2, gBattleActor.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 + 0x80, 2, critRate);

  DrawSpecialUiStr(gpStatScreenPageBg0Map + 0xA8 - 0x44, 3, 0x22, 0x23);

  Text_Display(gaBattleForecastTextStructs, gpStatScreenPageBg0Map  + 0xA8 - 5);
  Text_Display(gaBattleForecastTextStructs + 1, gpStatScreenPageBg0Map  + 0xA8 + 0x3B);
  Text_Display(gaBattleForecastTextStructs + 2, gpStatScreenPageBg0Map  + 0xA8 + 0x7B);

  DrawIcon(gpStatScreenPageBg0Map + 0xA8 + 0xBF, GetItemIconId(gBattleTarget.weaponBefore), 0x4000);

  DrawIcon(gpStatScreenPageBg0Map + 0xA8 - 0x87, GetItemIconId(gBattleActor.weaponBefore), 0x3000);

  return;
}

void PAU_forecastDrawContentsExtended(struct PAU_forecastProc* proc) {

  BgMap_ApplyTsa((u16*)0x200422C, &gTSA_BattleForecastExtended, 0x1000);

  BgMapFillRect(gpStatScreenPageBg0Map, 10, 19, 0);

  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + 0x23, &proc->unitNameTextA, &gBattleActor.unit);
  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + 0x1E1, &proc->unitNameTextA, &gBattleTarget.unit);

  PutBattleForecastItemName(gpStatScreenPageBg0Map + 0x221, &proc->itemNameText, gBattleTarget.weaponBefore);

  if ((gBattleTarget.weapon == 0) && (!gBattleTarget.weaponBroke)) {
    gBattleTarget.battleAttack = 0xFF;
    gBattleTarget.battleEffectiveHitRate = 0xFF;
    gBattleTarget.battleEffectiveCritRate = 0xFF;
  }

  if (gBattleTarget.hpInitial > 99) {
    sub_8004BB4(gpStatScreenPageBg0Map + 0x62, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + 0x62, 2, gBattleTarget.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2, 2, gBattleTarget.battleAttack);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 + 0x40, 2, gBattleTarget.battleDefense);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 + 0x80, 2, gBattleTarget.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 + 0xC0, 2, gBattleTarget.battleEffectiveCritRate);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 + 0x100, 2, gBattleTarget.battleSpeed);

  if (gBattleActor.hpInitial > 99) {
    sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 - 0x3A, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + 0xA2 - 0x3A, 2, gBattleActor.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8, 2, gBattleActor.battleAttack);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 + 0x40, 2, gBattleActor.battleDefense);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 + 0x80, 2, gBattleActor.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 + 0xC0, 2, gBattleActor.battleEffectiveCritRate);
  sub_8004BB4(gpStatScreenPageBg0Map + 0xA8 + 0x100, 2, gBattleActor.battleSpeed);

  DrawSpecialUiStr(gpStatScreenPageBg0Map + 0xA8 - 0x44, 3, 0x22, 0x23);

  Text_Display(gaBattleForecastTextStructs + 3, gpStatScreenPageBg0Map + 0xA8 - 5);
  Text_Display(gaBattleForecastTextStructs + 4, gpStatScreenPageBg0Map + 0xA8 + 0x3B);
  Text_Display(gaBattleForecastTextStructs + 1, gpStatScreenPageBg0Map + 0xA8 + 0x7B);
  Text_Display(gaBattleForecastTextStructs + 2, gpStatScreenPageBg0Map + 0xA8 + 0xBB);
  Text_Display(gaBattleForecastTextStructs + 5, gpStatScreenPageBg0Map + 0xA8 + 0xFB);

  DrawIcon(gpStatScreenPageBg0Map + 0xA8 + 0x13F, GetItemIconId(gBattleTarget.weaponBefore), 0x4000);

  DrawIcon(gpStatScreenPageBg0Map + 0xA8 - 0x87, GetItemIconId(gBattleActor.weaponBefore), 0x3000);

  return;
}

void PAU_forecastDrawContents(struct PAU_forecastProc* proc) {

  proc->unk_2C = 0;
  proc->needContentUpdate = 0;

  switch (proc->frameKind) {
    case 1:
      BKSEL_SetupHitAndSuchStats(proc);
      PAU_forecastDrawContentsStandard(proc);
      break;

    case 2:
      BKSEL_SetupHitAndSuchStats(proc);
      PAU_forecastDrawContentsExtended(proc);
      break;
  }

  return;
}

void PAU_forecastOnNewBattle(struct PAU_forecastProc* proc) {
  PAU_forecastDrawContents(proc);

  proc->side = GetBattleForecastPanelSide();
  proc->unk_36 = 0;

  if (proc->side < 0) {
    proc->x = 0;
  } else {
    proc->x = 20;
  }

  proc->y = 0;

  InitBattleForecastFramePalettes();

  return;
}

void PAU_forecastPutTilemaps(struct PAU_forecastProc* proc) {

  int height = proc->frameKind == 1 ? 16 : 20;

  if (proc->side < 0) {
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer, 10, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer, 10, height);
  } else {
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer + 20, 10, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer + 20, 10, height);
  }

  EnableBgSyncByMask(3);

  return;
}

void PAU_forecastPutWeaponTriangleArrows(struct PAU_forecastProc* proc) {
  int wtArrowA = 0;
  int wtArrowB = 0;

  if (gBattleActor.wTriangleHitBonus > 0) {
    wtArrowA = 1;
  }

  if (gBattleActor.wTriangleHitBonus < 0) {
    wtArrowA = 2;
  }

  if (gBattleTarget.wTriangleHitBonus > 0) {
    wtArrowB = 1;
  }

  if (gBattleTarget.wTriangleHitBonus < 0) {
    wtArrowB = 2;
  }

  if (wtArrowB != 0) {
    UpdateStatArrowSprites((proc->x + 8) * 8 + 3, (proc->y + 11) * 8, wtArrowB == 2 ? 1 : 0);
  }

  if (wtArrowA != 0) {
    UpdateStatArrowSprites((proc->x + 2) * 8 + 3, (proc->y + 1) * 8, wtArrowA == 2 ? 1 : 0);
  }

  return;
}

void PAU_forecastPutMultipliers(struct PAU_forecastProc* proc) {

  int angle = (proc->unk_2C * 4) & 0xFF;

  int x = gSinLookup[angle] * 4 >> 12;
  int y = gCosLookup[angle] * 2 >> 12;

  x += proc->x * 8 - 3;
  y += proc->y * 8;

  if (proc->hitCountA > 1) {
    ObjInsertSafe(4, x + 72, y + 40, &gObj_16x16, proc->hitCountA + 0x22E6);
  }

  if (proc->hitCountB > 1) {
    ObjInsertSafe(4, x + 24, y + 40, &gObj_16x16, proc->hitCountB + 0x22E6);
  }

  return;
}

void PAU_forecastLoopSlideIn(struct PAU_forecastProc* proc) {
  static s8 offsetLut[] = { 6, 8, 9, 10 };
  int offset;

  int height = proc->frameKind == 1 ? 16 : 20;

  FillBgMap(gBg0MapBuffer, 0);
  FillBgMap(gBg1MapBuffer, 0);

  EnableBgSyncByMask(3);

  offset = offsetLut[proc->unk_36];

  if (proc->side < 0) {
    BgMapCopyRect(gpStatScreenPageBg0Map + (10 - offset), gBg0MapBuffer, offset, height);
    BgMapCopyRect((u16*)0x200422C + (10 - offset), gBg1MapBuffer, offset, height);
  } else {
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer + (30 - offset), offset, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer + (30 - offset), offset, height);
  }

  proc->unk_36++;

  if ((u8)proc->unk_36 == 4) {
    proc->unk_36 = 0;
    BreakProcLoop((Proc*)proc);
  }

  return;
}

void PAU_forecastLoopSlideOut(struct PAU_forecastProc* proc) {
  static s8 offsetLut[] = { 9, 8, 6, 0 };
  int offset;

  int height = proc->frameKind == 1 ? 16 : 20;

  FillBgMap(gBg0MapBuffer, 0);
  FillBgMap(gBg1MapBuffer, 0);

  EnableBgSyncByMask(3);

  offset = offsetLut[proc->unk_36];

  if (proc->side < 0) {
    BgMapCopyRect(gpStatScreenPageBg0Map + (10 - offset), gBg0MapBuffer, offset, height);
    BgMapCopyRect((u16*)0x200422C + (10 - offset), gBg1MapBuffer, offset, height);
  } else {
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer + (30 - offset), offset, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer + (30 - offset), offset, height);
  }

  proc->unk_36++;

  if ((u8)proc->unk_36 == 4) {
    proc->unk_36 = 0;
    BreakProcLoop((Proc*)proc);
  }

  return;
}

void PAU_forecastLoopDisplay(struct PAU_forecastProc* proc) {

  proc->unk_2C++;

  if (proc->needContentUpdate) {

    int side = GetBattleForecastPanelSide();

    if ((side != 0) && (side != proc->side)) {
      BreakProcLoop((Proc*)proc);
      return;
    }

    PAU_forecastDrawContents(proc);
    PAU_forecastPutTilemaps(proc);
    InitBattleForecastFramePalettes();
  }

  if (proc->frameKind == 1) {
    PAU_forecastPutWeaponTriangleArrows(proc);
    PAU_forecastPutMultipliers(proc);
    UpdateBattleForecastEffectivenessPalettes(proc);
  }

  return;
}