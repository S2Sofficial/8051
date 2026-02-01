; 8-bit Multiplication using Repetitive Addition
; Multiplies two 8-bit numbers using repeated addition
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #05H      ; Multiplicand
    MOV R1, #04H      ; Multiplier
    MOV A, #00H       ; Accumulator = result
    MOV R2, R1        ; Loop counter

MULT_LOOP:
    ADD A, R0
    DJNZ R2, MULT_LOOP

HERE:
    SJMP HERE

END
