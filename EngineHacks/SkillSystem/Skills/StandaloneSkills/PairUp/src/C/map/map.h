#ifndef MAP_H
#define MAP_H

void PAU_mapAddSMS(Unit* unit, u8 pairupType);
void PAU_ForEachProcExt(ProcInstruction* script, void func(Proc*, u8*), u8* commands);

extern s8 PAU_mapFrontOffsX;          // In PairUp.event
extern s8 PAU_mapFrontOffsY;          // In PairUp.event
extern s8 PAU_mapBackOffsX;           // In PairUp.event
extern s8 PAU_mapBackOffsY;           // In PairUp.event

// Vanilla
extern Proc gProcStatePool[]; //! FE8U = 0x2024E68

#endif // MAP_H