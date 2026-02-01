; Binary to BCD - Double Dabble Method
; Converts 8-bit binary number to packed BCD
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #45        ; Binary input = 45 (2DH)
    MOV R1, #00H       ; BCD result
    MOV R2, #08H       ; Bit counter

DD_LOOP:
    MOV A, R1
    ANL A, #0FH
    CJNE A, #05H, SKIP_L
    ADD R1, #03H

SKIP_L:
    MOV A, R1
    ANL A, #0F0H
    CJNE A, #50H, SKIP_H
    ADD R1, #30H

SKIP_H:
    MOV A, R0
    RLC A
    MOV R0, A

    MOV A, R1
    RLC A
    MOV R1, A

    DJNZ R2, DD_LOOP

HERE:
    SJMP HERE

END
