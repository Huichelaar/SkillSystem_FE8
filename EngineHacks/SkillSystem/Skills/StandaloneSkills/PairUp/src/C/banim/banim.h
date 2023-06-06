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

u16 PAU_findPairUpBAnimID(Unit* unit);
void PAU_scalePairUpPartner(void* oamDataScript, void* oamDataBuffer, AnimationInterpreter* newAIS, u16 aisSubjectID, struct KakudaiProc* proc, u16 scale);

#endif // BANIM_H