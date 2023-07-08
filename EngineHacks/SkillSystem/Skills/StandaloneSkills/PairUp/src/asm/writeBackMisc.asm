@ Hooked at 0x2CC20.
@ Write battle pair-up gauge back to pair-up gauge after misc actions (StaffDoorChestUseItem, etc.)
@ Registers:
@   r4: gBattleActor.
.thumb

bl    PAU_getBattleGauge
bl    PAU_setPairUpGauge

@ Vanilla, overwritten by hook.
mov   r0, #0xB
ldsb  r0, [r4, r0]
ldr   r3, =GetUnit
bl    GOTO_R3
ldr   r3, =0x802CC29
GOTO_R3:
bx    r3
