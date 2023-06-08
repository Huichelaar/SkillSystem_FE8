#ifndef BANIM_H
#define BANIM_H

// Vanilla.
// Proc Instruction at 0x5b9ce4.
struct KakudaiProc {
  /* 00 */ PROC_HEADER;
  
  /* 2A */ u8 unk29[3];
  /* 2C */ s16 timer;
  /* 2E */ s16 limit;
  /* 30 */ u8 unk30[2];
  
  /* 32 */ s16 lStartX;
  /* 34 */ s16 rStartX;
  /* 36 */ s16 lEndX;
  /* 38 */ s16 rEndX;
  /* 3A */ s16 lStartY;
  /* 3C */ s16 rStartY;
  /* 3E */ u8 unk3E[6];
  
  /* 44 */ u32 expand;    // 0 if start of battle, expanding banims. 1 if end of battle, shrinking banims.
  /* 48 */ u8 unk48[4];
  /* 4C */ u32 hideSpriteLeft;
  /* 50 */ u32 hideSpriteRight;
  /* 54 */ void* oamDataLeft;
  /* 58 */ void* oamDataRight;
};
extern const int GetValueFromEasingFunction(u8 rateFunction, int startX, int endX, u32 currentT, u32 endT); //! FE8U = 0x8012DCD
extern const void AffineSetOAMData(void* oamDataScript, void* affineOAMDataBuffer, u16 scaleX, u16 scaleY, u8 unk4);  //! FE8U = 0x807180D
// Array of these at 0x8C00008
struct BattleAnim {
  /* 00 */ char abbr[12];
  /* 0C */ int *modes;
  /* 10 */ char *script;
  /* 14 */ char *oam_r;
  /* 18 */ char *oam_l;
  /* 1C */ char *pal;
};
extern const struct BattleAnim* battleAnims[];
struct BanimRoundScripts {
  /* 00 */ u8 frame_front;
  /* 01 */ u8 priority_front;
  /* 02 */ u8 frame_back;
  /* 03 */ u8 priority_back;
};
extern const struct BanimRoundScripts gBattleAnimModeLookupMaybe[]; //! FE8U = 0x80DAEF0
extern const u32 gAISFrames_DummyNoFrames; //! FE8U = 0x85B9D5C
extern BattleUnit** gpUnitLeft_BattleStruct; //! FE8U = 0x203E188
extern BattleUnit** gpUnitRight_BattleStruct; //! FE8U = 0x203E18C

// Custom,
extern u8 BA2_AB_UNCOMPFRAMEDATA;  // In AAA.event
extern u8 BA2_AB_UNCOMPOAMDATA;    // In AAA.event

extern const struct BanimRoundScripts PAU_backupBAnimRoundScripts[];  // In PairUp.event

u16 PAU_findPairUpBAnimID(Unit* unit);
void PAU_scalePairUpPartner(void* oamDataScript, void* oamDataBuffer, AIStruct* newAIS, u16 aisSubjectID, struct KakudaiProc* proc, u16 scale);
void PAU_initPairUpPartner(AIStruct* frontAIS, AIStruct* backAIS, Unit* unit, u8 aisSubjectID);

struct PAU_aisProc {
  /* 00 */ PROC_HEADER;
  
  /* 2C */ AIStruct* leftFrontAIS;
  /* 30 */ AIStruct* leftBackAIS;
  /* 34 */ AIStruct* rightFrontAIS;
  /* 38 */ AIStruct* rightBackAIS;
  
  /* 3C */ AIStruct* puLeftFrontAIS;
  /* 40 */ AIStruct* puLeftBackAIS;
  /* 44 */ AIStruct* puRightFrontAIS;
  /* 48 */ AIStruct* puRightBackAIS;
};
const ProcInstruction PAU_aisProcInstr[];
void PAU_haltBAnims(struct PAU_aisProc* proc);
void PAU_adjustBAnimLocs(struct PAU_aisProc* proc);

#endif // BANIM_H