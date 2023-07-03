@ Hooked at 0x326A0.
@ Clear backup Unit's MU if mainUnit dies.
@ Registers:
@   r0: backup Unit's Unit*
@   r4: DeathDropAnimProc*
.thumb

push  {r5}
mov   r5, r0

ldr   r3, =MU_GetByUnit
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  ldr   r3, =MU_End
  bl    GOTO_R3

@ Vanilla, overwritten by hook
Return:
mov   r0, r5
pop   {r5}
str   r0, [r4, #0x2C]
mov   r1, r4
add   r1, #0x30
mov   r2, r4
ldr   r3, =0x80326A9
GOTO_R3:
bx    r3
