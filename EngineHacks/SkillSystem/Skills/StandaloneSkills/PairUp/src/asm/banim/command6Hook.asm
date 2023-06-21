@ Hooked at 0x59020.
@ Switch paired-up unit back, if applicable, when command 6 executes.
@ Registers:
@   r2: OpponentFrontAIS
@   r7: AIS.
.thumb

push  {r4-r6}
mov   r4, r2
push  {r4, r7}

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
    mov   r3, #0x10
    mov   r6, #0x0            @ Indicates no DualGuard active.
    tst   r2, r3
    beq   noDualGuard
      mov   r6, #0x1          @ Indicates DualGuard active.
      mov   r3, #0x1
      eor   r0, r3            @ Flip AISes if dual guard.
      mov   r3, r7
      mov   r7, r4
      mov   r4, r3
    noDualGuard:
    mov   r3, #0x2
    lsl   r3, r0              @ Determine if we check SWAPPEDLEFT
    lsl   r3, r0              @ or SWAPPEDRIGHT.
    tst   r3, r2
    beq   Return              @ If proc->state SWAPPEDLEFT or SWAPPEDRIGHT bit not set, do nothing.
      ldr   r3, =gSomethingRelatedToAnimAndDistance
      ldrh  r3, [r3]
      cmp   r3, #0x0
      beq   dontMoveCamera    @ Don't move camera if melee range.
      ldr   r3, =bAnimCameraTarget
      ldr   r3, [r3]
      cmp   r3, r0
      beq   dontMoveCamera    @ Don't move camera if camera already on target.
        @ Move camera and
        @ delay setting SWAPPING bit until camera finished moving.
        mov   r1, r5
        mov   r5, r0
        ldr   r0, =PAU_delayAISProcInstr
        ldr   r3, =ProcStart
        bl    GOTO_R3
        mov   r1, #0x29       @ delayAISProc->stateMask.
        mov   r3, #0x1
        lsl   r3, r5          @ Determine if we will set SWAPPINGLEFT
        lsl   r3, r5          @ or SWAPPINGRIGHT.
        strb  r3, [r0, r1]
        
        @ Store sound to play when swapping.
        ldr   r1, =PAU_swapBackActivationSound
        ldrh  r1, [r1]
        mov   r3, #0x2A
        strh  r1, [r0, r3]
        ldrh  r1, [r7, #0x2]
        mov   r3, #0x2C
        strh  r1, [r0, r3]

        mov   r0, r4
        mov   r1, #0x1
        neg   r1, r1
        ldr   r3, =MoveBattleCameraOnto
        bl    GOTO_R3
        b     L3
      dontMoveCamera:
        mov   r3, #0x1
        lsl   r3, r0          @ Determine if we set SWAPPINGLEFT
        lsl   r3, r0          @ or SWAPPINGRIGHT.
        orr   r2, r3
        strb  r2, [r5, r1]    @ proc->state.
        mov   r5, r0
        
        @ Play swapBack sound.
        ldr   r0, =PlaySoundAt
        mov   r12, r0
        ldr   r0, =PAU_swapBackActivationSound
        mov   r1, #0x0
        ldsh  r0, [r0, r1]
        mov   r1, #0x1
        neg   r1, r1
        cmp   r0, r1
        beq   L3              @ Don't play if songID is -1.
          ldr   r1, =0x100
          ldrh  r2, [r7, #0x2]
          mov   r3, #0x1
          bl    GOTO_R12
      L3:
      
      @ Block our AISes if Dual Guard, or
      @ opponent AISes if no Dual Guard.
      mov   r1, #0x1
      eor   r1, r5
      eor   r1, r6
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
pop   {r4, r7}
mov   r2, r4
mov   r0, r4
pop   {r4-r6}
ldr   r1, =0x80596CD
cmp   r2, #0x0
beq   L1
  str   r2, [sp]
  ldr   r1, =0x8059029
L1:
bx    r1
GOTO_R3:
bx    r3
GOTO_R12:
bx    r12
