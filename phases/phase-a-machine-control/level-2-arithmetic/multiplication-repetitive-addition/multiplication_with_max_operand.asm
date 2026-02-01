; Multiplication with Maximum Operand
; Multiplies maximum 8-bit values using repetitive addition
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #0FFH     ; Multiplicand
    MOV R1, #02H      ; Multiplier
    MOV A, #00H
    MOV R2, R1

MULT_LOOP:
    ADD A, R0         ; Result will overflow (expected)
    DJNZ R2, MULT_LOOP

HERE:
    SJMP HERE

END
