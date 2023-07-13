#ifndef FORECAST_H
#define FORECAST_H

struct PAU_forecastProc {
  /* 00 */ PROC_HEADER;

  /* 2C */ int unk_2C;
  /* 30 */ s8 x;
  /* 31 */ s8 y;
  /* 32 */ u8 frameKind;
  /* 33 */ s8 ready;
  /* 34 */ s8 needContentUpdate;
  /* 35 */ s8 side; // -1 is left, +1 is right
  /* 36 */ s8 unk_36;
  /* 38 */ struct TextHandle unitNameTextA;
  /* 40 */ struct TextHandle unitNameTextB;
  /* 48 */ struct TextHandle itemNameText;
  /* 50 */ s8 hitCountA;
  /* 51 */ s8 hitCountB;
  /* 52 */ s8 isEffectiveA;
  /* 53 */ s8 isEffectiveB;
};
const ProcInstruction PAU_forecastProcInstr[];
int PAU_forecastStartHelpBox(Proc* parent);
void PAU_forecastDrawIconHFlip(u16* BgOut, int IconIndex, int OamPalBase);
void PAU_forecastDrawGaugeIcons(struct PAU_forecastProc* proc, u16* dest, Unit* unit, u8 pairupType, u8 right);
void PAU_forecastDrawContentsStandard(struct PAU_forecastProc* proc);
void PAU_forecastDrawContentsExtended(struct PAU_forecastProc* proc);
void PAU_forecastDrawContents(struct PAU_forecastProc* proc);
void PAU_forecastOnNewBattle(struct PAU_forecastProc* proc);
void PAU_forecastPutTilemaps(struct PAU_forecastProc* proc);
void PAU_forecastPutWeaponTriangleArrows(struct PAU_forecastProc* proc);
void PAU_forecastPutMultipliers(struct PAU_forecastProc* proc);
void PAU_forecastLoopSlideIn(struct PAU_forecastProc* proc);
void PAU_forecastLoopDisplay(struct PAU_forecastProc* proc);
void PAU_forecastLoopSlideOut(struct PAU_forecastProc* proc);

extern const void* PAU_forecastWindowLeftTSA;         // In gfx.event.
extern const void* PAU_forecastWindowRightTSA;        // In gfx.event.
extern const void* PAU_forecastWindowBothTSA;         // In gfx.event.
extern const void* PAU_forecastWindowExtLeftTSA;      // In gfx.event.
extern const void* PAU_forecastWindowExtRightTSA;     // In gfx.event.
extern const void* PAU_forecastWindowExtBothTSA;      // In gfx.event.

// Vanilla.
extern TextHandle gaBattleForecastTextStructs[]; //! FE8U = 0x2002FDC
extern u16 gpStatScreenPageBg0Map[0x280]; //! FE8U = 0x2003D2C
extern const void sub_8004BB4(u16 *a, int b, int c); //! FE8U = 0x8004BB5
extern const void DrawSpecialUiStr(u16 *a, int b, int c, int d); //! FE8U = 0x8004D5D
extern const void UpdateStatArrowSprites(int x, int y, u8 isDown); //! FE8U = 0x08015BD5
extern const int GetBattleForecastPanelSide(); //! FE8U = 0x80364D9
extern const void DrawUnitNameForBattleForecast(u16* dest, struct TextHandle* text, struct Unit* unit); //! FE8U = 0x80365E5
extern const void PutBattleForecastItemName(u16* dest, struct TextHandle* text, int itemIdx); //! FE8U = 0x8036629
extern const void BKSEL_SetupHitAndSuchStats(struct PAU_forecastProc* proc); //! FE8U = 0x80366A1
extern const void InitBattleForecastFramePalettes(); //! FE8U = 0x8036D4D
extern const void BKSEL_InitGfx(struct PAU_forecastProc* proc); //! FE8U = 0x8036D9D
extern const void BKSEL_Destructor(); //! FE8U = 0x8036E1D
extern const void UpdateBattleForecastEffectivenessPalettes(struct PAU_forecastProc* proc); //! FE8U = 0x8036FE9
extern const s8 MapEventEngineExists_(); //! FE8U = 0x80372D5
extern const void BattleForecast_OnNewBattle(struct PAU_forecastProc* proc); //! FE8U = 0x80370C9
extern const void BattleForecast_LoopSlideIn(struct PAU_forecastProc* proc); //! FE8U = 0x803710D
extern const void BattleForecast_LoopSlideOut(struct PAU_forecastProc* proc); //! FE8U = 0x80371F1
extern const void BattleForecast_LoopDisplay(struct PAU_forecastProc* proc); //! FE8U = 0x803705D
extern const void* gTSA_BattleForecastStandard; //! FE8U = 0x85A09A8
extern const void* gTSA_BattleForecastExtended; //! FE8U = 0x85A0AEC

const u8 ITEM_MONSTER_STONE = 0xB5;

#endif // FORECAST_H