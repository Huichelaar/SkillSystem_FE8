@ Hooked at 0x5624C.
@ Kills PAU_aisProcInstr and potential children when battle ends.
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

pop   {r0}
bx    r0
GOTO_R3:
bx    r3
