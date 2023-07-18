@ Hooked at 0x591F4.
@ Halts banim if it performed dualStrike when command 0xD executes.
@ Registers:
@   r7: AIS*.
.thumb

push  {r4-r5}

@ Vanilla. Overwritten by hook.
mov   r0, r7
ldr   r3, =GetAISNextBattleAnimRoundType
bl    GOTO_R3
mov   r4, r0

@ Return if no pair-up.
ldr   r0, =PAU_aisProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
mov   r5, r0
cmp   r5, #0x0
beq   Return
  
  @ Set LASTROUND bit, if no further rounds.
  mov   r1, #0x0
  sub   r1, #0x1
  cmp   r4, r1
  bne   L3
    mov   r0, #0x2B
    ldrb  r1, [r5, r0]    @ proc->state.
    mov   r2, #0x20
    orr   r1, r2
    strb  r1, [r5, r0]    @ Set LASTROUND.
  L3:
  
  @ Unset ANIMNOTENDED bit, to indicate swap can end.
  mov   r0, #0x2B
  ldrb  r1, [r5, r0]    @ proc->state.
  mov   r2, #0x40
  mvn   r2, r2
  and   r1, r2
  strb  r1, [r5, r0]    @ Unset ANIMNOTENDED.
  
  @ Halt bAnim if it's swapped out.
  mov   r0, r7
  ldr   r3, =GetAISSubjectId
  bl    GOTO_R3
  mov   r1, #0x2B
  ldrb  r2, [r5, r1]        @ proc->state.
  mov   r3, #0x3
  lsl   r3, r0              @ Determine if we check SWAPP**LEFT
  lsl   r3, r0              @ or SWAPP**RIGHT.
  tst   r3, r2
  beq   Return              @ If proc->state SWAPP**LEFT / SWAPP**RIGHT bits set, halt and finish.
    ldrh  r0, [r7]
    mov   r1, #0x8
    orr   r0, r1
    strh  r0, [r7]          @ Halt anim.
    
    @ Increment round if next round exists.
    mov   r1, #0x0
    sub   r1, #0x1
    cmp   r4, r1
    beq   end
      ldrh  r1, [r7, #0x12]   @ PreviousRoundType.
      strh  r4, [r7, #0x12]   @ CurrentRoundType.
      cmp   r1, #0x0
      blt   L1
      cmp   r1, #0x3
      ble   L2
      cmp   r1, #0x9
      bne   L1
        L2:
        mov   r1, #0x4        @ Set +0x10 bit 4 if bAnim attacked this round.
        ldrh  r2, [r7, #0x10]
        orr   r2, r1
        strh  r2, [r7, #0x10]
      L1:
      ldrh  r0, [r7, #0xE]
      add   r0, #0x1
      strh  r0, [r7, #0xE]    @ Increment round if next round exists.
    end:
    pop   {r4-r5}
    ldr   r0, =0x80596D7    @ Skip the other stuff, including other queued commands, as well.
    bx    r0

@ Vanilla. Overwritten by hook.
Return:
lsl   r0, r4, #0x10
asr   r0, #0x10
pop   {r4-r5}
ldr   r1, =0x80591FD
bx    r1
GOTO_R3:
bx    r3
