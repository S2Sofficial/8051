; ASCII to Binary - Edge Cases
; Converts "00" and "FF" ASCII hex to binary
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Case 1: "00"
    MOV R0, #'0'
    MOV R1, #'0'

    MOV A, R0
    ACALL C1
    SWAP A
    MOV R2, A

    MOV A, R1
    ACALL C1
    ORL A, R2           ; Result = 00H

    ; Case 2: "FF"
    MOV R3, #'F'
    MOV R4, #'F'

    MOV A, R3
    ACALL C1
    SWAP A
    MOV R5, A

    MOV A, R4
    ACALL C1
    ORL A, R5           ; Result = FFH

HERE:
    SJMP HERE

C1:
    CJNE A, #'9'+1, A1
    JC D1

A1:
    ADD A, #0C9H
    RET

D1:
    ADD A, #0D0H
    RET

END
