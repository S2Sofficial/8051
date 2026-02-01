; 8-bit Addition Using Registers
; Adds contents of two registers
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R1, #3AH
    MOV R2, #47H

    MOV A, R1
    ADD A, R2         ; A = R1 + R2

HERE:
    SJMP HERE

END
