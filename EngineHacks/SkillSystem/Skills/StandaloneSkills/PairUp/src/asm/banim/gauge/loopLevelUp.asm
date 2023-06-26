@ Hooked at 0x73F64 and 0x74370.
@ Increases BLDY to darken/brighten gauge icons during level up.
@ Registers:
@   r3: EVY value.
.thumb

push  {r5}
mov   r5, r1

ldr   r1, =gLCDIOBuffer+0x46        @ EVY.
strh  r3, [r1]

@ Vanilla, overwritten by hook.
ldr   r1, =FadePalette
mov   r12, r1
mov   r1, #0x2
mov   r2, #0x4
bl    GOTO_R12
mov   r0, r4
mov   r1, #0x13
mov   r2, #0xC

add   r3, r5, #0x6
pop   {r5}
mov   r15, r3
GOTO_R12:
bx    r12
