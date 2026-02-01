; ASCII to Binary - Mixed Case
; Handles uppercase and lowercase ASCII hex input
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #'b'       ; lowercase b = 11
    MOV R1, #'4'

    MOV A, R0
    ACALL HEX_CONV
    SWAP A
    MOV R2, A

    MOV A, R1
    ACALL HEX_CONV
    ORL A, R2

HERE:
    SJMP HERE

HEX_CONV:
    CJNE A, #'9'+1, ALPHA2
    JC DIG2

ALPHA2:
    ANL A, #0DFH
    ADD A, #0C9H
    RET

DIG2:
    ADD A, #0D0H
    RET

END
