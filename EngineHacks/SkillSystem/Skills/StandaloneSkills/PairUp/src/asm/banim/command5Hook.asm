@ Hooked at 0x5B3D8.
@ Executed during command 5, run spell animation.
@ Grabs correct spell animation ID for paired-up unit.
@ Registers:
@   r0: AISSubjectID: 0 for left. 1 for right.
@   r4: RAM Spell AnimationID offset.
.thumb

push  {r5-r6}
sub   sp, #0x4
mov   r5, r0

ldr   r0, =PAU_aisProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
mov   r6, r0
cmp   r6, #0x0
beq   notBackupUnit
  mov   r0, #0x2B
  ldrb  r1, [r6, r0]        @ proc->state.
  mov   r2, #0x2
  lsl   r2, r5              @ Determine if we check SWAPPEDLEFT
  lsl   r2, r5              @ or SWAPPEDRIGHT.
  tst   r2, r1
  beq   notBackupUnit       @ If proc->state SWAPPEDLEFT or SWAPPEDRIGHT bit not set, we're not backup unit.
    ldr   r0, =gpUnitLeft_BattleStruct
    lsl   r1, r5, #0x2
    ldr   r0, [r0, r1]
    ldrb  r0, [r0, #0x1B]   @ Pair-up partner allegiance byte.
    ldr   r3, =GetUnit
    bl    GOTO_R3
    mov   r1, sp
    ldr   r3, =PAU_findPairUpBAnim
    bl    GOTO_R3
    mov   r0, #0x0
    mov   r1, sp
    ldsh  r0, [r1, r0]      @ SpellAnimID, returned by PAU_findPairUpBAnim.
    b     Return

@ Unit is not the backup unit.
@ Vanilla, overwritten by hook.
notBackupUnit:
lsl   r0, r5, #0x1
add   r0, r4
mov   r2, #0x0
ldsh  r0, [r0, r2]

Return:
add   sp, #0x4
pop   {r5-r6}
ldr   r1, =0x805B3F8        @ Pointer to gSpellAnimTable.
ldr   r1, [r1]
ldr   r2, =0x805B3E1
bx    r2
GOTO_R3:
bx    r3
