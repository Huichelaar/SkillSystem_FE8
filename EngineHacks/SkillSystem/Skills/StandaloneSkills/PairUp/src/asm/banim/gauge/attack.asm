@ Hooked at 0x5230C.
@ Updates gauge icons due to attack.
@ Registers:
@   r4: AIS*
.thumb

@ Update gauge icons.
ldr   r0, =PAU_bAnimGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  ldrh  r1, [r4, #0xE]
  sub   r1, #0x1
  bl    PAU_bAnimGaugeUpdate

@ Vanilla, overwritten by hook.
Return:
mov   r0, r4
ldr   r3, =GetAISSubjectId
bl    GOTO_R3
mov   r1, r0
ldrh  r0, [r4, #0xE]
sub   r0, #0x1
lsl   r0, #0x1
ldr   r3, =0x8052315
GOTO_R3:
bx    r3
