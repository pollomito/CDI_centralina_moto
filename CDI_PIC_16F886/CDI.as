opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 5239"

opt pagewidth 120

	opt pm

	processor	16F886
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "D:\Project\CDI_PIC_16F886\SRC\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\Project\CDI_PIC_16F886\SRC\main.c"
	dw 0x3FFA & 0x3FF7 & 0x3FFF & 0x3CFF & 0x3FFF & 0x1FFF & 0x3FFF ;#
	FNCALL	_main,_ADC_Init
	FNROOT	_main
	FNCALL	intlevel1,_InterruptService
	global	intlevel1
	FNROOT	intlevel1
	global	_DCDC_CicleTable
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movwf	pclath
	movf	fsr,w
stringdir:
	movwf pc
__stringbase:
psect	stringtext1,class=CODE,delta=2
global __pstringtext1
__pstringtext1:
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	18
_DCDC_CicleTable:
	retlw	096h
	retlw	096h
	retlw	096h
	retlw	096h
	retlw	084h
	retlw	06Fh
	retlw	060h
	retlw	056h
	retlw	04Eh
	retlw	047h
	retlw	042h
	retlw	03Eh
	retlw	03Bh
	retlw	038h
	retlw	035h
	retlw	033h
	retlw	031h
	retlw	02Fh
	retlw	02Eh
	retlw	02Ch
	retlw	02Bh
	retlw	02Ah
	retlw	029h
	retlw	028h
	retlw	027h
	retlw	027h
	retlw	026h
	retlw	025h
	retlw	025h
	retlw	024h
	retlw	023h
	retlw	023h
	retlw	022h
	retlw	022h
	retlw	022h
	retlw	021h
	retlw	021h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Eh
	retlw	01Eh
	retlw	01Eh
	retlw	01Eh
	retlw	01Dh
	retlw	01Dh
	retlw	01Dh
	retlw	01Dh
	retlw	01Dh
	retlw	01Dh
	retlw	01Ch
	retlw	01Ch
	retlw	01Ch
	retlw	01Ch
	retlw	01Ch
	retlw	01Ch
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Bh
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	01Ah
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	019h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	018h
	retlw	017h
	retlw	017h
	retlw	017h
	retlw	017h
	retlw	017h
	retlw	017h
	retlw	017h
	retlw	017h
	global	_DELAY_Table_0
psect	stringtext2,class=CODE,delta=2
global __pstringtext2
__pstringtext2:
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	30
_DELAY_Table_0:
	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	014h
	retlw	0

	retlw	036h
	retlw	0

	retlw	059h
	retlw	0

	retlw	07Bh
	retlw	0

	retlw	09Eh
	retlw	0

	retlw	0C0h
	retlw	0

	retlw	0E3h
	retlw	0

	retlw	05h
	retlw	01h

	retlw	028h
	retlw	01h

	retlw	04Ah
	retlw	01h

	retlw	06Dh
	retlw	01h

	retlw	08Fh
	retlw	01h

	retlw	0B2h
	retlw	01h

	retlw	0D4h
	retlw	01h

	retlw	0F7h
	retlw	01h

	retlw	019h
	retlw	02h

	retlw	03Bh
	retlw	02h

	retlw	05Eh
	retlw	02h

	retlw	080h
	retlw	02h

	retlw	0A3h
	retlw	02h

	retlw	0C5h
	retlw	02h

	retlw	0E8h
	retlw	02h

	retlw	0Ah
	retlw	03h

	retlw	02Dh
	retlw	03h

	retlw	04Fh
	retlw	03h

	retlw	072h
	retlw	03h

	retlw	094h
	retlw	03h

	retlw	0B7h
	retlw	03h

	retlw	0D9h
	retlw	03h

	retlw	0FCh
	retlw	03h

	retlw	01Eh
	retlw	04h

	retlw	041h
	retlw	04h

	retlw	063h
	retlw	04h

	retlw	086h
	retlw	04h

	retlw	0A8h
	retlw	04h

	retlw	0CBh
	retlw	04h

	retlw	0EDh
	retlw	04h

	retlw	010h
	retlw	05h

	retlw	032h
	retlw	05h

	retlw	055h
	retlw	05h

	retlw	077h
	retlw	05h

	retlw	09Ah
	retlw	05h

	retlw	0BCh
	retlw	05h

	retlw	0DFh
	retlw	05h

	retlw	01h
	retlw	06h

	retlw	024h
	retlw	06h

	retlw	046h
	retlw	06h

	retlw	069h
	retlw	06h

	retlw	08Bh
	retlw	06h

	retlw	0AEh
	retlw	06h

	retlw	0D0h
	retlw	06h

	retlw	0F3h
	retlw	06h

	retlw	015h
	retlw	07h

	retlw	038h
	retlw	07h

	retlw	05Ah
	retlw	07h

	retlw	07Dh
	retlw	07h

	retlw	09Fh
	retlw	07h

	retlw	0C2h
	retlw	07h

	retlw	0E4h
	retlw	07h

	retlw	07h
	retlw	08h

	retlw	029h
	retlw	08h

	retlw	04Bh
	retlw	08h

	retlw	06Eh
	retlw	08h

	retlw	090h
	retlw	08h

	retlw	0B3h
	retlw	08h

	retlw	0D5h
	retlw	08h

	retlw	0F8h
	retlw	08h

	retlw	01Ah
	retlw	09h

	retlw	03Dh
	retlw	09h

	retlw	05Fh
	retlw	09h

	retlw	082h
	retlw	09h

	retlw	0A4h
	retlw	09h

	retlw	0C7h
	retlw	09h

	retlw	0E9h
	retlw	09h

	retlw	0Ch
	retlw	0Ah

	retlw	02Eh
	retlw	0Ah

	retlw	051h
	retlw	0Ah

	retlw	073h
	retlw	0Ah

	retlw	096h
	retlw	0Ah

	retlw	0B8h
	retlw	0Ah

	retlw	0DBh
	retlw	0Ah

	retlw	0FDh
	retlw	0Ah

	retlw	020h
	retlw	0Bh

	retlw	042h
	retlw	0Bh

	retlw	065h
	retlw	0Bh

	retlw	087h
	retlw	0Bh

	retlw	0AAh
	retlw	0Bh

	retlw	0CCh
	retlw	0Bh

	retlw	0EFh
	retlw	0Bh

	retlw	011h
	retlw	0Ch

	retlw	034h
	retlw	0Ch

	retlw	056h
	retlw	0Ch

	retlw	079h
	retlw	0Ch

	retlw	09Bh
	retlw	0Ch

	retlw	0BEh
	retlw	0Ch

	retlw	0E0h
	retlw	0Ch

	retlw	03h
	retlw	0Dh

	retlw	025h
	retlw	0Dh

	retlw	048h
	retlw	0Dh

	retlw	06Ah
	retlw	0Dh

	retlw	08Dh
	retlw	0Dh

	retlw	0AFh
	retlw	0Dh

	retlw	0D2h
	retlw	0Dh

	retlw	0F4h
	retlw	0Dh

	retlw	017h
	retlw	0Eh

	retlw	039h
	retlw	0Eh

	retlw	05Bh
	retlw	0Eh

	retlw	07Eh
	retlw	0Eh

	retlw	0A0h
	retlw	0Eh

	retlw	0C3h
	retlw	0Eh

	retlw	0E5h
	retlw	0Eh

	retlw	08h
	retlw	0Fh

	retlw	02Ah
	retlw	0Fh

	retlw	04Dh
	retlw	0Fh

	retlw	06Fh
	retlw	0Fh

	retlw	092h
	retlw	0Fh

	retlw	0B4h
	retlw	0Fh

	retlw	0D7h
	retlw	0Fh

	retlw	0F9h
	retlw	0Fh

	retlw	01Ch
	retlw	010h

	retlw	03Eh
	retlw	010h

	retlw	061h
	retlw	010h

	retlw	083h
	retlw	010h

	retlw	0A6h
	retlw	010h

	retlw	0C8h
	retlw	010h

	retlw	0EBh
	retlw	010h

	retlw	0Dh
	retlw	011h

	retlw	030h
	retlw	011h

	retlw	052h
	retlw	011h

	retlw	075h
	retlw	011h

	retlw	097h
	retlw	011h

	retlw	0BAh
	retlw	011h

	retlw	0DCh
	retlw	011h

	retlw	0FFh
	retlw	011h

	retlw	021h
	retlw	012h

	retlw	044h
	retlw	012h

	retlw	066h
	retlw	012h

	retlw	089h
	retlw	012h

	retlw	0ABh
	retlw	012h

	retlw	0CEh
	retlw	012h

	retlw	0F0h
	retlw	012h

	retlw	013h
	retlw	013h

	retlw	035h
	retlw	013h

	retlw	058h
	retlw	013h

	retlw	07Ah
	retlw	013h

	retlw	09Dh
	retlw	013h

	retlw	0BFh
	retlw	013h

	retlw	0E2h
	retlw	013h

	retlw	04h
	retlw	014h

	retlw	027h
	retlw	014h

	retlw	049h
	retlw	014h

	retlw	06Bh
	retlw	014h

	retlw	08Eh
	retlw	014h

	retlw	0B0h
	retlw	014h

	retlw	0D3h
	retlw	014h

	retlw	0F5h
	retlw	014h

	retlw	018h
	retlw	015h

	retlw	03Ah
	retlw	015h

	retlw	05Dh
	retlw	015h

	retlw	07Fh
	retlw	015h

	retlw	0A2h
	retlw	015h

	retlw	0C4h
	retlw	015h

	retlw	0E7h
	retlw	015h

	retlw	09h
	retlw	016h

	retlw	02Ch
	retlw	016h

	retlw	04Eh
	retlw	016h

	retlw	071h
	retlw	016h

	retlw	093h
	retlw	016h

	retlw	0B6h
	retlw	016h

	retlw	0D8h
	retlw	016h

	retlw	0FBh
	retlw	016h

	retlw	01Dh
	retlw	017h

	retlw	040h
	retlw	017h

	retlw	062h
	retlw	017h

	retlw	085h
	retlw	017h

	retlw	0A7h
	retlw	017h

	retlw	0CAh
	retlw	017h

	retlw	0ECh
	retlw	017h

	retlw	0Fh
	retlw	018h

	retlw	031h
	retlw	018h

	retlw	054h
	retlw	018h

	retlw	076h
	retlw	018h

	retlw	099h
	retlw	018h

	retlw	0BBh
	retlw	018h

	retlw	0DEh
	retlw	018h

	retlw	0
	retlw	019h

	retlw	023h
	retlw	019h

	retlw	045h
	retlw	019h

	retlw	068h
	retlw	019h

	retlw	08Ah
	retlw	019h

	retlw	0ADh
	retlw	019h

	retlw	0CFh
	retlw	019h

	retlw	0F2h
	retlw	019h

	retlw	014h
	retlw	01Ah

	retlw	037h
	retlw	01Ah

	retlw	059h
	retlw	01Ah

	retlw	07Bh
	retlw	01Ah

	retlw	09Eh
	retlw	01Ah

	retlw	0C0h
	retlw	01Ah

	retlw	0E3h
	retlw	01Ah

	retlw	05h
	retlw	01Bh

	retlw	028h
	retlw	01Bh

	retlw	04Ah
	retlw	01Bh

	retlw	06Dh
	retlw	01Bh

	retlw	08Fh
	retlw	01Bh

	retlw	0B2h
	retlw	01Bh

	retlw	0D4h
	retlw	01Bh

	retlw	0F7h
	retlw	01Bh

	retlw	019h
	retlw	01Ch

	retlw	03Ch
	retlw	01Ch

	retlw	05Eh
	retlw	01Ch

	retlw	081h
	retlw	01Ch

	retlw	0A3h
	retlw	01Ch

	retlw	0C6h
	retlw	01Ch

	retlw	0E8h
	retlw	01Ch

	retlw	0Bh
	retlw	01Dh

	retlw	02Dh
	retlw	01Dh

	retlw	050h
	retlw	01Dh

	retlw	072h
	retlw	01Dh

	retlw	095h
	retlw	01Dh

	retlw	0B7h
	retlw	01Dh

	retlw	0DAh
	retlw	01Dh

	retlw	0FCh
	retlw	01Dh

	retlw	01Fh
	retlw	01Eh

	retlw	041h
	retlw	01Eh

	global	_DELAY_Table_1
psect	stringtext3,class=CODE,delta=2
global __pstringtext3
__pstringtext3:
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	50
_DELAY_Table_1:
	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	014h
	retlw	0

	retlw	036h
	retlw	0

	retlw	059h
	retlw	0

	retlw	07Bh
	retlw	0

	retlw	09Eh
	retlw	0

	retlw	0C0h
	retlw	0

	retlw	0E3h
	retlw	0

	retlw	05h
	retlw	01h

	retlw	028h
	retlw	01h

	retlw	04Ah
	retlw	01h

	retlw	06Dh
	retlw	01h

	retlw	08Fh
	retlw	01h

	retlw	0B2h
	retlw	01h

	retlw	0D4h
	retlw	01h

	retlw	0F7h
	retlw	01h

	retlw	019h
	retlw	02h

	retlw	03Bh
	retlw	02h

	retlw	05Eh
	retlw	02h

	retlw	080h
	retlw	02h

	retlw	0A3h
	retlw	02h

	retlw	0C5h
	retlw	02h

	retlw	0E8h
	retlw	02h

	retlw	0Ah
	retlw	03h

	retlw	02Dh
	retlw	03h

	retlw	04Fh
	retlw	03h

	retlw	072h
	retlw	03h

	retlw	094h
	retlw	03h

	retlw	0B7h
	retlw	03h

	retlw	0D9h
	retlw	03h

	retlw	0FCh
	retlw	03h

	retlw	01Eh
	retlw	04h

	retlw	041h
	retlw	04h

	retlw	063h
	retlw	04h

	retlw	086h
	retlw	04h

	retlw	0A8h
	retlw	04h

	retlw	0CBh
	retlw	04h

	retlw	0EDh
	retlw	04h

	retlw	010h
	retlw	05h

	retlw	032h
	retlw	05h

	retlw	055h
	retlw	05h

	retlw	077h
	retlw	05h

	retlw	09Ah
	retlw	05h

	retlw	0BCh
	retlw	05h

	retlw	0DFh
	retlw	05h

	retlw	01h
	retlw	06h

	retlw	024h
	retlw	06h

	retlw	046h
	retlw	06h

	retlw	069h
	retlw	06h

	retlw	08Bh
	retlw	06h

	retlw	0AEh
	retlw	06h

	retlw	0D0h
	retlw	06h

	retlw	0F3h
	retlw	06h

	retlw	015h
	retlw	07h

	retlw	038h
	retlw	07h

	retlw	05Ah
	retlw	07h

	retlw	07Dh
	retlw	07h

	retlw	09Fh
	retlw	07h

	retlw	0C2h
	retlw	07h

	retlw	0E4h
	retlw	07h

	retlw	07h
	retlw	08h

	retlw	029h
	retlw	08h

	retlw	04Bh
	retlw	08h

	retlw	06Eh
	retlw	08h

	retlw	090h
	retlw	08h

	retlw	0B3h
	retlw	08h

	retlw	0D5h
	retlw	08h

	retlw	0F8h
	retlw	08h

	retlw	01Ah
	retlw	09h

	retlw	03Dh
	retlw	09h

	retlw	05Fh
	retlw	09h

	retlw	082h
	retlw	09h

	retlw	0A4h
	retlw	09h

	retlw	0C7h
	retlw	09h

	retlw	0E9h
	retlw	09h

	retlw	0Ch
	retlw	0Ah

	retlw	02Eh
	retlw	0Ah

	retlw	051h
	retlw	0Ah

	retlw	073h
	retlw	0Ah

	retlw	096h
	retlw	0Ah

	retlw	0B8h
	retlw	0Ah

	retlw	0DBh
	retlw	0Ah

	retlw	0FDh
	retlw	0Ah

	retlw	020h
	retlw	0Bh

	retlw	042h
	retlw	0Bh

	retlw	065h
	retlw	0Bh

	retlw	087h
	retlw	0Bh

	retlw	0AAh
	retlw	0Bh

	retlw	0CCh
	retlw	0Bh

	retlw	0EFh
	retlw	0Bh

	retlw	011h
	retlw	0Ch

	retlw	034h
	retlw	0Ch

	retlw	056h
	retlw	0Ch

	retlw	079h
	retlw	0Ch

	retlw	09Bh
	retlw	0Ch

	retlw	0BEh
	retlw	0Ch

	retlw	0E0h
	retlw	0Ch

	retlw	03h
	retlw	0Dh

	retlw	025h
	retlw	0Dh

	retlw	048h
	retlw	0Dh

	retlw	06Ah
	retlw	0Dh

	retlw	08Dh
	retlw	0Dh

	retlw	0AFh
	retlw	0Dh

	retlw	0D2h
	retlw	0Dh

	retlw	0F4h
	retlw	0Dh

	retlw	017h
	retlw	0Eh

	retlw	039h
	retlw	0Eh

	retlw	05Bh
	retlw	0Eh

	retlw	07Eh
	retlw	0Eh

	retlw	0A0h
	retlw	0Eh

	retlw	0C3h
	retlw	0Eh

	retlw	0E5h
	retlw	0Eh

	retlw	08h
	retlw	0Fh

	retlw	02Ah
	retlw	0Fh

	retlw	04Dh
	retlw	0Fh

	retlw	06Fh
	retlw	0Fh

	retlw	092h
	retlw	0Fh

	retlw	0B4h
	retlw	0Fh

	retlw	0D7h
	retlw	0Fh

	retlw	0F9h
	retlw	0Fh

	retlw	01Ch
	retlw	010h

	retlw	03Eh
	retlw	010h

	retlw	061h
	retlw	010h

	retlw	083h
	retlw	010h

	retlw	0A6h
	retlw	010h

	retlw	0C8h
	retlw	010h

	retlw	0EBh
	retlw	010h

	retlw	0Dh
	retlw	011h

	retlw	030h
	retlw	011h

	retlw	052h
	retlw	011h

	retlw	075h
	retlw	011h

	retlw	097h
	retlw	011h

	retlw	0BAh
	retlw	011h

	retlw	0DCh
	retlw	011h

	retlw	0FFh
	retlw	011h

	retlw	021h
	retlw	012h

	retlw	044h
	retlw	012h

	retlw	066h
	retlw	012h

	retlw	089h
	retlw	012h

	retlw	0ABh
	retlw	012h

	retlw	0CEh
	retlw	012h

	retlw	0F0h
	retlw	012h

	retlw	013h
	retlw	013h

	retlw	035h
	retlw	013h

	retlw	058h
	retlw	013h

	retlw	07Ah
	retlw	013h

	retlw	09Dh
	retlw	013h

	retlw	0BFh
	retlw	013h

	retlw	0E2h
	retlw	013h

	retlw	04h
	retlw	014h

	retlw	027h
	retlw	014h

	retlw	049h
	retlw	014h

	retlw	06Bh
	retlw	014h

	retlw	08Eh
	retlw	014h

	retlw	0B0h
	retlw	014h

	retlw	0D3h
	retlw	014h

	retlw	0F5h
	retlw	014h

	retlw	018h
	retlw	015h

	retlw	03Ah
	retlw	015h

	retlw	05Dh
	retlw	015h

	retlw	07Fh
	retlw	015h

	retlw	0A2h
	retlw	015h

	retlw	0C4h
	retlw	015h

	retlw	0E7h
	retlw	015h

	retlw	09h
	retlw	016h

	retlw	02Ch
	retlw	016h

	retlw	04Eh
	retlw	016h

	retlw	071h
	retlw	016h

	retlw	093h
	retlw	016h

	retlw	0B6h
	retlw	016h

	retlw	0D8h
	retlw	016h

	retlw	0FBh
	retlw	016h

	retlw	01Dh
	retlw	017h

	retlw	040h
	retlw	017h

	retlw	062h
	retlw	017h

	retlw	085h
	retlw	017h

	retlw	0A7h
	retlw	017h

	retlw	0CAh
	retlw	017h

	retlw	0ECh
	retlw	017h

	retlw	0Fh
	retlw	018h

	retlw	031h
	retlw	018h

	retlw	054h
	retlw	018h

	retlw	076h
	retlw	018h

	retlw	099h
	retlw	018h

	retlw	0BBh
	retlw	018h

	retlw	0DEh
	retlw	018h

	retlw	0
	retlw	019h

	retlw	023h
	retlw	019h

	retlw	045h
	retlw	019h

	retlw	068h
	retlw	019h

	retlw	08Ah
	retlw	019h

	retlw	0ADh
	retlw	019h

	retlw	0CFh
	retlw	019h

	retlw	0F2h
	retlw	019h

	retlw	014h
	retlw	01Ah

	retlw	037h
	retlw	01Ah

	retlw	059h
	retlw	01Ah

	retlw	07Bh
	retlw	01Ah

	retlw	09Eh
	retlw	01Ah

	retlw	0C0h
	retlw	01Ah

	retlw	0E3h
	retlw	01Ah

	retlw	05h
	retlw	01Bh

	retlw	028h
	retlw	01Bh

	retlw	04Ah
	retlw	01Bh

	retlw	06Dh
	retlw	01Bh

	retlw	08Fh
	retlw	01Bh

	retlw	0B2h
	retlw	01Bh

	retlw	0D4h
	retlw	01Bh

	retlw	0F7h
	retlw	01Bh

	retlw	019h
	retlw	01Ch

	retlw	03Ch
	retlw	01Ch

	retlw	05Eh
	retlw	01Ch

	retlw	081h
	retlw	01Ch

	retlw	0A3h
	retlw	01Ch

	retlw	0C6h
	retlw	01Ch

	retlw	0E8h
	retlw	01Ch

	retlw	0Bh
	retlw	01Dh

	retlw	02Dh
	retlw	01Dh

	retlw	050h
	retlw	01Dh

	retlw	072h
	retlw	01Dh

	retlw	095h
	retlw	01Dh

	retlw	0B7h
	retlw	01Dh

	retlw	0DAh
	retlw	01Dh

	retlw	0FCh
	retlw	01Dh

	retlw	01Fh
	retlw	01Eh

	retlw	041h
	retlw	01Eh

	global	_DELAY_Table_2
psect	stringtext4,class=CODE,delta=2
global __pstringtext4
__pstringtext4:
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	70
_DELAY_Table_2:
	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0

	retlw	014h
	retlw	0

	retlw	036h
	retlw	0

	retlw	059h
	retlw	0

	retlw	07Bh
	retlw	0

	retlw	09Eh
	retlw	0

	retlw	0C0h
	retlw	0

	retlw	0E3h
	retlw	0

	retlw	05h
	retlw	01h

	retlw	028h
	retlw	01h

	retlw	04Ah
	retlw	01h

	retlw	06Dh
	retlw	01h

	retlw	08Fh
	retlw	01h

	retlw	0B2h
	retlw	01h

	retlw	0D4h
	retlw	01h

	retlw	0F7h
	retlw	01h

	retlw	019h
	retlw	02h

	retlw	03Bh
	retlw	02h

	retlw	05Eh
	retlw	02h

	retlw	080h
	retlw	02h

	retlw	0A3h
	retlw	02h

	retlw	0C5h
	retlw	02h

	retlw	0E8h
	retlw	02h

	retlw	0Ah
	retlw	03h

	retlw	02Dh
	retlw	03h

	retlw	04Fh
	retlw	03h

	retlw	072h
	retlw	03h

	retlw	094h
	retlw	03h

	retlw	0B7h
	retlw	03h

	retlw	0D9h
	retlw	03h

	retlw	0FCh
	retlw	03h

	retlw	01Eh
	retlw	04h

	retlw	041h
	retlw	04h

	retlw	063h
	retlw	04h

	retlw	086h
	retlw	04h

	retlw	0A8h
	retlw	04h

	retlw	0CBh
	retlw	04h

	retlw	0EDh
	retlw	04h

	retlw	010h
	retlw	05h

	retlw	032h
	retlw	05h

	retlw	055h
	retlw	05h

	retlw	077h
	retlw	05h

	retlw	09Ah
	retlw	05h

	retlw	0BCh
	retlw	05h

	retlw	0DFh
	retlw	05h

	retlw	01h
	retlw	06h

	retlw	024h
	retlw	06h

	retlw	046h
	retlw	06h

	retlw	069h
	retlw	06h

	retlw	08Bh
	retlw	06h

	retlw	0AEh
	retlw	06h

	retlw	0D0h
	retlw	06h

	retlw	0F3h
	retlw	06h

	retlw	015h
	retlw	07h

	retlw	038h
	retlw	07h

	retlw	05Ah
	retlw	07h

	retlw	07Dh
	retlw	07h

	retlw	09Fh
	retlw	07h

	retlw	0C2h
	retlw	07h

	retlw	0E4h
	retlw	07h

	retlw	07h
	retlw	08h

	retlw	029h
	retlw	08h

	retlw	04Bh
	retlw	08h

	retlw	06Eh
	retlw	08h

	retlw	090h
	retlw	08h

	retlw	0B3h
	retlw	08h

	retlw	0D5h
	retlw	08h

	retlw	0F8h
	retlw	08h

	retlw	01Ah
	retlw	09h

	retlw	03Dh
	retlw	09h

	retlw	05Fh
	retlw	09h

	retlw	082h
	retlw	09h

	retlw	0A4h
	retlw	09h

	retlw	0C7h
	retlw	09h

	retlw	0E9h
	retlw	09h

	retlw	0Ch
	retlw	0Ah

	retlw	02Eh
	retlw	0Ah

	retlw	051h
	retlw	0Ah

	retlw	073h
	retlw	0Ah

	retlw	096h
	retlw	0Ah

	retlw	0B8h
	retlw	0Ah

	retlw	0DBh
	retlw	0Ah

	retlw	0FDh
	retlw	0Ah

	retlw	020h
	retlw	0Bh

	retlw	042h
	retlw	0Bh

	retlw	065h
	retlw	0Bh

	retlw	087h
	retlw	0Bh

	retlw	0AAh
	retlw	0Bh

	retlw	0CCh
	retlw	0Bh

	retlw	0EFh
	retlw	0Bh

	retlw	011h
	retlw	0Ch

	retlw	034h
	retlw	0Ch

	retlw	056h
	retlw	0Ch

	retlw	079h
	retlw	0Ch

	retlw	09Bh
	retlw	0Ch

	retlw	0BEh
	retlw	0Ch

	retlw	0E0h
	retlw	0Ch

	retlw	03h
	retlw	0Dh

	retlw	025h
	retlw	0Dh

	retlw	048h
	retlw	0Dh

	retlw	06Ah
	retlw	0Dh

	retlw	08Dh
	retlw	0Dh

	retlw	0AFh
	retlw	0Dh

	retlw	0D2h
	retlw	0Dh

	retlw	0F4h
	retlw	0Dh

	retlw	017h
	retlw	0Eh

	retlw	039h
	retlw	0Eh

	retlw	05Bh
	retlw	0Eh

	retlw	07Eh
	retlw	0Eh

	retlw	0A0h
	retlw	0Eh

	retlw	0C3h
	retlw	0Eh

	retlw	0E5h
	retlw	0Eh

	retlw	08h
	retlw	0Fh

	retlw	02Ah
	retlw	0Fh

	retlw	04Dh
	retlw	0Fh

	retlw	06Fh
	retlw	0Fh

	retlw	092h
	retlw	0Fh

	retlw	0B4h
	retlw	0Fh

	retlw	0D7h
	retlw	0Fh

	retlw	0F9h
	retlw	0Fh

	retlw	01Ch
	retlw	010h

	retlw	03Eh
	retlw	010h

	retlw	061h
	retlw	010h

	retlw	083h
	retlw	010h

	retlw	0A6h
	retlw	010h

	retlw	0C8h
	retlw	010h

	retlw	0EBh
	retlw	010h

	retlw	0Dh
	retlw	011h

	retlw	030h
	retlw	011h

	retlw	052h
	retlw	011h

	retlw	075h
	retlw	011h

	retlw	097h
	retlw	011h

	retlw	0BAh
	retlw	011h

	retlw	0DCh
	retlw	011h

	retlw	0FFh
	retlw	011h

	retlw	021h
	retlw	012h

	retlw	044h
	retlw	012h

	retlw	066h
	retlw	012h

	retlw	089h
	retlw	012h

	retlw	0ABh
	retlw	012h

	retlw	0CEh
	retlw	012h

	retlw	0F0h
	retlw	012h

	retlw	013h
	retlw	013h

	retlw	035h
	retlw	013h

	retlw	058h
	retlw	013h

	retlw	07Ah
	retlw	013h

	retlw	09Dh
	retlw	013h

	retlw	0BFh
	retlw	013h

	retlw	0E2h
	retlw	013h

	retlw	04h
	retlw	014h

	retlw	027h
	retlw	014h

	retlw	049h
	retlw	014h

	retlw	06Bh
	retlw	014h

	retlw	08Eh
	retlw	014h

	retlw	0B0h
	retlw	014h

	retlw	0D3h
	retlw	014h

	retlw	0F5h
	retlw	014h

	retlw	018h
	retlw	015h

	retlw	03Ah
	retlw	015h

	retlw	05Dh
	retlw	015h

	retlw	07Fh
	retlw	015h

	retlw	0A2h
	retlw	015h

	retlw	0C4h
	retlw	015h

	retlw	0E7h
	retlw	015h

	retlw	09h
	retlw	016h

	retlw	02Ch
	retlw	016h

	retlw	04Eh
	retlw	016h

	retlw	071h
	retlw	016h

	retlw	093h
	retlw	016h

	retlw	0B6h
	retlw	016h

	retlw	0D8h
	retlw	016h

	retlw	0FBh
	retlw	016h

	retlw	01Dh
	retlw	017h

	retlw	040h
	retlw	017h

	retlw	062h
	retlw	017h

	retlw	085h
	retlw	017h

	retlw	0A7h
	retlw	017h

	retlw	0CAh
	retlw	017h

	retlw	0ECh
	retlw	017h

	retlw	0Fh
	retlw	018h

	retlw	031h
	retlw	018h

	retlw	054h
	retlw	018h

	retlw	076h
	retlw	018h

	retlw	099h
	retlw	018h

	retlw	0BBh
	retlw	018h

	retlw	0DEh
	retlw	018h

	retlw	0
	retlw	019h

	retlw	023h
	retlw	019h

	retlw	045h
	retlw	019h

	retlw	068h
	retlw	019h

	retlw	08Ah
	retlw	019h

	retlw	0ADh
	retlw	019h

	retlw	0CFh
	retlw	019h

	retlw	0F2h
	retlw	019h

	retlw	014h
	retlw	01Ah

	retlw	037h
	retlw	01Ah

	retlw	059h
	retlw	01Ah

	retlw	07Bh
	retlw	01Ah

	retlw	09Eh
	retlw	01Ah

	retlw	0C0h
	retlw	01Ah

	retlw	0E3h
	retlw	01Ah

	retlw	05h
	retlw	01Bh

	retlw	028h
	retlw	01Bh

	retlw	04Ah
	retlw	01Bh

	retlw	06Dh
	retlw	01Bh

	retlw	08Fh
	retlw	01Bh

	retlw	0B2h
	retlw	01Bh

	retlw	0D4h
	retlw	01Bh

	retlw	0F7h
	retlw	01Bh

	retlw	019h
	retlw	01Ch

	retlw	03Ch
	retlw	01Ch

	retlw	05Eh
	retlw	01Ch

	retlw	081h
	retlw	01Ch

	retlw	0A3h
	retlw	01Ch

	retlw	0C6h
	retlw	01Ch

	retlw	0E8h
	retlw	01Ch

	retlw	0Bh
	retlw	01Dh

	retlw	02Dh
	retlw	01Dh

	retlw	050h
	retlw	01Dh

	retlw	072h
	retlw	01Dh

	retlw	095h
	retlw	01Dh

	retlw	0B7h
	retlw	01Dh

	retlw	0DAh
	retlw	01Dh

	retlw	0FCh
	retlw	01Dh

	retlw	01Fh
	retlw	01Eh

	retlw	041h
	retlw	01Eh

	global	_DCDC_CicleTable
	global	_DELAY_Table_0
	global	_DELAY_Table_1
	global	_DELAY_Table_2
	global	_DCDC_CicleCounter
	global	_ReadyToDiscarge
	global	_lastVoltage
	global	_ADCON0
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_C1IF
_C1IF  equ     109
	global	_C2IF
_C2IF  equ     110
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     250
	global	_CHS1
_CHS1  equ     251
	global	_CHS2
_CHS2  equ     252
	global	_CHS3
_CHS3  equ     253
	global	_CKP
_CKP  equ     164
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_DC1B0
_DC1B0  equ     188
	global	_DC1B1
_DC1B1  equ     189
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     249
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_OSFIF
_OSFIF  equ     111
	global	_P1M0
_P1M0  equ     190
	global	_P1M1
_P1M1  equ     191
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RA6
_RA6  equ     46
	global	_RA7
_RA7  equ     47
	global	_RABIE
_RABIE  equ     91
	global	_RABIF
_RABIF  equ     88
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RE3
_RE3  equ     75
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1GINV
_T1GINV  equ     135
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1GE
_TMR1GE  equ     134
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_ULPWUIF
_ULPWUIF  equ     106
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_ECCPAS
_ECCPAS  equ     156
	global	_IOCB
_IOCB  equ     150
	global	_OPTION
_OPTION  equ     129
	global	_OSCCON
_OSCCON  equ     143
	global	_OSCTUNE
_OSCTUNE  equ     144
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_PSTRCON
_PSTRCON  equ     157
	global	_PWM1CON
_PWM1CON  equ     155
	global	_SPBRG
_SPBRG  equ     153
	global	_SPBRGH
_SPBRGH  equ     154
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPMSK
_SSPMSK  equ     147
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_VRCON
_VRCON  equ     151
	global	_WPUB
_WPUB  equ     149
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRG0
_BRG0  equ     1224
	global	_BRG1
_BRG1  equ     1225
	global	_BRG10
_BRG10  equ     1234
	global	_BRG11
_BRG11  equ     1235
	global	_BRG12
_BRG12  equ     1236
	global	_BRG13
_BRG13  equ     1237
	global	_BRG14
_BRG14  equ     1238
	global	_BRG15
_BRG15  equ     1239
	global	_BRG2
_BRG2  equ     1226
	global	_BRG3
_BRG3  equ     1227
	global	_BRG4
_BRG4  equ     1228
	global	_BRG5
_BRG5  equ     1229
	global	_BRG6
_BRG6  equ     1230
	global	_BRG7
_BRG7  equ     1231
	global	_BRG8
_BRG8  equ     1232
	global	_BRG9
_BRG9  equ     1233
	global	_BRGH
_BRGH  equ     1218
	global	_C1IE
_C1IE  equ     1133
	global	_C2IE
_C2IE  equ     1134
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CKE
_CKE  equ     1190
	global	_CSRC
_CSRC  equ     1223
	global	_DA
_DA  equ     1189
	global	_ECCPAS0
_ECCPAS0  equ     1252
	global	_ECCPAS1
_ECCPAS1  equ     1253
	global	_ECCPAS2
_ECCPAS2  equ     1254
	global	_ECCPASE
_ECCPASE  equ     1255
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_HTS
_HTS  equ     1146
	global	_INTEDG
_INTEDG  equ     1038
	global	_IOCB0
_IOCB0  equ     1200
	global	_IOCB1
_IOCB1  equ     1201
	global	_IOCB2
_IOCB2  equ     1202
	global	_IOCB3
_IOCB3  equ     1203
	global	_IOCB4
_IOCB4  equ     1204
	global	_IOCB5
_IOCB5  equ     1205
	global	_IOCB6
_IOCB6  equ     1206
	global	_IOCB7
_IOCB7  equ     1207
	global	_IRCF0
_IRCF0  equ     1148
	global	_IRCF1
_IRCF1  equ     1149
	global	_IRCF2
_IRCF2  equ     1150
	global	_LTS
_LTS  equ     1145
	global	_OSFIE
_OSFIE  equ     1135
	global	_OSTS
_OSTS  equ     1147
	global	_PDC0
_PDC0  equ     1240
	global	_PDC1
_PDC1  equ     1241
	global	_PDC2
_PDC2  equ     1242
	global	_PDC3
_PDC3  equ     1243
	global	_PDC4
_PDC4  equ     1244
	global	_PDC5
_PDC5  equ     1245
	global	_PDC6
_PDC6  equ     1246
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PRSEN
_PRSEN  equ     1247
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSSAC0
_PSSAC0  equ     1250
	global	_PSSAC1
_PSSAC1  equ     1251
	global	_PSSBD0
_PSSBD0  equ     1248
	global	_PSSBD1
_PSSBD1  equ     1249
	global	_RABPU
_RABPU  equ     1039
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SBOREN
_SBOREN  equ     1140
	global	_SCS
_SCS  equ     1144
	global	_SEN
_SEN  equ     1160
	global	_SENDB
_SENDB  equ     1219
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_STRA
_STRA  equ     1256
	global	_STRB
_STRB  equ     1257
	global	_STRC
_STRC  equ     1258
	global	_STRD
_STRD  equ     1259
	global	_STRSYNC
_STRSYNC  equ     1260
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISA6
_TRISA6  equ     1070
	global	_TRISA7
_TRISA7  equ     1071
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISE3
_TRISE3  equ     1099
	global	_TRMT
_TRMT  equ     1217
	global	_TUN0
_TUN0  equ     1152
	global	_TUN1
_TUN1  equ     1153
	global	_TUN2
_TUN2  equ     1154
	global	_TUN3
_TUN3  equ     1155
	global	_TUN4
_TUN4  equ     1156
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_ULPWUE
_ULPWUE  equ     1141
	global	_ULPWUIE
_ULPWUIE  equ     1130
	global	_VCFG0
_VCFG0  equ     1276
	global	_VCFG1
_VCFG1  equ     1277
	global	_VR0
_VR0  equ     1208
	global	_VR1
_VR1  equ     1209
	global	_VR2
_VR2  equ     1210
	global	_VR3
_VR3  equ     1211
	global	_VREN
_VREN  equ     1215
	global	_VROE
_VROE  equ     1214
	global	_VRR
_VRR  equ     1213
	global	_VRSS
_VRSS  equ     1212
	global	_WPUB0
_WPUB0  equ     1192
	global	_WPUB1
_WPUB1  equ     1193
	global	_WPUB2
_WPUB2  equ     1194
	global	_WPUB3
_WPUB3  equ     1195
	global	_WPUB4
_WPUB4  equ     1196
	global	_WPUB5
_WPUB5  equ     1197
	global	_WPUB6
_WPUB6  equ     1198
	global	_WPUB7
_WPUB7  equ     1199
	global	_CM1CON0
_CM1CON0  equ     263
	global	_CM2CON0
_CM2CON0  equ     264
	global	_CM2CON1
_CM2CON1  equ     265
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDAT
_EEDAT  equ     268
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_WDTCON
_WDTCON  equ     261
	global	_C1CH0
_C1CH0  equ     2104
	global	_C1CH1
_C1CH1  equ     2105
	global	_C1OE
_C1OE  equ     2109
	global	_C1ON
_C1ON  equ     2111
	global	_C1OUT
_C1OUT  equ     2110
	global	_C1POL
_C1POL  equ     2108
	global	_C1R
_C1R  equ     2106
	global	_C1RSEL
_C1RSEL  equ     2125
	global	_C2CH0
_C2CH0  equ     2112
	global	_C2CH1
_C2CH1  equ     2113
	global	_C2OE
_C2OE  equ     2117
	global	_C2ON
_C2ON  equ     2119
	global	_C2OUT
_C2OUT  equ     2118
	global	_C2POL
_C2POL  equ     2116
	global	_C2R
_C2R  equ     2114
	global	_C2RSEL
_C2RSEL  equ     2124
	global	_C2SYNC
_C2SYNC  equ     2120
	global	_MC1OUT
_MC1OUT  equ     2127
	global	_MC2OUT
_MC2OUT  equ     2126
	global	_SWDTEN
_SWDTEN  equ     2088
	global	_T1GSS
_T1GSS  equ     2121
	global	_WDTPS0
_WDTPS0  equ     2089
	global	_WDTPS1
_WDTPS1  equ     2090
	global	_WDTPS2
_WDTPS2  equ     2091
	global	_WDTPS3
_WDTPS3  equ     2092
	global	_ANSEL
_ANSEL  equ     392
	global	_ANSELH
_ANSELH  equ     393
	global	_BAUDCTL
_BAUDCTL  equ     391
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_SRCON
_SRCON  equ     389
	global	_ABDEN
_ABDEN  equ     3128
	global	_ABDOVF
_ABDOVF  equ     3135
	global	_ANS0
_ANS0  equ     3136
	global	_ANS1
_ANS1  equ     3137
	global	_ANS10
_ANS10  equ     3146
	global	_ANS11
_ANS11  equ     3147
	global	_ANS12
_ANS12  equ     3148
	global	_ANS13
_ANS13  equ     3149
	global	_ANS2
_ANS2  equ     3138
	global	_ANS3
_ANS3  equ     3139
	global	_ANS4
_ANS4  equ     3140
	global	_ANS8
_ANS8  equ     3144
	global	_ANS9
_ANS9  equ     3145
	global	_BRG16
_BRG16  equ     3131
	global	_C1SEN
_C1SEN  equ     3117
	global	_C2REN
_C2REN  equ     3116
	global	_EEPGD
_EEPGD  equ     3175
	global	_FVREN
_FVREN  equ     3112
	global	_PULSR
_PULSR  equ     3114
	global	_PULSS
_PULSS  equ     3115
	global	_RCIDL
_RCIDL  equ     3134
	global	_RD
_RD  equ     3168
	global	_SCKP
_SCKP  equ     3132
	global	_SR0
_SR0  equ     3118
	global	_SR1
_SR1  equ     3119
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	global	_WUE
_WUE  equ     3129
	file	"CDI.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_DCDC_CicleCounter:
       ds      1

_ReadyToDiscarge:
       ds      1

_lastVoltage:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_main
??_main: ;@ 0x0
	global	?_ADC_Init
?_ADC_Init: ;@ 0x0
	global	??_ADC_Init
??_ADC_Init: ;@ 0x0
	ds	5
	global	?_main
?_main: ;@ 0x5
	global	?_InterruptService
?_InterruptService: ;@ 0x5
	global	??__delay
??__delay: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@DelayTime
main@DelayTime:	; 2 bytes @ 0x0
	ds	2
	global	main@CurrentTime
main@CurrentTime:	; 2 bytes @ 0x2
	ds	2
	global	main@Selected_DELAY_Table
main@Selected_DELAY_Table:	; 2 bytes @ 0x4
	ds	2
	global	main@IsLowRPM
main@IsLowRPM:	; 1 bytes @ 0x6
	ds	1
	global	main@DeltaTime
main@DeltaTime:	; 1 bytes @ 0x7
	ds	1
	global	?__delay
?__delay: ;@ 0x8
	global	__delay$0
__delay$0:	; 4 bytes @ 0x8
	ds	4
	global	??_InterruptService
??_InterruptService: ;@ 0xC
	ds	6
;Data sizes: Strings 0, constant 1664, data 0, bss 3, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5       8
; BANK0           80     18      18
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;main@Selected_DELAY_Table	PTR const unsigned int  size(2); Largest target is 512
;		 -> DELAY_Table_1(CODE[512]), DELAY_Table_2(CODE[512]), DELAY_Table_0(CODE[512]), 


;Main: autosize = 0, tempsize = 5, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               13    0  105   0.00
;                                    0 COMMO    5
;                                    0 BANK0    8
;           _ADC_Init
;  _ADC_Init                                          0    0    0   0.00
; Estimated maximum call depth 1
;_InterruptService                                    6    0    0   0.00
;                                   12 BANK0    6
;             __delay
;  __delay                                            0    4    0   0.00
;                                    8 BANK0    4
; Estimated maximum call depth 1
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       8       1       57.1%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      1A       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     12      12       5       22.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      1A      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 106 in file "D:\Project\CDI_PIC_16F886\SRC\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  Selected_DEL    2    4[BANK0 ] PTR const unsigned int 
;		 -> DELAY_Table_1(512), DELAY_Table_2(512), DELAY_Table_0(512), 
;  DelayTime       2    0[BANK0 ] unsigned int 
;  CurrentTime     2    2[BANK0 ] unsigned int 
;  DeltaTime       1    7[BANK0 ] unsigned char 
;  IsLowRPM        1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 60/0
;		Unchanged: FFE80/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         5       8       0       0       0
;      Temp:     5
;      Total:   13
; This function calls:
;		_ADC_Init
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	106
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 6: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3FFA & 0x3FF7 & 0x3FFF & 0x3CFF & 0x3FFF & 0x1FFF & 0x3FFF");
;main.c: 10: void interrupt InterruptService(void);
;main.c: 11: void ADC_Init(void);
;main.c: 12: unsigned char ADC_Convert(void);
;main.c: 18: unsigned char const DCDC_CicleTable[128]={
;main.c: 19: 150,150,150,150,132,111,96,86,78,71,66,62,59,56,53,51,49,47
;main.c: 20: ,46,44,43,42,41,40,39,39,38,37,37,36,35,35,34,34,34,33,33,32
;main.c: 21: ,32,32,31,31,31,31,30,30,30,30,29,29,29,29,29,29,28,28,28,28
	
_main:	
	opt stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	116
	
l30000556:	
;main.c: 116: IsLowRPM = 0;
	clrf	(main@IsLowRPM)
	line	119
;main.c: 119: PORTC = 0;
	clrf	(7)	;volatile
	
l30000557:	
	line	121
;main.c: 121: TRISC = 0b11110100;
	movlw	(0F4h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	
l30000558:	
	line	122
;main.c: 122: TRISA = 0b11111111;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	
l30000559:	
	line	123
;main.c: 123: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	
l30000560:	
	line	125
;main.c: 125: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(56/8),(56)&7
	
l30000561:	
	line	126
;main.c: 126: RC1 = 0;
	bcf	(57/8),(57)&7
	
l30000562:	
	line	128
;main.c: 128: ADC_Init();
	fcall	_ADC_Init
	
l30000563:	
	line	132
;main.c: 132: if( (PORTC>>4) == 1)
	swapf	(7),w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	xorlw	01h
	skipz
	goto	u201
	goto	u200
u201:
	goto	l30000565
u200:
	
l30000564:	
	line	134
;main.c: 133: {
;main.c: 134: Selected_DELAY_Table = &DELAY_Table_1[0];
	movlw	low((_DELAY_Table_1))
	movwf	(main@Selected_DELAY_Table)
	movlw	high((_DELAY_Table_1))
	movwf	((main@Selected_DELAY_Table))+1
	goto	l30000568
	
l30000565:	
	line	136
;main.c: 136: else if ( (PORTC>>4) == 2)
	swapf	(7),w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	xorlw	02h
	skipz
	goto	u211
	goto	u210
u211:
	goto	l30000567
u210:
	
l30000566:	
	line	138
;main.c: 137: {
;main.c: 138: Selected_DELAY_Table = &DELAY_Table_2[0];
	movlw	low((_DELAY_Table_2))
	movwf	(main@Selected_DELAY_Table)
	movlw	high((_DELAY_Table_2))
	movwf	((main@Selected_DELAY_Table))+1
	goto	l30000568
	
l30000567:	
	line	142
;main.c: 140: else
;main.c: 141: {
;main.c: 142: Selected_DELAY_Table = &DELAY_Table_0[0];
	movlw	low((_DELAY_Table_0))
	movwf	(main@Selected_DELAY_Table)
	movlw	high((_DELAY_Table_0))
	movwf	((main@Selected_DELAY_Table))+1
	
l30000568:	
	line	146
;main.c: 143: }
;main.c: 146: GODONE=1;
	bsf	(249/8),(249)&7
	
l6:	
	line	147
	btfsc	(249/8),(249)&7
	goto	u221
	goto	u220
u221:
	goto	l6
u220:
	
l30000569:	
	line	148
;main.c: 148: lastVoltage = 0;
	clrf	(_lastVoltage)
	line	149
;main.c: 149: DCDC_CicleCounter = 0;
	clrf	(_DCDC_CicleCounter)
	line	150
;main.c: 150: ReadyToDiscarge = 0;
	clrf	(_ReadyToDiscarge)
	
l30000570:	
	line	156
;main.c: 156: T2CON = 0b00000101;
	movlw	(05h)
	movwf	(18)
	
l30000571:	
	line	161
;main.c: 161: T1CON = 0b00100101;
	movlw	(025h)
	movwf	(16)
	
l30000572:	
	line	163
;main.c: 163: PR2 = DCDC_CicleTable[0];
	movlw	low(_DCDC_CicleTable)
	movwf	fsr0
	movlw	high(_DCDC_CicleTable)
	FNCALL _main,stringtab
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h
	
l30000573:	
	line	167
;main.c: 167: CCPR1L = 0x0A;
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	
l30000574:	
	line	170
;main.c: 170: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	
l30000575:	
	line	173
;main.c: 173: T1SYNC = 0;
	bcf	(130/8),(130)&7
	
l9:	
	line	175
	btfss	(97/8),(97)&7
	goto	u231
	goto	u230
u231:
	goto	l9
u230:
	
l11:	
	line	176
;main.c: 176: TMR2IF = 0;
	bcf	(97/8),(97)&7
	
l12:	
	line	177
	btfss	(97/8),(97)&7
	goto	u241
	goto	u240
u241:
	goto	l12
u240:
	
l14:	
	line	178
;main.c: 178: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	182
;main.c: 182: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	183
;main.c: 183: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	185
;main.c: 185: TMR1ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(128/8),(128)&7
	
l30000576:	
	line	186
;main.c: 186: TMR1H = TMR1L = 0;
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	
l30000577:	
	line	187
;main.c: 187: TMR1IF = 0;
	bcf	(96/8),(96)&7
	
l30000578:	
	line	190
;main.c: 190: ADIF = 0;
	bcf	(102/8),(102)&7
	
l30000579:	
	line	191
;main.c: 191: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1126/8)^080h,(1126)&7
	
l30000580:	
	line	193
;main.c: 193: IOCB1 = 1;
	bsf	(1201/8)^080h,(1201)&7
	
l30000581:	
	line	196
;main.c: 196: TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	
l30000582:	
	line	198
;main.c: 198: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	
l30000583:	
	line	204
;main.c: 204: PEIE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(94/8),(94)&7
	
l30000584:	
	line	205
;main.c: 205: GIE = 1;
	bsf	(95/8),(95)&7
	
l18:	
	line	211
	btfss	(44/8),(44)&7
	goto	u251
	goto	u250
u251:
	goto	l18
u250:
	
l20:	
	line	213
;main.c: 213: TMR1ON = 0;
	bcf	(128/8),(128)&7
	
l30000585:	
	line	214
;main.c: 214: DeltaTime = TMR1H;
	movf	(15),w	;volatile
	movwf	(main@DeltaTime)
	line	215
;main.c: 215: IsLowRPM = TMR1IF;
	movlw	0
	btfsc	(96/8),(96)&7
	movlw	1
	movwf	(main@IsLowRPM)
	
l30000586:	
	line	216
;main.c: 216: TMR1H = TMR1L = 0;
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	
l30000587:	
	line	217
;main.c: 217: TMR1IF = 0;
	bcf	(96/8),(96)&7
	
l30000588:	
	line	218
;main.c: 218: TMR1ON = 1;
	bsf	(128/8),(128)&7
	
l30000589:	
	line	220
;main.c: 220: ReadyToDiscarge = 1;
	clrf	(_ReadyToDiscarge)
	incf	(_ReadyToDiscarge),f
	
l30000590:	
	line	221
;main.c: 221: RC0 = 1;
	bsf	(56/8),(56)&7
	
l30000591:	
	line	224
;main.c: 224: if((IsLowRPM == 0) && (DeltaTime != 0))
	movf	(main@IsLowRPM),f
	skipz
	goto	u261
	goto	u260
u261:
	goto	l26
u260:
	
l30000592:	
	movf	(main@DeltaTime),w
	skipz
	goto	u270
	goto	l26
u270:
	
l30000593:	
	line	228
;main.c: 225: {
;main.c: 228: DelayTime = *(Selected_DELAY_Table+DeltaTime);
	movf	(main@DeltaTime),w
	movwf	(??_main+0+0)
	clrf	(??_main+0+0+1)
	clrc
	rlf	0+(??_main+0+0),w
	movwf	(??_main+2+0)
	rlf	1+(??_main+0+0),w
	movwf	1+(??_main+2+0)
	movf	(main@Selected_DELAY_Table),w
	addwf	0+(??_main+2+0),w
	movwf	fsr0
	movf	(main@Selected_DELAY_Table+1),w
	skipnc
	addlw	1
	addwf	1+(??_main+2+0),w
	FNCALL _main,stringtab
	movwf	(??_main+4+0)
	fcall	stringtab
	movwf	(main@DelayTime)
	incf	fsr,f
	skipnz
	incf	(??_main+4+0),f
	movf	(??_main+4+0),w
	fcall	stringtab
	movwf	(main@DelayTime+1)
	
l30000594:	
	line	236
;main.c: 236: CurrentTime = (TMR1H<<8) | TMR1L;
	movf	(15),w	;volatile
	movwf	(main@CurrentTime+1)
	movf	(14),w	;volatile
	movwf	(main@CurrentTime)
	
l30000595:	
	line	237
;main.c: 237: } while(CurrentTime <= DelayTime);
	movf	(main@CurrentTime+1),w
	subwf	(main@DelayTime+1),w
	skipz
	goto	u285
	movf	(main@CurrentTime),w
	subwf	(main@DelayTime),w
u285:
	skipnc
	goto	u281
	goto	u280
u281:
	goto	l30000594
u280:
	
l23:	
	line	240
;main.c: 240: GIE = 0;
	bcf	(95/8),(95)&7
	
l30000596:	
	line	241
;main.c: 241: if(ReadyToDiscarge == 1)
	decf	(_ReadyToDiscarge),w
	skipz
	goto	u291
	goto	u290
u291:
	goto	l25
u290:
	
l30000597:	
	line	244
;main.c: 242: {
;main.c: 244: TRISC2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	245
;main.c: 245: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(57/8),(57)&7
	
l25:	
	line	247
;main.c: 246: }
;main.c: 247: GIE = 1;
	bsf	(95/8),(95)&7
	
l26:	
	line	251
	btfsc	(44/8),(44)&7
	goto	u301
	goto	u300
u301:
	goto	l26
u300:
	goto	l18
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	255
	signat	_main,88
	global	_ADC_Init
psect	text34,local,class=CODE,delta=2
global __ptext34
__ptext34:

; *************** function _ADC_Init *****************
; Defined at:
;		line 340 in file "D:\Project\CDI_PIC_16F886\SRC\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 17F/0
;		Unchanged: FFE80/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text34
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	340
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
;main.c: 339: void ADC_Init(void)
;main.c: 340: {
	
_ADC_Init:	
	opt stack 4
; Regs used in _ADC_Init: [wreg+status,2]
	line	345
	
l30000598:	
;main.c: 345: ANSEL = 0x01;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h
	incf	(392)^0180h,f
	
l30000599:	
	line	346
;main.c: 346: ANSELH = 0x00;
	clrf	(393)^0180h
	line	350
;main.c: 350: ADCON1 = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(159)^080h
	
l30000600:	
	line	353
;main.c: 353: ADCON0 = 0b10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
; =============== function _ADC_Init ends ============

psect	text35,local,class=CODE,delta=2
global __ptext35
__ptext35:
	line	354
	signat	_ADC_Init,88
	global	_InterruptService

; *************** function _InterruptService *****************
; Defined at:
;		line 261 in file "D:\Project\CDI_PIC_16F886\SRC\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
; Tracked objects:
;		On entry : 0/0
;		On exit  : 60/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       6       0       0       0
;      Temp:     6
;      Total:    6
; This function calls:
;		__delay
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text35
	file	"D:\Project\CDI_PIC_16F886\SRC\main.c"
	line	261
	global	__size_of_InterruptService
	__size_of_InterruptService	equ	__end_of_InterruptService-_InterruptService
;main.c: 260: void interrupt InterruptService(void)
;main.c: 261: {
	
_InterruptService:	
	opt stack 6
; Regs used in _InterruptService: [wreg-fsr0h+status,2+status,0+pclath]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_InterruptService+2)
	movf	fsr0,w
	movwf	(??_InterruptService+3)
	movf	pclath,w
	movwf	(??_InterruptService+4)
	movf	btemp+0,w
	movwf	(??_InterruptService+5)
	ljmp	_InterruptService
psect	text35
	line	265
	
i1l30000623:	
;main.c: 265: if (RBIF)
	btfss	(88/8),(88)&7
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l30000633
u39_20:
	
i1l30000624:	
	line	268
;main.c: 266: {
;main.c: 268: if((RB1 == 1) && (ReadyToDiscarge!=0))
	btfss	(49/8),(49)&7
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l30000632
u40_20:
	
i1l30000625:	
	movf	(_ReadyToDiscarge),w
	skipz
	goto	u41_20
	goto	i1l30000632
u41_20:
	
i1l30000626:	
	line	271
;main.c: 269: {
;main.c: 271: TRISC2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	272
;main.c: 272: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(57/8),(57)&7
	line	273
;main.c: 273: RC0 = 0;
	bcf	(56/8),(56)&7
	
i1l30000627:	
	line	274
;main.c: 274: _delay((unsigned long)((1500)*(16000000/4000000.0)));
	movlw	8
movwf	(??_InterruptService+0+0+1),f
	movlw	201
movwf	(??_InterruptService+0+0),f
u47_27:
	decfsz	(??_InterruptService+0+0),f
	goto	u47_27
	decfsz	(??_InterruptService+0+0+1),f
	goto	u47_27
	nop2

	
i1l30000628:	
	line	275
;main.c: 275: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	276
;main.c: 276: _delay((unsigned long)((5)*(16000000/4000000.0)));
	movlw	6
movwf	(??_InterruptService+0+0),f
u48_27:
decfsz	(??_InterruptService+0+0),f
	goto	u48_27
	clrwdt

	
i1l30000629:	
	line	277
;main.c: 277: ReadyToDiscarge = 0;
	clrf	(_ReadyToDiscarge)
	
i1l30000630:	
	line	278
;main.c: 278: DCDC_CicleCounter = 0;
	clrf	(_DCDC_CicleCounter)
	
i1l30000631:	
	line	279
;main.c: 279: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	
i1l30000632:	
	line	289
;main.c: 280: }
;main.c: 289: RBIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(88/8),(88)&7
	
i1l30000633:	
	line	292
;main.c: 290: }
;main.c: 292: if (ADIF)
	btfss	(102/8),(102)&7
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l32
u42_20:
	
i1l30000634:	
	line	294
;main.c: 293: {
;main.c: 294: lastVoltage = ADRESH>>1;
	clrc
	rrf	(30),w	;volatile
	movwf	(_lastVoltage)
	
i1l30000635:	
	line	295
;main.c: 295: if(lastVoltage > 92)
	movlw	(05Dh)
	subwf	(_lastVoltage),w
	skipc
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l33
u43_20:
	
i1l30000636:	
	line	297
;main.c: 296: {
;main.c: 297: TRISC2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1082/8)^080h,(1082)&7
	
i1l33:	
	line	300
;main.c: 298: }
;main.c: 300: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(102/8),(102)&7
	
i1l32:	
	line	304
;main.c: 301: }
;main.c: 304: if (TMR2IF)
	btfss	(97/8),(97)&7
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l29
u44_20:
	
i1l30000637:	
	line	307
;main.c: 305: {
;main.c: 307: DCDC_CicleCounter ++;
	incf	(_DCDC_CicleCounter),f
	
i1l30000638:	
	line	310
;main.c: 310: GODONE = 1;
	bsf	(249/8),(249)&7
	
i1l30000639:	
	line	313
;main.c: 313: PR2 = DCDC_CicleTable[lastVoltage];
	movf	(_lastVoltage),w
	addlw	low ((_DCDC_CicleTable))
	movwf	fsr0
	movlw	high ((_DCDC_CicleTable))
	skipnc
	addlw	1
	FNCALL _InterruptService,stringtab
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h
	
i1l30000640:	
	line	315
;main.c: 315: if(lastVoltage < 4)
	movlw	(04h)
	subwf	(_lastVoltage),w
	skipnc
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l30000644
u45_20:
	
i1l30000641:	
	line	317
;main.c: 316: {
;main.c: 317: if(DCDC_CicleCounter > 5)
	movlw	(06h)
	subwf	(_DCDC_CicleCounter),w
	skipc
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l30000644
u46_20:
	
i1l30000642:	
	line	319
;main.c: 318: {
;main.c: 319: TRISC2 = 1;
	bsf	(1082/8)^080h,(1082)&7
	
i1l30000643:	
	line	320
;main.c: 320: DCDC_CicleCounter = 0;
	clrf	(_DCDC_CicleCounter)
	
i1l30000644:	
	line	326
;main.c: 321: }
;main.c: 323: }
;main.c: 326: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7
	
i1l29:	
	movf	(??_InterruptService+5),w
	movwf	btemp+0
	movf	(??_InterruptService+4),w
	movwf	pclath
	movf	(??_InterruptService+3),w
	movwf	fsr0
	movf	(??_InterruptService+2),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_InterruptService
	__end_of_InterruptService:
; =============== function _InterruptService ends ============

psect	text36,local,class=CODE,delta=2
global __ptext36
__ptext36:
	line	335
	signat	_InterruptService,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
