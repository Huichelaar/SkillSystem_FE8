.thumb

ldr   r0, [r4, #0xC]
ldr   r0, [r0, #0xC]
mov   r1, #0x10
and   r0, r1
cmp   r0, #0x0
beq   Return1               @ Check if rescuing
  sub   r0, r4, #0x1
  ldrb  r0, [r0]
  mov   r1, #0x1
  tst   r0, r1
  bne   Return2             @ Not sure.
    ldr   r0, [r4, #0xC]
    ldr   r1, =SaviorID
    lsl   r1, #0x5
    lsr   r1, #0x5
    ldr   r3, =SkillTester
    bl    GOTO_R3
    cmp   r0, #0x0
    bne   Return2           @ Check if Savior.
    
      ldr   r0, [r4, #0xC]
      ldr   r3, =PAU_isPairedUp
      bl    GOTO_R3
      cmp   r0, #0x0
      bne   Return2         @ Check if paired-up.
        mov   r0, #0x1

Return1:                    @ Possibly display arrows.
ldr   r3, =0x80883BD
GOTO_R3:
bx    r3
Return2:                    @ Don't display arrows
ldr   r3, =0x80883D5
bx    r3
