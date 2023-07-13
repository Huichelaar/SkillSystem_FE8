@ Hooked at 0x1D0B0.
@ Un-switch units if they were switched, but canceled out of uncomitted action.
@ If committed to action, unset switch flag.
@ Registers:
@   r4: gActionData
.thumb


bl    PAU_getSwitchFlag
cmp   r0, #0x0
beq   Return

ldrb  r0, [r4, #0x11]           @ Action type.
cmp   r0, #0x0
bne   L1
  ldr   r0, =gGameState
  mov   r1, #0x3D
  ldrb  r0, [r0, r1]            @ Partial actions taken.
  cmp   r0, #0x0
  bne   Return
    bl    PAU_switchEffect        @ Un-switch units.
    b     Return
L1:
bl  PAU_unsetSwitchFlag         @ Un-set switch flag if comitted to action.

@ Vanilla, overwritten by hook.
Return:
ldr   r3, =0x801D0B9
ldrb  r0, [r4, #0x11]
cmp   r0, #0x22
bls   GOTO_R3
  ldr   r3, =0x801D1C9
GOTO_R3:
bx    r3
