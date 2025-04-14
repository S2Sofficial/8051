;====================================================================
; Author:   Swaroop Kumar Yadav
; Processor: 80C51
; Compiler:  ASEM-51 (Proteus)
;====================================================================

$NOMOD51
$INCLUDE (8051.MCU)

ORG 0000H              ; Start of code memory

;--------------------------
; Pin Assignments
;--------------------------
LCD_DATA  EQU P2       ; LCD data bus (D0–D7)
RS        EQU P3.6     ; Register Select
RW        EQU P3.7     ; Read/Write
EN        EQU P3.5     ; Enable

;--------------------------
; Main Program
;--------------------------
START:
        MOV SP, #70H             ; Set up stack pointer

        ACALL POWER_UP_DELAY     ; Wait ~20ms after power-up

        ; LCD Initialization Sequence
        MOV A, #38H              ; Function Set- 8-bit, 2 lines
        ACALL CMD

        MOV A, #0CH              ; Display ON, Cursor OFF
        ACALL CMD

        MOV A, #01H              ; Clear Display
        ACALL CMD

        MOV A, #06H              ; Entry Mode Set
        ACALL CMD

        ;--------------------------
        ; Display "HELLO"
        ;--------------------------
        MOV A, #'H'
        ACALL DATA_WRITE

        MOV A, #'E'
        ACALL DATA_WRITE

        MOV A, #'L'
        ACALL DATA_WRITE

        MOV A, #'L'
        ACALL DATA_WRITE

        MOV A, #'O'
        ACALL DATA_WRITE

        SJMP $                   ; Infinite loop

;--------------------------
; Send Command to LCD
;--------------------------
CMD:
        CLR RS
        CLR RW
        ACALL LATCH
        ACALL SHORT_DELAY
        RET

;--------------------------
; Send Data (Character)
;--------------------------
DATA_WRITE:
        SETB RS
        CLR RW
        ACALL LATCH
        ACALL SHORT_DELAY
        RET

;--------------------------
; Latch A onto LCD
;--------------------------
LATCH:
        MOV LCD_DATA, A
        SETB EN
        ACALL SHORT_DELAY      ; Let EN stay high a bit
        CLR EN
        ACALL SHORT_DELAY      ; Allow time to register
        RET

;--------------------------
; Short Delay (~0.5ms)
;--------------------------
SHORT_DELAY:
        MOV R2, #255
SD_LOOP: DJNZ R2, SD_LOOP
        RET

;--------------------------
; Power-up Delay (~20ms)
;--------------------------
POWER_UP_DELAY:
        MOV R3, #200
PD_LOOP: ACALL SHORT_DELAY
        DJNZ R3, PD_LOOP
        RET

;--------------------------
; End of Program
;--------------------------
END
