@ Hooked at 0x7BE5C.
@ Draw pairup overlay TSA if paired-up. Also keep bool for paired-up in r7,
@ used later to determine where to draw TSA. Also start proc for drawing gauge icons.
@ Registers:
@   r1: Default TSA array ptr.
@   r8: gMapAnimData.
@   r9: index. 0 for actor/right. 1 for target/left.
@   r10: proc* to infowindow proc.
.thumb

push  {r7}                  @ We'll pop this inline later.
push  {r4}
mov   r4, r1

mov   r7, #0x0              @ Indicates not paired-up.
mov   r0, #0x14
mov   r2, r9
mul   r0, r2
mov   r2, r8
ldr   r0, [r0, r2]          @ Unit*
bl    PAU_isPairedUp
cmp   r0, #0x0
beq   Return
  @ Start or find proc and set its params.
  mov   r7, r0
  ldr   r0, =PAU_mapGaugeProcInstr
  ldr   r3, =ProcFind
  bl    GOTO_R3
  cmp   r0, #0x0
  bne   L1
    ldr   r0, =PAU_mapGaugeProcInstr
    mov   r1, r10
    ldr   r3, =ProcStart
    bl    GOTO_R3
    @ Clear vars
    mov   r1, #0x0
    strh  r1, [r0, #0x2E]   @ pairupTypes for left & right.
    strh  r1, [r0, #0x30]   @ gaugeVals for left & right.
  L1:
  mov   r1, #0x2E
  add   r1, r9
  strb  r7, [r0, r1]        @ pairupType.
  mov   r7, r0
  bl    PAU_getPairUpGauge
  mov   r1, #0x30
  add   r1, r9
  strb  r0, [r7, r1]        @ gaugeVal.
  mov   r7, #0x1            @ Indicates paired-up.
  ldr   r4, =PAU_mapBattleWindowTSAArray

@ Vanilla, overwritten by hook.
Return:
mov   r1, r4
pop   {r4}
mov   r2, #0x5E
add   r8, r2
mov   r2, r8
ldrb  r0, [r2]
ldr   r3, =0x807BE65
GOTO_R3:
bx    r3
