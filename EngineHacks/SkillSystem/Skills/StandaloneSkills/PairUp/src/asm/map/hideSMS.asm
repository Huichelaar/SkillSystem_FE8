@ Hooked at 0x28120.
@ If unit SMS is to be hidden, hide backup unit as well.
@ Registers:
@   r2: SMSHandle* smsHandle.
@   r4: Unit* unit.
.thumb

@ Vanilla, overwritten by hook.
cmp   r2, #0x0
beq   Return
ldrb  r1, [r2, #0xB]                  @ smsHandle->config.
mov   r3, #0x80
orr   r1, r3
strb  r1, [r2, #0xB]

@ Hide backup unit SMS as well if applicable.
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
            mov   r3, #0x80
            orr   r1, r3
            strb  r1, [r0, #0xB]      @ Hide sprite.
  
Return:
pop   {r4}
pop   {r0}
bx    r0
GOTO_R3:
bx    r3
