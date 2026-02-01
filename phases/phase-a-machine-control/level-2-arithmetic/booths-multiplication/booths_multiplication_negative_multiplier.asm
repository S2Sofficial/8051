; Booth's Multiplication - Negative Multiplier
; Multiplies positive multiplicand with negative multiplier
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #06H      ; M = +6
    MOV R1, #0FCH     ; Q = -4
    MOV R2, #00H
    CLR C
    MOV R3, #08H

BOOTH_LOOP:
    MOV A, R1
    ANL A, #01H
    JZ ZERO_CASE

    JNC SUB_CASE
    SJMP SHIFT

SUB_CASE:
    MOV A, R2
    CLR C
    SUBB A, R0
    MOV R2, A
    SJMP SHIFT

ZERO_CASE:
    JC ADD_CASE
    SJMP SHIFT

ADD_CASE:
    MOV A, R2
    ADD A, R0
    MOV R2, A

SHIFT:
    MOV A, R2
    RRC A
    MOV R2, A

    MOV A, R1
    RRC A
    MOV R1, A

    DJNZ R3, BOOTH_LOOP

HERE:
    SJMP HERE

END
