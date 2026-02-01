; BCD to Binary using Registers
; Converts packed BCD stored in register to binary
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R3, #72H       ; Packed BCD 72
    MOV A, R3
    MOV R4, A

    ANL A, #0FH
    MOV R5, A          ; Ones

    MOV A, R4
    ANL A, #0F0H
    SWAP A
    MOV R6, A          ; Tens

    MOV A, R6
    MOV B, #0AH
    MUL AB
    ADD A, R5

HERE:
    SJMP HERE

END
