#ifndef MAP_AURA_FX_INCLUDED
#define MAP_AURA_FX_INCLUDED

#include "gbafe.h"

void StartMapAuraFx(void);
void EndMapAuraFx(void);
int  IsMapAuraFxActive(void);
void SetMapAuraFxSpeed(int speed);
void SetMapAuraFxBlend(unsigned blend);
void SetMapAuraFxPalette(const u16 palette[]);
void AddMapAuraFxUnit(struct Unit* unit);

// Pair-up stuff.
extern u8 PAU_isPairedUp(Unit* unit);
extern u8 PAU_showBothMapSprites;
extern s8 PAU_mapOffs;

#endif // MAP_AURA_FX_INCLUDED
