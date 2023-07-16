@ Hooked at 0x3A0A0.
@ Update backup unit's coordinates early to ensure mapbattle won't look weird.
@ Registers:
@   r1: Unit* mainUnit.
.thumb

ldr   r0, =PAU_showBothMapSprites
ldrb  r0, [r0]
cmp   r0, #0x0
beq   Return
  mov   r0, r1
  bl    PAU_isPairedUp
  cmp   r0, #0x0
  beq   Return
    ldr   r0, =gActiveUnit
    ldr   r0, [r0]
    mov   r1, #0x1B
    ldrb  r0, [r0, r1]
    ldr   r3, =GetUnit
    bl    GOTO_R3
    cmp   r0, #0x0
    beq   Return
      ldr   r1, =gActiveUnit
      ldr   r1, [r1]
      ldrb  r2, [r1, #0x10]
      strb  r2, [r0, #0x10]         @ x.
      ldrb  r2, [r1, #0x11]
      strb  r2, [r0, #0x11]         @ y.

@ Vanilla, overwritten by hook.
Return:
ldr   r3, =0x803A0A9
ldrb  r0, [r4, #0x6]
cmp   r0, #0x0
beq   L1
  ldr   r3, =0x803A0BB
L1:
ldrb  r0, [r4, #0x8]
GOTO_R3:
bx    r3
