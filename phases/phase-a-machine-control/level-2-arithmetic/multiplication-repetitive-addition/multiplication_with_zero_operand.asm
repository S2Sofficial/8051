; Multiplication with Zero Operand
; Demonstrates multiplication when one operand is zero
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #09H      ; Multiplicand
    MOV R1, #00H      ; Multiplier = 0
    MOV A, #00H
    MOV R2, R1

MULT_LOOP:
    ADD A, R0         ; Will not execute
    DJNZ R2, MULT_LOOP

HERE:
    SJMP HERE

END
