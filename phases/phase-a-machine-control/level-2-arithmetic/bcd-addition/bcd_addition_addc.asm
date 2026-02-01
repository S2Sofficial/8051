; BCD Addition with Incoming Carry
; Demonstrates BCD addition with carry input using ADDC and DA A
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    SETB C            ; Incoming decimal carry

    MOV A, #59H       ; BCD 59
    ADDC A, #40H      ; BCD 40 + carry
    DA A              ; Adjust to valid BCD

HERE:
    SJMP HERE

END
