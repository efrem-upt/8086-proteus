;====================================================================
; Main.asm file generated by New Project wizard
;
; Created:   vin. nov. 18 2022
; Processor: 8086
; Compiler:  MASM32
;
; Before starting simulation set Internal Memory Size 
; in the 8086 model properties to 0x10000
;====================================================================

CODE SEGMENT PUBLIC 'CODE'
   ASSUME CS:CODE

 START: 
 
 REIA_MT: ; se pune 0 pe prima coloană şi se verifică dacă s-au acţionat tastele 0, 4, 8, C
       MOV 	DX, 28D0H
       MOV 	AL, 0EH
       MOV	BX, 123
       MOV 	[BX], AL
       OUT 	DX, AL
       ; se verifica tasta 0
       MOV 	DX, 29D0H
       IN	AL, DX
       AND	AL,01H
       JZ	TASTA0
       ; se verifica tasta 1
       IN	AL,DX
       AND	AL,02H
       JZ	TASTA4
       ; se verifica tasta 4
       IN	AL,DX
       AND	AL,04H
       JZ	TASTA8
       ; se verifica tasta C
       IN	AL,DX
       AND	AL,08H
       JZ	TASTAC
       ; se pune 0 pe a doua coloană şi se verifică dacă s-au acţionat tastele 1, 5, 9, D
       MOV 	DX, 28D0H
       MOV 	AL, 0DH
       OUT 	DX, AL
       ; se verifica tasta 1
       MOV 	DX, 29D0H
       IN	AL, DX
       AND	AL,01H
       JZ	TASTA1
       ; se verifica tasta 5
       IN	AL,DX
       AND	AL,02H
       JZ	TASTA5
       ; se verifica tasta 9
       IN	AL,DX
       AND	AL,04H
       JZ	TASTA9
       ; se verifica tasta D
       IN	AL,DX
       AND	AL,08H
       JZ	TASTAD
       ; se pune 0 pe a treia coloană şi se verifică dacă s-au acţionat tastele 2, 6,A ,E
       MOV 	DX, 28D0H
       MOV 	AL, 0BH
       OUT 	DX, AL
       ; se verifica tasta 2
       MOV 	DX, 29D0H
       IN	AL, DX
       AND	AL,01H
       JZ	TASTA2
       ; se verifica tasta 6
       IN	AL,DX
       AND	AL,02H
       JZ	TASTA6
       ; se verifica tasta A
       IN	AL,DX
       AND	AL,04H
       JZ	TASTAA
       ; se verifica tasta E
       IN	AL,DX
       AND	AL,08H
       JZ	TASTAE
       ; se pune 0 pe a patra coloană şi se verifică dacă s-au acţionat tastele 3, 7, B, F
       MOV 	DX, 28D0H
       MOV 	AL, 07H
       OUT 	DX, AL
       ; se verifica tasta 3
       MOV 	DX, 29D0H
       IN	AL, DX
       AND	AL,01H
       JZ	TASTA3
       ; se verifica tasta 7
       IN	AL,DX
       AND	AL,02H
       JZ	TASTA7
       ; se verifica tasta B
       IN	AL,DX
       AND	AL,04H
       JZ	TASTAB
       ; se verifica tasta F
       IN	AL,DX
       AND	AL,08H
       JZ	TASTAF
 
 JMP REIA_MT
 
 ; Functie de aprindere LED-uri, LED-urile care se aprind sunt specificate în registrul CL
 BEGIN_LEDS: MOV DX,18D0H
	     MOV AL, CL
	     OUT DX, AL
	     JMP REIA_MT

TASTA0:
AST0: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 01H
      JZ AST0
; Afisare caracter 0 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 0C0H
OUT DX, AL
MOV CL, 0FFH ; stinge toate ledurile
JMP BEGIN_LEDS

TASTA1:
AST1: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 01H
      JZ AST1
; Afisare caracter 1 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 0F9H
OUT DX, AL
MOV CL, 0FEH ; aprinde primul led
JMP BEGIN_LEDS

TASTA2:
AST2: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 01H
      JZ AST2
; Afisare caracter 2 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 0A4H
OUT DX, AL
MOV CL, 0FCH ; aprinde primele 2 leduri
JMP BEGIN_LEDS

TASTA3:
AST3: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 01H
      JZ AST3
; Afisare caracter 3 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 0B0H
OUT DX, AL
MOV CL, 0F8H ; aprinde primele 3 leduri
JMP BEGIN_LEDS

TASTA4:
AST4: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 02H
      JZ AST4
; Afisare caracter 4 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 99H
OUT DX, AL
MOV CL, 0F0H ; aprinde primele 4 leduri
JMP BEGIN_LEDS

TASTA5:
AST5: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 02H
      JZ AST5
; Afisare caracter 5 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 92H
OUT DX, AL
MOV CL, 0E0H ; aprinde primele 5 leduri
JMP BEGIN_LEDS

TASTA6:
AST6: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 02H
      JZ AST6
; Afisare caracter 6 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 82H
OUT DX, AL
MOV CL, 0C0H ; aprinde primele 6 leduri
JMP BEGIN_LEDS

TASTA7:
AST7: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 02H
      JZ AST7
; Afisare caracter 7 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 0F8H
OUT DX, AL
MOV CL, 80H ; aprinde primele 7 leduri
JMP BEGIN_LEDS

TASTA8:
AST8: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 04H
      JZ AST8
; Afisare caracter 8 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 80H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTA9:
AST9: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 04H
      JZ AST9
; Afisare caracter 9 pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 90H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTAA:
ASTA: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 04H
      JZ ASTA
; Afisare caracter A pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 08H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTAB:
ASTB: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 04H
      JZ ASTB
; Afisare caracter B pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 03H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTAC: 
ASTC: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 08H
      JZ ASTC
; Afisare caracter C pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 46H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTAD:
ASTD: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 08H
      JZ ASTD
; Afisare caracter D pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 21H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTAE:
ASTE: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 08H
      JZ ASTE
; Afisare caracter E pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 06H
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

TASTAF:
ASTF: MOV 	DX, 29D0H
      IN 	AL, DX
      AND	AL, 08H
      JZ ASTF
; Afisare caracter F pe primul rang al afisajului
MOV DX, 19D0H
MOV AL, 0EH
OUT DX, AL
MOV CL, 00H ; aprinde toate ledurile
JMP BEGIN_LEDS

ENDLESS:
 JMP ENDLESS

CODE ENDS
END START