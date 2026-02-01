; 16-bit Division using Registers
; Divides register-held 16-bit values
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Dividend = 0048H (72)
    MOV R5, #48H
    MOV R6, #00H

    ; Divisor = 0006H (6)
    MOV R7, #06H
    MOV R2, #00H

    MOV R3, #00H      ; Quotient

DIV_LOOP:
    CLR C
    MOV A, R5
    SUBB A, R7
    MOV R5, A

    MOV A, R6
    SUBB A, R2
    MOV R6, A

    JC DIV_DONE
    INC R3
    SJMP DIV_LOOP

DIV_DONE:
    MOV A, R5
    ADD A, R7
    MOV R5, A

    MOV A, R6
    ADDC A, R2
    MOV R6, A

HERE:
    SJMP HERE

END
