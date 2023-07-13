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

int PAU_forecastStartHelpBox(Proc* parent) {
  int x, offs = 0;

  struct PAU_forecastProc* proc = (struct PAU_forecastProc*)ProcFind(PAU_forecastProcInstr);
  if (proc == 0)
    return 0;

  if (proc->needContentUpdate != 0)
    return 0;

  if (proc->side < 0 && PAU_isPairedUp(&gBattleTarget.unit))
    offs++;
  if (proc->side >= 0 && PAU_isPairedUp(&gBattleActor.unit))
    offs--;
  
  if (proc->side < 0)
    x = 0;
  else
    x = 20;
  x += offs;

  LoadDialogueBoxGfx(0, -1);
  
  switch (proc->frameKind) {
    case 1:
      StartMovingHelpBoxExt((void*)0x8a00fec, parent, x, 0);
      break;

    case 2:
      StartMovingHelpBoxExt((void*)0x8a01094, parent, x, 0);
      break;
  }

  return 0;
}

void PAU_forecastDrawIconHFlip(u16* BgOut, int IconIndex, int OamPalBase) {
  if (IconIndex < 0) {
    BgOut[0]  = 0;
    BgOut[1]  = 0;
    BgOut[32] = 0;
    BgOut[33] = 0;
  } else {
    u16 Tile = GetIconTileIndex(IconIndex) + OamPalBase;

    BgOut[1]  = Tile++;
    BgOut[0]  = Tile++;
    BgOut[33] = Tile++;
    BgOut[32] = Tile;
  }
}

void PAU_forecastDrawGaugeIcons(struct PAU_forecastProc* proc, u16* dest, Unit* unit, u8 pairupType, u8 right) {
  if (!(pairupType))
    return;
  
  u16 gaugeIconID = 0x605 + ((pairupType - 1) << 1);
  u16 offs = 0;
  u8 val = PAU_getPairUpGauge();
  
  for (int i = 0; i < PAU_gaugeSize; i++) {
    if (!(val))
      offs = 1;
    else
      val--;
    
    if (right) {
      PAU_forecastDrawIconHFlip(dest + i*32, gaugeIconID+offs, 0x0400);
    } else {
      DrawIcon(dest + i*32, gaugeIconID+offs, 0x0000);
    }
  }
  
}

void PAU_forecastDrawContentsStandard(struct PAU_forecastProc* proc) {
  int damage, critRate, offs = 0, width = 10;
  u8 puRight = PAU_isPairedUp(&gBattleActor.unit);
  u8 puLeft = PAU_isPairedUp(&gBattleTarget.unit);
  
  if (puRight && puLeft) {
    BgMap_ApplyTsa((u16*)0x200422C, &PAU_forecastWindowBothTSA, 0x1000);
    width += 2;
    offs += 1;
  } else if (puRight) {
    BgMap_ApplyTsa((u16*)0x200422C, &PAU_forecastWindowRightTSA, 0x1000);
    width += 1;
  } else if (puLeft) {
    BgMap_ApplyTsa((u16*)0x200422C, &PAU_forecastWindowLeftTSA, 0x1000);
    width += 1;
    offs += 1;
  } else {
    BgMap_ApplyTsa((u16*)0x200422C, &gTSA_BattleForecastStandard, 0x1000);
  }

  BgMapFillRect(gpStatScreenPageBg0Map, width, 15, 0);

  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + offs + 0x23, &proc->unitNameTextA, &gBattleActor.unit);
  PAU_forecastDrawGaugeIcons(proc, gpStatScreenPageBg0Map + offs + 0x29, &gBattleActor.unit, puRight, 1);
  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + offs + 0x161, &proc->unitNameTextA, &gBattleTarget.unit);
  PAU_forecastDrawGaugeIcons(proc, gpStatScreenPageBg0Map + offs + (0x1DF - (PAU_gaugeSize << 5)), &gBattleTarget.unit, puLeft, 0);
  PutBattleForecastItemName(gpStatScreenPageBg0Map + offs + 0x1A1, &proc->itemNameText, gBattleTarget.weaponBefore);

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
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0x62, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0x62, 2, gBattleTarget.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2, 2, damage);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 + 0x40, 2, gBattleTarget.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 + 0x80, 2, gBattleTarget.battleEffectiveCritRate);

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
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 - 0x40, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 - 0x40, 2, gBattleActor.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8, 2, damage);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 + 0x40, 2, gBattleActor.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 + 0x80, 2, critRate);

  DrawSpecialUiStr(gpStatScreenPageBg0Map + offs + 0xA8 - 0x44, 3, 0x22, 0x23);

  Text_Display(gaBattleForecastTextStructs, gpStatScreenPageBg0Map + offs + 0xA8 - 5);
  Text_Display(gaBattleForecastTextStructs + 1, gpStatScreenPageBg0Map + offs + 0xA8 + 0x3B);
  Text_Display(gaBattleForecastTextStructs + 2, gpStatScreenPageBg0Map + offs + 0xA8 + 0x7B);

  DrawIcon(gpStatScreenPageBg0Map + offs + 0xA8 + 0xBF, GetItemIconId(gBattleTarget.weaponBefore), 0x4000);

  DrawIcon(gpStatScreenPageBg0Map + offs + 0xA8 - 0x87, GetItemIconId(gBattleActor.weaponBefore), 0x3000);

  return;
}

void PAU_forecastDrawContentsExtended(struct PAU_forecastProc* proc) {
  int offs = 0, width = 10;
  u8 puRight = PAU_isPairedUp(&gBattleActor.unit);
  u8 puLeft = PAU_isPairedUp(&gBattleTarget.unit);
  
  if (puRight && puLeft) {
    BgMap_ApplyTsa((u16*)0x200422C, &PAU_forecastWindowExtBothTSA, 0x1000);
    width += 2;
    offs += 1;
  } else if (puRight) {
    BgMap_ApplyTsa((u16*)0x200422C, &PAU_forecastWindowExtRightTSA, 0x1000);
    width += 1;
  } else if (puLeft) {
    BgMap_ApplyTsa((u16*)0x200422C, &PAU_forecastWindowExtLeftTSA, 0x1000);
    width += 1;
    offs += 1;
  } else {
    BgMap_ApplyTsa((u16*)0x200422C, &gTSA_BattleForecastExtended, 0x1000);
  }

  BgMapFillRect(gpStatScreenPageBg0Map, width, 19, 0);

  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + offs + 0x23, &proc->unitNameTextA, &gBattleActor.unit);
  PAU_forecastDrawGaugeIcons(proc, gpStatScreenPageBg0Map + offs + 0x29, &gBattleActor.unit, puRight, 1);
  DrawUnitNameForBattleForecast(gpStatScreenPageBg0Map + offs + 0x1E1, &proc->unitNameTextA, &gBattleTarget.unit);
  PAU_forecastDrawGaugeIcons(proc, gpStatScreenPageBg0Map + offs + (0x25F - (PAU_gaugeSize << 5)), &gBattleTarget.unit, puLeft, 0);
  PutBattleForecastItemName(gpStatScreenPageBg0Map + offs + 0x221, &proc->itemNameText, gBattleTarget.weaponBefore);

  if ((gBattleTarget.weapon == 0) && (!gBattleTarget.weaponBroke)) {
    gBattleTarget.battleAttack = 0xFF;
    gBattleTarget.battleEffectiveHitRate = 0xFF;
    gBattleTarget.battleEffectiveCritRate = 0xFF;
  }

  if (gBattleTarget.hpInitial > 99) {
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0x62, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0x62, 2, gBattleTarget.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2, 2, gBattleTarget.battleAttack);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 + 0x40, 2, gBattleTarget.battleDefense);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 + 0x80, 2, gBattleTarget.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 + 0xC0, 2, gBattleTarget.battleEffectiveCritRate);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 + 0x100, 2, gBattleTarget.battleSpeed);

  if (gBattleActor.hpInitial > 99) {
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 - 0x3A, 2, 0xFF);
  } else {
    sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA2 - 0x3A, 2, gBattleActor.hpInitial);
  }

  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8, 2, gBattleActor.battleAttack);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 + 0x40, 2, gBattleActor.battleDefense);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 + 0x80, 2, gBattleActor.battleEffectiveHitRate);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 + 0xC0, 2, gBattleActor.battleEffectiveCritRate);
  sub_8004BB4(gpStatScreenPageBg0Map + offs + 0xA8 + 0x100, 2, gBattleActor.battleSpeed);

  DrawSpecialUiStr(gpStatScreenPageBg0Map + offs + 0xA8 - 0x44, 3, 0x22, 0x23);

  Text_Display(gaBattleForecastTextStructs + 3, gpStatScreenPageBg0Map + offs + 0xA8 - 5);
  Text_Display(gaBattleForecastTextStructs + 4, gpStatScreenPageBg0Map + offs + 0xA8 + 0x3B);
  Text_Display(gaBattleForecastTextStructs + 1, gpStatScreenPageBg0Map + offs + 0xA8 + 0x7B);
  Text_Display(gaBattleForecastTextStructs + 2, gpStatScreenPageBg0Map + offs + 0xA8 + 0xBB);
  Text_Display(gaBattleForecastTextStructs + 5, gpStatScreenPageBg0Map + offs + 0xA8 + 0xFB);

  DrawIcon(gpStatScreenPageBg0Map + offs + 0xA8 + 0x13F, GetItemIconId(gBattleTarget.weaponBefore), 0x4000);

  DrawIcon(gpStatScreenPageBg0Map + offs + 0xA8 - 0x87, GetItemIconId(gBattleActor.weaponBefore), 0x3000);

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
  int width = 10;
  if (PAU_isPairedUp(&gBattleActor.unit))
    width++;
  if (PAU_isPairedUp(&gBattleTarget.unit))
    width++;

  if (proc->side < 0) {
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer, width, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer, width, height);
  } else {
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer + (30 - width), width, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer + (30 - width), width, height);
  }

  EnableBgSyncByMask(3);

  return;
}

void PAU_forecastPutWeaponTriangleArrows(struct PAU_forecastProc* proc) {
  int wtArrowA = 0;
  int wtArrowB = 0;
  int offs = 0;
  
  if (proc->side < 0 && PAU_isPairedUp(&gBattleTarget.unit))
    offs++;
  else if (proc->side >= 0 && PAU_isPairedUp(&gBattleActor.unit))
    offs--;

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
    UpdateStatArrowSprites((proc->x + offs + 8) * 8 + 3, (proc->y + 11) * 8, wtArrowB == 2 ? 1 : 0);
  }

  if (wtArrowA != 0) {
    UpdateStatArrowSprites((proc->x + offs + 2) * 8 + 3, (proc->y + 1) * 8, wtArrowA == 2 ? 1 : 0);
  }

  return;
}

void PAU_forecastPutMultipliers(struct PAU_forecastProc* proc) {
  int offs = 0;
  if (proc->side < 0 && PAU_isPairedUp(&gBattleTarget.unit))
    offs++;
  if (proc->side >= 0 && PAU_isPairedUp(&gBattleActor.unit))
    offs--;
  
  int angle = (proc->unk_2C * 4) & 0xFF;
  int x = gSinLookup[angle] * 4 >> 12;
  int y = gCosLookup[angle] * 2 >> 12;

  x += (proc->x + offs) * 8 - 3;
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
  int offset, width;
  int height = proc->frameKind == 1 ? 16 : 20;

  FillBgMap(gBg0MapBuffer, 0);
  FillBgMap(gBg1MapBuffer, 0);
  EnableBgSyncByMask(3);

  offset = offsetLut[proc->unk_36];
  width = offset;
  u8 puLeft = PAU_isPairedUp(&gBattleTarget.unit);
  u8 puRight = PAU_isPairedUp(&gBattleActor.unit);
  if (puLeft)
    width++;
  if (puRight) {
    width++;
  }

  if (proc->side < 0) {
    BgMapCopyRect(gpStatScreenPageBg0Map + (10 - offset), gBg0MapBuffer, width, height);
    BgMapCopyRect((u16*)0x200422C + (10 - offset), gBg1MapBuffer, width, height);
  } else {
    if (puLeft)
      offset++;
    if (puRight)
      offset++;
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer + (30 - offset), width, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer + (30 - offset), width, height);
  }

  proc->unk_36++;
  if ((u8)proc->unk_36 == 4) {
    proc->unk_36 = 0;
    BreakProcLoop((Proc*)proc);
  }
}

void PAU_forecastLoopSlideOut(struct PAU_forecastProc* proc) {
  static s8 offsetLut[] = { 9, 8, 6, 0 };
  int offset, width;
  int height = proc->frameKind == 1 ? 16 : 20;

  FillBgMap(gBg0MapBuffer, 0);
  FillBgMap(gBg1MapBuffer, 0);
  EnableBgSyncByMask(3);

  offset = offsetLut[proc->unk_36];
  width = offset;
  u8 puLeft = PAU_isPairedUp(&gBattleTarget.unit);
  u8 puRight = PAU_isPairedUp(&gBattleActor.unit);
  if (puLeft)
    width++;
  if (puRight)
    width++;

  if (proc->side < 0) {
    BgMapCopyRect(gpStatScreenPageBg0Map + (10 - offset), gBg0MapBuffer, width, height);
    BgMapCopyRect((u16*)0x200422C + (10 - offset), gBg1MapBuffer, width, height);
  } else {
    if (puLeft)
      offset++;
    if (puRight)
      offset++;
    BgMapCopyRect(gpStatScreenPageBg0Map, gBg0MapBuffer + (30 - offset), width, height);
    BgMapCopyRect((u16*)0x200422C, gBg1MapBuffer + (30 - offset), width, height);
  }

  proc->unk_36++;
  if ((u8)proc->unk_36 == 4) {
    proc->unk_36 = 0;
    BreakProcLoop((Proc*)proc);
    FillBgMap(gBg0MapBuffer, 0);
    FillBgMap(gBg1MapBuffer, 0);
  }
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