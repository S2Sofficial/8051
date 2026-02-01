; Indexed Addressing - Single Lookup
; Reads a constant from code memory using DPTR and accumulator offset
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV DPTR, #TABLE  ; Load base address of table
    MOV A, #02H       ; Offset into table
    MOVC A, @A+DPTR   ; Read code memory value into accumulator

HERE:
    SJMP HERE

; Code memory table
TABLE:
    DB 10H, 20H, 30H, 40H, 50H

END
