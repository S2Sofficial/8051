; 8-bit Addition - With Carry
; Adds two 8-bit numbers resulting in carry
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #0F5H      ; First operand
    ADD A, #2BH       ; Second operand
                      ; Result in A, CY = 1

HERE:
    SJMP HERE

END
