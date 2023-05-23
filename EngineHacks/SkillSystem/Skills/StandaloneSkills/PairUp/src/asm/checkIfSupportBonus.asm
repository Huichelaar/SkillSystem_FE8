@ Hooked at 0x2862E.
@ Checks if either supporting unit is in pair-up.
@   If one unit is in pair-up, don't apply support bonuses, continue loop.
@   If neither are in pair-up, apply suppport bonuses.
@ Regs:
@   r5: Unit* unit2
@   r7: Unit* unit1.
.thumb

mov   r0, r7
bl    PAU_isPairedUp
cmp   r0, #0x0
beq   L1
  ldr   r0, =0x8028675    @ Unit is paired up
  bx    r0                @ Continue loop.
L1:

mov   r0, r5
bl    PAU_isPairedUp
cmp   r0, #0x0
beq   L2
  ldr   r0, =0x8028675    @ Unit is paired up
  bx    r0                @ Continue loop.
L2:

@ Vanilla, overwritten by hook.
ldr   r0, =0x8028639      @ Neither in pair-up, return.
mov   r14, r0
ldr   r0, [r7]
ldrb  r1, [r0, #0x4]
mov   r0, r5
ldr   r2, =GetSupportDataIdForOtherUnit
bx    r2
