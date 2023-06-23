@ Hooked at 0x52A14.
@ Updates gauge icons due to Heal.
@ Registers:
@   r7: AIS*
.thumb

@ As healing doesn't affect pair-up gauge,
@ nothing was written here.

@ Vanilla, overwritten by hook.
ldr   r3, =0x8052AD9
ldr   r1, =0x2017728      @ gBattleAnimeCounter
ldr   r0, [r1]
cmp   r0, #0x0
bne   GOTO_R3
  mov   r0, #0x1
  str   r0, [r1]
  ldr   r3, =0x8052A1D
GOTO_R3:
bx    r3
