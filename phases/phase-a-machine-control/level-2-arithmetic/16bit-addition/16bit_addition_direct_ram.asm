; 16-bit Addition Using Direct RAM
; Adds two 16-bit numbers stored in internal RAM
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Number 1 = 3456H
    MOV 30H, #56H     ; LSB
    MOV 31H, #34H     ; MSB

    ; Number 2 = 1122H
    MOV 32H, #22H     ; LSB
    MOV 33H, #11H     ; MSB

    ; LSB addition
    MOV A, 30H
    ADD A, 32H
    MOV 34H, A        ; Result LSB

    ; MSB addition
    MOV A, 31H
    ADDC A, 33H
    MOV 35H, A        ; Result MSB

HERE:
    SJMP HERE

END
