@ Hooked at 0x28138.
@ If unit SMS is to be shown, show backup unit as well.
@ Registers:
@   r2: SMSHandle* smsHandle.
@   r0: Unit* unit.
.thumb

push  {r4}
mov   r4, r0

@ Vanilla, overwritten by hook.
ldrb  r1, [r2, #0xB]
mov   r3, #0x7F
and   r1, r3
strb  r1, [r2, #0xB]

@ Show backup unit SMS as well if applicable.
ldr   r0, =PAU_showBothMapSprites
ldrb  r0, [r0]
cmp   r0, #0x0
beq   Return
  ldr   r0, [r4, #0xC]
  mov   r1, #0x10
  tst   r1, r0
  beq   Return
    ldrb  r0, [r4, #0x1B]
    cmp   r0, #0x0
    beq   Return
      ldr   r3, =GetUnit
      bl    GOTO_R3
      mov   r4, r0
      cmp   r4, #0x0
      beq   Return
        bl    PAU_isPairedUp
        cmp   r0, #0x3
        bne   Return
          ldr   r0, [r4, #0x3C]       @ SMSHandle*.
          cmp   r0, #0x0
          beq   Return
            ldrb  r1, [r0, #0xB]      @ config.
            mov   r3, #0x7F
            and   r1, r3
            strb  r1, [r0, #0xB]      @ Show sprite.

Return:
pop   {r4}
ldr   r3, =0x8028141
GOTO_R3:
bx    r3
