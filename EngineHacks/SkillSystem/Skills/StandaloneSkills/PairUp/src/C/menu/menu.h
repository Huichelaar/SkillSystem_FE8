#ifndef MENU_H
#define MENU_H

void PAU_tryAddUnitToPairUpTargetList(struct Unit* unit);
void PAU_makePairUpTargetList(Unit* unit);

struct PAU_TargetSelectionProc {
	TargetSelectionProc tsProc;
  /* 3C */ struct PAU_InfoWindowDisplayProc* infoWindowDisplayProc;
};

// Draws SMS and holds texthandles to stats.
struct PAU_InfoWindowDisplayProc {
  /* 00 */ PROC_HEADER;
  
  /* 29 */ u8 x;
  /* 2A */ u8 xUnitSprite;
  /* 2B */ u8 xNameText;
  
  /* 2C */ TextHandle unitName;
  /* 34 */ TextHandle lines[7];
};
const ProcInstruction PAU_infoWindowDisplayProcInstr[];
void PAU_infoWindowLoop(struct PAU_InfoWindowDisplayProc* proc);
void PAU_infoWindowPositionUnit(struct PAU_InfoWindowDisplayProc* proc, int x, Unit* unit);
void PAU_infoWindowDrawStats(struct PAU_InfoWindowDisplayProc* proc, int x, Unit* targetUnit);

// PairUp Target Selection Routine list.
void PAU_selectionOnConstruction(struct PAU_TargetSelectionProc* proc);
void PAU_selectionOnChange(struct PAU_TargetSelectionProc* proc, TargetEntry* target);
u8 PAU_selectionOnSelect(TargetSelectionProc* proc, TargetEntry* target);
int PAU_selectionOnCancel(TargetSelectionProc* proc, TargetEntry* target);
u8 PAU_selectionOnHelp();
extern TargetSelectionDefinition PAU_targetSelectionDefinition;   // Selection routine list.

// Action stuff.
u8 PAU_actionPairUp(Proc* proc);
void PAU_postActionPairUp(Unit* unit);

// Menu commands.
u8 PAU_pairUpUsability(MenuCommandDefinition* command, u8 commandId);
u8 PAU_pairUpEffect(MenuProc* menuProc, MenuCommandProc* commandProc);

const extern void* PAU_infoWindowTSA;

// Vanilla.
extern const int GetUnitInfoWindowX(struct Unit* unit, int width); //! FE8U = 0x80349D5
extern const void PutUnitSpriteExt(int layer, int x, int y, int oam2, struct Unit* unit); //! FE8U = 0x8027E4D
extern const void TryRemoveUnitFromBallista(Unit* unit); //! FE8U = 0x8037A6D
extern const u8 GetSomeFacingDirection(s8 xSubject, s8 ySubject, s8 xTarget, s8 yTarget); //! FE8U = 0x801DBD5
extern const void Make6CKOIDO(Unit* subjectUnit, u8 dir, u8 unk2, Proc* parent); //! FE8U = 0x801DC7D
extern const void MU_EndAll(); //! FE8U = 0x80790A5
extern Unit* gUnitSubject; //! FE8U = 0x2033F3C
enum {
  CLASS_PHANTOM = 0x51,
};
extern const u16 gPal_UIFont[16]; //! FE8U = 0x859EF00
extern const u16 gIconPalettes[16]; //! FE8U = 0x85996F4

#endif // MENU_H