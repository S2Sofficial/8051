; Block Data Transfer - Overlapping Memory Regions
; Copies data where source and destination ranges overlap
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 50H, #0A1H
    MOV 51H, #0B2H
    MOV 52H, #0C3H

    MOV R0, #50H      ; Source
    MOV R1, #51H      ; Destination (overlapping)
    MOV R2, #02H

COPY_LOOP:
    MOV A, @R0
    MOV @R1, A
    INC R0
    INC R1
    DJNZ R2, COPY_LOOP

HERE:
    SJMP HERE

END

