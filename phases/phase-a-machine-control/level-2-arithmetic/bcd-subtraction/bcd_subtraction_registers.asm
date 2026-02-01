; BCD Subtraction Using Registers
; Subtracts packed BCD values stored in registers
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R1, #64H      ; BCD 64
    MOV R2, #29H      ; BCD 29

    MOV A, R1
    CLR C
    SUBB A, R2
    DA A              ; Decimal adjust

HERE:
    SJMP HERE

END
