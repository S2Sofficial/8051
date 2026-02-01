; 8-bit Subtraction - With Borrow
; Subtracts two 8-bit numbers resulting in borrow
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #15H       ; Minuend
    CLR C             ; Ensure no incoming borrow
    SUBB A, #28H      ; A = 15H - 28H, CY = 1 (borrow)

HERE:
    SJMP HERE

END
