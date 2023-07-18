@ Hooked at 0x56A74. Part of when battle animations get scaled
@ before and after battle.
@ decomp banim sheet of paired-up partner to relevant RAM location, and
@ store Paired-up unit's OAMOffset in Kakudai proc +0x5C and +0x60.
@ Registers:
@   r0: Free.
@   r1: 0x6014000 (sheet space in OBJ VRAM)
@   r2-r3: Free.
@   r4: procState* Kakudai.
.thumb

push  {r14}

@ Vanilla, overwritten by hook.
ldr   r0, =0x2000088        @ Buffer for AIS Sheets.
mov   r2, #0x80
lsl   r2, #0x7
ldr   r3, =RegisterTileGraphics
bl    GOTO_R3

@ Left AIS.
mov   r0, #0x0
bl    PAU_decompSheet

@ Right AIS.
mov   r0, #0x1
bl    PAU_decompSheet

mov   r0, #0x0
pop   {r1}
bx    r1
GOTO_R3:
bx    r3

@ Finds sheet offset and decomps it into sheetbuffer.
@ Also finds Paired-up unit's OAMOffset and stores it
@ in +0x5C(left) or +0x60(right) of Kakudai proc (both free).
@ Finally, also puts paired-up partner's palette in palette-buffer.
@   r0: 0 for Left, 1 for Right.
@   r4: procState* Kakudai.
PAU_decompSheet:
push  {r5-r7, r14}
sub   sp, #0x4
mov   r5, r0

mov   r0, #0x0
lsl   r1, r5, #0x2
add   r1, #0x5C
str   r0, [r4, r1]        @ Clear +0x5C and +0x60.

@ Don't show if promotion.
ldr   r0, =gSomethingRelatedToAnimAndDistance
mov   r1, #0x0
ldsh  r0, [r0, r1]
cmp   r0, #0x4            @ Promotion.
bne   L5
  bl    notPairedUp
L5:

@ Don't show if unit not enabled, unless Latona/Fortify.
ldr   r1, =0x203E104      @ gBattleAnimUnitEnabledLookup
lsl   r2, r5, #0x1
ldsh  r1, [r1, r2]
cmp   r1, #0x1
beq   L6
  cmp   r0, #0x3          @ Latona/Fortify.
  bne   L6
    bl    notPairedUp
L6:

ldr   r0, =gpUnitLeft_BattleStruct
lsl   r1, r5, #0x2
add   r0, r1
ldr   r0, [r0]
bl    PAU_isPairedUp
cmp   r0, #0x0
bne   L4
bl    notPairedUp
  L4:
  ldr   r0, =gpUnitLeft_BattleStruct
  lsl   r1, r5, #0x2
  add   r0, r1
  ldr   r0, [r0]
  ldrb  r0, [r0, #0x1B]     @ Pair-up partner.
  ldr   r3, =GetUnit
  bl    GOTO_R3
  mov   r7, r0
  mov   r1, sp
  bl    PAU_findPairUpBAnim
  lsl   r0, #0x5
  ldr   r1, =0x8059BD8      @ Pointer to battle animation struct array.
  ldr   r1, [r1]
  add   r0, r1              @ bAnim struct*.
  
  @ Make sure OAMData and FrameData are uncompressed.
  mov   r1, #0x1
  ldr   r3, =BA2_AB_UNCOMPFRAMEDATA
  ldrb  r3, [r3]
  lsl   r1, r3
  mov   r2, #0x1
  ldr   r3, =BA2_AB_UNCOMPOAMDATA
  ldrb  r3, [r3]
  lsl   r2, r3
  orr   r1, r2
  ldr   r2, [r0, #0x8]
  and   r2, r1
  cmp   r2, r1
  bne   notPairedUp
  
    @ Store OAMData + offset for later use.
    ldr   r1, =gSomethingRelatedToAnimAndDistance   @ Anim distance. 0: melee, 1: ranged, 2: long-range.
    mov   r2, #0x0
    ldsh  r1, [r1, r2]
    ldr   r2, =0x80DAF18      @ Used for mode lookup.
    ldrb  r1, [r2, r1]
    ldr   r2, =gBattleAnimModeLookupMaybe
    lsl   r1, #0x2
    ldrb  r1, [r2, r1]        @ Standing motion mode.
    lsl   r1, #0x2
    ldr   r3, [r0, #0xC]      @ SectionData ptr.
    ldr   r3, [r3, r1]        @ FrameData offset.
    ldr   r1, [r0, #0x10]     @ FrameData.
    add   r6, r1, r3          @ FrameData + offset.
    neg   r1, r5
    add   r1, #0x6
    lsl   r1, #0x2
    ldr   r3, [r0, r1]        @ OAMData.
    ldr   r1, [r6, #0x8]      @ OAM offset.
    add   r3, r1
    lsl   r1, r5, #0x2
    add   r1, #0x5C
    str   r3, [r4, r1]        @ Store OAMData + offset in proc +0x5C or +0x60
    
    @ Determine if character palette or generic palette.
    ldr   r1, [r7, #0x4]
    ldrb  r1, [r1, #0x4]
    mov   r12, r1             @ ClassID.
    ldr   r1, [r7]
    ldrb  r1, [r1, #0x4]      @ CharID.
    sub   r1, #0x1
    mov   r2, #0x7
    mul   r1, r2
    ldr   r2, =0x80575B4      @ Ptr to charPaletteStruct*.
    ldr   r2, [r2]
    add   r1, r2
    mov   r3, #0x0
    Loop:
      ldrb  r2, [r1, r3]
      cmp   r2, r12
      beq   notGeneric
      add   r3, #0x1
      cmp   r3, #0x7
      blt   Loop
    generic:
    ldr   r1, [r0, #0x8]
    ldr   r0, [r0, #0x1C]
    b     L1
    notGeneric:
    ldr   r1, [r7]
    ldrb  r1, [r1, #0x4]      @ CharID.
    sub   r1, #0x1
    mov   r2, #0x7
    mul   r1, r2
    ldr   r2, =0x8057394      @ Ptr to charPaletteStruct2*.
    ldr   r2, [r2]
    add   r2, r1
    ldrb  r2, [r2, r3]
    cmp   r2, #0x0
    beq   generic             @ Generic after all.
      sub   r2, #0x1
      ldr   r1, =0x8059BFC    @ Ptr to charPaletteStruct3*.
      ldr   r1, [r1]
      lsl   r2, #0x4
      add   r2, r1
      ldr   r1, [r0, #0x8]
      ldr   r0, [r2, #0xC]    @ Ptr to palData.
    L1:
    
    @ Decomp palData if applicable.
    mov   r2, #0x1
    ldr   r3, =BA2_AB_UNCOMPPALDATA
    ldrb  r3, [r3]
    lsl   r2, r3
    tst   r1, r2
    bne   uncompPAL
      ldr   r1, =BA2_2PALETTERAM
      ldr   r1, [r1]
      lsl   r2, r5, #0x2
      add   r2, r5
      lsl   r2, #0x6
      add   r2, #0xA0
      add   r1, r2
      swi   #0x11               @ Decompress.
      ldr   r0, =BA2_2PALETTERAM
      ldr   r0, [r0]
      lsl   r1, r5, #0x2
      add   r1, r5
      lsl   r1, #0x6
      add   r1, #0xA0
      add   r0, r1
    uncompPAL:
    
    @ Find faction of unit.
    ldrb  r1, [r7, #0xB]        @ Deployment byte.
    lsr   r1, #0x6
    cmp   r1, #0x1
    bne   L2
      mov   r1, #0x2            @ Faction.
      b     L3
    L2:
    cmp   r1, #0x2
    bne   L3
      mov   r1, #0x1            @ Faction.
    L3:
    lsl   r1, #0x5
    add   r0, r1
    
    @ Move palette into palette buffer.
    ldr   r1, =gPaletteBuffer+0x300
    lsl   r2, r5, #0x6
    add   r1, r2
    mov   r2, #0x8
    swi   #0xC                  @ CpuFastSet. bAnims don't use CopyToPaletteBuffer!
    
    @ Decomp sheet into sheetbuffer.
    ldr   r0, [r6, #0x4]      @ Ptr to sheet.
    ldr   r1, =0x2001088
    lsl   r2, r5, #0xD
    add   r1, r2
    swi   #0x11               @ Decompress.
notPairedUp:

add   sp, #0x4
pop   {r5-r7}
pop   {r0}
bx    r0
