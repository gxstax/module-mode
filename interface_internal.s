"".Ta.Ma STEXT nosplit size=1 args=0x18 locals=0x0 funcid=0x0
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:10)	TEXT	"".Ta.Ma(SB), NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:10)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:10)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:10)	RET
	0x0000 c3                                               .
"".Ta.Mb STEXT nosplit size=1 args=0x18 locals=0x0 funcid=0x0
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:11)	TEXT	"".Ta.Mb(SB), NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:11)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:11)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:11)	RET
	0x0000 c3                                               .
"".main STEXT size=427 args=0x0 locals=0xa0 funcid=0x0
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:18)	TEXT	"".main(SB), ABIInternal, $160-0
	0x0000 00000 (cmd/interfaceinternal/interface_internal.go:18)	MOVQ	(TLS), CX
	0x0009 00009 (cmd/interfaceinternal/interface_internal.go:18)	LEAQ	-32(SP), AX
	0x000e 00014 (cmd/interfaceinternal/interface_internal.go:18)	CMPQ	AX, 16(CX)
	0x0012 00018 (cmd/interfaceinternal/interface_internal.go:18)	PCDATA	$0, $-2
	0x0012 00018 (cmd/interfaceinternal/interface_internal.go:18)	JLS	417
	0x0018 00024 (cmd/interfaceinternal/interface_internal.go:18)	PCDATA	$0, $-1
	0x0018 00024 (cmd/interfaceinternal/interface_internal.go:18)	SUBQ	$160, SP
	0x001f 00031 (cmd/interfaceinternal/interface_internal.go:18)	MOVQ	BP, 152(SP)
	0x0027 00039 (cmd/interfaceinternal/interface_internal.go:18)	LEAQ	152(SP), BP
	0x002f 00047 (cmd/interfaceinternal/interface_internal.go:18)	FUNCDATA	$0, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x002f 00047 (cmd/interfaceinternal/interface_internal.go:18)	FUNCDATA	$1, gclocals·01528d1c353241abdf67d0edabe360f1(SB)
	0x002f 00047 (cmd/interfaceinternal/interface_internal.go:18)	FUNCDATA	$2, "".main.stkobj(SB)
	0x002f 00047 (cmd/interfaceinternal/interface_internal.go:25)	MOVQ	$17, ""..autotmp_15+128(SP)
	0x003b 00059 (cmd/interfaceinternal/interface_internal.go:25)	LEAQ	go.string."hell, interface"(SB), AX
	0x0042 00066 (cmd/interfaceinternal/interface_internal.go:25)	MOVQ	AX, ""..autotmp_15+136(SP)
	0x004a 00074 (cmd/interfaceinternal/interface_internal.go:25)	MOVQ	$15, ""..autotmp_15+144(SP)
	0x0056 00086 (cmd/interfaceinternal/interface_internal.go:25)	LEAQ	type."".Ta(SB), CX
	0x005d 00093 (cmd/interfaceinternal/interface_internal.go:25)	MOVQ	CX, (SP)
	0x0061 00097 (cmd/interfaceinternal/interface_internal.go:25)	LEAQ	""..autotmp_15+128(SP), CX
	0x0069 00105 (cmd/interfaceinternal/interface_internal.go:25)	MOVQ	CX, 8(SP)
	0x006e 00110 (cmd/interfaceinternal/interface_internal.go:25)	PCDATA	$1, $0
	0x006e 00110 (cmd/interfaceinternal/interface_internal.go:25)	CALL	runtime.convT2E(SB)
	0x0073 00115 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	16(SP), AX
	0x0078 00120 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	AX, ""..autotmp_51+88(SP)
	0x007d 00125 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	24(SP), CX
	0x0082 00130 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	CX, "".~arg0.data+64(SP)
	0x0087 00135 (cmd/interfaceinternal/interface_internal.go:28)	MOVQ	$17, ""..autotmp_15+128(SP)
	0x0093 00147 (cmd/interfaceinternal/interface_internal.go:28)	LEAQ	go.string."hell, interface"(SB), DX
	0x009a 00154 (cmd/interfaceinternal/interface_internal.go:28)	MOVQ	DX, ""..autotmp_15+136(SP)
	0x00a2 00162 (cmd/interfaceinternal/interface_internal.go:28)	MOVQ	$15, ""..autotmp_15+144(SP)
	0x00ae 00174 (cmd/interfaceinternal/interface_internal.go:28)	LEAQ	go.itab."".Ta,"".NonEmptyInterface(SB), DX
	0x00b5 00181 (cmd/interfaceinternal/interface_internal.go:28)	MOVQ	DX, (SP)
	0x00b9 00185 (cmd/interfaceinternal/interface_internal.go:28)	LEAQ	""..autotmp_15+128(SP), DX
	0x00c1 00193 (cmd/interfaceinternal/interface_internal.go:28)	MOVQ	DX, 8(SP)
	0x00c6 00198 (cmd/interfaceinternal/interface_internal.go:28)	PCDATA	$1, $1
	0x00c6 00198 (cmd/interfaceinternal/interface_internal.go:28)	CALL	runtime.convT2I(SB)
	0x00cb 00203 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	16(SP), AX
	0x00d0 00208 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	AX, ""..autotmp_52+80(SP)
	0x00d5 00213 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	24(SP), CX
	0x00da 00218 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	CX, ""..autotmp_53+72(SP)
	0x00df 00223 (cmd/interfaceinternal/interface_internal.go:30)	XORPS	X0, X0
	0x00e2 00226 (cmd/interfaceinternal/interface_internal.go:30)	MOVUPS	X0, ""..autotmp_20+112(SP)
	0x00e7 00231 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	""..autotmp_51+88(SP), DX
	0x00ec 00236 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	DX, ""..autotmp_20+112(SP)
	0x00f1 00241 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	"".~arg0.data+64(SP), DX
	0x00f6 00246 (cmd/interfaceinternal/interface_internal.go:30)	MOVQ	DX, ""..autotmp_20+120(SP)
	0x00fb 00251 (<unknown line number>)	NOP
	0x00fb 00251 ($GOROOT/src/fmt/print.go:274)	MOVQ	os.Stdout(SB), DX
	0x0102 00258 ($GOROOT/src/fmt/print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), BX
	0x0109 00265 ($GOROOT/src/fmt/print.go:274)	MOVQ	BX, (SP)
	0x010d 00269 ($GOROOT/src/fmt/print.go:274)	MOVQ	DX, 8(SP)
	0x0112 00274 ($GOROOT/src/fmt/print.go:274)	LEAQ	""..autotmp_20+112(SP), DX
	0x0117 00279 ($GOROOT/src/fmt/print.go:274)	MOVQ	DX, 16(SP)
	0x011c 00284 ($GOROOT/src/fmt/print.go:274)	MOVQ	$1, 24(SP)
	0x0125 00293 ($GOROOT/src/fmt/print.go:274)	MOVQ	$1, 32(SP)
	0x012e 00302 ($GOROOT/src/fmt/print.go:274)	PCDATA	$1, $2
	0x012e 00302 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x0133 00307 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	""..autotmp_52+80(SP), AX
	0x0138 00312 (cmd/interfaceinternal/interface_internal.go:31)	TESTQ	AX, AX
	0x013b 00315 (cmd/interfaceinternal/interface_internal.go:31)	JEQ	321
	0x013d 00317 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	8(AX), AX
	0x0141 00321 (cmd/interfaceinternal/interface_internal.go:31)	XORPS	X0, X0
	0x0144 00324 (cmd/interfaceinternal/interface_internal.go:31)	MOVUPS	X0, ""..autotmp_26+96(SP)
	0x0149 00329 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	AX, ""..autotmp_26+96(SP)
	0x014e 00334 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	""..autotmp_53+72(SP), AX
	0x0153 00339 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	AX, ""..autotmp_26+104(SP)
	0x0158 00344 (<unknown line number>)	NOP
	0x0158 00344 ($GOROOT/src/fmt/print.go:274)	MOVQ	os.Stdout(SB), AX
	0x015f 00351 ($GOROOT/src/fmt/print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), CX
	0x0166 00358 ($GOROOT/src/fmt/print.go:274)	MOVQ	CX, (SP)
	0x016a 00362 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, 8(SP)
	0x016f 00367 ($GOROOT/src/fmt/print.go:274)	LEAQ	""..autotmp_26+96(SP), AX
	0x0174 00372 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, 16(SP)
	0x0179 00377 ($GOROOT/src/fmt/print.go:274)	MOVQ	$1, 24(SP)
	0x0182 00386 ($GOROOT/src/fmt/print.go:274)	MOVQ	$1, 32(SP)
	0x018b 00395 ($GOROOT/src/fmt/print.go:274)	PCDATA	$1, $0
	0x018b 00395 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x0190 00400 (cmd/interfaceinternal/interface_internal.go:31)	MOVQ	152(SP), BP
	0x0198 00408 (cmd/interfaceinternal/interface_internal.go:31)	ADDQ	$160, SP
	0x019f 00415 (cmd/interfaceinternal/interface_internal.go:31)	NOP
	0x01a0 00416 (cmd/interfaceinternal/interface_internal.go:31)	RET
	0x01a1 00417 (cmd/interfaceinternal/interface_internal.go:31)	NOP
	0x01a1 00417 (cmd/interfaceinternal/interface_internal.go:18)	PCDATA	$1, $-1
	0x01a1 00417 (cmd/interfaceinternal/interface_internal.go:18)	PCDATA	$0, $-2
	0x01a1 00417 (cmd/interfaceinternal/interface_internal.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x01a6 00422 (cmd/interfaceinternal/interface_internal.go:18)	PCDATA	$0, $-1
	0x01a6 00422 (cmd/interfaceinternal/interface_internal.go:18)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 8d 44 24 e0 48 3b  eH..%....H.D$.H;
	0x0010 41 10 0f 86 89 01 00 00 48 81 ec a0 00 00 00 48  A.......H......H
	0x0020 89 ac 24 98 00 00 00 48 8d ac 24 98 00 00 00 48  ..$....H..$....H
	0x0030 c7 84 24 80 00 00 00 11 00 00 00 48 8d 05 00 00  ..$........H....
	0x0040 00 00 48 89 84 24 88 00 00 00 48 c7 84 24 90 00  ..H..$....H..$..
	0x0050 00 00 0f 00 00 00 48 8d 0d 00 00 00 00 48 89 0c  ......H......H..
	0x0060 24 48 8d 8c 24 80 00 00 00 48 89 4c 24 08 e8 00  $H..$....H.L$...
	0x0070 00 00 00 48 8b 44 24 10 48 89 44 24 58 48 8b 4c  ...H.D$.H.D$XH.L
	0x0080 24 18 48 89 4c 24 40 48 c7 84 24 80 00 00 00 11  $.H.L$@H..$.....
	0x0090 00 00 00 48 8d 15 00 00 00 00 48 89 94 24 88 00  ...H......H..$..
	0x00a0 00 00 48 c7 84 24 90 00 00 00 0f 00 00 00 48 8d  ..H..$........H.
	0x00b0 15 00 00 00 00 48 89 14 24 48 8d 94 24 80 00 00  .....H..$H..$...
	0x00c0 00 48 89 54 24 08 e8 00 00 00 00 48 8b 44 24 10  .H.T$......H.D$.
	0x00d0 48 89 44 24 50 48 8b 4c 24 18 48 89 4c 24 48 0f  H.D$PH.L$.H.L$H.
	0x00e0 57 c0 0f 11 44 24 70 48 8b 54 24 58 48 89 54 24  W...D$pH.T$XH.T$
	0x00f0 70 48 8b 54 24 40 48 89 54 24 78 48 8b 15 00 00  pH.T$@H.T$xH....
	0x0100 00 00 48 8d 1d 00 00 00 00 48 89 1c 24 48 89 54  ..H......H..$H.T
	0x0110 24 08 48 8d 54 24 70 48 89 54 24 10 48 c7 44 24  $.H.T$pH.T$.H.D$
	0x0120 18 01 00 00 00 48 c7 44 24 20 01 00 00 00 e8 00  .....H.D$ ......
	0x0130 00 00 00 48 8b 44 24 50 48 85 c0 74 04 48 8b 40  ...H.D$PH..t.H.@
	0x0140 08 0f 57 c0 0f 11 44 24 60 48 89 44 24 60 48 8b  ..W...D$`H.D$`H.
	0x0150 44 24 48 48 89 44 24 68 48 8b 05 00 00 00 00 48  D$HH.D$hH......H
	0x0160 8d 0d 00 00 00 00 48 89 0c 24 48 89 44 24 08 48  ......H..$H.D$.H
	0x0170 8d 44 24 60 48 89 44 24 10 48 c7 44 24 18 01 00  .D$`H.D$.H.D$...
	0x0180 00 00 48 c7 44 24 20 01 00 00 00 e8 00 00 00 00  ..H.D$ .........
	0x0190 48 8b ac 24 98 00 00 00 48 81 c4 a0 00 00 00 90  H..$....H.......
	0x01a0 c3 e8 00 00 00 00 e9 55 fe ff ff                 .......U...
	rel 3+0 t=25 type."".Ta+0
	rel 3+0 t=25 type."".Ta+0
	rel 3+0 t=25 type.*os.File+0
	rel 3+0 t=25 type.*os.File+0
	rel 5+4 t=17 TLS+0
	rel 62+4 t=16 go.string."hell, interface"+0
	rel 89+4 t=16 type."".Ta+0
	rel 111+4 t=8 runtime.convT2E+0
	rel 150+4 t=16 go.string."hell, interface"+0
	rel 177+4 t=16 go.itab."".Ta,"".NonEmptyInterface+0
	rel 199+4 t=8 runtime.convT2I+0
	rel 254+4 t=16 os.Stdout+0
	rel 261+4 t=16 go.itab.*os.File,io.Writer+0
	rel 303+4 t=8 fmt.Fprintln+0
	rel 347+4 t=16 os.Stdout+0
	rel 354+4 t=16 go.itab.*os.File,io.Writer+0
	rel 396+4 t=8 fmt.Fprintln+0
	rel 418+4 t=8 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok nosplit size=26 args=0x18 locals=0x0 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals·e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x0005 00005 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0008 00008 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x000d 00013 (<autogenerated>:1)	XORPS	X0, X0
	0x0010 00016 (<autogenerated>:1)	MOVUPS	X0, "".~r0+16(SP)
	0x0015 00021 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 48 8b 44 24 08 48 8b 00 48 89 44 24 08 0f 57 c0  H.D$.H..H.D$..W.
	0x0010 0f 11 44 24 10 e9 00 00 00 00                    ..D$......
	rel 22+4 t=8 os.(*file).close+0
type..eq."".Ta STEXT dupok size=119 args=0x18 locals=0x28 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".Ta(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	112
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$40, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals·dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (<autogenerated>:1)	MOVQ	"".q+56(SP), AX
	0x0022 00034 (<autogenerated>:1)	MOVQ	(AX), CX
	0x0025 00037 (<autogenerated>:1)	MOVQ	"".p+48(SP), DX
	0x002a 00042 (<autogenerated>:1)	CMPQ	(DX), CX
	0x002d 00045 (<autogenerated>:1)	JNE	70
	0x002f 00047 (<autogenerated>:1)	MOVQ	16(DX), CX
	0x0033 00051 (<autogenerated>:1)	MOVQ	8(AX), BX
	0x0037 00055 (<autogenerated>:1)	MOVQ	8(DX), DX
	0x003b 00059 (<autogenerated>:1)	NOP
	0x0040 00064 (<autogenerated>:1)	CMPQ	16(AX), CX
	0x0044 00068 (<autogenerated>:1)	JEQ	86
	0x0046 00070 (<autogenerated>:1)	XORL	AX, AX
	0x0048 00072 (<autogenerated>:1)	MOVB	AL, "".r+64(SP)
	0x004c 00076 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0051 00081 (<autogenerated>:1)	ADDQ	$40, SP
	0x0055 00085 (<autogenerated>:1)	RET
	0x0056 00086 (<autogenerated>:1)	MOVQ	DX, (SP)
	0x005a 00090 (<autogenerated>:1)	MOVQ	BX, 8(SP)
	0x005f 00095 (<autogenerated>:1)	MOVQ	CX, 16(SP)
	0x0064 00100 (<autogenerated>:1)	PCDATA	$1, $1
	0x0064 00100 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x0069 00105 (<autogenerated>:1)	MOVBLZX	24(SP), AX
	0x006e 00110 (<autogenerated>:1)	JMP	72
	0x0070 00112 (<autogenerated>:1)	NOP
	0x0070 00112 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0070 00112 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0070 00112 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0075 00117 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0075 00117 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 61 48  eH..%....H;a.vaH
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 48 8b 44  ..(H.l$ H.l$ H.D
	0x0020 24 38 48 8b 08 48 8b 54 24 30 48 39 0a 75 17 48  $8H..H.T$0H9.u.H
	0x0030 8b 4a 10 48 8b 58 08 48 8b 52 08 0f 1f 44 00 00  .J.H.X.H.R...D..
	0x0040 48 39 48 10 74 10 31 c0 88 44 24 40 48 8b 6c 24  H9H.t.1..D$@H.l$
	0x0050 20 48 83 c4 28 c3 48 89 14 24 48 89 5c 24 08 48   H..(.H..$H.\$.H
	0x0060 89 4c 24 10 e8 00 00 00 00 0f b6 44 24 18 eb d8  .L$........D$...
	0x0070 e8 00 00 00 00 eb 89                             .......
	rel 5+4 t=17 TLS+0
	rel 101+4 t=8 runtime.memequal+0
	rel 113+4 t=8 runtime.morestack_noctxt+0
"".(*Ta).Ma STEXT dupok nosplit size=68 args=0x8 locals=0x8 funcid=0x16
	0x0000 00000 (<autogenerated>:1)	TEXT	"".(*Ta).Ma(SB), DUPOK|NOSPLIT|WRAPPER|ABIInternal, $8-8
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	SUBQ	$8, SP
	0x000d 00013 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0011 00017 (<autogenerated>:1)	LEAQ	(SP), BP
	0x0015 00021 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0019 00025 (<autogenerated>:1)	TESTQ	BX, BX
	0x001c 00028 (<autogenerated>:1)	JNE	53
	0x001e 00030 (<autogenerated>:1)	NOP
	0x001e 00030 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x001e 00030 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001e 00030 (<autogenerated>:1)	CMPQ	""..this+16(SP), $0
	0x0024 00036 (<autogenerated>:1)	JEQ	47
	0x0026 00038 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002a 00042 (<autogenerated>:1)	ADDQ	$8, SP
	0x002e 00046 (<autogenerated>:1)	RET
	0x002f 00047 (<autogenerated>:1)	PCDATA	$1, $1
	0x002f 00047 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0034 00052 (<autogenerated>:1)	XCHGL	AX, AX
	0x0035 00053 (<autogenerated>:1)	LEAQ	16(SP), DI
	0x003a 00058 (<autogenerated>:1)	CMPQ	(BX), DI
	0x003d 00061 (<autogenerated>:1)	JNE	30
	0x003f 00063 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x0042 00066 (<autogenerated>:1)	JMP	30
	0x0000 65 48 8b 0c 25 00 00 00 00 48 83 ec 08 48 89 2c  eH..%....H...H.,
	0x0010 24 48 8d 2c 24 48 8b 59 20 48 85 db 75 17 48 83  $H.,$H.Y H..u.H.
	0x0020 7c 24 10 00 74 09 48 8b 2c 24 48 83 c4 08 c3 e8  |$..t.H.,$H.....
	0x0030 00 00 00 00 90 48 8d 7c 24 10 48 39 3b 75 df 48  .....H.|$.H9;u.H
	0x0040 89 23 eb da                                      .#..
	rel 5+4 t=17 TLS+0
	rel 48+4 t=8 runtime.panicwrap+0
"".(*Ta).Mb STEXT dupok nosplit size=68 args=0x8 locals=0x8 funcid=0x16
	0x0000 00000 (<autogenerated>:1)	TEXT	"".(*Ta).Mb(SB), DUPOK|NOSPLIT|WRAPPER|ABIInternal, $8-8
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	SUBQ	$8, SP
	0x000d 00013 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0011 00017 (<autogenerated>:1)	LEAQ	(SP), BP
	0x0015 00021 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0019 00025 (<autogenerated>:1)	TESTQ	BX, BX
	0x001c 00028 (<autogenerated>:1)	JNE	53
	0x001e 00030 (<autogenerated>:1)	NOP
	0x001e 00030 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x001e 00030 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001e 00030 (<autogenerated>:1)	CMPQ	""..this+16(SP), $0
	0x0024 00036 (<autogenerated>:1)	JEQ	47
	0x0026 00038 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002a 00042 (<autogenerated>:1)	ADDQ	$8, SP
	0x002e 00046 (<autogenerated>:1)	RET
	0x002f 00047 (<autogenerated>:1)	PCDATA	$1, $1
	0x002f 00047 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0034 00052 (<autogenerated>:1)	XCHGL	AX, AX
	0x0035 00053 (<autogenerated>:1)	LEAQ	16(SP), DI
	0x003a 00058 (<autogenerated>:1)	CMPQ	(BX), DI
	0x003d 00061 (<autogenerated>:1)	JNE	30
	0x003f 00063 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x0042 00066 (<autogenerated>:1)	JMP	30
	0x0000 65 48 8b 0c 25 00 00 00 00 48 83 ec 08 48 89 2c  eH..%....H...H.,
	0x0010 24 48 8d 2c 24 48 8b 59 20 48 85 db 75 17 48 83  $H.,$H.Y H..u.H.
	0x0020 7c 24 10 00 74 09 48 8b 2c 24 48 83 c4 08 c3 e8  |$..t.H.,$H.....
	0x0030 00 00 00 00 90 48 8d 7c 24 10 48 39 3b 75 df 48  .....H.|$.H9;u.H
	0x0040 89 23 eb da                                      .#..
	rel 5+4 t=17 TLS+0
	rel 48+4 t=8 runtime.panicwrap+0
"".NonEmptyInterface.Ma STEXT dupok size=90 args=0x10 locals=0x10 funcid=0x16
	0x0000 00000 (<autogenerated>:1)	TEXT	"".NonEmptyInterface.Ma(SB), DUPOK|WRAPPER|ABIInternal, $16-16
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	68
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$16, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	75
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·09cf9819fc716118c209c2d2155a3632(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	MOVQ	""..this+24(SP), AX
	0x002b 00043 (<autogenerated>:1)	MOVQ	""..this+32(SP), CX
	0x0030 00048 (<autogenerated>:1)	MOVQ	24(AX), AX
	0x0034 00052 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x0038 00056 (<autogenerated>:1)	PCDATA	$1, $1
	0x0038 00056 (<autogenerated>:1)	CALL	AX
	0x003a 00058 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x003f 00063 (<autogenerated>:1)	ADDQ	$16, SP
	0x0043 00067 (<autogenerated>:1)	RET
	0x0044 00068 (<autogenerated>:1)	NOP
	0x0044 00068 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0044 00068 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0044 00068 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0049 00073 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0049 00073 (<autogenerated>:1)	JMP	0
	0x004b 00075 (<autogenerated>:1)	LEAQ	24(SP), DI
	0x0050 00080 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0053 00083 (<autogenerated>:1)	JNE	38
	0x0055 00085 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x0058 00088 (<autogenerated>:1)	JMP	38
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 35 48  eH..%....H;a.v5H
	0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 8b 59  ...H.l$.H.l$.H.Y
	0x0020 20 48 85 db 75 25 48 8b 44 24 18 48 8b 4c 24 20   H..u%H.D$.H.L$ 
	0x0030 48 8b 40 18 48 89 0c 24 ff d0 48 8b 6c 24 08 48  H.@.H..$..H.l$.H
	0x0040 83 c4 10 c3 e8 00 00 00 00 eb b5 48 8d 7c 24 18  ...........H.|$.
	0x0050 48 39 3b 75 d1 48 89 23 eb cc                    H9;u.H.#..
	rel 2+0 t=26 type."".NonEmptyInterface+96
	rel 5+4 t=17 TLS+0
	rel 56+0 t=11 +0
	rel 69+4 t=8 runtime.morestack_noctxt+0
"".NonEmptyInterface.Mb STEXT dupok size=90 args=0x10 locals=0x10 funcid=0x16
	0x0000 00000 (<autogenerated>:1)	TEXT	"".NonEmptyInterface.Mb(SB), DUPOK|WRAPPER|ABIInternal, $16-16
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	68
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$16, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	75
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·09cf9819fc716118c209c2d2155a3632(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	MOVQ	""..this+24(SP), AX
	0x002b 00043 (<autogenerated>:1)	MOVQ	""..this+32(SP), CX
	0x0030 00048 (<autogenerated>:1)	MOVQ	32(AX), AX
	0x0034 00052 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x0038 00056 (<autogenerated>:1)	PCDATA	$1, $1
	0x0038 00056 (<autogenerated>:1)	CALL	AX
	0x003a 00058 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x003f 00063 (<autogenerated>:1)	ADDQ	$16, SP
	0x0043 00067 (<autogenerated>:1)	RET
	0x0044 00068 (<autogenerated>:1)	NOP
	0x0044 00068 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0044 00068 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0044 00068 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0049 00073 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0049 00073 (<autogenerated>:1)	JMP	0
	0x004b 00075 (<autogenerated>:1)	LEAQ	24(SP), DI
	0x0050 00080 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0053 00083 (<autogenerated>:1)	JNE	38
	0x0055 00085 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x0058 00088 (<autogenerated>:1)	JMP	38
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 35 48  eH..%....H;a.v5H
	0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 48 8b 59  ...H.l$.H.l$.H.Y
	0x0020 20 48 85 db 75 25 48 8b 44 24 18 48 8b 4c 24 20   H..u%H.D$.H.L$ 
	0x0030 48 8b 40 20 48 89 0c 24 ff d0 48 8b 6c 24 08 48  H.@ H..$..H.l$.H
	0x0040 83 c4 10 c3 e8 00 00 00 00 eb b5 48 8d 7c 24 18  ...........H.|$.
	0x0050 48 39 3b 75 d1 48 89 23 eb cc                    H9;u.H.#..
	rel 2+0 t=26 type."".NonEmptyInterface+104
	rel 5+4 t=17 TLS+0
	rel 56+0 t=11 +0
	rel 69+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=24 type.[]interface {}+0
	rel 0+0 t=24 type.error+0
	rel 0+0 t=24 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
go.string."hell, interface" SRODATA dupok size=15
	0x0000 68 65 6c 6c 2c 20 69 6e 74 65 72 66 61 63 65     hell, interface
type..eqfunc."".Ta SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".Ta+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
go.info."".Ta.Ma$abstract SDWARFABSFCN dupok size=11
	0x0000 04 2e 54 61 2e 4d 61 00 01 01 00                 ..Ta.Ma....
go.info."".Ta.Mb$abstract SDWARFABSFCN dupok size=11
	0x0000 04 2e 54 61 2e 4d 62 00 01 01 00                 ..Ta.Mb....
type..namedata.*main.Ta. SRODATA dupok size=11
	0x0000 01 00 08 2a 6d 61 69 6e 2e 54 61                 ...*main.Ta
type..namedata.*func(*main.Ta)- SRODATA dupok size=18
	0x0000 00 00 0f 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 54  ...*func(*main.T
	0x0010 61 29                                            a)
type.*func(*"".Ta) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e7 36 00 93 08 08 08 36 00 00 00 00 00 00 00 00  .6.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.Ta)-+0
	rel 48+8 t=1 type.func(*"".Ta)+0
type.func(*"".Ta) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 cd 5b 9d f9 02 08 08 33 00 00 00 00 00 00 00 00  .[.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.Ta)-+0
	rel 44+4 t=6 type.*func(*"".Ta)+0
	rel 56+8 t=1 type.*"".Ta+0
type..namedata.Ma. SRODATA dupok size=5
	0x0000 01 00 02 4d 61                                   ...Ma
type..namedata.*func()- SRODATA dupok size=10
	0x0000 00 00 07 2a 66 75 6e 63 28 29                    ...*func()
type.*func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9b 90 75 1b 08 08 08 36 00 00 00 00 00 00 00 00  ..u....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func()-+0
	rel 48+8 t=1 type.func()+0
type.func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f6 bc 82 f6 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00                                      ....
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func()-+0
	rel 44+4 t=6 type.*func()+0
type..namedata.Mb. SRODATA dupok size=5
	0x0000 01 00 02 4d 62                                   ...Mb
type.*"".Ta SRODATA size=104
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 84 4b e4 b9 09 08 08 36 00 00 00 00 00 00 00 00  .K.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 02 00 02 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.Ta.+0
	rel 48+8 t=1 type."".Ta+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.Ma.+0
	rel 76+4 t=27 type.func()+0
	rel 80+4 t=27 "".(*Ta).Ma+0
	rel 84+4 t=27 "".(*Ta).Ma+0
	rel 88+4 t=5 type..namedata.Mb.+0
	rel 92+4 t=27 type.func()+0
	rel 96+4 t=27 "".(*Ta).Mb+0
	rel 100+4 t=27 "".(*Ta).Mb+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type..namedata.*func(main.Ta)- SRODATA dupok size=17
	0x0000 00 00 0e 2a 66 75 6e 63 28 6d 61 69 6e 2e 54 61  ...*func(main.Ta
	0x0010 29                                               )
type.*func("".Ta) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bd 30 ff 2a 08 08 08 36 00 00 00 00 00 00 00 00  .0.*...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(main.Ta)-+0
	rel 48+8 t=1 type.func("".Ta)+0
type.func("".Ta) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 26 98 9b af 02 08 08 33 00 00 00 00 00 00 00 00  &......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(main.Ta)-+0
	rel 44+4 t=6 type.*func("".Ta)+0
	rel 56+8 t=1 type."".Ta+0
type..namedata.n- SRODATA dupok size=4
	0x0000 00 00 01 6e                                      ...n
type..namedata.s- SRODATA dupok size=4
	0x0000 00 00 01 73                                      ...s
type."".Ta SRODATA size=176
	0x0000 18 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 ae 07 d2 47 07 08 08 19 00 00 00 00 00 00 00 00  ...G............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 02 00 02 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 type..eqfunc."".Ta+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*main.Ta.+0
	rel 44+4 t=5 type.*"".Ta+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".Ta+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.n-+0
	rel 104+8 t=1 type.int+0
	rel 120+8 t=1 type..namedata.s-+0
	rel 128+8 t=1 type.string+0
	rel 144+4 t=5 type..namedata.Ma.+0
	rel 148+4 t=27 type.func()+0
	rel 152+4 t=27 "".(*Ta).Ma+0
	rel 156+4 t=27 "".Ta.Ma+0
	rel 160+4 t=5 type..namedata.Mb.+0
	rel 164+4 t=27 type.func()+0
	rel 168+4 t=27 "".(*Ta).Mb+0
	rel 172+4 t=27 "".Ta.Mb+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 08 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
runtime.interequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.interequal+0
type..namedata.*main.NonEmptyInterface. SRODATA dupok size=26
	0x0000 01 00 17 2a 6d 61 69 6e 2e 4e 6f 6e 45 6d 70 74  ...*main.NonEmpt
	0x0010 79 49 6e 74 65 72 66 61 63 65                    yInterface
type.*"".NonEmptyInterface SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f6 af 20 d1 08 08 08 36 00 00 00 00 00 00 00 00  .. ....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.NonEmptyInterface.+0
	rel 48+8 t=1 type."".NonEmptyInterface+0
type."".NonEmptyInterface SRODATA size=112
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 4a 37 15 f3 07 08 08 14 00 00 00 00 00 00 00 00  J7..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.interequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*main.NonEmptyInterface.+0
	rel 44+4 t=5 type.*"".NonEmptyInterface+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".NonEmptyInterface+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+4 t=5 type..namedata.Ma.+0
	rel 100+4 t=5 type.func()+0
	rel 104+4 t=5 type..namedata.Mb.+0
	rel 108+4 t=5 type.func()+0
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=1 os.(*File).Write+0
go.itab."".Ta,"".NonEmptyInterface SRODATA dupok size=40
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 ae 07 d2 47 00 00 00 00 00 00 00 00 00 00 00 00  ...G............
	0x0020 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type."".NonEmptyInterface+0
	rel 8+8 t=1 type."".Ta+0
	rel 24+8 t=1 "".(*Ta).Ma+0
	rel 32+8 t=1 "".(*Ta).Mb+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·01528d1c353241abdf67d0edabe360f1 SRODATA dupok size=14
	0x0000 03 00 00 00 0b 00 00 00 00 00 09 00 06 00        ..............
"".main.stkobj SRODATA static size=56
	0x0000 03 00 00 00 00 00 00 00 c8 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00 d8 ff ff ff ff ff ff ff  ................
	0x0020 00 00 00 00 00 00 00 00 e8 ff ff ff ff ff ff ff  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
	rel 32+8 t=1 type.[1]interface {}+0
	rel 48+8 t=1 type."".Ta+0
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·09cf9819fc716118c209c2d2155a3632 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 02 00                    ..........
