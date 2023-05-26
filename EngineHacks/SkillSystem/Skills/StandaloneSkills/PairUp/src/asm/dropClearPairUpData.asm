@ Hooked at 0x18384. Clears pair-up gauge and unsets pair-up flag
@ if a unit that's paired-up is dropped.
@   r4: contains unit* to unit that's to be dropped.
.thumb

push  {r14}

mov   r0, r4
bl    PAU_isPairedUp
cmp   r0, #0x0
beq   Return
  bl    PAU_clearPairUpData

@ Vanilla stuff overwritten by hook.
Return:
ldr   r0, [r5, #0xC]
mov   r1, #0x31
neg   r1, r1
and   r0, r1
str   r0, [r5, #0xC]
mov   r2, r4
ldr   r3, [r2, #0xC]

pop   {r0}
bx    r0
