; Register to Register Data Transfer
; Transfers data from R1 to R2 using Accumulator as intermediate
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R1, #55H      ; Source register
    MOV A, R1         ; Move source to accumulator
    MOV R2, A         ; Move accumulator to destination

HERE:
    SJMP HERE         ; Halt

END
