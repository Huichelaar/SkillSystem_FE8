@ Hooked at 0x2A39C.
@ Copies pair-up gauge to temporary battle pair-up gauge.
.thumb

@ Bitmasking stuff.
ldr   r0, =PAU_pairUpBitsRAMAddress
ldr   r0, [r0]
ldrb  r0, [r0]
mov   r1, #0x7F             @ First seven bits reserved for pair-up gauge.
and   r0, r1                @ X111 1111.
ldr   r1, =PAU_pairUpBattleGaugeRAMAddress
ldr   r1, [r1]
strb  r0, [r1]

@ Vanilla, overwritten by hook.
ldr   r5, =gBattleActor
ldr   r4, =gBattleTarget
mov   r0, r5
mov   r1, r4

@ Return
ldr   r2, =0x802A3A5
bx    r2
