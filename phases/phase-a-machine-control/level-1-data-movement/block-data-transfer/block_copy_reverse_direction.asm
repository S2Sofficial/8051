; Block Data Transfer - Reverse Direction Copy
; Copies block of data by decrementing pointers
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 60H, #44H
    MOV 61H, #55H
    MOV 62H, #66H

    MOV R0, #62H      ; Source end
    MOV R1, #72H      ; Destination end
    MOV R2, #03H

COPY_LOOP:
    MOV A, @R0
    MOV @R1, A
    DEC R0
    DEC R1
    DJNZ R2, COPY_LOOP

HERE:
    SJMP HERE

END
