@ Hooked at 0x784C4.
@ If paired-up, create second MU for backup mapsprite and offset the two.
@ Registers:
@   r0: MUProc*.
@   r4: mapSpritePaletteIndex.
@   r5: Unit* mainUnit.
.thumb

push  {r6-r7}
sub   sp, #0x4

@ Vanilla, overwritten by hook.
mov   r6, r0
str   r5, [r6, #0x2C]           @ MUProc* proc->pUnit = pUnit.
mov   r2, r6
add   r2, #0x3E
mov   r1, #0x1
strb  r1, [r2]                  @ MUProc* proc->boolAttractCamera = TRUE.

ldr   r1, =PAU_showBothMapSprites
ldrb  r1, [r1]
cmp   r1, #0x0
beq   Return
  ldr   r0, [r5, #0xC]
  mov   r1, #0x10
  tst   r1, r0
  beq   Return
    ldrb  r0, [r5, #0x1B]
    cmp   r0, #0x0
    beq   Return
      ldr   r3, =GetUnit
      bl    GOTO_R3
      mov   r7, r0
      cmp   r7, #0x0
      beq   Return
        bl    PAU_isPairedUp
        cmp   r0, #0x3
        bne   Return
          
          @ Unit is paired up. Create new MUProc*.
          mov   r0, #0x10
          ldsb  r0, [r7, r0]    @ x.
          mov   r1, #0x11
          ldsb  r1, [r7, r1]    @ y.
          ldr   r2, [r7, #0x4]
          ldrb  r2, [r2, #0x4]  @ ClassID.
          ldr   r3, =MU_CreateInternal
          mov   r12, r3
          mov   r3, #0x1
          neg   r3, r3
          str   r4, [sp]        @ unitSpritePalette.
          bl    GOTO_R12
          str   r7, [r0, #0x2C] @ MUProc* proc->pUnit = pUnit.
          mov   r2, r0
          add   r2, #0x3E
          mov   r1, #0x0
          strb  r1, [r2]        @ MUProc* proc->boolAttractCamera = FALSE.
          
          @ Offset the MUProcs.
          mov   r1, #0x0
          
          mov   r2, #0x50
          ldr   r3, =PAU_mapFrontOffsX
          ldsb  r3, [r3, r1]
          lsl   r3, #0x4
          strh  r3, [r6, r2]
          
          ldr   r3, =PAU_mapBackOffsX
          ldsb  r3, [r3, r1]
          lsl   r3, #0x4
          strh  r3, [r0, r2]
          
          mov   r2, #0x52
          ldr   r3, =PAU_mapFrontOffsY
          ldsb  r3, [r3, r1]
          lsl   r3, #0x4
          strh  r3, [r6, r2]
          
          ldr   r3, =PAU_mapBackOffsY
          ldsb  r3, [r3, r1]
          lsl   r3, #0x4
          strh  r3, [r0, r2]

Return:
mov   r0, r6
add   sp, #0x4
pop   {r6-r7}
ldr   r1, =0x80784CF
bx    r1
GOTO_R3:
bx    r3
GOTO_R12:
bx    r12
