@ Hooked at 0x5257C and 0x52590
@ Don't move camera during NODMG if it's already on target or already moving.
@ Registers:
@   r0: Opposing AIS*.
@   r4: AIS*.
.thumb

push  {r5}
mov   r5, r0

ldr   r1, =bAnimCameraMoving
ldr   r1, [r1]
cmp   r1, #0x0
bne   Return            @ If camera is moving, return.
  mov   r0, r4
  ldr   r3, =GetAISSubjectId
  bl    GOTO_R3
  ldr   r1, =bAnimCameraTarget
  ldr   r1, [r1]
  cmp   r0, r1
  beq   Return          @ If camera already on target, return.
    mov   r0, r5
    mov   r1, #0x1
    neg   r1, r1
    ldr   r3, =MoveBattleCameraOnto
    bl    GOTO_R3

Return:
pop   {r5}
ldr   r0, =0x8052599
bx    r0
GOTO_R3:
bx    r3
