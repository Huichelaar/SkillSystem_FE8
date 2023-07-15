#ifndef MAP_H
#define MAP_H

void PAU_mapAddSMS(Unit* unit, u8 pairupType);
struct MUProc* PAU_MU_CreateTwo(Unit* mainUnit);
void PAU_ForEachProcExt(ProcInstruction* script, void func(Proc*, u8*), u8* commands);
void PAU_muSortObjLayers();
void PAU_battleMuSortObjLayers();
void PAU_MU_CritFlash_SpriteShakeLoop(Proc* proc);

struct PAU_offsetMapSpriteProc {
  /* 00 */ PROC_HEADER;
  
  /* 2A */ u16 timer;
  /* 2C */ u16 limit;
  /* 30 */ Unit* unit1;
  /* 34 */ struct SMSHandle* smsHandle1;
  /* 38 */ Unit* unit2;
  /* 3C */ struct SMSHandle* smsHandle2;
  /* 40 */ struct MUProc* muProc1;
  /* 44 */ struct MUProc* muProc2;
  /* 48 */ struct MUProc* muProc3;
  /* 4C */ struct MUProc* muProc4;
};
const ProcInstruction PAU_offsetMapSpriteProcInstr[];
void PAU_puOffsetMSInit(struct PAU_offsetMapSpriteProc* proc);
void PAU_puOffsetMSLoop(struct PAU_offsetMapSpriteProc* proc);
void PAU_dropOffsetMSInit(struct PAU_offsetMapSpriteProc* proc);
void PAU_dropOffsetMSLoop(struct PAU_offsetMapSpriteProc* proc);

struct PAU_swapMapSpriteProc {
  /* 00 */ PROC_HEADER;
  
  /* 29 */ u8 state;
  /* 2A */ u16 timer;
  /* 2C */ u16 limit;
  /* 2E */ u8 frontID;
  /* 2F */ u8 backID;
  /* 30 */ u8 frontAngle;
  /* 31 */ u8 backAngle;
  /* 32 */ s8 xStart;
  /* 33 */ s8 yStart;
  /* 34 */ s8 xEnd;
  /* 35 */ s8 yEnd;
};
enum {  // State flags.
  PAU_MAPSWAP_START = 1 << 0,
  PAU_MAPSWAP_DUALGUARD = 1 << 1,
  PAU_MAPSWAP_TARGET = 1 << 2,
  PAU_MAPSWAP_NODUAL = 1 << 3
};
const ProcInstruction PAU_swapMapSpriteProcInstr[];
u8 PAU_startSwapMSProc(u8 start, Proc* proc);
void PAU_swapMSInit(struct PAU_swapMapSpriteProc* proc);
void PAU_swapMSPlay(struct PAU_swapMapSpriteProc* proc);
void PAU_swapMSLoop(struct PAU_swapMapSpriteProc* proc);
void PAU_swapMSEnd(struct PAU_swapMapSpriteProc* proc);

struct PAU_mapGaugeProc {     // Keeps track of gauge bar icon display.
  /* 00 */ PROC_HEADER;
  
  /* 2A */ u16 timer;         // Unused.
  /* 2C */ u16 limit;         // Unused.
  
  /* 2E */ u8 rightPairUpType;
  /* 2F */ u8 leftPairUpType;
  /* 30 */ u8 rightGaugeVal;
  /* 31 */ u8 leftGaugeVal;
  /* 34 */ struct MAInfoFrameProc* infoWindowProc;
};
const ProcInstruction PAU_mapGaugeProcInstr[];
void PAU_mapGaugeScrEntries(struct PAU_mapGaugeProc* proc, u16 mask);
void PAU_mapGaugeInit(struct PAU_mapGaugeProc* proc);

extern s8 PAU_mapOffs;                // In PairUp.event

// Vanilla
struct MAInfoFrameProc {
  /* 00 */ PROC_HEADER;

  /* 2A */ short unk2A;
  /* 2C */ u16 unk2C;
  /* 2E */ u8 x;
  /* 2F */ u8 y;
  /* 30 */ struct Proc* maMain;
};
struct MapAnimActorState {
  /* 00 */ struct Unit* unit;
  /* 04 */ struct BattleUnit* bu;
  /* 08 */ struct MUProc* mu;
  /* 0C */ u8 hp_max;
  /* 0D */ u8 hp_cur;
  /* 0E */ u16 hp_displayed_q4;
  /* 10 */ u8 hp_info_x;
  /* 11 */ u8 hp_info_y;
  /* 12 */ u16 pad;
};
struct MapAnimState {
  /* 00 */ struct MapAnimActorState actor[4];

  /* 50 */ struct BattleHit* pCurrentRound;
  /* 54 */ const struct ProcInstruction* specialProcScr;
  /* 58 */ u8 subjectActorId;
  /* 59 */ u8 targetActorId;
  /* 5A */ u16 hitAttributes;
  /* 5C */ u8 hitInfo;
  /* 5D */ u8 hitDamage;
  /* 5E */ u8 actorCount_maybe;
  /* 5F */ u8 timer;
  /* 60 */ u8 x;
  /* 61 */ u8 y;
  /* 62 */ u8 u62;
};
extern struct MapAnimState gMapAnimData; //! FE8U = 0x203E1F0
extern Proc gProcStatePool[]; //! FE8U = 0x2024E68
extern struct MUConfig gMoveUnitExtraDataArray[4]; //! FE8U = 0x3001900
extern const void _ProcSleepCallback(Proc* proc); //! FE8U = 0x8003291
extern const void PlaySpacialSoundMaybe(u16 songID, int x); //! FE8U = 0x8014B29
extern const void MU_SetDisplayOffset(struct MUProc* proc, int xOff, int yOff); //! FE8U = 0x80797F4
extern struct MUProc* MU_GetByIndex(int index); //! FE8U = 0x8079B91
extern const void MU_SortObjLayers(); //! FE8U = 0x8079BE1
extern const void MapAnimProc_MoveCameraOntoSubject(Proc* proc); //! FE8U = 0807A941
extern const void MapAnimProc_MoveCameraOntoTarget(Proc* proc); //! FE8U = 0807A95D
extern const void MapAnim_BeginSubjectFastAnim(); //! FE8U = 0x80813F9

#endif // MAP_H