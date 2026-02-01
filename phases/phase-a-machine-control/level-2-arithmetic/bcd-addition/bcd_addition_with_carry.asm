; BCD Addition - With Decimal Carry
; Adds two packed BCD numbers resulting in decimal carry
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #48H       ; BCD 48
    ADD A, #35H       ; BCD 35 -> A = 7DH (invalid BCD)
    DA A              ; A = 83H, CY adjusted

HERE:
    SJMP HERE

END
