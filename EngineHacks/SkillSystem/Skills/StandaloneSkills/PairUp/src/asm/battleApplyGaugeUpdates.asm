@ Hooked at 0x2A2F6. Writes temporary battle pair-up gauge copy
@ back to pair-up gauge location after real battle finished.
.thumb

push  {r14}

@ Vanilla stuff overwritten by hook.
ldr   r3, =BattleApplyUnitUpdates
bl    GOTO_R3
ldr   r3, =BattleApplyBallistaUpdates
bl    GOTO_R3
ldr   r0, =gBattleActor
ldr   r1, =gBattleTarget
ldr   r3, =BattlePrintDebugUnitInfo
bl    GOTO_R3

@ Bitmasking stuff.
ldr   r0, =PAU_pairUpBattleGaugeRAMAddress
ldr   r0, [r0]
ldrb  r0, [r0]
ldr   r1, =PAU_pairUpBitsRAMAddress
ldr   r1, [r1]
ldrb  r2, [r1]
mov   r3, #0x7F             @ First seven bits reserved for pair-up gauge.
and   r0, r3                @ X111 1111.
mov   r3, #0x80             @ most significant bit reserved for pair-up active flag.
and   r2, r3                @ 1XXX XXXX.
orr   r2, r0
strb  r2, [r1]

pop   {r0}
bx    r0
GOTO_R3:
bx    r3
