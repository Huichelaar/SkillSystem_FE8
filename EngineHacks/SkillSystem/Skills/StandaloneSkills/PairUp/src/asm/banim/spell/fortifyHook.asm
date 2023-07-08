@ Hooked at 0x61EFC and 0x62020.
@ When big bubble appears, the AIS gets a lower priority so it's drawn after bubble.
@ We'll do the same for the paired-up AIS.
@ Registers:
@   r0: AIS*.
@   r1: priority >> 4.
.thumb

push  {r4-r6, r14}
mov   r4, r0
lsl   r5, r1, #0x4

@ Vanilla, overwritten by hook.
@ Set priority for mainUnit.
ldrh  r0, [r4, #0x8]
ldr   r1, =0xF3FF
and   r0, r1
orr   r0, r5
strh  r0, [r4, #0x8]

@ Set priority for backupUnit.
ldr   r0, =PAU_aisProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
mov   r6, r0
cmp   r6, #0x0
beq   Return
  mov   r0, r4
  ldr   r3, =GetAISSubjectId
  bl    GOTO_R3
  lsl   r1, r0, #0x3
  add   r1, #0x3C
  ldr   r0, [r6, r1]        @ paired-up front AIS.
  add   r1, #0x4
  ldr   r1, [r6, r1]        @ paired-up back AIS.
  cmp   r0, #0x0
  beq   L1
    ldrh  r2, [r0, #0x8]
    ldr   r3, =0xF3FF
    and   r2, r3
    orr   r2, r5
    strh  r2, [r0, #0x8]
  L1:
  cmp   r1, #0x0
  beq   Return
    ldrh  r2, [r1, #0x8]
    ldr   r3, =0xF3FF
    and   r2, r3
    orr   r2, r5
    strh  r2, [r1, #0x8]

Return:
ldr   r3, =0xF3FF
mov   r2, #0x80
lsl   r2, #0x4
pop   {r4-r6}
pop   {r0}
bx    r0
GOTO_R3:
bx    r3
