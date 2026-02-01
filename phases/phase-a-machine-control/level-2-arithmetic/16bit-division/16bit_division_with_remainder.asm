; 16-bit Division with Remainder
; Computes quotient and remainder for 16-bit division
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Dividend = 0023H (35)
    MOV R0, #23H
    MOV R1, #00H

    ; Divisor = 0008H (8)
    MOV R2, #08H
    MOV R3, #00H

    MOV R4, #00H      ; Quotient

DIV_LOOP:
    CLR C
    MOV A, R0
    SUBB A, R2
    MOV R0, A

    MOV A, R1
    SUBB A, R3
    MOV R1, A

    JC DIV_EXIT
    INC R4
    SJMP DIV_LOOP

DIV_EXIT:
    MOV A, R0
    ADD A, R2
    MOV R0, A

    MOV A, R1
    ADDC A, R3
    MOV R1, A         ; Remainder in R1:R0

HERE:
    SJMP HERE

END
