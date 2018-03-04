; da65 V2.16 - Git f5e9b401
; Created:    2018-02-22 08:23:11
; Input file: orig/ovl1b
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0006           := $0006
L0080           := $0080
L012C           := $012C
L0720           := $0720
L0A65           := $0A65
L0CAF           := $0CAF
L0CED           := $0CED
L0D26           := $0D26
L0D51           := $0D51
L0D5F           := $0D5F
L0DB5           := $0DB5
L0EB2           := $0EB2
L0ED7           := $0ED7
L1020           := $1020
L10FB           := $10FB
L1120           := $1120
L127E           := $127E
L1291           := $1291
L129B           := $129B
L12A5           := $12A5
L12AF           := $12AF
L1521           := $1521
L1721           := $1721
L1B2E           := $1B2E
L2008           := $2008
L2020           := $2020
L202D           := $202D
L202E           := $202E
L2053           := $2053
L2065           := $2065
L2E2E           := $2E2E
L2E33           := $2E33
L322E           := $322E
L3F20           := $3F20
MGTK            := $4000
L4210           := $4210
L4214           := $4214
L4324           := $4324
L440A           := $440A
L4420           := $4420
L4519           := $4519
L4520           := $4520
L4B4F           := $4B4F
L5110           := $5110
L51ED           := $51ED
L5220           := $5220
L5307           := $5307
L5345           := $5345
L5507           := $5507
L614E           := $614E
L6162           := $6162
L6163           := $6163
L6177           := $6177
L6369           := $6369
L636F           := $636F
L6520           := $6520
L6544           := $6544
L6552           := $6552
L6556           := $6556
L6562           := $6562
L6564           := $6564
L6572           := $6572
L6874           := $6874
L6877           := $6877
L6964           := $6964
L6C62           := $6C62
L6C63           := $6C63
L6C73           := $6C73
L6D75           := $6D75
L6E49           := $6E49
L6E61           := $6E61
L6E69           := $6E69
L6F43           := $6F43
L6F63           := $6F63
L6F66           := $6F66
L6F67           := $6F67
L6F6E           := $6F6E
L6F73           := $6F73
L6F74           := $6F74
L6F79           := $6F79
L7041           := $7041
L7244           := $7244
L7257           := $7257
L7265           := $7265
L7266           := $7266
L726F           := $726F
L7270           := $7270
L7274           := $7274
L7277           := $7277
L7345           := $7345
L746F           := $746F
L7473           := $7473
L7551           := $7551
L7564           := $7564
L7573           := $7573
UNKNOWN_CALL    := $8E00
MLI             := $BF00
RAMRDOFF        := $C002
RAMRDON         := $C003
RAMWRTOFF       := $C004
RAMWRTON        := $C005
ALTZPOFF        := $C008
ALTZPON         := $C009
LCBANK1         := $C08B
AUXMOVE         := $C311
XFER            := $C314
INIT            := $FB2F
BELL1           := $FBDD
HOME            := $FC58
COUT            := $FDED
SETKBD          := $FE89
SETVID          := $FE93
MGTK_RELAY:
        jmp     LD5E1

        brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0006
        .byte   $07
LD00B:  brk
LD00C:  brk
LD00D:  brk
LD00E:  brk
LD00F:  brk
        brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        ora     (L0000,x)
        .byte   $6B
        bne     LD057
        bne     LD01E
LD01E:  brk
        brk
        brk
        brk
        brk
        .byte   $02
        brk
        .byte   $7F
        bne     LD087
        bne     LD02A
LD02A:  brk
        brk
        brk
        brk
        brk
        .byte   $03
        brk
        sty     $D0
        adc     a:$D0
        brk
        brk
        brk
        brk
        brk
        ora     L0000
        brk
        brk
        brk
DESKTOP_RELAY:
        brk
        brk
        brk
        brk
        brk
        .byte   $8F
        bne     LD048
LD048:  brk
        brk
        brk
        ldy     a:$D0
        brk
        brk
        brk
        ldx     a:$D0
        brk
        brk
        brk
LD057:  .byte   $D3
        bne     LD05A
LD05A:  brk
        brk
        brk
        sed
        bne     LD061
        brk
LD061:  brk
        brk
        brk
        brk
        ora     (L0000,x)
        eor     ($71),y
        .byte   $0C
        cmp     ($01),y
        asl     a:$02,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        ora     ($D1),y
        brk
        brk
        brk
        brk
        ora     $04D1,x
        lsr     $69
        jmp     (L0A65)

        lsr     $61
LD087:  .byte   $63
        adc     #$6C
        adc     #$74
        adc     #$65
        .byte   $73
        .byte   $1C
        eor     ($70,x)
        bvs     LD100
        adc     $20
        eor     #$49
        jsr     L6544
        .byte   $73
        .byte   $6B
        .byte   $54
        .byte   $6F
        bvs     LD0C1
        ror     $65,x
        .byte   $72
        .byte   $73
        adc     #$6F
        ror     $3120
        rol     $0131
        jsr     L4324
        .byte   $6F
        bvs     LD12C
        .byte   $72
        adc     #$67
        pla
        .byte   $74
        jsr     L7041
        bvs     LD129
        adc     $20
        .byte   $43
        .byte   $6F
LD0C1:  adc     $7570
        .byte   $74
        adc     $72
        jsr     L6E49
        .byte   $63
        rol     $202C
        and     ($39),y
        sec
        rol     $20,x
        bit     $43
        .byte   $6F
        bvs     LD151
        .byte   $72
        adc     #$67
        pla
        .byte   $74
        jsr     L6556
        .byte   $72
        .byte   $73
        adc     #$6F
        ror     $5320
        .byte   $6F
        ror     $74
        bit     $3120
        and     $3538,y
        jsr     L202D
        and     ($39),y
        sec
        rol     $20,x
        .byte   $13
        eor     ($6C,x)
        jmp     (L5220)

        adc     #$67
LD100:  pla
        .byte   $74
        .byte   $73
        jsr     L6572
        .byte   $73
        adc     $72
        ror     $65,x
        .byte   $64
        .byte   $04
        eor     ($75),y
        adc     #$74
        .byte   $0B
        eor     ($75),y
        adc     #$63
        .byte   $6B
        jsr     L6F43
        bvs     LD195
        jsr     L440A
        adc     #$73
        .byte   $6B
        jsr     L6F43
        bvs     LD1A0
        .byte   $20
        .byte   $03
LD129:  brk
        .byte   $03
LD12B:  brk
LD12C:  brk
LD12D:  brk
LD12E:  brk
LD12F:  brk
LD130:  brk
LD131:  brk
LD132:  brk
LD133:  brk
LD134:  brk
LD135:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD151:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD15B:  brk
        lsr     a:$D1,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        asl     $EA
        brk
        brk
        brk
        brk
        dey
        brk
        php
        brk
        php
LD18D:  ora     ($01,x)
        brk
        brk
        brk
        brk
        brk
        brk
LD195:  brk
        brk
        brk
        brk
        stx     L0000,y
        .byte   $32
        brk
        .byte   $F4
        ora     ($8C,x)
LD1A0:  brk
        ora     $1400,y
        brk
        brk
        jsr     L0080
        brk
        brk
        brk
        brk
        .byte   $F4
        ora     ($96,x)
        brk
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        ora     ($01,x)
        brk
        .byte   $7F
        brk
        dey
        brk
        brk
LD1C7:  .byte   $02
        ora     (L0000,x)
        brk
        brk
        .byte   $80
        brk
        brk
        .byte   $03
        brk
        brk
        brk
        .byte   $64
        brk
        .byte   $32
        brk
        stx     L0000,y
        stx     L0000,y
        and     $3200
        brk
        brk
        jsr     L0080
        brk
        brk
        brk
        brk
        stx     L0000,y
        lsr     L0000
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        brk
        brk
        brk
        brk
        brk
        ora     ($01,x)
        brk
        .byte   $7F
        brk
        dey
        brk
LD200:  brk
        .byte   $04
        brk
        .byte   $02
        brk
        beq     LD208
        .byte   $94
LD208:  brk
        ora     L0000
        .byte   $03
        brk
        .byte   $EF
        ora     ($93,x)
        brk
        asl     L0000
        .byte   $14
        brk
        inc     $6601
        brk
        asl     L0000
        .byte   $67
        brk
        inc     $9101
        brk
        lsr     $5A01,x
        brk
        .byte   $C2
        ora     ($65,x)
        brk
        .byte   $D2
        brk
        .byte   $5A
        brk
        rol     $01,x
        adc     L0000
        .byte   $63
        ora     ($64,x)
        brk
        .byte   $0F
        .byte   $4F
        .byte   $4B
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        ora     a:$D7
        .byte   $64
        brk
LD249:  brk
LD24A:  brk
        .byte   $0F
        brk
        .byte   $14
        brk
        .byte   $1C
        brk
        asl     $2E01
        brk
        asl     $2601
        brk
        ldy     $01
        rol     LD200
        brk
        .byte   $44
        brk
        .byte   $D2
        brk
        .byte   $44
        brk
        .byte   $D2
        brk
        .byte   $44
        brk
        asl     L6552
        adc     ($64,x)
        jsr     L7244
        adc     #$76
        adc     $20
        jsr     L4420
        .byte   $12
        jsr     L2020
        jsr     L4420
        adc     #$73
        .byte   $6B
        jsr     L6F43
        bvs     LD300
        jsr     L2020
        jsr     L5110
        adc     $69,x
        .byte   $63
        .byte   $6B
        jsr     L6F43
        bvs     LD30F
        jsr     L2020
        jsr     L2020
        ora     ($53),y
        jmp     (L746F)

        bit     L4420
        .byte   $72
        adc     #$76
        adc     $2C
        jsr     L614E
        adc     $1265
        .byte   $53
        adc     $6C
        adc     $63
        .byte   $74
        jsr     L6F73
        adc     $72,x
        .byte   $63
        adc     $20
        .byte   $64
        adc     #$73
        .byte   $6B
        .byte   $17
        .byte   $53
        adc     $6C
        adc     $63
        .byte   $74
        jsr     L6564
        .byte   $73
        .byte   $74
        adc     #$6E
        adc     ($74,x)
        adc     #$6F
        ror     $6420
        adc     #$73
        .byte   $6B
        clc
        lsr     $6F
        .byte   $72
        adc     $7461
        .byte   $74
        adc     #$6E
        .byte   $67
        jsr     L6874
        adc     $20
        .byte   $64
        adc     #$73
        .byte   $6B
        jsr     L2E2E
        rol     $0F2E
        .byte   $57
        .byte   $72
        adc     #$74
        adc     #$6E
        .byte   $67
        jsr     L2E2E
        rol     L202E
LD300:  jsr     L1020
        .byte   $52
        adc     $61
        .byte   $64
        adc     #$6E
        .byte   $67
        jsr     L2E2E
        .byte   $2E
        .byte   $2E
LD30F:  jsr     L2020
        .byte   $20
LD313:  .byte   $07
        eor     $6E,x
        .byte   $6B
        ror     $776F
        ror     $533D
        adc     $6C
        adc     $63
        .byte   $74
        jsr     L7551
        adc     #$74
        jsr     L7266
        .byte   $6F
        adc     $7420
        pla
        adc     $20
        ror     $69
        jmp     (L2065)

        adc     $6E65
        adc     $20,x
        plp
        .byte   $1F
        eor     ($29),y
        jsr     L6F74
        jsr     L6F67
        jsr     L6162
        .byte   $63
        .byte   $6B
        jsr     L6F74
        jsr     L6874
        adc     $20
        .byte   $44
        adc     $73
        .byte   $6B
        .byte   $54
        .byte   $6F
        bvs     LD35A
LD35A:  .byte   $7F
        brk
        brk
LD35D:  brk
        brk
        stx     L0000,y
LD361:  brk
        brk
LD363:  brk
        brk
        brk
        brk
LD367:  brk
LD368:  brk
        brk
        brk
        brk
        brk
LD36D:  brk
        brk
LD36F:  brk
        brk
        brk
        brk
        .byte   $47
        brk
LD375:  brk
LD376:  brk
LD377:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD3F7:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD3FF:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD407:  brk
LD408:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD417:  brk
LD418:  brk
        .byte   $01
LD41A:  brk
        .byte   $01
LD41C:  brk
LD41D:  brk
LD41E:  brk
        brk
        brk
LD421:  brk
LD422:  brk
LD423:  brk
        brk
        brk
        brk
        brk
        brk
LD429:  brk
        .byte   $12
        brk
        .byte   $14
        brk
        nop
        ora     ($58,x)
        brk
        .byte   $13
        brk
        ora     $C300,x
        brk
        adc     L0000
LD43A:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LD44C:  brk
LD44D:  brk
LD44E:  brk
        brk
        brk
LD451:  brk
        ora     (L0000,x)
        .byte   $02
        .byte   $20
        .byte   $20
LD457:  .byte   $07
        .byte   $20
LD459:  jsr     L2020
        jsr     L2020
        bit     $7D01
        brk
        bit     $8701
        brk
        bit     $7301
        brk
        plp
        brk
        adc     $6E00,x
        brk
        adc     $2800,x
        brk
        .byte   $87
        brk
        ror     $8700
        brk
        plp
        brk
        .byte   $73
        brk
        .byte   $14
        brk
        sta     (L0000),y
        .byte   $14
        brk
        dey
        brk
        bcc     LD48A
        .byte   $91
LD48A:  brk
        bit     $9101
        brk
        plp
        brk
        .byte   $64
        brk
        plp
        brk
        .byte   $5A
        brk
LD497:  asl     a
LD498:  asl     $420D
        jmp     (L636F)

        .byte   $6B
        .byte   $73
        jsr     L6552
        adc     ($64,x)
        .byte   $3A
        jsr     L4210
        jmp     (L636F)

        .byte   $6B
        .byte   $73
        jsr     L7257
        adc     #$74
        .byte   $74
        adc     $6E
        .byte   $3A
        jsr     L4214
        jmp     (L636F)

        .byte   $6B
        .byte   $73
        jsr     L6F74
        jsr     L7274
        adc     ($6E,x)
        .byte   $73
        ror     $65
        .byte   $72
        .byte   $3A
        jsr     L5307
        .byte   $6F
        adc     $72,x
        .byte   $63
        adc     $20
        .byte   $0C
        .byte   $44
        adc     $73
        .byte   $74
        adc     #$6E
        adc     ($74,x)
        adc     #$6F
        ror     $0520
        .byte   $53
        jmp     (L746F)

        jsr     L2008
        jsr     L7244
        adc     #$76
        adc     $20
LD4F1:  .byte   $0F
        .byte   $44
        .byte   $4F
        .byte   $53
        jsr     L2E33
        .byte   $33
        jsr     L2053
        bit     L4420
        jsr     L1120
        .byte   $44
        .byte   $4F
        .byte   $53
        jsr     L2E33
        .byte   $33
        jsr     L6964
        .byte   $73
        .byte   $6B
        jsr     L6F63
        bvs     LD58C
        bpl     LD565
        adc     ($73,x)
        .byte   $63
        adc     ($6C,x)
        jsr     L6964
        .byte   $73
        .byte   $6B
        jsr     L6F63
        bvs     LD59D
        bpl     LD576
        .byte   $72
        .byte   $6F
        .byte   $44
        .byte   $4F
        .byte   $53
        jsr     L6964
        .byte   $73
        .byte   $6B
        jsr     L6F63
        bvs     LD5AE
        .byte   $12
        jsr     L5345
        .byte   $43
        jsr     L7473
        .byte   $6F
        bvs     LD560
        .byte   $74
        pla
        adc     $20
        .byte   $63
        .byte   $6F
        bvs     LD5C1
        ora     $7245,y
        .byte   $72
        .byte   $6F
        .byte   $72
        jsr     L6877
        adc     $6E
        jsr     L7277
        adc     #$74
        adc     #$6E
        .byte   $67
        jsr     L6C62
        .byte   $6F
        .byte   $63
LD560:  .byte   $6B
        jsr     L4519
        .byte   $72
LD565:  .byte   $72
        .byte   $6F
        .byte   $72
        jsr     L6877
        adc     $6E
        jsr     L6572
        adc     ($64,x)
        adc     #$6E
        .byte   $67
        .byte   $20
LD576:  .byte   $62
        jmp     (L636F)

        .byte   $6B
        jsr     L0000
        .byte   $02
        brk
        asl     L0000
        asl     $1E00
        brk
        rol     $7E00,x
        brk
        .byte   $1A
        brk
LD58C:  bmi     LD58E
LD58E:  bmi     LD590
LD590:  rts

        brk
        brk
        brk
        .byte   $03
        brk
        .byte   $07
        brk
        .byte   $0F
        brk
        .byte   $1F
        brk
        .byte   $3F
LD59D:  brk
        .byte   $7F
        brk
        .byte   $7F
        ora     ($7F,x)
        brk
        sei
        brk
        sei
        brk
        bvs     LD5AB
        .byte   $70
LD5AB:  ora     ($01,x)
        .byte   $01
LD5AE:  brk
        brk
        .byte   $7C
        .byte   $03
        .byte   $7C
        .byte   $03
        .byte   $02
        .byte   $04
        .byte   $42
        .byte   $04
        .byte   $32
        .byte   $0C
        .byte   $02
        .byte   $04
        .byte   $02
        .byte   $04
        .byte   $7C
        .byte   $03
        .byte   $7C
LD5C1:  .byte   $03
        brk
        brk
        brk
        brk
        .byte   $7C
        .byte   $03
        ror     $7E07,x
        .byte   $07
        .byte   $7F
        .byte   $0F
        .byte   $7F
        .byte   $0F
        .byte   $7F
        .byte   $1F
        .byte   $7F
        .byte   $0F
        .byte   $7F
        .byte   $0F
        ror     $7E07,x
        .byte   $07
        .byte   $7C
        .byte   $03
        brk
        brk
        ora     $05
LD5E0:  brk
LD5E1:  jsr     LDF73
        ldy     #$30
        lda     #$15
        ldx     #$D0
        jsr     LDBE0
        jsr     LDDE0
        lda     #$01
        sta     LD12B
        lda     #$01
        sta     LD12C
        ldy     #$36
        lda     #$2A
        ldx     #$D1
        jsr     LDBE0
        lda     #$01
        sta     LD129
        ldy     #$34
        lda     #$28
        ldx     #$D1
        jsr     LDBE0
        lda     #$00
        sta     LD451
        sta     LD5E0
        jsr     LDFA0
LD61C:  lda     #$00
        sta     LD367
        sta     LD368
        sta     LD44C
        lda     #$FF
        sta     LD363
        lda     #$81
        sta     LD44D
        lda     #$00
        sta     LD129
        ldy     #$34
        lda     #$28
        ldx     #$D1
        jsr     LDBE0
        lda     #$01
        sta     LD12C
        ldy     #$36
        lda     #$2A
        ldx     #$D1
        jsr     LDBE0
        jsr     LDFDD
        ldy     #$38
        lda     #$C7
        ldx     #$D1
        jsr     LDBE0
        lda     #$00
        sta     LD429
        lda     #$FF
        sta     LD44C
        jsr     LE16C
        lda     LD5E0
        bne     LD66E
        jsr     LE3A3
LD66E:  jsr     LE28D
        inc     LD5E0
LD674:  jsr     LD986
        bmi     LD674
        beq     LD687
        ldy     #$39
        lda     #$C7
        ldx     #$D1
        jsr     LDBE0
        jmp     LD61C

LD687:  lda     LD363
        bmi     LD674
        lda     #$01
        sta     LD129
        ldy     #$34
        lda     #$28
        ldx     #$D1
        jsr     LDBE0
        lda     LD363
        sta     LD417
        lda     LD1C7
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$E3
        ldx     #$D1
        jsr     LDBE0
        lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$55
        ldx     #$D2
        jsr     LDBE0
        ldy     #$0E
        lda     #$51
        ldx     #$D2
        jsr     LDBE0
        lda     #$C1
        ldx     #$D2
        jsr     LE09A
        jsr     LE559
        jsr     LE2B1
LD6E6:  jsr     LD986
        bmi     LD6E6
        beq     LD6F9
        ldy     #$39
        lda     #$C7
        ldx     #$D1
        jsr     LDBE0
        jmp     LD61C

LD6F9:  lda     LD363
        bmi     LD6E6
        tax
        lda     LD3FF,x
        sta     LD418
        lda     #$00
        sta     LD44C
        lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$11
        ldx     #$D2
        jsr     LDBE0
        ldy     #$39
        lda     #$C7
        ldx     #$D1
        jsr     LDBE0
        ldy     #$11
        lda     #$32
        ldx     #$D4
        jsr     LDBE0
LD734:  lda     #$00
        ldx     #$00
        jsr     LEB84
        beq     LD740
        jmp     LD61C

LD740:  lda     #$00
        sta     LD44D
        ldx     LD417
        lda     LD3F7,x
        sta     $0C42
        jsr     L1291
        beq     LD77E
        cmp     #$52
        bne     LD763
        jsr     L0D5F
        jsr     LE674
        jsr     LE559
        jmp     LD7AD

LD763:  lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$2A
        ldx     #$D4
        jsr     LDBE0
        jmp     LD734

LD77E:  lda     $1300
        and     #$0F
        bne     LD798
        lda     $1301
        cmp     #$52
        bne     LD763
        jsr     L0D5F
        jsr     LE674
        jsr     LE559
        jmp     LD7AD

LD798:  lda     $1300
        and     #$0F
        sta     $1300
        lda     #$00
        ldx     #$13
        jsr     LE0FE
        jsr     LE674
        jsr     LE559
LD7AD:  lda     LD417
        jsr     LE3B8
        jsr     LE5E1
        jsr     LE63F
        ldx     LD418
        lda     LD3F7,x
        tay
        ldx     #$00
        lda     #$01
        jsr     LEB84
        beq     LD7CC
        jmp     LD61C

LD7CC:  ldx     LD418
        lda     LD3F7,x
        sta     $0C42
        jsr     L1291
        beq     LD7E1
        cmp     #$52
        beq     LD7F2
        jmp     LD852

LD7E1:  lda     $1300
        and     #$0F
        bne     LD7F2
        lda     $1301
        cmp     #$52
        beq     LD7F2
        jmp     LD852

LD7F2:  ldx     LD418
        lda     LD3F7,x
        and     #$0F
        beq     LD817
        lda     LD3F7,x
        jsr     L0D26
        ldy     #$FF
        lda     (L0006),y
        beq     LD817
        cmp     #$FF
        beq     LD817
        ldy     #$FE
        lda     (L0006),y
        and     #$08
        bne     LD817
        jmp     LD8A9

LD817:  lda     $1300
        and     #$0F
        bne     LD82C
        ldx     LD418
        lda     LD3F7,x
        and     #$F0
        tax
        lda     #$07
        jmp     LD83C

LD82C:  sta     $1300
        lda     #$00
        ldx     #$13
        jsr     LE0FE
        ldx     #$00
        ldy     #$13
        lda     #$02
LD83C:  jsr     LEB84
        cmp     #$01
        beq     LD847
        cmp     #$02
        beq     LD84A
LD847:  jmp     LD61C

LD84A:  lda     LD451
        bne     LD852
        jmp     LD8A9

LD852:  ldx     LD418
        lda     LD3F7,x
        and     #$0F
        beq     LD87C
        lda     LD3F7,x
        jsr     L0D26
        ldy     #$FE
        lda     (L0006),y
        and     #$08
        bne     LD87C
        ldy     #$FF
        lda     (L0006),y
        beq     LD87C
        cmp     #$FF
        beq     LD87C
        lda     #$03
        jsr     LEB84
        jmp     LD61C

LD87C:  ldy     #$0E
        lda     #$5D
        ldx     #$D2
        jsr     LDBE0
        lda     #$D9
        ldx     #$D2
        jsr     LE09A
        jsr     L0CAF
        bcc     LD8A9
        cmp     #$2B
        beq     LD89F
        lda     #$04
        jsr     LEB84
        beq     LD852
        jmp     LD61C

LD89F:  lda     #$05
        jsr     LEB84
        beq     LD852
        jmp     LD61C

LD8A9:  lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$11
        ldx     #$D2
        jsr     LDBE0
        lda     LD417
        cmp     LD418
        bne     LD8DF
        tax
        lda     LD3F7,x
        pha
        jsr     L0CED
        pla
        tay
        ldx     #$80
        lda     #$00
        jsr     LEB84
        beq     LD8DF
        jmp     LD61C

LD8DF:  jsr     L0DB5
        lda     #$00
        sta     LD421
        sta     LD422
        lda     #$07
        sta     LD423
        jsr     LE4BF
        jsr     LE4EC
        jsr     LE507
        jsr     LE694
LD8FB:  jsr     LE4A8
        lda     #$00
        jsr     L0ED7
        cmp     #$01
        beq     LD97A
        jsr     LE4EC
        lda     LD417
        cmp     LD418
        bne     LD928
        tax
        lda     LD3F7,x
        pha
        jsr     L0CED
        pla
        tay
        ldx     #$80
        lda     #$01
        jsr     LEB84
        beq     LD928
        jmp     LD61C

LD928:  jsr     LE491
        lda     #$80
        jsr     L0ED7
        bmi     LD955
        bne     LD97A
        jsr     LE507
        lda     LD417
        cmp     LD418
        bne     LD8FB
        tax
        lda     LD3F7,x
        pha
        jsr     L0CED
        pla
        tay
        ldx     #$80
        lda     #$00
        jsr     LEB84
        beq     LD8FB
        jmp     LD61C

LD955:  jsr     LE507
        jsr     L10FB
        ldx     LD417
        lda     LD3F7,x
        jsr     L0CED
        ldx     LD418
        cpx     LD417
        beq     LD972
        lda     LD3F7,x
        jsr     L0CED
LD972:  lda     #$09
        jsr     LEB84
        jmp     LD61C

LD97A:  jsr     L10FB
        lda     #$0A
        jsr     LEB84
        jmp     LD61C

        brk
LD986:  ldy     #$03
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
        ldy     #$04
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
LD998:  bit     LD368
        bpl     LD9A7
        dec     LD367
        bne     LD9A7
        lda     #$00
        sta     LD368
LD9A7:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$01
        bne     LD9BA
        jmp     LDAB1

LD9BA:  cmp     #$03
        bne     LD998
        jmp     LD9D5

LD9C1:  .byte   $83
LD9C2:  .byte   $0C
        .byte   $83
        .byte   $0C
        .byte   $83
        .byte   $0C
        .byte   $83
        .byte   $0C
        .byte   $83
        .byte   $0C
        sty     $0C
        .byte   $3C
        .byte   $DA
        .byte   $77
        .byte   $DA
LD9D1:  brk
        asl     a
        .byte   $0C
        .byte   $10
LD9D5:  lda     LD12F
        bne     LD9E6
        lda     LD12E
        and     #$7F
        cmp     #$1B
        beq     LD9E6
        jmp     LDBFC

LD9E6:  lda     #$01
        sta     LD12F
        lda     LD12E
        sta     LD00E
        lda     LD12F
        sta     LD00F
        ldy     #$32
        lda     #$0C
        ldx     #$D0
        jsr     LDBE0
LDA00:  ldx     LD00C
        bne     LDA06
        rts

LDA06:  dex
        lda     LD9D1,x
        tax
        ldy     LD00D
        dey
        tya
        asl     a
        sta     LDA3A
        txa
        clc
        adc     LDA3A
        tax
        lda     LD9C1,x
        sta     LDA3A
        lda     LD9C2,x
        sta     LDA3B
        jsr     LDA35
        ldy     #$33
        lda     #$0C
        ldx     #$D0
        jsr     LDBE0
        jmp     LD986

LDA35:  tsx
        stx     LD00B
        .byte   $4C
LDA3A:  .byte   $34
LDA3B:  .byte   $12
        lda     LD451
        bne     LDA42
        rts

LDA42:  lda     #$00
        sta     LD12C
        ldy     #$36
        lda     #$2A
        ldx     #$D1
        jsr     LDBE0
        lda     LD451
        sta     LD12B
        lda     #$01
        sta     LD12C
        ldy     #$36
        lda     #$2A
        ldx     #$D1
        jsr     LDBE0
        lda     #$00
        sta     LD451
        lda     LD18D
        jsr     LE137
        lda     #$8B
        ldx     #$D2
        jsr     LE0B4
        rts

        lda     LD451
        beq     LDA7D
        rts

LDA7D:  lda     #$00
        sta     LD12C
        ldy     #$36
        lda     #$2A
        ldx     #$D1
        jsr     LDBE0
        lda     #$02
        sta     LD12B
        lda     #$01
        sta     LD12C
        ldy     #$36
        lda     #$2A
        ldx     #$D1
        jsr     LDBE0
        lda     #$01
        sta     LD451
        lda     LD18D
        jsr     LE137
        lda     #$78
        ldx     #$D2
        jsr     LE0B4
        rts

LDAB1:  ldy     #$40
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        lda     LD132
        bne     LDAC0
        rts

LDAC0:  cmp     #$01
        bne     LDAD0
        ldy     #$31
        lda     #$0C
        ldx     #$D0
        jsr     LDBE0
        jmp     LDA00

LDAD0:  cmp     #$02
        bne     LDAD7
        jmp     LDADA

LDAD7:  lda     #$FF
        rts

LDADA:  lda     LD133
        cmp     LD18D
        bne     LDAE5
        jmp     LDAEE

LDAE5:  cmp     LD1C7
        bne     LDAED
        jmp     LDB55

LDAED:  rts

LDAEE:  lda     LD18D
        sta     LD12D
        jsr     LE137
        ldy     #$46
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        ldy     #$0E
        lda     #$32
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        cmp     #$80
        beq     LDB19
        jmp     LDB2F

LDB19:  ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        jsr     LDD38
        rts

LDB2F:  ldy     #$13
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        cmp     #$80
        bne     LDB52
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        jsr     LDCAC
        rts

LDB52:  lda     #$FF
        rts

LDB55:  lda     LD1C7
        sta     LD12D
        jsr     LE137
        ldy     #$46
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        ldy     #$0E
        lda     #$32
        ldx     #$D1
        jsr     LDBE0
        lsr     LD135
        ror     LD134
        lsr     LD135
        ror     LD134
        lsr     LD135
        ror     LD134
        lda     LD134
        cmp     LD375
        bcc     LDB98
        lda     LD363
        jsr     LE14D
        lda     #$FF
        sta     LD363
        jmp     LDBCA

LDB98:  cmp     LD363
        bne     LDBCD
        bit     LD368
        bpl     LDBC0
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        lda     #$00
        rts

LDBC0:  lda     #$FF
        sta     LD368
        lda     #$64
        sta     LD367
LDBCA:  lda     #$FF
        rts

LDBCD:  pha
        lda     LD363
        bmi     LDBD6
        jsr     LE14D
LDBD6:  pla
        sta     LD363
        jsr     LE14D
        jmp     LDBC0

LDBE0:  sty     LDBF2
        sta     LDBF3
        stx     LDBF4
        sta     RAMRDON
        sta     RAMWRTON
        jsr     MGTK
LDBF2:  brk
LDBF3:  brk
LDBF4:  brk
        sta     RAMRDOFF
        sta     RAMWRTOFF
        rts

LDBFC:  lda     LD12E
        and     #$7F
        cmp     #$44
        beq     LDC09
        cmp     #$64
        bne     LDC2D
LDC09:  lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        ldy     #$11
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        lda     #$01
        rts

LDC2D:  cmp     #$0D
        bne     LDC55
        lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        lda     #$00
        rts

LDC55:  bit     LD44C
        bmi     LDC5D
        jmp     LDCA9

LDC5D:  cmp     #$0A
        bne     LDC85
        lda     LD1C7
        jsr     LE137
        lda     LD363
        bmi     LDC6F
        jsr     LE14D
LDC6F:  inc     LD363
        lda     LD363
        cmp     LD375
        bcc     LDC7F
        lda     #$00
        sta     LD363
LDC7F:  jsr     LE14D
        jmp     LDCA9

LDC85:  cmp     #$0B
        bne     LDCA9
        lda     LD1C7
        jsr     LE137
        lda     LD363
        bmi     LDC9C
        jsr     LE14D
        dec     LD363
        bpl     LDCA3
LDC9C:  ldx     LD375
        dex
        stx     LD363
LDCA3:  lda     LD363
        jsr     LE14D
LDCA9:  lda     #$FF
        rts

LDCAC:  lda     #$00
        sta     LDD37
LDCB1:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LDD14
        lda     LD18D
        sta     LD12D
        ldy     #$46
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        ldy     #$0E
        lda     #$32
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        cmp     #$80
        beq     LDCEE
        lda     LDD37
        beq     LDCF6
        jmp     LDCB1

LDCEE:  lda     LDD37
        bne     LDCF6
        jmp     LDCB1

LDCF6:  ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        lda     LDD37
        clc
        adc     #$80
        sta     LDD37
        jmp     LDCB1

LDD14:  lda     LDD37
        beq     LDD1C
        lda     #$FF
        rts

LDD1C:  lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        lda     #$01
        rts

LDD37:  brk
LDD38:  lda     #$00
        sta     LDDC3
LDD3D:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LDDA0
        lda     LD18D
        sta     LD12D
        ldy     #$46
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        ldy     #$0E
        lda     #$32
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        cmp     #$80
        beq     LDD7A
        lda     LDDC3
        beq     LDD82
        jmp     LDD3D

LDD7A:  lda     LDDC3
        bne     LDD82
        jmp     LDD3D

LDD82:  ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        lda     LDDC3
        clc
        adc     #$80
        sta     LDDC3
        jmp     LDD3D

LDDA0:  lda     LDDC3
        beq     LDDA8
        lda     #$FF
        rts

LDDA8:  lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        lda     #$00
        rts

LDDC3:  brk
        ldy     #$26
        lda     #$00
        ldx     #$00
        jsr     LDBE0
        ldy     #$24
        lda     #$AE
        ldx     #$D5
        jsr     LDBE0
        ldy     #$25
        lda     #$00
        ldx     #$00
        jsr     LDBE0
        rts

LDDE0:  ldy     #$26
        lda     #$00
        ldx     #$00
        jsr     LDBE0
        ldy     #$24
        lda     #$7C
        ldx     #$D5
        jsr     LDBE0
        ldy     #$25
        lda     #$00
        ldx     #$00
        jsr     LDBE0
        rts

LDDFC:  sta     $0C5A
        lda     #$00
        sta     $0C5D
        sta     $0C5E
        lda     #$00
        sta     $0C5B
        lda     #$1C
        sta     $0C5C
        jsr     L12AF
        beq     LDE19
        lda     #$FF
        rts

LDE19:  lda     $1C01
        cmp     #$E0
        beq     LDE23
        jmp     LDE4D

LDE23:  lda     $1C02
        cmp     #$70
        beq     LDE31
        cmp     #$60
        beq     LDE31
LDE2E:  lda     #$FF
        rts

LDE31:  lda     LD375
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     #$77
        tay
        lda     #$D3
        adc     #$00
        tax
        tya
        jsr     LDE9F
        lda     #$80
        sta     LD44E
        lda     #$00
        rts

LDE4D:  cmp     #$A5
        bne     LDE2E
        lda     $1C02
        cmp     #$27
        bne     LDE2E
        lda     $0C5A
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$30
        ldx     LD497
        sta     LD4F1,x
        lda     $0C5A
        and     #$80
        asl     a
        rol     a
        adc     #$31
        ldx     LD498
        sta     LD4F1,x
        lda     LD375
        asl     a
        asl     a
        asl     a
        asl     a
        tay
        ldx     #$00
LDE83:  lda     LD4F1,x
        sta     LD377,y
        iny
        inx
        cpx     LD4F1
        bne     LDE83
        lda     LD4F1,x
        sta     LD377,y
        lda     #$43
        sta     $0300
        lda     #$00
        rts

        brk
LDE9F:  sta     L0006
        stx     $07
        lda     #$02
        sta     $0C5D
        lda     #$00
        sta     $0C5E
        jsr     L12AF
        beq     LDEBE
        ldy     #$00
        lda     #$01
        sta     (L0006),y
        iny
        lda     #$20
        sta     (L0006),y
        rts

LDEBE:  ldy     #$00
        ldx     #$00
LDEC2:  lda     $1C06,x
        sta     (L0006),y
        inx
        iny
        cpx     $1C06
        bne     LDEC2
        lda     $1C06,x
        sta     (L0006),y
        lda     $1C06
        cmp     #$0F
        bcs     LDEE6
        ldy     #$00
        lda     (L0006),y
        clc
        adc     #$01
        sta     (L0006),y
        lda     (L0006),y
        tay
LDEE6:  lda     #$3A
        sta     (L0006),y
        rts

LDEEB:  sta     LDF6F
        stx     LDF70
        ldx     #$07
        lda     #$20
LDEF5:  sta     LD457,x
        dex
        bne     LDEF5
        lda     #$00
        sta     LDF72
        ldy     #$00
        ldx     #$00
LDF04:  lda     #$00
        sta     LDF71
LDF09:  lda     LDF6F
        cmp     LDF67,x
        lda     LDF70
        sbc     LDF68,x
        bpl     LDF45
        lda     LDF71
        bne     LDF25
        bit     LDF72
        bmi     LDF25
        lda     #$20
        bne     LDF38
LDF25:  cmp     #$0A
        bcc     LDF2F
        clc
        adc     #$37
        jmp     LDF31

LDF2F:  adc     #$30
LDF31:  pha
        lda     #$80
        sta     LDF72
        pla
LDF38:  sta     LD459,y
        iny
        inx
        inx
        cpx     #$08
        beq     LDF5E
        jmp     LDF04

LDF45:  inc     LDF71
        lda     LDF6F
        sec
        sbc     LDF67,x
        sta     LDF6F
        lda     LDF70
        sbc     LDF68,x
        sta     LDF70
        jmp     LDF09

LDF5E:  lda     LDF6F
        ora     #$30
        sta     LD459,y
        rts

LDF67:  .byte   $10
LDF68:  .byte   $27
        inx
        .byte   $03
        .byte   $64
        brk
        asl     a
        brk
LDF6F:  brk
LDF70:  brk
LDF71:  brk
LDF72:  brk
LDF73:  ldx     $BF31
LDF76:  lda     $BF32,x
        cmp     #$BF
        beq     LDF81
        dex
        bpl     LDF76
        rts

LDF81:  lda     $BF33,x
        sta     $BF32,x
        cpx     $BF31
        beq     LDF90
        inx
        jmp     LDF81

LDF90:  dec     $BF31
        rts

        inc     $BF31
        ldx     $BF31
        lda     #$BF
        sta     $BF32,x
        rts

LDFA0:  ldy     #$38
        lda     #$8D
        ldx     #$D1
        jsr     LDBE0
        lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$12
        lda     #$01
        ldx     #$D2
        jsr     LDBE0
        ldy     #$12
        lda     #$09
        ldx     #$D2
        jsr     LDBE0
        ldy     #$03
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
        ldy     #$04
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
        rts

LDFDD:  lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$11
        ldx     #$D2
        jsr     LDBE0
        ldy     #$11
        lda     #$19
        ldx     #$D2
        jsr     LDBE0
        lda     LD451
        bne     LE00D
        lda     #$8B
        ldx     #$D2
        jsr     LE0B4
        jmp     LE014

LE00D:  lda     #$78
        ldx     #$D2
        jsr     LE0B4
LE014:  ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$12
        lda     #$21
        ldx     #$D2
        jsr     LDBE0
        ldy     #$12
        lda     #$29
        ldx     #$D2
        jsr     LDBE0
        jsr     LE078
        jsr     LE089
        ldy     #$0E
        lda     #$4D
        ldx     #$D2
        jsr     LDBE0
        lda     #$9C
        ldx     #$D2
        jsr     LE09A
        ldy     #$0E
        lda     #$51
        ldx     #$D2
        jsr     LDBE0
        lda     #$AE
        ldx     #$D2
        jsr     LE09A
        ldy     #$0E
        lda     #$7F
        ldx     #$D4
        jsr     LDBE0
        lda     #$1B
        ldx     #$D3
        jsr     LE09A
        ldy     #$03
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
        ldy     #$04
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
        rts

LE078:  ldy     #$0E
        lda     #$31
        ldx     #$D2
        jsr     LDBE0
        lda     #$35
        ldx     #$D2
        jsr     LE09A
        rts

LE089:  ldy     #$0E
        lda     #$45
        ldx     #$D2
        jsr     LDBE0
        lda     #$69
        ldx     #$D2
        jsr     LE09A
        rts

LE09A:  sta     $0A
        stx     $0B
        ldy     #$00
        lda     ($0A),y
        sta     $0C
        inc     $0A
        bne     LE0AA
        inc     $0B
LE0AA:  ldy     #$19
        lda     #$0A
        ldx     #$00
        jsr     LDBE0
        rts

LE0B4:  sta     L0006
        stx     $07
        ldy     #$00
        lda     (L0006),y
        sta     $08
        inc     L0006
        bne     LE0C4
        inc     $07
LE0C4:  ldy     #$18
        lda     #$06
        ldx     #$00
        jsr     LDBE0
        lsr     $0A
        ror     $09
        lda     #$01
        sta     LE0FD
        lda     #$F4
        lsr     LE0FD
        ror     a
        sec
        sbc     $09
        sta     LD249
        lda     LE0FD
        sbc     $0A
        sta     LD24A
        ldy     #$0E
        lda     #$49
        ldx     #$D2
        jsr     LDBE0
        ldy     #$19
        lda     #$06
        ldx     #$00
        jsr     LDBE0
        rts

LE0FD:  brk
LE0FE:  stx     $0B
        sta     $0A
        ldy     #$00
        lda     ($0A),y
        tay
        bne     LE10A
        rts

LE10A:  dey
        beq     LE10F
        bpl     LE110
LE10F:  rts

LE110:  lda     ($0A),y
        and     #$7F
        cmp     #$2F
        beq     LE11C
        cmp     #$2E
        bne     LE120
LE11C:  dey
        jmp     LE10A

LE120:  iny
        lda     ($0A),y
        and     #$7F
        cmp     #$41
        bcc     LE132
        cmp     #$5B
        bcs     LE132
        clc
        adc     #$20
        sta     ($0A),y
LE132:  dey
        jmp     LE10A

        brk
LE137:  sta     LD15B
        ldy     #$3C
        lda     #$5B
        ldx     #$D1
        jsr     LDBE0
        ldy     #$04
        lda     #$5E
        ldx     #$D1
        jsr     LDBE0
        rts

LE14D:  asl     a
        asl     a
        asl     a
        sta     LD35D
        clc
        adc     #$07
        sta     LD361
        ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$5B
        ldx     #$D3
        jsr     LDBE0
        rts

LE16C:  lda     #$00
        sta     LD44E
        sta     $0C42
        jsr     L1291
        beq     LE17A
        brk
LE17A:  lda     #$00
        sta     LE263
        sta     LD375
LE182:  lda     #$13
        sta     $07
        lda     #$00
        sta     L0006
        sta     LE264
        lda     LE263
        asl     a
        rol     LE264
        asl     a
        rol     LE264
        asl     a
        rol     LE264
        asl     a
        rol     LE264
        clc
        adc     L0006
        sta     L0006
        lda     LE264
        adc     $07
        sta     $07
        ldy     #$00
        lda     (L0006),y
        and     #$0F
        bne     LE20D
        lda     (L0006),y
        beq     LE1CC
        iny
        lda     (L0006),y
        cmp     #$28
        bne     LE1CD
        dey
        lda     (L0006),y
        jsr     LE265
        lda     #$28
        bcc     LE1CD
        jmp     LE255

LE1CC:  rts

LE1CD:  pha
        ldy     #$00
        lda     (L0006),y
        jsr     LE285
        ldx     LD375
        sta     LD3F7,x
        pla
        cmp     #$52
        bne     LE1EA
        lda     LD3F7,x
        and     #$F0
        jsr     LDDFC
        beq     LE207
LE1EA:  lda     LD375
        asl     a
        asl     a
        asl     a
        asl     a
        tay
        ldx     #$00
LE1F4:  lda     LD313,x
        sta     LD377,y
        iny
        inx
        cpx     LD313
        bne     LE1F4
        lda     LD313,x
        sta     LD377,y
LE207:  inc     LD375
        jmp     LE255

LE20D:  ldx     LD375
        ldy     #$00
        lda     (L0006),y
        and     #$70
        cmp     #$30
        bne     LE21D
        jmp     LE255

LE21D:  ldy     #$00
        lda     (L0006),y
        jsr     LE285
        ldx     LD375
        sta     LD3F7,x
        lda     LD375
        asl     a
        asl     a
        asl     a
        asl     a
        tax
        ldy     #$00
        lda     (L0006),y
        and     #$0F
        sta     LD377,x
        sta     LE264
LE23E:  inx
        iny
        cpy     LE264
        beq     LE24D
        lda     (L0006),y
        sta     LD377,x
        jmp     LE23E

LE24D:  lda     (L0006),y
        sta     LD377,x
        inc     LD375
LE255:  inc     LE263
        lda     LE263
        cmp     #$08
        beq     LE262
        jmp     LE182

LE262:  rts

LE263:  brk
LE264:  brk
LE265:  and     #$F0
        sta     LE28C
        ldx     $BF31
LE26D:  lda     $BF32,x
        and     #$F0
        cmp     LE28C
        beq     LE27C
        dex
        bpl     LE26D
LE27A:  sec
        rts

LE27C:  lda     $BF32,x
        and     #$0F
        bne     LE27A
        clc
        rts

LE285:  jsr     LE265
        lda     $BF32,x
        rts

LE28C:  brk
LE28D:  lda     LD1C7
        jsr     LE137
        lda     #$00
        sta     LE2B0
LE298:  lda     LE2B0
        jsr     LE39A
        lda     LE2B0
        jsr     LE31B
        inc     LE2B0
        lda     LE2B0
        cmp     LD375
        bne     LE298
        rts

LE2B0:  brk
LE2B1:  lda     LD1C7
        jsr     LE137
        lda     LD363
        asl     a
        tax
        lda     LD407,x
        sta     LE318
        lda     LD408,x
        sta     LE319
        lda     LD375
        sta     LD376
        lda     #$00
        sta     LD375
        sta     LE317
LE2D6:  lda     LE317
        asl     a
        tax
        lda     LD407,x
        cmp     LE318
        bne     LE303
        lda     LD408,x
        cmp     LE319
        bne     LE303
        lda     LE317
        ldx     LD375
        sta     LD3FF,x
        lda     LD375
        jsr     LE39A
        lda     LE317
        jsr     LE31B
        inc     LD375
LE303:  inc     LE317
        lda     LE317
        cmp     LD376
        beq     LE311
        jmp     LE2D6

LE311:  lda     #$FF
        sta     LD363
        rts

LE317:  brk
LE318:  brk
LE319:  brk
        brk
LE31B:  sta     LE399
        lda     #$08
        sta     LD36D
        ldy     #$0E
        lda     #$6D
        ldx     #$D3
        jsr     LDBE0
        ldx     LE399
        lda     LD3F7,x
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$30
        sta     LD41C
        lda     #$1B
        ldx     #$D4
        jsr     LE09A
        lda     #$28
        sta     LD36D
        ldy     #$0E
        lda     #$6D
        ldx     #$D3
        jsr     LDBE0
        ldx     LE399
        lda     LD3F7,x
        and     #$80
        asl     a
        rol     a
        clc
        adc     #$31
        sta     LD41A
        lda     #$19
        ldx     #$D4
        jsr     LE09A
        lda     #$41
        sta     LD36D
        ldy     #$0E
        lda     #$6D
        ldx     #$D3
        jsr     LDBE0
        lda     LE399
        asl     a
        asl     a
        asl     a
        asl     a
        clc
        adc     #$77
        sta     L0006
        lda     #$D3
        adc     #$00
        sta     $07
        lda     L0006
        ldx     $07
        jsr     LE0FE
        lda     L0006
        ldx     $07
        jsr     LE09A
        rts

LE399:  brk
LE39A:  asl     a
        asl     a
        asl     a
        adc     #$08
        sta     LD36F
        rts

LE3A3:  lda     #$00
        sta     LE3B7
LE3A8:  jsr     LE3B8
        inc     LE3B7
        lda     LE3B7
        cmp     LD375
        bne     LE3A8
        rts

LE3B7:  brk
LE3B8:  pha
        tax
        lda     LD3F7,x
        and     #$0F
        beq     LE3CC
        lda     LD3F7,x
        and     #$F0
        jsr     L0D26
        jmp     LE3DA

LE3CC:  pla
        asl     a
        tax
        lda     #$18
        sta     LD407,x
        lda     #$01
        sta     LD408,x
        rts

LE3DA:  ldy     #$07
        lda     (L0006),y
        bne     LE3E3
        jmp     LE44A

LE3E3:  lda     #$00
        sta     LE448
        ldy     #$FC
        lda     (L0006),y
        sta     LE449
        beq     LE3F6
        lda     #$80
        sta     LE448
LE3F6:  ldy     #$FD
        lda     (L0006),y
        tax
        bne     LE402
        bit     LE448
        bpl     LE415
LE402:  stx     LE448
        pla
        asl     a
        tax
        lda     LE448
        sta     LD407,x
        lda     LE449
        sta     LD408,x
        rts

LE415:  ldy     #$FF
        lda     (L0006),y
        sta     L0006
        lda     #$00
        sta     $42
        sta     $44
        sta     $45
        sta     $46
        sta     $47
        pla
        pha
        tax
        lda     LD3F7,x
        and     #$F0
        sta     $43
        jsr     LE445
        stx     LE448
        pla
        asl     a
        tax
        lda     LE448
        sta     LD407,x
        tya
        sta     LD408,x
        rts

LE445:  jmp     (L0006)

LE448:  brk
LE449:  brk
LE44A:  ldy     #$FF
        lda     (L0006),y
        clc
        adc     #$03
        sta     L0006
        pla
        pha
        tax
        lda     LD3F7,x
        and     #$F0
        jsr     L0D51
        sta     LE47D
        jsr     LE477
        brk
        .byte   $7C
        cpx     $68
        asl     a
        tax
        lda     LE482
        sta     LD407,x
        lda     LE483
        sta     LD408,x
        rts

LE477:  jmp     (L0006)

        brk
        brk
        .byte   $03
LE47D:  ora     ($81,x)
        cpx     L0000
        brk
LE482:  brk
LE483:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LE491:  lda     LD18D
        jsr     LE137
        ldy     #$0E
        lda     #$61
        ldx     #$D2
        jsr     LDBE0
        lda     #$F2
        ldx     #$D2
        jsr     LE09A
        rts

LE4A8:  lda     LD18D
        jsr     LE137
        ldy     #$0E
        lda     #$65
        ldx     #$D2
        jsr     LDBE0
        lda     #$02
        ldx     #$D3
        jsr     LE09A
        rts

LE4BF:  lda     LD18D
        jsr     LE137
        lda     LD417
        asl     a
        tay
        lda     LD408,y
        tax
        lda     LD407,y
        jsr     LDEEB
        ldy     #$0E
        lda     #$67
        ldx     #$D4
        jsr     LDBE0
        lda     #$B8
        ldx     #$D4
        jsr     LE09A
        lda     #$57
        ldx     #$D4
        jsr     LE09A
        rts

LE4EC:  jsr     LE522
        ldy     #$0E
        lda     #$5F
        ldx     #$D4
        jsr     LDBE0
        lda     #$99
        ldx     #$D4
        jsr     LE09A
        .byte   $A9
LE500:  .byte   $57
        ldx     #$D4
        jsr     LE09A
        rts

LE507:  jsr     LE522
        ldy     #$0E
        lda     #$63
        ldx     #$D4
        jsr     LDBE0
        lda     #$A7
        ldx     #$D4
        jsr     LE09A
        lda     #$57
        ldx     #$D4
        jsr     LE09A
        rts

LE522:  lda     LD18D
        jsr     LE137
        lda     LD422
        sta     LE558
        lda     LD421
        asl     a
        rol     LE558
        asl     a
        rol     LE558
        asl     a
        rol     LE558
        ldx     LD423
        clc
        adc     LE550,x
        tay
        lda     LE558
        adc     #$00
        tax
        tya
        jsr     LDEEB
        rts

LE550:  .byte   $07
        asl     $05
        .byte   $04
        .byte   $03
        .byte   $02
        ora     (L0000,x)
LE558:  brk
LE559:  lda     LD18D
        jsr     LE137
        ldy     #$0E
        lda     #$6B
        ldx     #$D4
        jsr     LDBE0
        lda     #$CD
        ldx     #$D4
        jsr     LE09A
        ldx     LD417
        lda     LD3F7,x
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$30
        sta     LD41C
        ldx     LD417
        lda     LD3F7,x
        and     #$80
        clc
        rol     a
        rol     a
        clc
        adc     #$31
        sta     LD41A
        ldy     #$0E
        lda     #$6F
        ldx     #$D4
        jsr     LDBE0
        lda     #$E2
        ldx     #$D4
        jsr     LE09A
        lda     #$1B
        ldx     #$D4
        jsr     LE09A
        lda     #$E8
        ldx     #$D4
        jsr     LE09A
        lda     #$19
        ldx     #$D4
        jsr     LE09A
        bit     LD44D
        bpl     LE5C6
        bvc     LE5C5
        lda     LD44D
        and     #$0F
        beq     LE5C6
LE5C5:  rts

LE5C6:  lda     #$54
        ldx     #$D4
        jsr     LE09A
        ldx     $1300
LE5D0:  lda     $1300,x
        sta     LD43A,x
        dex
        bpl     LE5D0
        lda     #$3A
        ldx     #$D4
        jsr     LE09A
        rts

LE5E1:  lda     LD18D
        jsr     LE137
        ldy     #$0E
        lda     #$73
        ldx     #$D4
        jsr     LDBE0
        lda     #$D5
        ldx     #$D4
        jsr     LE09A
        ldx     LD418
        lda     LD3F7,x
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$30
        sta     LD41C
        ldx     LD418
        lda     LD3F7,x
        and     #$80
        asl     a
        rol     a
        clc
        adc     #$31
        sta     LD41A
        ldy     #$0E
        lda     #$77
        ldx     #$D4
        jsr     LDBE0
        lda     #$E2
        ldx     #$D4
        jsr     LE09A
        lda     #$1B
        ldx     #$D4
        jsr     LE09A
        lda     #$E8
        ldx     #$D4
        jsr     LE09A
        lda     #$19
        ldx     #$D4
        jsr     LE09A
        rts

LE63F:  lda     LD18D
        jsr     LE137
        ldy     #$0E
        lda     #$7B
        ldx     #$D4
        jsr     LDBE0
        bit     LD44D
        bmi     LE65B
        lda     #$24
        ldx     #$D5
        jsr     LE09A
        rts

LE65B:  bvs     LE665
        lda     #$01
        ldx     #$D5
        jsr     LE09A
        rts

LE665:  lda     LD44D
        and     #$0F
        bne     LE673
        lda     #$13
        ldx     #$D5
        jsr     LE09A
LE673:  rts

LE674:  lda     LD44D
        cmp     #$C0
        beq     LE693
        lda     LD18D
        jsr     LE137
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$83
        ldx     #$D4
        jsr     LDBE0
LE693:  rts

LE694:  lda     LD18D
        jsr     LE137
        ldy     #$0E
        lda     #$8B
        ldx     #$D4
        jsr     LDBE0
        lda     #$35
        ldx     #$D5
        jsr     LE09A
        rts

        lda     LD18D
        jsr     LE137
        lda     #$0A
        sta     LE6FB
        lda     #$80
        sta     LE6FC
LE6BB:  dec     LE6FB
        beq     LE6F1
        lda     LE6FC
        eor     #$80
        sta     LE6FC
        beq     LE6D5
        ldy     #$0C
        lda     #$5A
        ldx     #$D3
        jsr     LDBE0
        beq     LE6DE
LE6D5:  ldy     #$0C
        lda     #$59
        ldx     #$D3
        jsr     LDBE0
LE6DE:  ldy     #$0E
        lda     #$8B
        ldx     #$D4
        jsr     LDBE0
        lda     #$35
        ldx     #$D5
        jsr     LE09A
        jmp     LE6BB

LE6F1:  ldy     #$0C
        lda     #$5A
        ldx     #$D3
        jsr     LDBE0
        rts

LE6FB:  brk
LE6FC:  brk
LE6FD:  stx     LE765
        cmp     #$2B
        bne     LE71A
        jsr     L127E
        lda     #$05
        jsr     LEB84
        bne     LE714
        jsr     LE491
        lda     #$01
        rts

LE714:  jsr     L10FB
        lda     #$80
        rts

LE71A:  jsr     L127E
        lda     LD18D
        jsr     LE137
        lda     $0C5D
        ldx     $0C5E
        jsr     LDEEB
        lda     LE765
        bne     LE74B
        ldy     #$0E
        lda     #$93
        ldx     #$D4
        jsr     LDBE0
        lda     #$62
        ldx     #$D5
        jsr     LE09A
        lda     #$57
        ldx     #$D4
        jsr     LE09A
        lda     #$00
        rts

LE74B:  ldy     #$0E
        lda     #$8F
        ldx     #$D4
        jsr     LDBE0
        lda     #$48
        ldx     #$D5
        jsr     LE09A
        lda     #$57
        ldx     #$D4
        jsr     LE09A
        lda     #$00
        rts

LE765:  brk
        sta     L0006
        sta     $08
        stx     $07
        stx     $09
        inc     $09
        lda     #$00
        sta     $0C5B
        lda     #$1C
        sta     $0C5C
LE77A:  jsr     L12AF
        beq     LE789
        ldx     #$00
        jsr     LE6FD
        beq     LE789
        bpl     LE77A
        rts

LE789:  sta     RAMRDOFF
        sta     RAMWRTON
        ldy     #$FF
        iny
LE792:  lda     $1C00,y
        sta     (L0006),y
        lda     $1D00,y
        sta     ($08),y
        iny
        bne     LE792
        sta     RAMRDOFF
        sta     RAMWRTOFF
        lda     #$00
FSUB:   rts

        sta     L0006
        sta     $08
        stx     $07
        stx     $09
        inc     $09
        lda     #$00
        sta     $0C5B
        lda     #$1C
        sta     $0C5C
        .byte   $8D
        .byte   $03
FADD:   cpy     #$8D
        .byte   $04
        cpy     #$A0
        .byte   $FF
        iny
LE7C5:  lda     (L0006),y
        sta     $1C00,y
        lda     ($08),y
        sta     $1D00,y
        iny
        bne     LE7C5
        sta     RAMRDOFF
        sta     RAMWRTOFF
LE7D8:  jsr     L12A5
        beq     LE7E6
        ldx     #$80
        jsr     LE6FD
        beq     LE7E6
        bpl     LE7D8
LE7E6:  rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        inc     a:$1F,x
        brk
        brk
        brk
        brk
        inc     a:$1F,x
        brk
        brk
        brk
        brk
        inc     a:$1F,x
        brk
        brk
        brk
        brk
        inc     a:$1F,x
        .byte   $FF
        .byte   $FF
        brk
        brk
        asl     $401F,x
        .byte   $07
        beq     LE810
LE810:  brk
        asl     $601F,x
        .byte   $03
        rts

        brk
        brk
        inc     LF01F,x
        .byte   $F3
        .byte   $4F
        brk
        brk
        inc     $F81F,x
        .byte   $F3
        .byte   $4F
        brk
        brk
        inc     $FC1F,x
        .byte   $FF
        .byte   $4F
        brk
        brk
        inc     $FC1F,x
        .byte   $FF
        .byte   $67
        brk
        brk
        inc     $FC1F,x
        .byte   $FF
        .byte   $F3
        brk
        brk
        inc     $FC1F,x
        .byte   $FF
        sbc     L0000,y
        inc     $FC1F,x
        .byte   $FF
        .byte   $FC
        brk
        brk
        inc     $FC1F,x
        .byte   $3F
        inc     a:L0000,x
        inc     $FC1F,x
        .byte   $1F
        .byte   $FF
        brk
        brk
        inc     $FC1F,x
        .byte   $1F
        .byte   $FF
        brk
        brk
        rol     $FE00,x
        .byte   $FF
        .byte   $FF
        brk
        brk
        inc     $FF03,x
        .byte   $1F
        .byte   $FF
        brk
        brk
        inc     $FF43,x
        .byte   $FF
        .byte   $FF
        brk
        brk
        asl     $FF60
        .byte   $FF
        .byte   $3F
        brk
        brk
        inc     a:$03,x
        brk
        brk
        brk
        brk
        inc     a:$03,x
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        .byte   $14
        brk
        php
        brk
        .byte   $E7
        .byte   $E7
        .byte   $07
        brk
        brk
        brk
        brk
        brk
        bit     L0000
        .byte   $17
        brk
        eor     (L0000,x)
        and     LE500
        ora     ($64,x)
        brk
        .byte   $04
        brk
        .byte   $02
        brk
        ldy     #$01
        and     L0000,x
        ora     L0000
        .byte   $03
        brk
        .byte   $9F
        ora     ($34,x)
        brk
LE8B7:  .byte   $41
LE8B8:  brk
LE8B9:  .byte   $2D
LE8BA:  brk
        brk
        jsr     L0080
        brk
        brk
        brk
        brk
        ldy     $01
        .byte   $37
        brk
        brk
        brk
        brk
        brk
        brk
        jsr     L0080
        brk
        brk
        brk
        brk
        .byte   $2F
        .byte   $02
        .byte   $BF
        brk
        .byte   $0F
        .byte   $4F
        .byte   $4B
        jsr     L2020
        jsr     L2020
        jsr     L2020
        jsr     L2020
        ora     $430E
        adc     ($6E,x)
        .byte   $63
        adc     $6C
        jsr     L2020
        jsr     L4520
        .byte   $73
        .byte   $63
        .byte   $0F
        .byte   $54
        .byte   $72
        adc     $4120,y
        .byte   $67
        adc     ($69,x)
        ror     L2020
        jsr     L2020
        eor     ($03,x)
        eor     $7365,y
        .byte   $02
        lsr     $FA6F
        brk
        and     L0000
        bit     $3001
        brk
        .byte   $FF
        brk
        .byte   $2F
        brk
        lsr     $2501,x
        brk
        bcc     LE920
        .byte   $30
LE920:  brk
        .byte   $63
        ora     ($2F,x)
        brk
        bit     $2501
        brk
        bcc     LE92C
        .byte   $30
LE92C:  brk
        and     ($01),y
        .byte   $2F
        brk
        .byte   $14
        brk
        and     L0000
        sei
        brk
        bmi     LE939
LE939:  ora     $2F00,y
        brk
        .byte   $64
        brk
        clc
        brk
LE941:  brk
LE942:  brk
LE943:  brk
        jsr     L6E49
        .byte   $73
        adc     $72
        .byte   $74
        jsr     L6F73
        adc     $72,x
        .byte   $63
        adc     $20
        .byte   $64
        adc     #$73
        .byte   $6B
        jsr     L6E61
        .byte   $64
        jsr     L6C63
        adc     #$63
        .byte   $6B
        jsr     L4B4F
        rol     $4925
        ror     $6573
        .byte   $72
        .byte   $74
        jsr     L6564
        .byte   $73
        .byte   $74
        adc     #$6E
        adc     ($74,x)
        adc     #$6F
        ror     $6420
        adc     #$73
        .byte   $6B
        .byte   $20
        .byte   $61
FMULT:  ror     $2064
        .byte   $63
        jmp     (L6369)

        .byte   $6B
        jsr     L4B4F
        .byte   $2E
LE98B:  ora     $44,x
        .byte   $6F
        jsr     L6F79
        adc     $20,x
        .byte   $77
        adc     ($6E,x)
        .byte   $74
        jsr     L6F74
        jsr     L7265
        adc     ($73,x)
        .byte   $65
LE9A0:  jsr     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        and     #$54
        pla
        adc     $20
        .byte   $64
        adc     $73
        .byte   $74
        adc     #$6E
        adc     ($74,x)
        adc     #$6F
        ror     $6420
        adc     #$73
        .byte   $6B
        jsr     L6163
        ror     L6F6E
        .byte   $74
        jsr     L6562
        jsr     L6F66
        .byte   $72
        adc     $7461
        adc     $64
        jsr     L1721
        eor     $72
        .byte   $72
        .byte   $6F
        .byte   $72
        jsr     L7564
        .byte   $72
        adc     #$6E
        .byte   $67
        jsr     L6F66
        .byte   $72
        adc     $7461
        adc     #$6E
        .byte   $67
        rol     $542B
        pla
        adc     $20
        .byte   $64
        adc     $73
        .byte   $74
        adc     #$6E
        adc     ($74,x)
        adc     #$6F
        ror     $7620
        .byte   $6F
        jmp     (L6D75)

        adc     $20
        adc     #$73
        jsr     L7277
        adc     #$74
        adc     $20
        bvs     LEA8A
        .byte   $6F
        .byte   $74
        adc     $63
        .byte   $74
        adc     $64
        .byte   $20
        .byte   $21
LEA21:  ora     $44,x
        .byte   $6F
        jsr     L6F79
        adc     $20,x
        .byte   $77
        adc     ($6E,x)
        .byte   $74
        jsr     L6F74
        jsr     L7265
        adc     ($73,x)
        .byte   $65
LEA36:  jsr     L0000
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
LEA49:  .byte   $33
        .byte   $44
        .byte   $6F
        jsr     L6F79
        adc     $20,x
        .byte   $77
        adc     ($6E,x)
        .byte   $74
        jsr     L6F74
        jsr     L6520
        .byte   $72
        adc     ($73,x)
        adc     $20
        jsr     L6874
        adc     $20
        .byte   $64
FDIV:   adc     #$73
        .byte   $6B
        jsr     L6E69
        jsr     L6C73
        .byte   $6F
        .byte   $74
        jsr     L2020
        .byte   $64
        .byte   $72
        adc     #$76
        adc     $20
        jsr     L3F20
LEA7D:  and     ($44),y
        .byte   $6F
        jsr     L6F79
        adc     $20,x
        .byte   $77
        adc     ($6E,x)
        .byte   $74
        .byte   $20
LEA8A:  .byte   $74
        .byte   $6F
        jsr     L7265
        adc     ($73,x)
        adc     $20
        .byte   $74
        pla
        adc     $20
        .byte   $64
        adc     #$73
        .byte   $6B
        jsr     L6E69
        jsr     L6C73
        .byte   $6F
        .byte   $74
        jsr     L2020
        .byte   $64
        .byte   $72
        adc     #$76
        adc     $20
        jsr     L3F20
        clc
        .byte   $54
        pla
        adc     $20
        .byte   $63
        .byte   $6F
        bvs     LEB31
        jsr     L6177
        .byte   $73
        jsr     L7573
        .byte   $63
        .byte   $63
        adc     $73
        .byte   $73
        ror     $75
        jmp     (L1B2E)

        .byte   $54
        pla
        adc     $20
        .byte   $63
        .byte   $6F
        bvs     LEB4A
        jsr     L6177
        .byte   $73
        jsr     L6F6E
        .byte   $74
        jsr     L6F63
        adc     $6C70
        adc     $74
        adc     $64
        rol     $492D
        ror     $6573
        .byte   $72
        .byte   $74
        jsr     L6F73
        adc     $72,x
        .byte   $63
        adc     $20
        .byte   $64
        adc     #$73
        .byte   $6B
        jsr     L726F
        jsr     L7270
        adc     $73
        .byte   $73
        jsr     L7345
        .byte   $63
        adc     ($70,x)
        adc     $20
        .byte   $74
        .byte   $6F
        jsr     L6163
        ror     $6563
        jmp     (L322E)

        eor     #$6E
        .byte   $73
        adc     $72
        .byte   $74
        jsr     L6564
        .byte   $73
        .byte   $74
        adc     #$6E
        adc     ($74,x)
        adc     #$6F
        ror     $6420
        adc     #$73
        .byte   $6B
        .byte   $20
ROUND:  .byte   $6F
        .byte   $72
        jsr     L7270
        .byte   $65
LEB31:  .byte   $73
        .byte   $73
        jsr     L7345
        .byte   $63
        adc     ($70,x)
        adc     $20
        .byte   $74
        .byte   $6F
        jsr     L6163
        ror     $6563
        .byte   $6C
        .byte   $2E
LEB45:  .byte   $20
LEB46:  .byte   $3F
LEB47:  .byte   $29
LEB48:  .byte   $31
LEB49:  .byte   $27
LEB4A:  .byte   $2F
LEB4B:  .byte   $17
LEB4C:  .byte   $15
LEB4D:  brk
        ora     ($02,x)
        .byte   $03
        .byte   $04
        ora     L0006
        .byte   $07
        php
        ora     #$0A
        .byte   $0B
        .byte   $0C
LEB5A:  .byte   $44
LEB5B:  sbc     #$65
        sbc     #$8B
        sbc     #$B3
        sbc     #$DD
        sbc     #$F5
        sbc     #$21
        nop
        eor     #$EA
        adc     $AFEA,x
        nop
        iny
        nop
        cpx     $EA
        .byte   $12
        .byte   $EB
LEB74:  cpy     #$C0
        sta     (L0000,x)
        .byte   $80
        .byte   $80
        sta     ($81,x)
        sta     (L0000,x)
        brk
        brk
        brk
LEB81:  brk
LEB82:  brk
LEB83:  brk
LEB84:  sta     LEB81
        stx     LEB82
        sty     LEB83
        ldy     #$03
        lda     #$37
        ldx     #$D1
FLOAT:  jsr     LDBE0
        ldy     #$04
        lda     #$37
        ldx     #$D1
        jsr     LDBE0
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$9F
        ldx     #$E8
        jsr     LDBE0
        jsr     LF0DF
        ldy     #$12
        lda     #$9F
        ldx     #$E8
        jsr     LDBE0
        ldy     #$06
        lda     #$B7
        ldx     #$E8
        jsr     LDBE0
        ldy     #$12
        lda     #$A7
        ldx     #$E8
        jsr     LDBE0
        ldy     #$12
        lda     #$AF
        ldx     #$E8
        jsr     LDBE0
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$26
        lda     #$00
        ldx     #$00
        jsr     LDBE0
        ldy     #$14
        lda     #$8F
        ldx     #$E8
        jsr     LDBE0
        ldy     #$25
        lda     #$00
        ldx     #$00
        jsr     LDBE0
        lda     #$00
        sta     LD41E
        lda     LEB81
        jsr     LF1CC
        ldy     LEB83
        ldx     LEB82
        lda     LEB81
        bne     LEC1F
        cpx     #$00
        beq     LEC5E
        jsr     LF185
        beq     LEC5E
        lda     #$0B
        bne     LEC5E
LEC1F:  cmp     #$01
        bne     LEC34
        cpx     #$00
        beq     LEC5E
        jsr     LF185
        beq     LEC30
        lda     #$0C
        bne     LEC5E
LEC30:  lda     #$01
        bne     LEC5E
LEC34:  cmp     #$02
        bne     LEC3F
        jsr     LF0E9
        lda     #$02
        bne     LEC5E
LEC3F:  cmp     #$06
        bne     FIN
        jsr     LF119
        lda     #$06
        bne     LEC5E
FIN:    cmp     #$07
        bne     LEC55
        jsr     LF149
        lda     #$07
        bne     LEC5E
LEC55:  cmp     #$08
        bne     LEC5E
        jsr     LF167
        lda     #$08
LEC5E:  ldy     #$00
LEC60:  cmp     LEB4D,y
        beq     LEC6C
        iny
        cpy     #$1E
        bne     LEC60
        ldy     #$00
LEC6C:  tya
        asl     a
        tay
        lda     LEB5A,y
        sta     LE942
        lda     LEB5B,y
        sta     LE943
        tya
        lsr     a
        tay
        lda     LEB74,y
        sta     LE941
        bit     LD41E
        bpl     LEC8C
        jmp     LED23

LEC8C:  jsr     LF0DF
        bit     LE941
        bpl     LED0A
        ldy     #$12
        lda     #$31
        ldx     #$E9
        jsr     LDBE0
        ldy     #$0E
        lda     #$39
        ldx     #$E9
        jsr     LDBE0
        lda     #$E7
        ldx     #$E8
        jsr     LE09A
        bit     LE941
        bvs     LED0A
        lda     LE941
        and     #$0F
        beq     LECEE
        ldy     #$12
        lda     #$0D
        ldx     #$E9
        jsr     LDBE0
        ldy     #$0E
        lda     #$15
        ldx     #$E9
        jsr     LDBE0
        lda     #$06
        ldx     #$E9
        jsr     LE09A
        ldy     #$12
        lda     #$19
        ldx     #$E9
        jsr     LDBE0
        ldy     #$0E
        lda     #$21
        ldx     #$E9
        jsr     LDBE0
        lda     #$0A
        ldx     #$E9
        jsr     LE09A
        jmp     LED23

LECEE:  ldy     #$12
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        ldy     #$0E
        lda     #$2D
        ldx     #$E9
        jsr     LDBE0
        lda     #$F6
        ldx     #$E8
        jsr     LE09A
        jmp     LED23

LED0A:  ldy     #$12
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        ldy     #$0E
        lda     #$2D
        ldx     #$E9
        jsr     LDBE0
        lda     #$D7
        ldx     #$E8
        jsr     LE09A
LED23:  ldy     #$0E
        lda     #$3D
        ldx     #$E9
        jsr     LDBE0
        lda     LE942
        ldx     LE943
        .byte   $20
        txs
FOUT:   .byte   $E0
LED35:  bit     LD41E
        bpl     $ED45
        jsr     LF192
        bne     LED42
        jmp     LEDF2

LED42:  jmp     LED79

        ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$01
        bne     LED58
        jmp     LEDFA

LED58:  cmp     #$03
        bne     LED35
        lda     LD12E
        and     #$7F
        bit     LE941
        bmi     LED69
        jmp     LEDE2

LED69:  cmp     #$1B
        bne     LED7E
        jsr     LF0DF
        ldy     #$11
        lda     #$31
        ldx     #$E9
        jsr     LDBE0
LED79:  lda     #$01
        jmp     LEE6A

LED7E:  bit     LE941
        bvs     LEDE2
        pha
        lda     LE941
        and     #$0F
        beq     LEDC1
        pla
        cmp     #$4E
        beq     LED9F
        cmp     #$6E
        beq     LED9F
        cmp     #$59
        beq     LEDB0
        cmp     #$79
        beq     LEDB0
        jmp     LED35

LED9F:  jsr     LF0DF
        ldy     #$11
        lda     #$19
        ldx     #$E9
        jsr     LDBE0
        lda     #$03
        jmp     LEE6A

LEDB0:  jsr     LF0DF
        ldy     #$11
        lda     #$0D
        ldx     #$E9
        jsr     LDBE0
        lda     #$02
        jmp     LEE6A

LEDC1:  pla
        cmp     #$61
        bne     LEDD7
LEDC6:  jsr     LF0DF
        ldy     #$11
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        lda     #$00
        jmp     LEE6A

LEDD7:  cmp     #$41
        beq     LEDC6
        cmp     #$0D
        beq     LEDC6
        jmp     LED35

LEDE2:  cmp     #$0D
        bne     LEDF7
        jsr     LF0DF
        ldy     #$11
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
LEDF2:  lda     #$00
        jmp     LEE6A

LEDF7:  jmp     LED35

LEDFA:  jsr     LF0B8
        ldy     #$0E
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        bit     LE941
        bpl     LEE57
        ldy     #$13
        lda     #$31
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        bne     LEE1B
        jmp     LEEF8

LEE1B:  bit     LE941
        bvs     LEE57
        lda     LE941
        and     #$0F
        beq     LEE47
        ldy     #$13
        lda     #$19
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        bne     LEE37
        jmp     LEFD8

LEE37:  ldy     #$13
        lda     #$0D
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        bne     LEE67
        jmp     LF048

LEE47:  ldy     #$13
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        bne     LEE67
        jmp     LEE88

LEE57:  ldy     #$13
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        bne     LEE67
        jmp     LEF68

LEE67:  jmp     LED35

LEE6A:  pha
        ldy     #$06
        lda     #$C7
        ldx     #$E8
        jsr     LDBE0
        ldy     #$07
        lda     #$03
        ldx     #$D0
        jsr     LDBE0
        ldy     #$11
        lda     #$9F
        ldx     #$E8
        jsr     LDBE0
        pla
        rts

LEE88:  jsr     LF0DF
        ldy     #$11
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        lda     #$00
        sta     LEEF7
LEE99:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LEEEA
        jsr     LF0B8
        ldy     #$0E
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        beq     LEECA
        lda     LEEF7
        beq     LEED2
        jmp     LEE99

LEECA:  lda     LEEF7
        bne     LEED2
        jmp     LEE99

LEED2:  jsr     LF0DF
        ldy     #$11
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        lda     LEEF7
        clc
        adc     #$80
        sta     LEEF7
        jmp     LEE99

LEEEA:  lda     LEEF7
        beq     LEEF2
        jmp     LED35

LEEF2:  lda     #$00
        jmp     LEE6A

LEEF7:  brk
LEEF8:  jsr     LF0DF
        ldy     #$11
        lda     #$31
        ldx     #$E9
        jsr     LDBE0
        lda     #$00
        sta     LEF67
LEF09:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LEF5A
        jsr     LF0B8
        ldy     #$0E
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$31
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        beq     LEF3A
        lda     LEF67
        beq     LEF42
        jmp     LEF09

LEF3A:  lda     LEF67
        bne     LEF42
        jmp     LEF09

LEF42:  jsr     LF0DF
        ldy     #$11
        lda     #$31
        ldx     #$E9
        jsr     LDBE0
        lda     LEF67
        clc
        adc     #$80
        sta     LEF67
        jmp     LEF09

LEF5A:  lda     LEF67
        beq     LEF62
        jmp     LED35

LEF62:  lda     #$01
        jmp     LEE6A

LEF67:  brk
LEF68:  lda     #$00
        sta     LEFD7
        jsr     LF0DF
        ldy     #$11
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
LEF79:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LEFCA
        jsr     LF0B8
        ldy     #$0E
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        beq     LEFAA
        lda     LEFD7
        beq     LEFB2
        jmp     LEF79

LEFAA:  lda     LEFD7
        bne     LEFB2
        jmp     LEF79

LEFB2:  jsr     LF0DF
        ldy     #$11
        lda     #$25
        ldx     #$E9
        jsr     LDBE0
        lda     LEFD7
        clc
        adc     #$80
        sta     LEFD7
        jmp     LEF79

LEFCA:  lda     LEFD7
        beq     LEFD2
        jmp     LED35

LEFD2:  lda     #$00
        jmp     LEE6A

LEFD7:  brk
LEFD8:  lda     #$00
        sta     LF047
        jsr     LF0DF
        ldy     #$11
        lda     #$19
        ldx     #$E9
        jsr     LDBE0
LEFE9:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LF03A
        jsr     LF0B8
        ldy     #$0E
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$19
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        beq     LF01A
        lda     LF047
        beq     LF022
        jmp     LEFE9

LF01A:  lda     LF047
        bne     LF022
LF01F:  jmp     LEFE9

LF022:  jsr     LF0DF
        ldy     #$11
        lda     #$19
        ldx     #$E9
        jsr     LDBE0
        lda     LF047
        clc
        adc     #$80
        sta     LF047
        jmp     LEFE9

LF03A:  lda     LF047
        beq     LF042
        jmp     LED35

LF042:  lda     #$03
        jmp     LEE6A

LF047:  brk
LF048:  lda     #$00
        sta     LF0B7
        jsr     LF0DF
        ldy     #$11
        lda     #$0D
        ldx     #$E9
        jsr     LDBE0
LF059:  ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$02
        beq     LF0AA
        jsr     LF0B8
        ldy     #$0E
        lda     #$2E
        ldx     #$D1
        jsr     LDBE0
        ldy     #$13
        lda     #$0D
        ldx     #$E9
        jsr     LDBE0
        cmp     #$80
        beq     LF08A
        lda     LF0B7
        beq     LF092
        jmp     LF059

LF08A:  lda     LF0B7
        bne     LF092
        jmp     LF059

LF092:  jsr     LF0DF
        ldy     #$11
        lda     #$0D
        ldx     #$E9
        jsr     LDBE0
        lda     LF0B7
        clc
        adc     #$80
        sta     LF0B7
        jmp     LF059

LF0AA:  lda     LF0B7
        beq     LF0B2
        jmp     LED35

LF0B2:  lda     #$02
        jmp     LEE6A

LF0B7:  brk
LF0B8:  lda     LD12E
        sec
        sbc     LE8B7
        sta     LD12E
        lda     LD12F
        sbc     LE8B8
        sta     LD12F
        lda     LD130
        sec
        sbc     LE8B9
        sta     LD130
        lda     LD131
        sbc     LE8BA
        sta     LD131
        rts

LF0DF:  ldy     #$07
        lda     #$05
        ldx     #$D0
        jsr     LDBE0
        rts

LF0E9:  stx     L0006
        sty     $07
        ldy     #$00
        lda     (L0006),y
        pha
        tay
LF0F3:  lda     (L0006),y
        sta     LE9A0,y
        dey
        bne     LF0F3
        pla
        clc
        adc     LEB4B
        sta     LE98B
        tay
        inc     LE98B
        inc     LE98B
        lda     LEB45
        iny
        sta     LE98B,y
        lda     LEB46
        iny
        sta     LE98B,y
        rts

LF119:  stx     L0006
        sty     $07
        ldy     #$00
        lda     (L0006),y
        pha
        tay
LF123:  lda     (L0006),y
        sta     LEA36,y
        dey
        bne     LF123
        pla
        clc
        adc     LEB4C
        sta     LEA21
        tay
        inc     LEA21
        inc     LEA21
        lda     LEB45
        iny
        sta     LEA21,y
        lda     LEB46
        iny
        sta     LEA21,y
        rts

LF149:  txa
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$30
        ldy     LEB47
        sta     LEA49,y
        txa
        and     #$80
        asl     a
        rol     a
        adc     #$31
        ldy     LEB48
        sta     LEA49,y
        rts

LF167:  txa
        and     #$70
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$30
        ldy     LEB49
        sta     LEA7D,y
        txa
        and     #$80
        asl     a
        rol     a
        adc     #$31
        ldy     LEB4A
        sta     LEA7D,y
        rts

LF185:  sty     LD41D
        tya
        jsr     L0EB2
        beq     LF191
        sta     LD41E
LF191:  rts

LF192:  lda     LD41D
        sta     $0C46
        jsr     L129B
        beq     LF1C9
        cmp     #$52
        beq     LF1C9
        lda     $0C49
        and     #$0F
        bne     LF1C9
        lda     $0C4A
        cmp     #$52
        beq     LF1C9
        ldy     #$2A
        lda     #$2D
        ldx     #$D1
        jsr     LDBE0
        lda     LD12D
        cmp     #$03
        bne     LF192
        lda     LD12E
        cmp     #$1B
        bne     LF192
        lda     #$80
        rts

LF1C9:  lda     #$00
        rts

LF1CC:  cmp     #$03
        bcc     LF1D7
        cmp     #$06
        bcs     LF1D7
        jsr     L127E
LF1D7:  rts

        tya
        lsr     a
        bcs     LF1DF
        bit     $C055
LF1DF:  tay
        lda     ($28),y
        pha
        cmp     #$E0
        bcc     LF1E9
        sbc     #$20
LF1E9:  and     #$3F
        sta     ($28),y
        lda     $C000
        bmi     LF1F5
        jmp     L51ED

LF1F5:  pla
        sta     ($28),y
        bit     $C054
        lda     $C000
        .byte   $2C
        .byte   $10