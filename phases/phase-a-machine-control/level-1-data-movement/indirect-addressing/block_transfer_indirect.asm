; Indirect Addressing - Block Transfer
; Copies data between RAM locations using R0 as pointer
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 50H, #11H
    MOV 51H, #22H

    MOV R0, #50H
    MOV A, @R0
    MOV 60H, A

    INC R0
    MOV A, @R0
    MOV 61H, A

HERE:
    SJMP HERE

END
