; 8-bit Subtraction with Incoming Borrow
; Demonstrates SUBB with preset borrow
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    SETB C            ; Set incoming borrow

    MOV A, #40H
    SUBB A, #10H      ; A = 40H - 10H - 1

HERE:
    SJMP HERE

END
