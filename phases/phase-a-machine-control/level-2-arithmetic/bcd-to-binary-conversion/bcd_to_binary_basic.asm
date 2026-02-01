; BCD to Binary - Basic
; Converts packed BCD to binary using weighted addition
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #45H        ; Packed BCD 45
    MOV R0, A

    ANL A, #0FH        ; Ones
    MOV R1, A

    MOV A, R0
    ANL A, #0F0H
    SWAP A             ; Tens
    MOV R2, A

    MOV A, R2
    MOV B, #0AH
    MUL AB             ; Tens * 10
    ADD A, R1          ; + Ones

HERE:
    SJMP HERE

END
