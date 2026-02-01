; Binary to BCD - Maximum Value
; Converts 8-bit max binary value (255) to BCD
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #0FFH       ; 255
    MOV R1, #00H       ; Hundreds
    MOV R2, #00H       ; Tens

HUND_LOOP:
    CLR C
    SUBB A, #64H       ; Subtract 100
    JC TENS_LOOP
    INC R1
    SJMP HUND_LOOP

TENS_LOOP:
    ADD A, #64H

TEN_LOOP:
    CLR C
    SUBB A, #0AH
    JC DONE
    INC R2
    SJMP TEN_LOOP

DONE:
    ADD A, #0AH        ; Ones in A

    MOV R3, A          ; Ones
    ; Result:
    ; R1 = Hundreds, R2 = Tens, R3 = Ones

HERE:
    SJMP HERE

END
