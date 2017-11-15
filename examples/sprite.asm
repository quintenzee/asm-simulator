	JMP start

sprite: 
	DB "\x0F\x0F\x0F\x0F\x0F\x45\x45\x45"
	DB "\x45\x45\x0F\x0F\x0F\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\x0F\x45\x45\x45\x45"
	DB "\x45\x45\x45\x45\x45\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\x0F\xE4\xE4\xE4\x17"
	DB "\x17\xE4\x17\x0F\x0F\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\xE4\x17\xE4\x17\x17"
	DB "\x17\xE4\x17\x17\x17\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\xE4\x17\xE4\xE4\x17"
	DB "\x17\x17\xE4\x17\x17\x17\x0F\x0F"
	DB "\x0F\x0F\x0F\xE4\xE4\x17\x17\x17"
	DB "\x17\xE4\xE4\xE4\xE4\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\x0F\x0F\x17\x17\x17"
	DB "\x17\x17\x17\x17\x0F\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\x0F\xE4\xE4\x45\xE4"
	DB "\xE4\xE4\x0F\x0F\x0F\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\xE4\xE4\xE4\x45\xE4"
	DB "\xE4\x45\xE4\xE4\xE4\x0F\x0F\x0F"
	DB "\x0F\x0F\xE4\xE4\xE4\xE4\x45\x45"
	DB "\x45\x45\xE4\xE4\xE4\xE4\x0F\x0F"
	DB "\x0F\x0F\x17\x17\xE4\x45\x17\x45"
	DB "\x45\x17\x45\xE4\x17\x17\x0F\x0F"
	DB "\x0F\x0F\x17\x17\x17\x45\x45\x45"
	DB "\x45\x45\x45\x17\x17\x17\x0F\x0F"
	DB "\x0F\x0F\x17\x17\x45\x45\x45\x45"
	DB "\x45\x45\x45\x45\x17\x17\x0F\x0F"
	DB "\x0F\x0F\x0F\x0F\x45\x45\x45\x0F"
	DB "\x0F\x45\x45\x45\x0F\x0F\x0F\x0F"
	DB "\x0F\x0F\x0F\xE4\xE4\xE4\x0F\x0F"
	DB "\x0F\x0F\xE4\xE4\xE4\x0F\x0F\x0F"
	DB "\x0F\x0F\xE4\xE4\xE4\xE4\x0F\x0F"
	DB "\x0F\x0F\xE4\xE4\xE4\xE4\x0F\x0F"

start:  MOV C, sprite
	MOV D, 0x300

.loop:  MOVB AL, [C]
	MOVB [D], AL
	INC C
	INC D
	CMP D, 0x400
	JNZ .loop
	HLT

