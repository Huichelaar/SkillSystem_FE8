@ Hooked at 0x278AC.
@ Doesn't display rescue icon if unit is paired-up.
@ Also allow check for boss or protected icon if unit is paired-up.
@ Registers:
@   r4: Unit*
.thumb

@ Vanilla overwritten by hook
ldr   r0, [r4, #0xC]
mov   r1, #0x10
tst   r0, r1
beq   CheckBossOrProtected        @ Not rescuing, move on to elseif.
  ldr   r0, =PAU_showBothMapSprites
  ldrb  r0, [r0]
  cmp   r0, #0x0
  beq   L1
    mov   r0, r4
    bl    PAU_isPairedUp
    cmp   r0, #0x0
    bne   CheckBossOrProtected
      L1:
      ldr   r3, =0x80278B7        @ Not paired-up, but rescuing
      bx    r3                    @ Display rescuing symbol.

CheckBossOrProtected:
ldr   r3, =0x8027931
bx    r3
