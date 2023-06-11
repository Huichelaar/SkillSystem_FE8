@ Hooked at 0x59020.
@ Switch paired-up unit back, if applicable, when command 6 executes.
@ Registers:
@   r2: OpponentFrontAIS
@   r7: AIS.
.thumb

push  {r4-r5}
mov   r4, r2

mov   r0, r7
ldr   r3, =GetAISLayerId
bl    GOTO_R3
cmp   r0, #0x0
bne   Return        @ Ignore if back layer.
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
    mov   r3, #0x2
    lsl   r3, r0              @ Determine if we check SWAPPEDLEFT
    lsl   r3, r0              @ or SWAPPEDRIGHT.
    tst   r3, r2
    beq   Return              @ If proc->state SWAPPEDLEFT or SWAPPEDRIGHT bit not set, do nothing.
      mov   r3, #0x1
      lsl   r3, r0            @ Determine if we set SWAPPINGLEFT
      lsl   r3, r0            @ or SWAPPINGRIGHT.
      orr   r2, r3
      strb  r2, [r5, r1]      @ proc->state.
      
      @ Block opponent AISes.
      mov   r1, #0x1
      eor   r1, r0
      lsl   r1, #0x3
      ldr   r0, =0x2000000
      add   r0, r1
      mov   r5, r0
      add   r5, #0x8
      Loop:
        ldr   r1, [r0]
        cmp   r1, #0x0
        beq   L2
          @ldrh  r2, [r1, #0x10]
          @mov   r3, #0x20
          @orr   r2, r3
          @strh  r2, [r1, #0x10]
          ldrh  r2, [r1]
          mov   r3, #0x8
          orr   r2, r3
          strh  r2, [r1]
        L2:
        add   r0, #0x4
        cmp   r0, r5
        blt   Loop

@ Vanilla. Overwritten by hook.
Return:
mov   r2, r4
mov   r0, r4
pop   {r4-r5}
ldr   r1, =0x80596CD
cmp   r2, #0x0
beq   L1
  str   r2, [sp]
  ldr   r1, =0x8059029
L1:
bx    r1
GOTO_R3:
bx    r3
