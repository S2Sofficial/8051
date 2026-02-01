; 8-bit Addition - No Carry
; Adds two 8-bit numbers where result fits in 8 bits
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #25H       ; First operand
    ADD A, #12H       ; Second operand
                      ; Result in A, CY = 0

HERE:
    SJMP HERE

END
