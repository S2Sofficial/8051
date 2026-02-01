; 16-bit Multiplication - Overflow Observation
; Shows overflow behavior during repeated addition
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #0FFH     ; LSB
    MOV R1, #0FFH     ; MSB
    MOV R2, #02H      ; Multiplier

    MOV R4, #00H
    MOV R5, #00H

MULT_LOOP:
    MOV A, R4
    ADD A, R0
    MOV R4, A

    MOV A, R5
    ADDC A, R1
    MOV R5, A

    DJNZ R2, MULT_LOOP

HERE:
    SJMP HERE

END
