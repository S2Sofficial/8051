; Accumulator to Register Data Transfer
; Transfers accumulator content to R3
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #0A5H
    MOV R3, A

HERE:
    SJMP HERE

END
