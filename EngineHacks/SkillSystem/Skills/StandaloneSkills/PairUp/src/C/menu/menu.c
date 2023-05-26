#include "menu.h"

// Draws mostly from TryAddUnitToRescueTargetList, 0x8025345.
void PAU_tryAddUnitToPairUpTargetList(struct Unit* unit) {
  if (!AreAllegiancesAllied(gUnitSubject->index, unit->index) ||
      gUnitSubject->pClassData->number == CLASS_PHANTOM ||
      unit->pClassData->number == CLASS_PHANTOM ||
      unit->statusIndex == UNIT_STATUS_BERSERK ||
      unit->state & (US_RESCUING | US_RESCUED)) {
    return;
  }
  
  // Check if target unit can pair-up.
  if (SkillTester(unit, (int)&DualStrikeID) ||
      SkillTester(unit, (int)&DualGuardID))
    AddTarget(unit->xPos, unit->yPos, unit->index, 0);
}

// Draws mostly from MakeRescueTargetList, 0x80253B5.
void PAU_makePairUpTargetList(Unit* unit) {
  int x = unit->xPos;
  int y = unit->yPos;

  gUnitSubject = unit;

  BmMapFill(gMapRange, 0);

  ForEachAdjacentUnit(x, y, PAU_tryAddUnitToPairUpTargetList);
}

const ProcInstruction PAU_infoWindowDisplayProcInstr[] = {
  PROC_SET_NAME("PAU_InfoWindowDisplayProc"),
  PROC_LOOP_ROUTINE(PAU_infoWindowLoop),
  PROC_END
};

// Draw target SMS.
void PAU_infoWindowLoop(struct PAU_InfoWindowDisplayProc* proc) {
  Unit* unit = GetUnit(((TargetSelectionProc*)proc->parent)->pCurrentEntry->unitIndex);
  PutUnitSpriteExt(2, proc->xUnitSprite, 8, 0, unit);
}

// Mostly copies UnitInfoWindow_PositionUnitName, 0x80347D4.
void PAU_infoWindowPositionUnit(struct PAU_InfoWindowDisplayProc* proc, int x, Unit* unit) {
  if (Text_GetStringTextWidth(GetStringFromIndex(unit->pCharacterData->nameTextId)) < 40) {
    proc->xUnitSprite = 4;
    proc->xNameText = 24;
  } else {
    proc->xUnitSprite = 0;
    proc->xNameText = 16;
  }

  proc->xUnitSprite += 8;
  proc->xUnitSprite += (u8)(x<<3);
  proc->xNameText -= 16;
}

void PAU_infoWindowDrawStats(struct PAU_InfoWindowDisplayProc* proc, int x, Unit* targetUnit) {
  int y = 3;
  int dist = 72, col = 3, sym = 0x26;   // For drawing plus or minus symbol.
  s8 val;
  u16 textIDs[7] = {0x4F3, 0x4EC, 0x4ED, 0x4EE, 0x4EF, 0x4F0, 0x4F6}; // Assumes no str/mag split.
  
  // Determine statBoost instance (offensive or defensive).
  const s8* statBoost;
  if (SkillTester(gActiveUnit, (int)&DualStrikeID))
    statBoost = PAU_offStatBoost;
  else
    statBoost = PAU_defStatBoost;
  
  for (int i = 0; i < 7; i++) {
    // Stat name.
    Text_Clear(&proc->lines[i]);
    Text_DrawString(&proc->lines[i], GetStringFromIndex(textIDs[i]));
    Text_Display(&proc->lines[i], gBg0MapBuffer + y*32 + x + 1);
    
    // Stat value.
    if (i >= 6) {
      u8 mov1 = prMovGetter(targetUnit);
      u8 mov2 = prMovGetter(gActiveUnit);
      val = (mov1 > mov2) ? (s8)mov2 : (s8)mov1;  // val = min(mov1, mov2);
      val -= mov1;                                // Difference between target's mov and min mov.
    }
    else
      val = statBoost[i];
    
    // Plus or minus symbol.
    if (val <= -100) {
      dist = 5;
      col = 3;                // Red. Actually yellow, but we replaced it with red.
      sym = 0x14;             // 0x14 is minus.
    }
    else if (val <= -10) {
      dist = 6;
      col = 3;
      sym = 0x14;
    }
    else if (val <= -1) {
      dist = 7;
      col = 3;
      sym = 0x14;
    }
    else if (val == 0) {
      dist = 7;
      col = 0;                // White.
      sym = 0x15;             // 0x15 is plus.
    }
    else if (val < 10) {
      dist = 7;
      col = 4;                // Green.
      sym = 0x15;
    }
    else if (val < 100) {
      dist = 6;
      col = 4;
      sym = 0x15;
    }
    else if (val >= 100) {
      dist = 5;
      col = 4;
      sym = 0x15;
    }
    
    // Draw.
    DrawSpecialUiChar(gBg0MapBuffer + y*32 + x + dist, col, sym);     // Plus or Minus symbol.
    Text_InsertNumberOr2Dashes(&proc->lines[i], 56, col, val < 0 ? -val : val);    // Statboost value.
    
    y += 2;
  }
}

// Target select onInit.
// Draws mostly from RescueSelection_OnConstruction, 0x802467D.
void PAU_selectionOnConstruction(struct PAU_TargetSelectionProc* proc) {
  // Start sprite-drawing and texthandle-holding proc.
  proc->infoWindowDisplayProc = (struct PAU_InfoWindowDisplayProc*)ProcStart(PAU_infoWindowDisplayProcInstr, (Proc*)proc);
  
  Text_ResetTileAllocation();   // We don't need previous menu's text, and can use the VRAM.
  Text_InitClear(&proc->infoWindowDisplayProc->unitName, 6);
  for (int i = 0; i < 7; i++)
    Text_InitClear(&proc->infoWindowDisplayProc->lines[i], 8);

  StartBottomHelpText((Proc*)proc, GetStringFromIndex((u16)(u32)&UM_PairUpBottom));
  
  // Replace yellow text colour with red.
  // Also set green to a consistent colour (shifter makes it vary otherwise).
  u16 redAndGreenColour[6] = {0x3133, 0x211F, 0x106A, 0x268E, 0x13A9, 0xD63};
  CopyToPaletteBuffer((void*)redAndGreenColour, 0x14, 12);
  
  // Load item palette.
  CopyToPaletteBuffer((void*)gIconPalettes, 0x80, 32);
}

// Target select onSwitchIn.
// Draws mostly from RescueSelection_OnChange, 0x802469D.
void PAU_selectionOnChange(struct PAU_TargetSelectionProc* proc, TargetEntry* target) {
  ChangeActiveUnitFacing(target->x, target->y);
  Unit* unit = GetUnit(target->unitIndex);
  int x = GetUnitInfoWindowX(unit, 13);
  
  // Draw info window.
  ClearBG0BG1();
  Decompress(&PAU_infoWindowTSA, gGenericBuffer);
  BgMap_ApplyTsa(gBg1MapBuffer+x, gGenericBuffer, 0);
  
  // Draw text.
  Text_Clear(&proc->infoWindowDisplayProc->unitName);
  PAU_infoWindowPositionUnit(proc->infoWindowDisplayProc, x, unit);
  
  Text_SetXCursor(&proc->infoWindowDisplayProc->unitName, proc->infoWindowDisplayProc->xNameText);
  Text_DrawString(&proc->infoWindowDisplayProc->unitName, GetStringFromIndex(unit->pCharacterData->nameTextId));
  Text_Display(&proc->infoWindowDisplayProc->unitName, gBg0MapBuffer + 35 + x);
  
  // Draw stats.
  PAU_infoWindowDrawStats(proc->infoWindowDisplayProc, x, unit);
  
  // Draw pair-up skill icon.
  u16 gaugeIconID, skillIconID;
  if (SkillTester(gActiveUnit, (int)&DualStrikeID)) {
    gaugeIconID = 0x600;  // Assumes gauge icons are first symbols on sheet 6 (misc icons sheet).
    skillIconID = (int)&DualStrikeID | 0x100;   // Assumes skill icons are on sheet 1.
  }
  else {
    gaugeIconID = 0x601;
    skillIconID = (int)&DualGuardID | 0x100;
  }
  DrawIcon(gBg0MapBuffer + 42 + x, gaugeIconID, 0x4000);  // We do this merely to allocate this icon.
  DrawIcon(gBg0MapBuffer + 42 + x, skillIconID, 0x4000);

  // Draw pair-up gauge icons.
  u16 scrEntry = 0x4000 | GetIconTileIndex(gaugeIconID);
  for (int i = 0; i < PAU_gaugeSize; i++) {
    gBg0MapBuffer[i*32 + 138 + x] = scrEntry + 2;
    gBg0MapBuffer[i*32 + 139 + x] = scrEntry + 3;
  }

  EnableBgSyncByMask(BG0_SYNC_BIT | BG1_SYNC_BIT);
}

// Target select onAPress.
// Draws mostly from Sme's refuge patch.
u8 PAU_selectionOnSelect(TargetSelectionProc* proc, TargetEntry* target) {
  // Target active location.
  Unit* unit = GetUnit(target->unitIndex);
  gActionData.xMove = (u8) unit->xPos;
  gActionData.yMove = (u8) unit->yPos;
  gActionData.targetIndex = target->unitIndex;
  
  // Target target location.
  gActionData.xOther = (u8) gActiveUnit->xPos;
  gActionData.yOther = (u8) gActiveUnit->yPos;
  
  // Action ID.
  gActionData.unitActionType = PAU_actionID;
  
  // Set pair-up flag and reset pair-up gauge.
  PAU_setPairUpFlag();
  PAU_setPairUpGauge(0);
  
  // Re-load gPal_UIFont to replace red colour with yellow again.
  CopyToPaletteBuffer(gPal_UIFont, 0, 32);
  
  return ME_DISABLE | ME_END | ME_PLAY_BEEP | ME_CLEAR_GFX;
}

// Target select onBPress.
// Re-load gPal_UIFont to replace red colour with yellow again.
// Otherwise call generic destructor.
int PAU_selectionOnCancel(TargetSelectionProc* proc, TargetEntry* target) {
  CopyToPaletteBuffer(gPal_UIFont, 0, 32);
  return GenericSelection_BackToUM(proc, target);
}

// Target select onRPress.
// Same as RescueSelection_OnHelp, 0x80228a1, so far.
// TODO, maybe start a help thingy?
u8 PAU_selectionOnHelp() {
  return 0;
}

// Draws mostly from Sme's refuge patch.
u8 PAU_actionPairUp(Proc* proc) {
  Unit* subjectUnit = GetUnit(gActionData.subjectIndex);
  Unit* targetUnit = GetUnit(gActionData.targetIndex);
  
  TryRemoveUnitFromBallista(targetUnit);
  
  u8 dir = GetSomeFacingDirection(targetUnit->xPos, targetUnit->yPos, subjectUnit->xPos, subjectUnit->yPos);
  
  MU_EndAll(); // Deletes MMS before creating new one. Avoids seeing double MMS.
  Make6CKOIDO(subjectUnit, dir, 0, proc);   // Creates new MMS.
  UnitRescue(targetUnit, subjectUnit);
  HideUnitSMS(subjectUnit);
  
  subjectUnit->state |= US_HAS_MOVED;
  
  return 0;
}

// Draws mostly from Sme's refuge patch.
void PAU_postActionPairUp(Unit* unit) {
  if (!(gActionData.unitActionType == PAU_actionID))
    return;
  
  unit->state |= US_HIDDEN;
  unit->state |= US_UNSELECTABLE;
  unit->state |= US_RESCUED;
}

// Menu command usability.
// Draws mostly from RescueUsability, 0x80228A5.
u8 PAU_pairUpUsability(MenuCommandDefinition* command, u8 commandId) {
  if (gActiveUnit->state & (US_HAS_MOVED | US_IN_BALLISTA | US_RESCUING)) {
    return MCA_NONUSABLE;
  }
  
  // Check if gActiveUnit has pair-up skill (offense or defense).
  if (!(SkillTester(gActiveUnit, (int)&DualStrikeID) ||
        SkillTester(gActiveUnit, (int)&DualGuardID)))
    return MCA_NONUSABLE;
  
  PAU_makePairUpTargetList(gActiveUnit);
  
  if (GetTargetListSize() == 0) {
    return MCA_NONUSABLE;
  }
  
  return MCA_USABLE;
}

// Menu command effect.
// Draws mostly from RescueEffect, 0x80228DD.
u8 PAU_pairUpEffect(MenuProc* menuProc, MenuCommandProc* commandProc) {
  PAU_makePairUpTargetList(gActiveUnit);
  StartTargetSelection(&PAU_targetSelectionDefinition);

  return ME_DISABLE | ME_END | ME_PLAY_BEEP;
}