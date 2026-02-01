; 16-bit Subtraction Using Direct RAM
; Subtracts two 16-bit numbers stored in internal RAM
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Number 1 = 5678H
    MOV 30H, #78H     ; LSB
    MOV 31H, #56H     ; MSB

    ; Number 2 = 1234H
    MOV 32H, #34H     ; LSB
    MOV 33H, #12H     ; MSB

    CLR C

    ; LSB subtraction
    MOV A, 30H
    SUBB A, 32H
    MOV 34H, A        ; Result LSB

    ; MSB subtraction
    MOV A, 31H
    SUBB A, 33H
    MOV 35H, A        ; Result MSB

HERE:
    SJMP HERE

END
