; ASCII to Binary - Register Input
; Converts ASCII hex stored in registers to binary
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R3, #'7'
    MOV R4, #'F'

    MOV A, R3
    ACALL CONV
    SWAP A
    MOV R5, A

    MOV A, R4
    ACALL CONV
    ORL A, R5

HERE:
    SJMP HERE

CONV:
    CJNE A, #'9'+1, ALPHA
    JC DIG

ALPHA:
    ANL A, #0DFH
    ADD A, #0C9H
    RET

DIG:
    ADD A, #0D0H
    RET

END
