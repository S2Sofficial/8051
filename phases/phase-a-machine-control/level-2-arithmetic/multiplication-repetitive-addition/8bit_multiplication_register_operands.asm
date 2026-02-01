; 8-bit Multiplication using Registers
; Multiplies values stored in registers using repetitive addition
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R3, #07H      ; Multiplicand
    MOV R4, #03H      ; Multiplier
    MOV A, #00H
    MOV R5, R4        ; Counter

MULT_LOOP:
    ADD A, R3
    DJNZ R5, MULT_LOOP

HERE:
    SJMP HERE

END
