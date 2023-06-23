@ Hooked at 0x52BA0.
@ Updates gauge icons due to attack that dealt no damage.
@ Registers:
@   r5: AIS*
.thumb

@ Update gauge icons.
ldr   r0, =PAU_bAnimGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  ldrh  r1, [r5, #0xE]
  sub   r1, #0x1
  bl    PAU_bAnimGaugeUpdate

@ Vanilla, overwritten by hook.
Return:
mov   r0, r5
ldr   r3, =GetAISSubjectId
bl    GOTO_R3
mov   r1, r0
ldrh  r0, [r5, #0xE]
ldr   r3, =0x8052BA9
GOTO_R3:
bx    r3
