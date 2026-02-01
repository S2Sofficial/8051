; BCD Addition - No Decimal Carry
; Adds two packed BCD numbers without decimal carry using DA A
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #25H       ; BCD 25
    ADD A, #34H       ; BCD 34 -> A = 59H (valid)
    DA A              ; Adjust (no change expected)

HERE:
    SJMP HERE

END
