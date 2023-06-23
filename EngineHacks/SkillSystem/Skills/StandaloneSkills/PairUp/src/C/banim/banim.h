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
// Instance gSpellAssocData in Vanilla at 0x8AFBD8.
struct SpellAssoc {
    /* 00 */ u16 item;
    /* 02 */ u8 count;
    /* 04 */ s16 type;
    /* 08 */ struct ProcCmd *pcmd_manim;
    /* 0C */ u8 stat;
    /* 0D */ u8 facing;
    /* 0E */ u8 flash_color;
};
extern struct SpellAssoc* GetSpellAssocStructPtr(u16 item); //! FE8U = 0x8078215
// Array of these at 0x8C00008
struct BattleAnim {
  /* 00 */ char abbr[12];
  /* 0C */ int *modes;
  /* 10 */ char *script;
  /* 14 */ char *oam_r;
  /* 18 */ char *oam_l;
  /* 1C */ char *pal;
};
extern const struct BattleAnim* battleAnims;
struct BanimRoundScripts {
  /* 00 */ u8 frame_front;
  /* 01 */ u8 priority_front;
  /* 02 */ u8 frame_back;
  /* 03 */ u8 priority_back;
};
extern const struct BanimRoundScripts gBattleAnimModeLookupMaybe[]; //! FE8U = 0x80DAEF0
extern struct NewBattleRound* battleBuffer; //! FE8U = 0x802AEC4
extern const u32 gAISFrames_DummyNoFrames; //! FE8U = 0x85B9D5C
extern const void StartEfxSureShotAnime(AIStruct* ais); //! FE8U = 0x806E311
extern const void StartEfxGenericAnime(AIStruct* ais); //! FE8U = 0x806E58D
extern const void PlaySoundAt(u16 songID, u16 unk1, s16 x, u8 unk3); //! FE8U = 0x80729A5
extern const void SwitchAISFrameDataFromBARoundType(AIStruct* ais, u8 roundType); //! FE8U = 0x805A07D
extern const u16 GetBattleAnimationId(Unit* unit, const void* pBattleAnimDef, u16 item, u32 *unk3); //! FE8U = 0x8058849
extern AIStruct* GetOpponentFrontAIS(AIStruct* ais); //! FE8U = 0x805A2B5
extern const s16 GetAISNextBattleAnimRoundType(AIStruct* ais); //! FE8U = 0x805A2F1
extern const s16 GetAISCurrentRoundType(AIStruct* ais); //! FE8U = 0x805A311
extern const u8 IsRoundTypeOffensive (s16 roundType); //! FE8U = 0x805A21D
extern const void MoveBattleCameraOnto(AIStruct* ais, s16 speed); //! FE8U = 0x80533D1
extern const ProcInstruction gProc_efxFarAttack[]; //! FE8U = 0x85B97C4
extern const u16 gIconPalettes[16]; //! FE8U = 0x85996F4
extern int* gpBattleAnimFrameStartLookup[2]; //! FE8U = 0x200005C
extern int bAnimCameraTarget; //!FE8U = 0x2017744
extern int bAnimCameraMoving; //!FE8U = 0x2017748
extern s32 bAnimCameraOffs; //! FE8U = 0x201FB0C
extern BattleUnit* gpUnitLeft_BattleStruct; //! FE8U = 0x203E188
extern BattleUnit* gpUnitRight_BattleStruct; //! FE8U = 0x203E18C
extern u16 gBattleAnimAnimationIndex[2]; //! FE8U = 0x203E182

const s16 NOSFERATUSPELL = 0x1E;

// Custom,
extern u8 BA2_AB_UNCOMPFRAMEDATA;  // In AAA.event
extern u8 BA2_AB_UNCOMPOAMDATA;    // In AAA.event

extern const struct BanimRoundScripts PAU_backupBAnimRoundScripts[];  // In PairUp.event.
extern const s16 PAU_dualStrikeSkillActivationSound;                  // In PairUp.event.
extern const s16 PAU_dualGuardSkillActivationSound;                   // In PairUp.event.
extern const u8 PAU_dualBAnimSwapTime;                                // In PairUp.event.
extern const u16 PAU_defaultMagicAnimsTable[];                        // In PairUp.event.
extern const s16 PAU_nosferatuReplacementSpellID;                     // In PairUp.event.

u16 PAU_findPairUpBAnim(Unit* unit, s16* spellAnimID);
void PAU_scalePairUpPartner(void* oamDataScript, void* oamDataBuffer, AIStruct* newAIS, u16 aisSubjectID, struct KakudaiProc* proc, u16 scale);
void PAU_initPairUpPartner(AIStruct* frontAIS, AIStruct* backAIS, Unit* unit, u8 aisSubjectID);
void PAU_dualStrikeAnim(AIStruct* AIS); // called by Skill Activation things.
void PAU_dualGuardAnim(AIStruct* AIS); // called by Skill Activation things.
void PAU_setPriorityDuringLvlUp(Proc* ekrLevelUpProc, u16 priority);

struct PAU_aisProc {
  /* 00 */ PROC_HEADER;
  
  /* 29 */ u8 timer;
  /* 2A */ u8 limit;
  /* 2B */ u8 state;
  
  /* 2C */ AIStruct* leftFrontAIS;
  /* 30 */ AIStruct* leftBackAIS;
  /* 34 */ AIStruct* rightFrontAIS;
  /* 38 */ AIStruct* rightBackAIS;
  
  /* 3C */ AIStruct* puLeftFrontAIS;
  /* 40 */ AIStruct* puLeftBackAIS;
  /* 44 */ AIStruct* puRightFrontAIS;
  /* 48 */ AIStruct* puRightBackAIS;
  
  /* 4C */ s16 leftOriginX;
  /* 4E */ s16 leftOriginY;
  /* 50 */ s16 rightOriginX;
  /* 52 */ s16 rightOriginY;
  
  /* 54 */ s16 slope;
  /* 56 */ s16 radius;
  /* 58 */ u8 leftMainAngle;
  /* 59 */ u8 leftBackAngle;
  /* 5A */ u8 rightMainAngle;
  /* 5B */ u8 rightBackAngle;
};
enum
{
	// state flags.
	SWAPPINGLEFT = (1 << 0),    // Indicates left AISes are swapping
  SWAPPEDLEFT = (1 << 1),     // Indicates left backup and main AISes have swapped.
	SWAPPINGRIGHT = (1 << 2),
  SWAPPEDRIGHT = (1 << 3),
  DUALGUARDACTIVE = (1 << 4),
  LASTROUND = (1 << 5)        // Set by C0D.
};
const ProcInstruction PAU_aisProcInstr[];
void PAU_haltBAnims(struct PAU_aisProc* proc);
void PAU_adjustBAnimLocs(struct PAU_aisProc* proc);
void PAU_swapBAnimLocs(struct PAU_aisProc* proc, u8 right);

struct PAU_delayAISProc {   // Delays actions until camera has stopped moving.
  /* 00 */ PROC_HEADER;
  
  /* 29 */ u8 stateMask;
  /* 2A */ u16 swapSound;
  /* 2C */ s16 swapSoundXPos;
};
const ProcInstruction PAU_delayAISProcInstr[];
void PAU_waitUntilCameraStops(struct PAU_delayAISProc* proc);
void PAU_applyStateMask(struct PAU_delayAISProc* proc);
void PAU_enableAISes(struct PAU_delayAISProc* proc);

struct PAU_bAnimGaugeProc {     // Keeps track of gauge bar icon display.
  /* 00 */ PROC_HEADER;
  
  /* 29 */ u8 disappear;
  /* 2A */ u16 timer;
  /* 2C */ u16 limit;
  /* 2E */ u8 leftPairUpType;
  /* 2F */ u8 rightPairUpType;
  /* 30 */ u8 leftGaugeVal;
  /* 31 */ u8 rightGaugeVal;
  /* 32 */ s16 prevX;
  
  /* 34 */ u8 ending;
};
const ProcInstruction PAU_bAnimGaugeProcInstr[];
void PAU_bAnimGaugeAppearInit(struct PAU_bAnimGaugeProc* proc);
void PAU_bAnimGaugeAppearLoop(struct PAU_bAnimGaugeProc* proc);
void PAU_bAnimGaugeUpdate(struct PAU_bAnimGaugeProc* proc, u16 round);

#endif // BANIM_H