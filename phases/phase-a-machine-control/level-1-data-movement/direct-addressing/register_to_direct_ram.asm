; Register to Direct RAM Transfer
; Transfers register content to a fixed internal RAM location
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R2, #3AH      ; Load register
    MOV A, R2         ; Move to accumulator
    MOV 40H, A        ; Store in internal RAM address 40H

HERE:
    SJMP HERE

END
