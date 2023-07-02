@ Hooked at 0x7B964.
@ Starts extra battle MUs for backup units of paired-up units.
@ Registers:
@   r4: BattleUnit* target (unless triangle attack, but then we won't need it anyways).
@   r5: BattleUnit* actor.
.thumb

@ If no triangle attack, setup backup units' battleMUs.
ldr   r0, =0x807B9B0            @ r0 = BattleRounds[]*.
ldr   r0, [r0]                  @ r0 = BattleRounds[].
ldr   r0, [r0]                  @ r0 = BattleRounds[0].
mov   r1, #0x80
lsl   r1, #0x3
tst   r0, r1
bne   Return                    @ Skip if first round is triangle attack.
  ldr   r0, =PAU_showBothMapSprites
  ldrb  r0, [r0]
  cmp   r0, #0x0
  beq   Return
    mov   r0, r5                @ Actor.
    bl    PAU_isPairedUp
    mov   r1, #0x0
    cmp   r0, #0x0
    beq   L1
      ldrb  r0, [r5, #0x1B]
      ldr   r3, =GetUnit
      bl    GOTO_R3
      mov   r2, r0
      ldr   r0, =gMapAnimData
      mov   r1, #0x5E
      ldrb  r0, [r0, r1]      @ ActorCount.
      mov   r1, r5
      ldr   r3, =CreateMapBattleMU
      bl    GOTO_R3
      mov   r1, #0x1          @ Indicates ActorCount++;
    
    L1:
    mov   r5, r1
    ldr   r0, =gMapAnimData
    mov   r1, #0x5E
    ldrb  r0, [r0, r1]        @ ActorCount.
    cmp   r0, #0x1
    ble   Return              @ Skip if no Target.
      mov   r0, r4            @ Target.
      bl    PAU_isPairedUp
      cmp   r0, #0x0
      beq   Return
        ldrb  r0, [r4, #0x1B]
        ldr   r3, =GetUnit
        bl    GOTO_R3
        mov   r2, r0
        ldr   r0, =gMapAnimData
        mov   r1, #0x5E
        ldrb  r0, [r0, r1]    @ ActorCount.
        add   r0, r5          @ Don't overwrite previous backup battleMU if it exists.
        mov   r1, r4
        ldr   r3, =CreateMapBattleMU
        bl    GOTO_R3

@ Vanilla, overwritten by hook.
Return:
ldr   r3, =SetupMapBattleMUs
bl    GOTO_R3
mov   r5, #0x0
ldrb  r0, [r6]
ldr   r3, =0x807B96D
GOTO_R3:
bx    r3
