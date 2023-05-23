#include "save.h"

// For use with EMS. Saves pair-up data (size should be two bytes).
void PAU_savePairUpData(void* target, unsigned size) {
  u16 data = 0;
  
  if (PAU_getPairUpFlag())
    data |= PAU_FLAG;
  data |= PAU_getPairUpGauge();
  data |= ((u16)PAU_getBattleGauge())<<8;
  
  WriteAndVerifySramFast(&data, target, size);
}

// For use with EMS. Loads pair-up data (size should be two bytes).
void PAU_loadPairUpData(void* source, unsigned size) {
  u16 data;
  ReadSramFast(source, &data, 2);
  
  *PAU_pairUpBitsRAMAddress = (u8)data;
  *PAU_pairUpBattleGaugeRAMAddress = (u8)(data>>8);
}