@ Hooked at 0x248DC.
@ Enables ride command when unit is rescuing, if unit is also paired-up.
@ Registers:
@   r2: Unit*
.thumb

mov   r0, r2
bl    PAU_isPairedUp
mov   r1, #0x87
cmp   r0, #0x0
beq   L1
  mov   r1, #0x86     @ Unset rescuing flag in mask.
L1:
lsl   r1, #0x4
ldr   r2, =gActiveUnit
ldr   r2, [r2]
ldr   r0, [r2, #0xC]
and   r0, r1
ldr   r3, =0x80248E5
bx    r3
