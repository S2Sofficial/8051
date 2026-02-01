; BCD to Binary with Carry Handling
; Demonstrates carry behavior during conversion
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #99H        ; Packed BCD 99
    MOV R0, A

    ANL A, #0FH
    MOV R1, A

    MOV A, R0
    ANL A, #0F0H
    SWAP A
    MOV R2, A

    MOV A, R2
    MOV B, #0AH
    MUL AB
    ADD A, R1          ; Binary result = 99

HERE:
    SJMP HERE

END
