#ifndef MAP_H
#define MAP_H

void PAU_mapAddSMS(Unit* unit, u8 pairupType);
struct MUProc* PAU_MU_CreateTwo(Unit* mainUnit);
void PAU_ForEachProcExt(ProcInstruction* script, void func(Proc*, u8*), u8* commands);

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

extern s8 PAU_mapFrontOffsX;          // In PairUp.event
extern s8 PAU_mapFrontOffsY;          // In PairUp.event
extern s8 PAU_mapBackOffsX;           // In PairUp.event
extern s8 PAU_mapBackOffsY;           // In PairUp.event

// Vanilla
extern Proc gProcStatePool[]; //! FE8U = 0x2024E68
extern struct MUConfig gMoveUnitExtraDataArray[4]; //! FE8U = 0x3001900

#endif // MAP_H