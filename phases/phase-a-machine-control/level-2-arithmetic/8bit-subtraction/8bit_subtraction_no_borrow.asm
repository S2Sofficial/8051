; 8-bit Subtraction - No Borrow
; Subtracts two 8-bit numbers where no borrow occurs
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #50H       ; Minuend
    CLR C             ; Clear borrow (CY = 0)
    SUBB A, #20H      ; A = 50H - 20H

HERE:
    SJMP HERE

END
