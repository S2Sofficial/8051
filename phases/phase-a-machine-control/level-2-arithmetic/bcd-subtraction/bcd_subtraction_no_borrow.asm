; BCD Subtraction - No Decimal Borrow
; Subtracts two packed BCD numbers without decimal borrow using DA A
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #45H       ; BCD 45
    CLR C             ; Clear borrow
    SUBB A, #23H      ; BCD 23 -> A = 22H (valid)
    DA A              ; Adjust (no change expected)

HERE:
    SJMP HERE

END
