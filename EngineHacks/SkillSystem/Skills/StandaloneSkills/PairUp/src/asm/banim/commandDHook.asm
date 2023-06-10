@ Hooked at 0x591F4.
@ Halts banim if it performed dualStrike when command 0xD executes.
@ Registers:
@   r7: AIS*.
.thumb

push  {r4-r5}

ldr   r0, =PAU_aisProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
mov   r5, r0
cmp   r5, #0x0
beq   Return
  mov   r0, r7
  ldr   r3, =GetAISSubjectId
  bl    GOTO_R3
  mov   r1, #0x2B
  ldrb  r2, [r5, r1]        @ proc->state.
  mov   r3, #0x3
  lsl   r3, r0              @ Determine if we check SWAPP**LEFT
  lsl   r3, r0              @ or SWAPP**RIGHT.
  tst   r3, r2
  beq   Return              @ If either proc->state SWAPP**LEFT or SWAPP**RIGHT bits set, halt and finish.
    ldrh  r0, [r7]
    mov   r1, #0x8
    orr   r0, r1
    strh  r0, [r7]          @ Halt anim.
    pop   {r4-r5}
    ldr   r0, =0x80596D7    @ Skip the other stuff, including other queued commands, as well.
    bx    r0

@ Vanilla. Overwritten by hook.
Return:
mov   r0, r7
ldr   r3, =GetAISNextBattleAnimRoundType
bl    GOTO_R3
lsl   r0, #0x10
asr   r0, #0x10
pop   {r4-r5}
ldr   r1, =0x80591FD
bx    r1
GOTO_R3:
bx    r3
