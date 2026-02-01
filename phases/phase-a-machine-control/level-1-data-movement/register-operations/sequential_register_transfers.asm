; Sequential Register Transfers
; Multiple register transfers overwriting accumulator
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #11H
    MOV R1, #22H
    MOV R2, #33H

    MOV A, R0
    MOV R3, A

    MOV A, R1
    MOV R4, A

    MOV A, R2
    MOV R5, A

HERE:
    SJMP HERE

END
