; Binary to ASCII - Edge Cases
; Converts 00H and FFH to ASCII hex
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Case 1: 00H -> "00"
    MOV A, #00H
    MOV R0, A

    ANL A, #0F0H
    SWAP A
    ACALL CONV
    MOV R1, A

    MOV A, R0
    ANL A, #0FH
    ACALL CONV
    MOV R2, A

    ; Case 2: FFH -> "FF"
    MOV A, #0FFH
    MOV R3, A

    ANL A, #0F0H
    SWAP A
    ACALL CONV
    MOV R4, A

    MOV A, R3
    ANL A, #0FH
    ACALL CONV
    MOV R5, A

HERE:
    SJMP HERE

CONV:
    CJNE A, #0AH, C3
    SJMP C4

C3:
    JC DIG2
C4:
    ADD A, #37H
    RET

DIG2:
    ADD A, #30H
    RET

END
 