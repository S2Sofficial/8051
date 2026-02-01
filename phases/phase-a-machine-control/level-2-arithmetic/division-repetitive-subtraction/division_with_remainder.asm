; Division with Remainder
; Computes both quotient and remainder
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #17H      ; Dividend (23)
    MOV R1, #05H      ; Divisor (5)
    MOV A, R0
    MOV R2, #00H      ; Quotient

DIV_LOOP:
    CLR C
    SUBB A, R1
    JC DIV_DONE
    INC R2
    SJMP DIV_LOOP

DIV_DONE:
    ADD A, R1         ; Restore remainder in A

HERE:
    SJMP HERE

END
