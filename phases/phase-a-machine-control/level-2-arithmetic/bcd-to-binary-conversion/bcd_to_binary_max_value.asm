; BCD to Binary - Maximum Value
; Converts maximum valid packed BCD (99) to binary
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #99H
    MOV R7, A

    ANL A, #0FH
    MOV R1, A

    MOV A, R7
    ANL A, #0F0H
    SWAP A
    MOV R2, A

    MOV A, R2
    MOV B, #0AH
    MUL AB
    ADD A, R1

HERE:
    SJMP HERE

END
