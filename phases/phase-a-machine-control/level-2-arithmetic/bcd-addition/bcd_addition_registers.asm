; BCD Addition Using Registers
; Adds two packed BCD values stored in registers
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R1, #27H      ; BCD 27
    MOV R2, #19H      ; BCD 19

    MOV A, R1
    ADD A, R2         ; Binary add
    DA A              ; Decimal adjust

HERE:
    SJMP HERE

END
