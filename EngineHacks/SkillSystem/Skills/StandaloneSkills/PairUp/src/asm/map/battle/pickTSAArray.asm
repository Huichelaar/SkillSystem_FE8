@ Hooked at 0x7BE5C.
@ Draw pairup overlay TSA if paired-up. Also keep bool for paired-up in r7.
@ Used later to determine where to draw TSA.
@ Registers:
@   r1: Default TSA array ptr.
@   r8: gMapAnimData.
@   r9: index. 0 for actor/right. 1 for target/left.
.thumb

push  {r7}              @ We'll pop this inline later.
push  {r4}
mov   r4, r1

mov   r7, #0x0          @ Indicates not paired-up.
mov   r0, #0x14
mov   r2, r9
mul   r0, r2
mov   r2, r8
ldr   r0, [r0, r2]      @ Unit*
bl    PAU_isPairedUp
cmp   r0, #0x0
beq   Return
  mov   r7, #0x1        @ Indicates paired-up.
  ldr   r4, =PAU_mapBattleWindowTSAArray

@ Vanilla, overwritten by hook.
Return:
mov   r1, r4
pop   {r4}
mov   r2, #0x5E
add   r8, r2
mov   r2, r8
ldrb  r0, [r2]
ldr   r3, =0x807BE65
bx    r3
