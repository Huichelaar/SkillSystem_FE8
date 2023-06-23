@ Hooked at 0x52980.
@ Updates gauge icons due to attack that misses.
@ Registers:
@   r6: AIS*
.thumb

@ Update gauge icons.
ldr   r0, =PAU_bAnimGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  ldrh  r1, [r6, #0xE]
  sub   r1, #0x1
  bl    PAU_bAnimGaugeUpdate

@ Vanilla, overwritten by hook.
Return:
ldr   r3, =0x80529E7
ldr   r1, =0x2017728      @ gBattleAnimeCounter
cmp   r5, #0x0
bne   GOTO_R3
  mov   r0, #0x1
  str   r0, [r1]
  ldr   r3, =0x8052989
GOTO_R3:
bx    r3
