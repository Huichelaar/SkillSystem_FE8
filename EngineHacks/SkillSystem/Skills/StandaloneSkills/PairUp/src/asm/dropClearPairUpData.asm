@ Hooked at 0x18384. Clears pair-up gauge and unsets pair-up flag
@ if a unit with either Dual Strike or Dual Guard skill is dropped.
@   r4: contains unit* to unit that's to be dropped.
.thumb

push  {r14}

ldr   r1, =DualStrikeID
lsl   r1, #0x5
lsr   r1, #0x5
mov   r0, r4
bl    SkillTester
cmp   r0, #0x0
bne   ClearPairUpData
  ldr   r1, =DualGuardID
  lsl   r1, #0x5
  lsr   r1, #0x5
  mov   r0, r4
  bl    SkillTester
  cmp   r0, #0x0
  beq   Return

ClearPairUpData:
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
