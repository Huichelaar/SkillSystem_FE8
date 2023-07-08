@ Hooked at 0x52D90.
@ Updates gauge icons due to status infliction.
@ Registers:
@   r5: AIS*.
.thumb

@ Check if status should affect pair-up gauge.
mov   r0, r5
ldr   r3, =GetOpponentFrontAIS
bl    GOTO_R3
ldr   r3, =GetAISSubjectId
bl    GOTO_R3
lsl   r0, #0x1
ldr   r1, =gBattleSpellAnimationId1
ldsh  r0, [r1, r0]
bl    PAU_doesStatusSpellAffectGauge
cmp   r0, #0x0
beq   Return
  
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
ldr   r1, =0x2017728
ldr   r4, [r1]
ldr   r3, =0x8052DA9
cmp   r4, #0x0
bne   GOTO_R3
  ldr   r3, =0x8052D99
GOTO_R3:
bx    r3
