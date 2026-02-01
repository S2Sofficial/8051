; 8-bit Division using Repetitive Subtraction
; Divides dividend by divisor using repeated subtraction
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #14H      ; Dividend (20)
    MOV R1, #04H      ; Divisor (4)
    MOV A, R0         ; Remainder register
    MOV R2, #00H      ; Quotient

DIV_LOOP:
    CLR C
    SUBB A, R1
    JC DIV_END        ; If borrow, stop
    INC R2
    SJMP DIV_LOOP

DIV_END:
    ADD A, R1         ; Restore remainder

HERE:
    SJMP HERE

END
