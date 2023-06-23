@ Hooked at 0x5624C.
@ Kills PAU_aisProcInstr and potential children when battle ends.
@ Also instruct PAU_bAnimGaugeProcInstr to end after removing icons.
.thumb

push  {r14}

@ Vanilla, overwritten by hook.
add   r0, r1
lsl   r0, #0x3
add   r0, #0x8
strh  r0, [r4, #0x3C]
strh  r0, [r4, #0x3A]
ldr   r3, =ClearAISs
bl    GOTO_R3

@ End all PAU_aisProcs.
ldr   r0, =PAU_aisProcInstr
ldr   r3, =EndEachProc
bl    GOTO_R3

@ End PAU_bAnimGaugeProcInstr.
ldr   r0, =PAU_bAnimGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  mov   r1, #0x34
  mov   r2, #0x1
  strb  r2, [r0, r1]

Return:
pop   {r0}
bx    r0
GOTO_R3:
bx    r3
