; Indirect Addressing - Write via R1
; Writes data to internal RAM using R1 as pointer
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R1, #40H      ; Load pointer
    MOV A, #0B6H      ; Load data
    MOV @R1, A        ; Write data indirectly

HERE:
    SJMP HERE

END
