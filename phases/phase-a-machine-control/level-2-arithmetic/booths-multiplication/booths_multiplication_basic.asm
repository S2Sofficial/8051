; Booth's Multiplication - Basic
; Signed multiplication using Booth's algorithm
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #05H      ; M = +5
    MOV R1, #03H      ; Q = +3
    MOV R2, #00H      ; A = 0
    CLR C             ; Q-1 = 0
    MOV R3, #08H      ; Loop counter

BOOTH_LOOP:
    MOV A, R1
    ANL A, #01H       ; Q0
    JZ CHECK_00

    ; Q0 = 1
    JNC CHECK_10

    ; 11 -> no operation
    SJMP SHIFT

CHECK_10:
    ; Q0=1, Q-1=0 -> A = A - M
    MOV A, R2
    CLR C
    SUBB A, R0
    MOV R2, A
    SJMP SHIFT

CHECK_00:
    ; Q0=0
    JC CHECK_01

    ; 00 -> no operation
    SJMP SHIFT

CHECK_01:
    ; Q0=0, Q-1=1 -> A = A + M
    MOV A, R2
    ADD A, R0
    MOV R2, A

SHIFT:
    ; Arithmetic right shift {A,Q,Q-1}
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
