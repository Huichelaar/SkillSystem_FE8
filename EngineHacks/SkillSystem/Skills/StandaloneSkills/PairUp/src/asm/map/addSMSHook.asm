@ Hooked at 0x271D4.
@ Adds hidden unit to SMS array if they're backup to a non-hidden unit.
@ Registers:
@   r6: Unit*
.thumb


@ Vanilla, overwritten by hook
str   r0, [r6, #0x3C]

ldr   r0, =PAU_showBothMapSprites
ldrb  r0, [r0]
cmp   r0, #0x0
beq   L1
  mov   r0, r6
  ldr   r2, =PAU_isPairedUp
  bl    GOTO_R2
  cmp   r0, #0x0          @ PAU_NOT_PAIREDUP.
  beq   L1
    mov   r1, r0
    mov   r0, r6
    bl    PAU_mapAddSMS
    ldr   r2, =0x8027283  @ Continue.
    b     GOTO_R2

L1:
ldr   r3, [r6, #0xC]
ldr   r0, =0x201        @ US_HIDDEN | US_BIT9 (link arena hide bit).
and   r0, r3
ldr   r2, =0x80271dD
GOTO_R2:
bx    r2
