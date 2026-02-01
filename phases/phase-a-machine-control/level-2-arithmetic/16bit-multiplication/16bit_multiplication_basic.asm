; 16-bit Multiplication - Basic
; Multiplies a 16-bit number by an 8-bit multiplier using repetitive addition
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Multiplicand = 0123H
    MOV R0, #23H      ; LSB
    MOV R1, #01H      ; MSB

    MOV R2, #04H      ; Multiplier (4)

    MOV R4, #00H      ; Result LSB
    MOV R5, #00H      ; Result MSB

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
