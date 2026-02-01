; 8-bit Subtraction Using Registers
; Subtracts contents of two registers
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R1, #6AH
    MOV R2, #19H

    MOV A, R1
    CLR C
    SUBB A, R2        ; A = R1 - R2

HERE:
    SJMP HERE

END
