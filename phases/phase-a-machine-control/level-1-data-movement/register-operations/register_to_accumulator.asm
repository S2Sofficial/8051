; Register to Accumulator Data Transfer
; Transfers R4 content into accumulator
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R4, #3CH
    MOV A, R4

HERE:
    SJMP HERE

END
