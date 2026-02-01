; BCD Subtraction with Incoming Borrow
; Demonstrates BCD subtraction with preset borrow
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    SETB C            ; Incoming borrow

    MOV A, #50H       ; BCD 50
    SUBB A, #10H      ; BCD 10 + borrow
    DA A              ; Adjust to valid BCD

HERE:
    SJMP HERE

END
