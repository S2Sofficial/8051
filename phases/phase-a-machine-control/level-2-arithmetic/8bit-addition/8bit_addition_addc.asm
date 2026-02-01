; 8-bit Addition with Carry Input
; Demonstrates ADDC instruction usage
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    SETB C            ; Set carry manually

    MOV A, #40H
    ADDC A, #20H      ; A = A + operand + CY

HERE:
    SJMP HERE

END
