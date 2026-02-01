; BCD Subtraction - With Decimal Borrow
; Subtracts two packed BCD numbers resulting in decimal borrow
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #32H       ; BCD 32
    CLR C
    SUBB A, #18H      ; Binary result invalid for BCD
    DA A              ; Adjust to valid BCD, CY indicates borrow

HERE:
    SJMP HERE

END
