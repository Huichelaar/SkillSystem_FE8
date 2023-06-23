@ Hooked at 0x525F0.
@ Updates gauge icons due to nosferatuAttack.
@ Registers:
@   r4: AIS*
.thumb

@ Update gauge icons.
ldr   r0, =PAU_bAnimGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  ldrh  r1, [r4, #0xE]
  sub   r1, #0x1
  bl    PAU_bAnimGaugeUpdate

@ Vanilla, overwritten by hook.
Return:
ldr   r3, =0x80526BB
ldr   r1, =0x2017728      @ gBattleAnimeCounter
ldr   r0, [r1]
cmp   r0, #0x0
bne   GOTO_R3
  mov   r0, #0x1
  str   r0, [r1]
  ldr   r3, =0x80525F9
GOTO_R3:
bx    r3
