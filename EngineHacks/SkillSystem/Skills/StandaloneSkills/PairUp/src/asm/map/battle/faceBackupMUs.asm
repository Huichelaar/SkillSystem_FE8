@ Hooked at 0x7B4B0 and 0x7B4B8
@ Set facing direction of backup units of paired-up units.
@ Registers:
@   r0: 0 if actor, 1 if target.
@   r5: item spell assoc facing.
.thumb

push  {r4, r6}
mov   r4, r0

@ Vanilla, overwritten by hook.
mov   r1, #0x1
eor   r1, r0
mov   r2, r5
ldr   r3, =SetBattleAnimActorFacing
bl    GOTO_R3

@ If triangle attack, don't do backup unit stuff.
ldr   r0, =0x807B9B0            @ r0 = BattleRounds[]*.
ldr   r0, [r0]                  @ r0 = BattleRounds[].
ldr   r0, [r0]                  @ r0 = BattleRounds[0].
mov   r1, #0x80
lsl   r1, #0x3
tst   r0, r1
bne   Return                    @ Vanilla, if first round is triangle attack.
  ldr   r0, =PAU_showBothMapSprites
  ldrb  r0, [r0]
  cmp   r0, #0x0
  beq   Return
    mov   r0, r4
    mov   r2, #0x14
    mul   r0, r2
    ldr   r2, =gMapAnimData
    ldr   r0, [r2, r0]          @ Actor or target.
    bl    PAU_isPairedUp
    cmp   r0, #0x0
    beq   Return
      
      @ Find backupUnit's actorState.
      ldr   r0, =gMapAnimData
      mov   r1, #0x5E
      ldrb  r2, [r0, r1]        @ ActorCount.
      add   r2, r4
      mov   r1, #0x14
      mul   r1, r2
      ldr   r1, [r1, r0]
      cmp   r1, #0x0
      bne   L2
        sub   r2, #0x1
      L2:
      mov   r6, r2              @ ID of backupUnit's actorState.
      
      @ Set facing for backup unit.
      mov   r0, r4
      mov   r1, #0x1
      eor   r1, r0
      mov   r0, r6
      mov   r2, r5
      ldr   r3, =SetBattleAnimActorFacing
      bl    GOTO_R3
    
      @ Find both paired-up MUs.
      ldr   r0, =gMapAnimData
      mov   r2, #0x14
      mul   r2, r6
      add   r2, #0x8
      ldr   r1, [r0, r2]        @ backupUnit's MUProc*.
      mov   r2, #0x14
      mul   r2, r4
      add   r2, #0x8
      ldr   r0, [r0, r2]        @ mainUnit's MUProc*.
      
      @ Set MUs' offsets.
      ldr   r2, =PAU_mapFrontOffsX
      mov   r3, #0x0
      ldsb  r2, [r2, r3]
      lsl   r2, #0x4
      mov   r3, #0x50
      strh  r2, [r0, r3]
      
      ldr   r2, =PAU_mapFrontOffsY
      mov   r3, #0x0
      ldsb  r2, [r2, r3]
      lsl   r2, #0x4
      mov   r3, #0x52
      strh  r2, [r0, r3]
      
      ldr   r2, =PAU_mapBackOffsX
      mov   r3, #0x0
      ldsb  r2, [r2, r3]
      lsl   r2, #0x4
      mov   r3, #0x50
      strh  r2, [r1, r3]
      
      ldr   r2, =PAU_mapBackOffsY
      mov   r3, #0x0
      ldsb  r2, [r2, r3]
      lsl   r2, #0x4
      mov   r3, #0x52
      strh  r2, [r1, r3]

Return:
mov   r0, r4
pop   {r4, r6}
ldr   r3, =0x807B4C1
cmp   r0, #0x0
beq   GOTO_R3
  ldr   r3, =0x807B4B7
GOTO_R3:
bx    r3
