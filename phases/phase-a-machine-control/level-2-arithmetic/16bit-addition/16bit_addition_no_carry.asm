; 16-bit Addition - No Carry
; Adds two 16-bit numbers without MSB carry
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; First number = 1234H
    MOV R0, #34H      ; LSB
    MOV R1, #12H      ; MSB

    ; Second number = 1111H
    MOV R2, #11H      ; LSB
    MOV R3, #11H      ; MSB

    ; LSB addition
    MOV A, R0
    ADD A, R2
    MOV R4, A         ; Result LSB

    ; MSB addition
    MOV A, R1
    ADD A, R3
    MOV R5, A         ; Result MSB

HERE:
    SJMP HERE

END
