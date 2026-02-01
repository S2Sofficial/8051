; Bit-Addressable RAM - Bit Toggle
; Toggles a specific bit using CPL instruction
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    CLR 21H.3         ; Initialize bit
    CPL 21H.3         ; Toggle bit
    CPL 21H.3         ; Toggle again

HERE:
    SJMP HERE

END

