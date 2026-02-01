; Binary to ASCII - Register Input
; Converts register-held binary value to ASCII hex
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R3, #7FH
    MOV A, R3
    MOV R4, A

    ANL A, #0F0H
    SWAP A
    ACALL HEX
    MOV R5, A

    MOV A, R4
    ANL A, #0FH
    ACALL HEX
    MOV R6, A

HERE:
    SJMP HERE

HEX:
    CJNE A, #0AH, D1
    SJMP L1

D1:
    JC N1
L1:
    ADD A, #37H
    RET

N1:
    ADD A, #30H
    RET

END
