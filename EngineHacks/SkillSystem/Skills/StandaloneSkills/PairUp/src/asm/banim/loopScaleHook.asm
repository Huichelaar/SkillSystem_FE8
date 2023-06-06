@ Hooked at 0x56BC0. Part of when battle animations get scaled
@ before and after battle.
@ Display AIS for pair-up partner.
@ Registers:
@   r4: procState* Kakudai.
@   r5: AnimationInterpreter*.
.thumb

@ Vanilla, overwritten by hook.
ldr   r0, =GetValueFromEasingFunction
mov   r12, r0
mov   r0, #0x0
bl    GOTO_R12
lsl   r0, #0x10
lsr   r7, r0, #0x10
sub   sp, #0x4

ldr   r0, [r4, #0x5C]     @ Custom var, pointer to Left pair-up OAMData + offset.
add   r1, sp, #0x8        @ Buffer for affine OAMData.
mov   r2, r5              @ AIS*.
mov   r3, #0x0            @ 0 for Left AIS.
str   r4, [sp]            @ procState* Kakudai.
str   r7, [sp, #0x4]      @ Scale parameter.
bl    PAU_scalePairUpPartner

ldr   r0, [r4, #0x60]     @ Custom var, pointer to Right pair-up OAMData + offset.
add   r1, sp, #0x8        @ Buffer for affine OAMData.
mov   r2, r5              @ AIS*.
mov   r3, #0x1            @ 1 for Right AIS.
str   r4, [sp]            @ procState* Kakudai.
str   r7, [sp, #0x4]      @ Scale parameter.
bl    PAU_scalePairUpPartner

@ Return
add   sp, #0x4
ldr   r0, =0x8056BC9
bx    r0
GOTO_R12:
bx    r12
