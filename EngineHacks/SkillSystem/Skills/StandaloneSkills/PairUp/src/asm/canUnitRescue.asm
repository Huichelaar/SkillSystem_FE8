@ Hooked at 0x1833C. Adds extra check to CanUnitRescue.
@ Doesn't allow rescue if target is paired-up.
@   r0: Actor's Aid.
@   r1: 0x0
@   r2: Target's Con.
@   r4: Unit* to target unit struct.
.thumb

@ Vanilla, overwritten by hook.
cmp   r0, r2
blt   Return

  mov   r0, r4
  bl    PAU_isPairedUp
  mov   r1, #0x0            @ Actor can not rescue target.
  cmp   r0, #0x0
  bne   Return
    mov   r1, #0x1          @ Actor can rescue target.

Return:
mov   r0, r1
ldr   r1, =0x8018345
bx    r1
