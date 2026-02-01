; 16-bit Addition - With Carry Propagation
; Adds two 16-bit numbers with carry from LSB to MSB
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; First number = FFF0H
    MOV R0, #0F0H     ; LSB
    MOV R1, #0FFH     ; MSB

    ; Second number = 0025H
    MOV R2, #25H      ; LSB
    MOV R3, #00H      ; MSB

    ; LSB addition
    MOV A, R0
    ADD A, R2
    MOV R4, A         ; Result LSB

    ; MSB addition with carry
    MOV A, R1
    ADDC A, R3
    MOV R5, A         ; Result MSB

HERE:
    SJMP HERE

END
