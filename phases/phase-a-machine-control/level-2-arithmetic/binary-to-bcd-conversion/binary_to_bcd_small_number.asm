; Binary to BCD - Small Number
; Converts small binary number to BCD
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #09H        ; Binary 9
    MOV R1, #00H

    CLR C
    SUBB A, #0AH
    JC SINGLE_DIGIT

    INC R1

SINGLE_DIGIT:
    ADD A, #0AH
    MOV R2, A

    MOV A, R1
    SWAP A
    ORL A, R2

HERE:
    SJMP HERE

END
