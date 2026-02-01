; Direct Addressing - Special Function Register
; Writes and reads data using directly addressable SFR
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #0F0H      ; Load accumulator
    MOV P1, A         ; Write to Port 1 SFR
    MOV A, P1         ; Read back from Port 1

HERE:
    SJMP HERE

END
