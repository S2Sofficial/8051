; 8-bit Division using Registers
; Divides register values using repetitive subtraction
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R3, #18H      ; Dividend (24)
    MOV R4, #06H      ; Divisor (6)
    MOV A, R3
    MOV R5, #00H      ; Quotient

DIV_LOOP:
    CLR C
    SUBB A, R4
    JC DIV_END
    INC R5
    SJMP DIV_LOOP

DIV_END:
    ADD A, R4

HERE:
    SJMP HERE

END
