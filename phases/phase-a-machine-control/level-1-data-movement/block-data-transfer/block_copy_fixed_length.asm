; Block Data Transfer - Fixed Length Copy
; Copies a fixed number of bytes from one RAM block to another
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 30H, #11H
    MOV 31H, #22H
    MOV 32H, #33H

    MOV R0, #30H      ; Source pointer
    MOV R1, #40H      ; Destination pointer
    MOV R2, #03H      ; Byte count

COPY_LOOP:
    MOV A, @R0
    MOV @R1, A
    INC R0
    INC R1
    DJNZ R2, COPY_LOOP

HERE:
    SJMP HERE

END
