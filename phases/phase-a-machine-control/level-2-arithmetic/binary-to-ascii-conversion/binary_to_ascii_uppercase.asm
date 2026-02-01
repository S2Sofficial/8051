; Binary to ASCII - Uppercase Hex
; Explicit uppercase ASCII hex conversion
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #0AFH
    MOV R0, A

    ANL A, #0F0H
    SWAP A
    ACALL TO_ASCII
    MOV R1, A

    MOV A, R0
    ANL A, #0FH
    ACALL TO_ASCII
    MOV R2, A

HERE:
    SJMP HERE

TO_ASCII:
    CJNE A, #0AH, C1
    SJMP C2

C1:
    JC DIG
C2:
    ADD A, #37H        ; 'A'
    RET

DIG:
    ADD A, #30H        ; '0'
    RET

END
