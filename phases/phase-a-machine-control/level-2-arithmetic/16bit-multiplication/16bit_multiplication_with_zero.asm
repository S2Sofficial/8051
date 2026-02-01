; 16-bit Multiplication with Zero
; Demonstrates multiplication when multiplier is zero
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #78H
    MOV R1, #56H
    MOV R2, #00H      ; Multiplier = 0

    MOV R4, #00H
    MOV R5, #00H

MULT_LOOP:
    ADD A, R0         ; Will not execute
    DJNZ R2, MULT_LOOP

HERE:
    SJMP HERE

END
