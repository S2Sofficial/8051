; 16-bit Division - Basic
; Divides a 16-bit dividend by a 16-bit divisor using repetitive subtraction
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Dividend = 0032H (50)
    MOV R0, #32H      ; LSB
    MOV R1, #00H      ; MSB

    ; Divisor = 0005H (5)
    MOV R2, #05H      ; LSB
    MOV R3, #00H      ; MSB

    MOV R4, #00H      ; Quotient

DIV_LOOP:
    CLR C
    MOV A, R0
    SUBB A, R2
    MOV R0, A

    MOV A, R1
    SUBB A, R3
    MOV R1, A

    JC DIV_END        ; Borrow → stop
    INC R4
    SJMP DIV_LOOP

DIV_END:
    ; Restore last subtraction
    MOV A, R0
    ADD A, R2
    MOV R0, A

    MOV A, R1
    ADDC A, R3
    MOV R1, A

HERE:
    SJMP HERE

END
