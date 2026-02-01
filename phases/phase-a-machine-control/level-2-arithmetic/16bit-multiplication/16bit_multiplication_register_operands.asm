; 16-bit Multiplication using Registers
; Multiplies register-stored 16-bit value by 8-bit value
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #34H      ; LSB
    MOV R1, #12H      ; MSB
    MOV R2, #03H      ; Multiplier

    MOV R6, #00H      ; Result LSB
    MOV R7, #00H      ; Result MSB

MULT_LOOP:
    MOV A, R6
    ADD A, R0
    MOV R6, A

    MOV A, R7
    ADDC A, R1
    MOV R7, A

    DJNZ R2, MULT_LOOP

HERE:
    SJMP HERE

END
