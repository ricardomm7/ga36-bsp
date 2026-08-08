
/mnt/c/Users/ricar/Downloads/r36s-files/my-image/boot0.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	ea0000bc 	b	0x2f8
       4:	4e4f4765 	cdpmi	7, 4, cr4, cr15, cr5, {3}
       8:	3054422e 	subscc	r4, r4, lr, lsr #4
       c:	235fce10 	cmpcs	pc, #16, 28	@ 0x100
      10:	00008000 	andeq	r8, r0, r0
      14:	00000030 	andeq	r0, r0, r0, lsr r0
      18:	30303131 	eorscc	r3, r0, r1, lsr r1
	...
      24:	30303131 	eorscc	r3, r0, r1, lsr r1
      28:	2e330000 	cdpcs	0, 3, cr0, cr3, cr0, {0}
      2c:	00302e31 	eorseq	r2, r0, r1, lsr lr
      30:	000002c8 	andeq	r0, r0, r8, asr #5
      34:	30333231 	eorscc	r3, r3, r1, lsr r2
      38:	00000228 	andeq	r0, r0, r8, lsr #4
      3c:	00000003 	andeq	r0, r0, r3
      40:	0000f777 	andeq	pc, r0, r7, ror r7	@ <UNPREDICTABLE>
      44:	00000001 	andeq	r0, r0, r1
      48:	01102400 	tsteq	r0, r0, lsl #8
      4c:	00000000 	andeq	r0, r0, r0
      50:	00001a50 	andeq	r1, r0, r0, asr sl
      54:	00000004 	andeq	r0, r0, r4
      58:	00000010 	andeq	r0, r0, r0, lsl r0
      5c:	00000000 	andeq	r0, r0, r0
      60:	2ab83def 	bcs	0xfee0f824
      64:	18082356 	stmdane	r8, {r1, r2, r4, r6, r8, r9, sp}
      68:	00034156 	andeq	r4, r3, r6, asr r1
      6c:	448c5533 	strmi	r5, [ip], #1331	@ 0x533
      70:	08010d00 	stmdaeq	r1, {r8, sl, fp}
      74:	0340b20f 	movteq	fp, #527	@ 0x20f
      78:	20d118cc 	sbcscs	r1, r1, ip, asr #17
      7c:	14062485 	strne	r2, [r6], #-1157	@ 0xfffffb7b
      80:	220d1d52 	andcs	r1, sp, #5248	@ 0x1480
      84:	1e078c22 	cdpne	12, 0, cr8, cr7, cr2, {1}
      88:	0000003c 	andeq	r0, r0, ip, lsr r0
      8c:	00000000 	andeq	r0, r0, r0
      90:	00000078 	andeq	r0, r0, r8, ror r0
      94:	00030000 	andeq	r0, r3, r0
	...
      b8:	00000002 	andeq	r0, r0, r2
      bc:	01020002 	tsteq	r2, r2
      c0:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>
      c4:	01020102 	tsteq	r2, r2, lsl #2
      c8:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>
      cc:	00000000 	andeq	r0, r0, r0
      d0:	ff030006 			@ <UNDEFINED> instruction: 0xff030006
      d4:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>
      d8:	ff030506 			@ <UNDEFINED> instruction: 0xff030506
      dc:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>
      e0:	ff030306 			@ <UNDEFINED> instruction: 0xff030306
      e4:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>
      e8:	ff030106 			@ <UNDEFINED> instruction: 0xff030106
      ec:	0000ffff 	strdeq	pc, [r0], -pc	@ <UNPREDICTABLE>
	...
      f8:	01020206 	tsteq	r2, r6, lsl #4
      fc:	0000ff02 	andeq	pc, r0, r2, lsl #30
     100:	01020306 	tsteq	r2, r6, lsl #6
     104:	0000ff02 	andeq	pc, r0, r2, lsl #30
     108:	01020106 	tsteq	r2, r6, lsl #2
     10c:	0000ff02 	andeq	pc, r0, r2, lsl #30
     110:	01020006 	tsteq	r2, r6
     114:	0000ff02 	andeq	pc, r0, r2, lsl #30
     118:	01020506 	tsteq	r2, r6, lsl #10
     11c:	0000ff02 	andeq	pc, r0, r2, lsl #30
     120:	01020406 	tsteq	r2, r6, lsl #8
     124:	0000ff02 	andeq	pc, r0, r2, lsl #30
	...
     178:	01030503 	tsteq	r3, r3, lsl #10
     17c:	0000ff02 	andeq	pc, r0, r2, lsl #30
     180:	01030603 	tsteq	r3, r3, lsl #12
     184:	0000ff02 	andeq	pc, r0, r2, lsl #30
     188:	01030803 	tsteq	r3, r3, lsl #16
     18c:	0000ff02 	andeq	pc, r0, r2, lsl #30
     190:	01030903 	tsteq	r3, r3, lsl #18
     194:	0000ff02 	andeq	pc, r0, r2, lsl #30
     198:	01030a03 	tsteq	r3, r3, lsl #20
     19c:	0000ff02 	andeq	pc, r0, r2, lsl #30
     1a0:	01030b03 	tsteq	r3, r3, lsl #22
     1a4:	0000ff02 	andeq	pc, r0, r2, lsl #30
	...
     200:	00000001 	andeq	r0, r0, r1
     204:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
     208:	00000000 	andeq	r0, r0, r0
     20c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
     210:	00000001 	andeq	r0, r0, r1
     214:	00000000 	andeq	r0, r0, r0
     218:	00000001 	andeq	r0, r0, r1
     21c:	00000000 	andeq	r0, r0, r0
     220:	00000004 	andeq	r0, r0, r4
     224:	00000000 	andeq	r0, r0, r0
     228:	00000004 	andeq	r0, r0, r4
	...
     2f8:	e10f0000 	mrs	r0, CPSR
     2fc:	e3c0001f 	bic	r0, r0, #31
     300:	e3800013 	orr	r0, r0, #19
     304:	e38000c0 	orr	r0, r0, #192	@ 0xc0
     308:	e3c00c02 	bic	r0, r0, #512	@ 0x200
     30c:	e121f000 	msr	CPSR_c, r0
     310:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
     314:	e3c00005 	bic	r0, r0, #5
     318:	e3c00b06 	bic	r0, r0, #6144	@ 0x1800
     31c:	e3c00002 	bic	r0, r0, #2
     320:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
     324:	e59fd008 	ldr	sp, [pc, #8]	@ 0x334
     328:	eb000cf7 	bl	0x370c
     32c:	eb000b74 	bl	0x3104
     330:	eafffffe 	b	0x330
     334:	0000f000 	andeq	pc, r0, r0
     338:	e92d4070 	push	{r4, r5, r6, lr}
     33c:	e1a05000 	mov	r5, r0
     340:	e59f0140 	ldr	r0, [pc, #320]	@ 0x488
     344:	e5d04028 	ldrb	r4, [r0, #40]	@ 0x28
     348:	e28f0f4f 	add	r0, pc, #316	@ 0x13c
     34c:	e1a01004 	mov	r1, r4
     350:	eb00105c 	bl	0x44c8
     354:	e28f0f52 	add	r0, pc, #328	@ 0x148
     358:	e1a01004 	mov	r1, r4
     35c:	eb001059 	bl	0x44c8
     360:	e3540000 	cmp	r4, #0
     364:	aa000003 	bge	0x378
     368:	e28f0f51 	add	r0, pc, #324	@ 0x144
     36c:	e1a01004 	mov	r1, r4
     370:	eb001054 	bl	0x44c8
     374:	ea00001a 	b	0x3e4
     378:	e0855104 	add	r5, r5, r4, lsl #2
     37c:	e1a01004 	mov	r1, r4
     380:	e28f0e15 	add	r0, pc, #336	@ 0x150
     384:	e5952038 	ldr	r2, [r5, #56]	@ 0x38
     388:	eb00104e 	bl	0x44c8
     38c:	e5950038 	ldr	r0, [r5, #56]	@ 0x38
     390:	e3500000 	cmp	r0, #0
     394:	03a00004 	moveq	r0, #4
     398:	05850038 	streq	r0, [r5, #56]	@ 0x38
     39c:	e1a01000 	mov	r1, r0
     3a0:	e1a00004 	mov	r0, r4
     3a4:	eb000b04 	bl	0x2fbc
     3a8:	e3700001 	cmn	r0, #1
     3ac:	028f0d05 	addeq	r0, pc, #320	@ 0x140
     3b0:	0a00000a 	beq	0x3e0
     3b4:	e28f0e15 	add	r0, pc, #336	@ 0x150
     3b8:	e1a01004 	mov	r1, r4
     3bc:	eb001041 	bl	0x44c8
     3c0:	e3a0244a 	mov	r2, #1241513984	@ 0x4a000000
     3c4:	e1a03004 	mov	r3, r4
     3c8:	e3a01002 	mov	r1, #2
     3cc:	e3090530 	movw	r0, #38192	@ 0x9530
     3d0:	eb000b02 	bl	0x2fe0
     3d4:	e3500002 	cmp	r0, #2
     3d8:	0a000005 	beq	0x3f4
     3dc:	e28f0f4f 	add	r0, pc, #316	@ 0x13c
     3e0:	eb001038 	bl	0x44c8
     3e4:	e1a00004 	mov	r0, r4
     3e8:	eb000af8 	bl	0x2fd0
     3ec:	e3a00001 	mov	r0, #1
     3f0:	e8bd8070 	pop	{r4, r5, r6, pc}
     3f4:	e28f1f51 	add	r1, pc, #324	@ 0x144
     3f8:	e3a0044a 	mov	r0, #1241513984	@ 0x4a000000
     3fc:	eb000bc7 	bl	0x3320
     400:	e3500000 	cmp	r0, #0
     404:	128f0f4f 	addne	r0, pc, #316	@ 0x13c
     408:	1afffff4 	bne	0x3e0
     40c:	e3a0644a 	mov	r6, #1241513984	@ 0x4a000000
     410:	e28f0f55 	add	r0, pc, #340	@ 0x154
     414:	e5965014 	ldr	r5, [r6, #20]
     418:	e1a01005 	mov	r1, r5
     41c:	eb001029 	bl	0x44c8
     420:	e1b00b85 	lsls	r0, r5, #23
     424:	128f0f57 	addne	r0, pc, #348	@ 0x15c
     428:	1affffec 	bne	0x3e0
     42c:	e1a014a5 	lsr	r1, r5, #9
     430:	e1a03004 	mov	r3, r4
     434:	e3a0244a 	mov	r2, #1241513984	@ 0x4a000000
     438:	e3090530 	movw	r0, #38192	@ 0x9530
     43c:	eb000ae7 	bl	0x2fe0
     440:	e15004a5 	cmp	r0, r5, lsr #9
     444:	1affffe4 	bne	0x3dc
     448:	e3a0044a 	mov	r0, #1241513984	@ 0x4a000000
     44c:	e1a01005 	mov	r1, r5
     450:	eb000bb9 	bl	0x333c
     454:	e3500000 	cmp	r0, #0
     458:	128f0f51 	addne	r0, pc, #324	@ 0x144
     45c:	1affffdf 	bne	0x3e0
     460:	e3540000 	cmp	r4, #0
     464:	03a00001 	moveq	r0, #1
     468:	13a00002 	movne	r0, #2
     46c:	e58600e4 	str	r0, [r6, #228]	@ 0xe4
     470:	e28f0f52 	add	r0, pc, #328	@ 0x148
     474:	eb001013 	bl	0x44c8
     478:	e1a00004 	mov	r0, r4
     47c:	eb000ad3 	bl	0x2fd0
     480:	e3a00000 	mov	r0, #0
     484:	e8bd8070 	pop	{r4, r5, r6, pc}
     488:	00000000 	andeq	r0, r0, r0
     48c:	64726163 	ldrbtvs	r6, [r2], #-355	@ 0xfffffe9d
     490:	6f6f6220 	svcvs	0x006f6220
     494:	756e2074 	strbvc	r2, [lr, #-116]!	@ 0xffffff8c
     498:	7265626d 	rsbvc	r6, r5, #-805306362	@ 0xd0000006
     49c:	25203d20 	strcs	r3, [r0, #-3360]!	@ 0xfffff2e0
     4a0:	00000a64 	andeq	r0, r0, r4, ror #20
     4a4:	64726163 	ldrbtvs	r6, [r2], #-355	@ 0xfffffe9d
     4a8:	206f6e20 	rsbcs	r6, pc, r0, lsr #28
     4ac:	25207369 	strcs	r7, [r0, #-873]!	@ 0xfffffc97
     4b0:	00000a64 	andeq	r0, r0, r4, ror #20
     4b4:	20646162 	rsbcs	r6, r4, r2, ror #2
     4b8:	64726163 	ldrbtvs	r6, [r2], #-355	@ 0xfffffe9d
     4bc:	6d756e20 	ldclvs	14, cr6, [r5, #-128]!	@ 0xffffff80
     4c0:	20726562 	rsbscs	r6, r2, r2, ror #10
     4c4:	69206425 	stmdbvs	r0!, {r0, r2, r5, sl, sp, lr}
     4c8:	6163206e 	cmnvs	r3, lr, rrx
     4cc:	62206472 	eorvs	r6, r0, #1912602624	@ 0x72000000
     4d0:	0a746f6f 	beq	0x1d1c294
     4d4:	00000000 	andeq	r0, r0, r0
     4d8:	61636473 	smcvs	13891	@ 0x3643
     4dc:	25206472 	strcs	r6, [r0, #-1138]!	@ 0xfffffb8e
     4e0:	696c2064 	stmdbvs	ip!, {r2, r5, r6, sp}^
     4e4:	6320656e 			@ <UNDEFINED> instruction: 0x6320656e
     4e8:	746e756f 	strbtvc	r7, [lr], #-1391	@ 0xfffffa91
     4ec:	0a642520 	beq	0x1909974
     4f0:	00000000 	andeq	r0, r0, r0
     4f4:	6c696146 	stclvs	1, cr6, [r9], #-280	@ 0xfffffee8
     4f8:	206e6920 	rsbcs	r6, lr, r0, lsr #18
     4fc:	74696e49 	strbtvc	r6, [r9], #-3657	@ 0xfffff1b7
     500:	6d647320 	stclvs	3, cr7, [r4, #-128]!	@ 0xffffff80
     504:	0a2e636d 	beq	0xb992c0
     508:	00000000 	andeq	r0, r0, r0
     50c:	61636473 	smcvs	13891	@ 0x3643
     510:	25206472 	strcs	r6, [r0, #-1138]!	@ 0xfffffb8e
     514:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     518:	6f207469 	svcvs	0x00207469
     51c:	00000a6b 	andeq	r0, r0, fp, ror #20
     520:	6c696146 	stclvs	1, cr6, [r9], #-280	@ 0xfffffee8
     524:	206e6920 	rsbcs	r6, lr, r0, lsr #18
     528:	64616572 	strbtvs	r6, [r1], #-1394	@ 0xfffffa8e
     52c:	20676e69 	rsbcs	r6, r7, r9, ror #28
     530:	6f6f6275 	svcvs	0x006f6275
     534:	65682074 	strbvs	r2, [r8, #-116]!	@ 0xffffff8c
     538:	0a2e6461 	beq	0xb996c4
     53c:	00000000 	andeq	r0, r0, r0
     540:	6f6f6275 	svcvs	0x006f6275
     544:	00000074 	andeq	r0, r0, r4, ror r0
     548:	4f525245 	svcmi	0x00525245
     54c:	4e202152 	mcrmi	1, 1, r2, cr0, cr2, {2}
     550:	6620544f 	strtvs	r5, [r0], -pc, asr #8
     554:	20646e69 	rsbcs	r6, r4, r9, ror #28
     558:	20656874 	rsbcs	r6, r5, r4, ror r8
     55c:	64616568 	strbtvs	r6, [r1], #-1384	@ 0xfffffa98
     560:	20666f20 	rsbcs	r6, r6, r0, lsr #30
     564:	6f6f6275 	svcvs	0x006f6275
     568:	000a2e74 	andeq	r2, sl, r4, ror lr
     56c:	20656854 	rsbcs	r6, r5, r4, asr r8
     570:	657a6973 	ldrbvs	r6, [sl, #-2419]!	@ 0xfffff68d
     574:	20666f20 	rsbcs	r6, r6, r0, lsr #30
     578:	6f6f6275 	svcvs	0x006f6275
     57c:	73692074 	cmnvc	r9, #116	@ 0x74
     580:	2e782520 	cdpcs	5, 7, cr2, cr8, cr0, {1}
     584:	0000000a 	andeq	r0, r0, sl
     588:	746f6f62 	strbtvc	r6, [pc], #-3938	@ 0x590
     58c:	656c2030 	strbvs	r2, [ip, #-48]!	@ 0xffffffd0
     590:	6874676e 	ldmdavs	r4!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}^
     594:	20736920 	rsbscs	r6, r3, r0, lsr #18
     598:	20544f4e 	subscs	r4, r4, lr, asr #30
     59c:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
     5a0:	000a2e6e 	andeq	r2, sl, lr, ror #28
     5a4:	6c696146 	stclvs	1, cr6, [r9], #-280	@ 0xfffffee8
     5a8:	206e6920 	rsbcs	r6, lr, r0, lsr #18
     5ac:	63656863 	cmnvs	r5, #6488064	@ 0x630000
     5b0:	676e696b 	strbvs	r6, [lr, -fp, ror #18]!
     5b4:	6f627520 	svcvs	0x00627520
     5b8:	0a2e746f 	beq	0xb9d77c
     5bc:	00000000 	andeq	r0, r0, r0
     5c0:	63637553 	cmnvs	r3, #348127232	@ 0x14c00000
     5c4:	20646565 	rsbcs	r6, r4, r5, ror #10
     5c8:	6c206e69 	stcvs	14, cr6, [r0], #-420	@ 0xfffffe5c
     5cc:	6964616f 	stmdbvs	r4!, {r0, r1, r2, r3, r5, r6, r8, sp, lr}^
     5d0:	7520676e 	strvc	r6, [r0, #-1902]!	@ 0xfffff892
     5d4:	746f6f62 	strbtvc	r6, [pc], #-3938	@ 0x5dc
     5d8:	6f726620 	svcvs	0x00726620
     5dc:	6473206d 	ldrbtvs	r2, [r3], #-109	@ 0xffffff93
     5e0:	20636d6d 	rsbcs	r6, r3, sp, ror #26
     5e4:	73616c66 	cmnvc	r1, #26112	@ 0x6600
     5e8:	000a2e68 	andeq	r2, sl, r8, ror #28
     5ec:	e5903098 	ldr	r3, [r0, #152]	@ 0x98
     5f0:	e12fff13 	bx	r3
     5f4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     5f8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     5fc:	e1a06000 	mov	r6, r0
     600:	e3a0000d 	mov	r0, #13
     604:	e59f7230 	ldr	r7, [pc, #560]	@ 0x83c
     608:	e1a04001 	mov	r4, r1
     60c:	e58d0000 	str	r0, [sp]
     610:	e3a00015 	mov	r0, #21
     614:	e58d0004 	str	r0, [sp, #4]
     618:	e1d607bc 	ldrh	r0, [r6, #124]	@ 0x7c
     61c:	e1a00800 	lsl	r0, r0, #16
     620:	e58d0008 	str	r0, [sp, #8]
     624:	e3a00000 	mov	r0, #0
     628:	e58d001c 	str	r0, [sp, #28]
     62c:	e3a02000 	mov	r2, #0
     630:	e1a0100d 	mov	r1, sp
     634:	e1a00006 	mov	r0, r6
     638:	ebffffeb 	bl	0x5ec
     63c:	e1b05000 	movs	r5, r0
     640:	0a000005 	beq	0x65c
     644:	e5961030 	ldr	r1, [r6, #48]	@ 0x30
     648:	e28f0e1f 	add	r0, pc, #496	@ 0x1f0
     64c:	eb000f9d 	bl	0x44c8
     650:	e1a00005 	mov	r0, r5
     654:	e28dd024 	add	sp, sp, #36	@ 0x24
     658:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
     65c:	e59d000c 	ldr	r0, [sp, #12]
     660:	e3100c01 	tst	r0, #256	@ 0x100
     664:	0a000002 	beq	0x674
     668:	e3540000 	cmp	r4, #0
     66c:	0a00000f 	beq	0x6b0
     670:	ea00000c 	b	0x6a8
     674:	e3a00001 	mov	r0, #1
     678:	eb000c0e 	bl	0x36b8
     67c:	e59d000c 	ldr	r0, [sp, #12]
     680:	e1100007 	tst	r0, r7
     684:	0a000005 	beq	0x6a0
     688:	e59d200c 	ldr	r2, [sp, #12]
     68c:	e28f0e1d 	add	r0, pc, #464	@ 0x1d0
     690:	e5961030 	ldr	r1, [r6, #48]	@ 0x30
     694:	eb000f8b 	bl	0x44c8
     698:	e3e00011 	mvn	r0, #17
     69c:	eaffffec 	b	0x654
     6a0:	e2544001 	subs	r4, r4, #1
     6a4:	2affffe0 	bcs	0x62c
     6a8:	e3a00000 	mov	r0, #0
     6ac:	eaffffe8 	b	0x654
     6b0:	e5961030 	ldr	r1, [r6, #48]	@ 0x30
     6b4:	e28f0f73 	add	r0, pc, #460	@ 0x1cc
     6b8:	eb000f82 	bl	0x44c8
     6bc:	e3e00012 	mvn	r0, #18
     6c0:	eaffffe3 	b	0x654
     6c4:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
     6c8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     6cc:	e3a02010 	mov	r2, #16
     6d0:	e58d2000 	str	r2, [sp]
     6d4:	e3a02015 	mov	r2, #21
     6d8:	e58d1008 	str	r1, [sp, #8]
     6dc:	e3a01000 	mov	r1, #0
     6e0:	e58d2004 	str	r2, [sp, #4]
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e58d101c 	str	r1, [sp, #28]
     6ec:	e1a0100d 	mov	r1, sp
     6f0:	ebffffbd 	bl	0x5ec
     6f4:	e28dd024 	add	sp, sp, #36	@ 0x24
     6f8:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
     6fc:	e1a01000 	mov	r1, r0
     700:	e59f01ac 	ldr	r0, [pc, #428]	@ 0x8b4
     704:	e92d4010 	push	{r4, lr}
     708:	e7900101 	ldr	r0, [r0, r1, lsl #2]
     70c:	e3500000 	cmp	r0, #0
     710:	18bd8010 	popne	{r4, pc}
     714:	e28f0f67 	add	r0, pc, #412	@ 0x19c
     718:	eb000f6a 	bl	0x44c8
     71c:	e3a00000 	mov	r0, #0
     720:	e8bd8010 	pop	{r4, pc}
     724:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     728:	e1a07003 	mov	r7, r3
     72c:	e59030a8 	ldr	r3, [r0, #168]	@ 0xa8
     730:	e1a05002 	mov	r5, r2
     734:	e1a04000 	mov	r4, r0
     738:	e0812005 	add	r2, r1, r5
     73c:	e30063e8 	movw	r6, #1000	@ 0x3e8
     740:	e1520003 	cmp	r2, r3
     744:	e24dd030 	sub	sp, sp, #48	@ 0x30
     748:	9a000003 	bls	0x75c
     74c:	e5901030 	ldr	r1, [r0, #48]	@ 0x30
     750:	e28f0d06 	add	r0, pc, #384	@ 0x180
     754:	eb000f5b 	bl	0x44c8
     758:	ea00001c 	b	0x7d0
     75c:	e3550001 	cmp	r5, #1
     760:	e3a08000 	mov	r8, #0
     764:	83a00019 	movhi	r0, #25
     768:	93a00018 	movls	r0, #24
     76c:	e58d0000 	str	r0, [sp]
     770:	e28d2020 	add	r2, sp, #32
     774:	e594003c 	ldr	r0, [r4, #60]	@ 0x3c
     778:	e3500000 	cmp	r0, #0
     77c:	05940088 	ldreq	r0, [r4, #136]	@ 0x88
     780:	158d1008 	strne	r1, [sp, #8]
     784:	e58d5028 	str	r5, [sp, #40]	@ 0x28
     788:	00000190 	muleq	r0, r0, r1
     78c:	058d0008 	streq	r0, [sp, #8]
     790:	e3a00015 	mov	r0, #21
     794:	e58d0004 	str	r0, [sp, #4]
     798:	e1a0100d 	mov	r1, sp
     79c:	e58d7020 	str	r7, [sp, #32]
     7a0:	e58d801c 	str	r8, [sp, #28]
     7a4:	e5940088 	ldr	r0, [r4, #136]	@ 0x88
     7a8:	e58d002c 	str	r0, [sp, #44]	@ 0x2c
     7ac:	e3a00002 	mov	r0, #2
     7b0:	e58d0024 	str	r0, [sp, #36]	@ 0x24
     7b4:	e1a00004 	mov	r0, r4
     7b8:	ebffff8b 	bl	0x5ec
     7bc:	e3500000 	cmp	r0, #0
     7c0:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     7c4:	128f0f51 	addne	r0, pc, #324	@ 0x144
     7c8:	0a000003 	beq	0x7dc
     7cc:	eb000f3d 	bl	0x44c8
     7d0:	e3a00000 	mov	r0, #0
     7d4:	e28dd030 	add	sp, sp, #48	@ 0x30
     7d8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     7dc:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
     7e0:	e3100b01 	tst	r0, #1024	@ 0x400
     7e4:	1a00000f 	bne	0x828
     7e8:	e3550001 	cmp	r5, #1
     7ec:	9a00000d 	bls	0x828
     7f0:	e28d1004 	add	r1, sp, #4
     7f4:	e3a0000c 	mov	r0, #12
     7f8:	e58d0000 	str	r0, [sp]
     7fc:	e3a0001d 	mov	r0, #29
     800:	e3a02000 	mov	r2, #0
     804:	e8810101 	stm	r1, {r0, r8}
     808:	e1a0100d 	mov	r1, sp
     80c:	e1a00004 	mov	r0, r4
     810:	e58d801c 	str	r8, [sp, #28]
     814:	ebffff74 	bl	0x5ec
     818:	e3500000 	cmp	r0, #0
     81c:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     820:	128f0f42 	addne	r0, pc, #264	@ 0x108
     824:	1affffe8 	bne	0x7cc
     828:	e1a01006 	mov	r1, r6
     82c:	e1a00004 	mov	r0, r4
     830:	ebffff6f 	bl	0x5f4
     834:	e1a00005 	mov	r0, r5
     838:	eaffffe5 	b	0x7d4
     83c:	fdf94080 	ldc2l	0, cr4, [r9, #512]!	@ 0x200
     840:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     844:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     848:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     84c:	65532064 	ldrbvs	r2, [r3, #-100]	@ 0xffffff9c
     850:	7320646e 			@ <UNDEFINED> instruction: 0x7320646e
     854:	75746174 	ldrbvc	r6, [r4, #-372]!	@ 0xfffffe8c
     858:	61662073 	smcvs	25091	@ 0x6203
     85c:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
     860:	0000000a 	andeq	r0, r0, sl
     864:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     868:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     86c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     870:	74532064 	ldrbvc	r2, [r3], #-100	@ 0xffffff9c
     874:	73757461 	cmnvc	r5, #1627389952	@ 0x61000000
     878:	72724520 	rsbsvc	r4, r2, #32, 10	@ 0x8000000
     87c:	203a726f 	eorscs	r7, sl, pc, ror #4
     880:	30257830 	eorcc	r7, r5, r0, lsr r8
     884:	000a5838 	andeq	r5, sl, r8, lsr r8
     888:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     88c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     890:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     894:	69542064 	ldmdbvs	r4, {r2, r5, r6, sp}^
     898:	756f656d 	strbvc	r6, [pc, #-1389]!	@ 0x333
     89c:	61772074 	cmnvs	r7, r4, ror r0
     8a0:	6e697469 	cdpvs	4, 6, cr7, cr9, cr9, {3}
     8a4:	61632067 	cmnvs	r3, r7, rrx
     8a8:	72206472 	eorvc	r6, r0, #1912602624	@ 0x72000000
     8ac:	79646165 	stmdbvc	r4!, {r0, r2, r5, r6, r8, sp, lr}^
     8b0:	0000000a 	andeq	r0, r0, sl
     8b4:	00005254 	andeq	r5, r0, r4, asr r2
     8b8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     8bc:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
     8c0:	4420434d 	strtmi	r4, [r0], #-845	@ 0xfffffcb3
     8c4:	63697665 	cmnvs	r9, #105906176	@ 0x6500000
     8c8:	64252065 	strtvs	r2, [r5], #-101	@ 0xffffff9b
     8cc:	746f6e20 	strbtvc	r6, [pc], #-3616	@ 0x8d4
     8d0:	756f6620 	strbvc	r6, [pc, #-1568]!	@ 0x2b8
     8d4:	000a646e 	andeq	r6, sl, lr, ror #8
     8d8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     8dc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     8e0:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     8e4:	62203a64 	eorvs	r3, r0, #100, 20	@ 0x64000
     8e8:	6b636f6c 	blvs	0x18dc6a0
     8ec:	6d756e20 	ldclvs	14, cr6, [r5, #-128]!	@ 0xffffff80
     8f0:	20726562 	rsbscs	r6, r2, r2, ror #10
     8f4:	6c257830 	stcvs	8, cr7, [r5], #-192	@ 0xffffff40
     8f8:	78652078 	stmdavc	r5!, {r3, r4, r5, r6, sp}^
     8fc:	64656563 	strbtvs	r6, [r5], #-1379	@ 0xfffffa9d
     900:	616d2073 	smcvs	53763	@ 0xd203
     904:	78302878 	ldmdavc	r0!, {r3, r4, r5, r6, fp, sp}
     908:	29786c25 	ldmdbcs	r8!, {r0, r2, r5, sl, fp, sp, lr}^
     90c:	0000000a 	andeq	r0, r0, sl
     910:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     914:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     918:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     91c:	6d6d2064 	stclvs	0, cr2, [sp, #-400]!	@ 0xfffffe70
     920:	72772063 	rsbsvc	r2, r7, #99	@ 0x63
     924:	20657469 	rsbcs	r7, r5, r9, ror #8
     928:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
     92c:	000a6465 	andeq	r6, sl, r5, ror #8
     930:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     934:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     938:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     93c:	61662064 	cmnvs	r6, r4, rrx
     940:	74206c69 	strtvc	r6, [r0], #-3177	@ 0xfffff397
     944:	6573206f 	ldrbvs	r2, [r3, #-111]!	@ 0xffffff91
     948:	7320646e 			@ <UNDEFINED> instruction: 0x7320646e
     94c:	20706f74 	rsbscs	r6, r0, r4, ror pc
     950:	0a646d63 	beq	0x191bee4
     954:	00000000 	andeq	r0, r0, r0
     958:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
     95c:	e1a07003 	mov	r7, r3
     960:	e1a08001 	mov	r8, r1
     964:	e1a09002 	mov	r9, r2
     968:	e1a05000 	mov	r5, r0
     96c:	e1a04002 	mov	r4, r2
     970:	ebffff61 	bl	0x6fc
     974:	e3590000 	cmp	r9, #0
     978:	e1a06000 	mov	r6, r0
     97c:	028f0f67 	addeq	r0, pc, #412	@ 0x19c
     980:	01a01005 	moveq	r1, r5
     984:	0a000009 	beq	0x9b0
     988:	e3560000 	cmp	r6, #0
     98c:	028f0f6d 	addeq	r0, pc, #436	@ 0x1b4
     990:	01a01005 	moveq	r1, r5
     994:	0a000005 	beq	0x9b0
     998:	e5961088 	ldr	r1, [r6, #136]	@ 0x88
     99c:	ebffff48 	bl	0x6c4
     9a0:	e3500000 	cmp	r0, #0
     9a4:	15961030 	ldrne	r1, [r6, #48]	@ 0x30
     9a8:	128f0f6e 	addne	r0, pc, #440	@ 0x1b8
     9ac:	0a000002 	beq	0x9bc
     9b0:	eb000ec4 	bl	0x44c8
     9b4:	e3a00000 	mov	r0, #0
     9b8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     9bc:	e59650a4 	ldr	r5, [r6, #164]	@ 0xa4
     9c0:	e1a03007 	mov	r3, r7
     9c4:	e1a01008 	mov	r1, r8
     9c8:	e1a00006 	mov	r0, r6
     9cc:	e1550004 	cmp	r5, r4
     9d0:	21a05004 	movcs	r5, r4
     9d4:	e1a02005 	mov	r2, r5
     9d8:	ebffff51 	bl	0x724
     9dc:	e1500005 	cmp	r0, r5
     9e0:	15961030 	ldrne	r1, [r6, #48]	@ 0x30
     9e4:	128f0e1a 	addne	r0, pc, #416	@ 0x1a0
     9e8:	1afffff0 	bne	0x9b0
     9ec:	e5960088 	ldr	r0, [r6, #136]	@ 0x88
     9f0:	e0544005 	subs	r4, r4, r5
     9f4:	e0888005 	add	r8, r8, r5
     9f8:	e0277095 	mla	r7, r5, r0, r7
     9fc:	01a00009 	moveq	r0, r9
     a00:	1affffed 	bne	0x9bc
     a04:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     a08:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     a0c:	e1a06002 	mov	r6, r2
     a10:	e1a07001 	mov	r7, r1
     a14:	e1a08000 	mov	r8, r0
     a18:	ebffff37 	bl	0x6fc
     a1c:	e1b04000 	movs	r4, r0
     a20:	e3a05441 	mov	r5, #1090519040	@ 0x41000000
     a24:	0a000013 	beq	0xa78
     a28:	e1a01486 	lsl	r1, r6, #9
     a2c:	e1a00005 	mov	r0, r5
     a30:	fa001191 	blx	0x507c
     a34:	e0870006 	add	r0, r7, r6
     a38:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
     a3c:	e2403001 	sub	r3, r0, #1
     a40:	e1a02007 	mov	r2, r7
     a44:	e28f0f59 	add	r0, pc, #356	@ 0x164
     a48:	eb000e9e 	bl	0x44c8
     a4c:	e1a03005 	mov	r3, r5
     a50:	e1a02006 	mov	r2, r6
     a54:	e1a01007 	mov	r1, r7
     a58:	e1a00008 	mov	r0, r8
     a5c:	ebffffbd 	bl	0x958
     a60:	e1b05000 	movs	r5, r0
     a64:	05941030 	ldreq	r1, [r4, #48]	@ 0x30
     a68:	028f0f59 	addeq	r0, pc, #356	@ 0x164
     a6c:	0b000e95 	bleq	0x44c8
     a70:	e1a00005 	mov	r0, r5
     a74:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     a78:	e28f0e17 	add	r0, pc, #368	@ 0x170
     a7c:	e1a01008 	mov	r1, r8
     a80:	eb000e90 	bl	0x44c8
     a84:	e3e00000 	mvn	r0, #0
     a88:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     a8c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     a90:	e24dd034 	sub	sp, sp, #52	@ 0x34
     a94:	e1a04000 	mov	r4, r0
     a98:	e3530001 	cmp	r3, #1
     a9c:	e1a05003 	mov	r5, r3
     aa0:	83a00012 	movhi	r0, #18
     aa4:	93a00011 	movls	r0, #17
     aa8:	e58d0000 	str	r0, [sp]
     aac:	e3a06000 	mov	r6, #0
     ab0:	e594003c 	ldr	r0, [r4, #60]	@ 0x3c
     ab4:	e30073e8 	movw	r7, #1000	@ 0x3e8
     ab8:	e3500000 	cmp	r0, #0
     abc:	05940084 	ldreq	r0, [r4, #132]	@ 0x84
     ac0:	158d2008 	strne	r2, [sp, #8]
     ac4:	e58d1020 	str	r1, [sp, #32]
     ac8:	e1a0100d 	mov	r1, sp
     acc:	00000290 	muleq	r0, r0, r2
     ad0:	058d0008 	streq	r0, [sp, #8]
     ad4:	e3a00015 	mov	r0, #21
     ad8:	e58d0004 	str	r0, [sp, #4]
     adc:	e28d2020 	add	r2, sp, #32
     ae0:	e58d5028 	str	r5, [sp, #40]	@ 0x28
     ae4:	e58d601c 	str	r6, [sp, #28]
     ae8:	e5940084 	ldr	r0, [r4, #132]	@ 0x84
     aec:	e58d002c 	str	r0, [sp, #44]	@ 0x2c
     af0:	e3a00001 	mov	r0, #1
     af4:	e58d0024 	str	r0, [sp, #36]	@ 0x24
     af8:	e1a00004 	mov	r0, r4
     afc:	ebfffeba 	bl	0x5ec
     b00:	e3500000 	cmp	r0, #0
     b04:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     b08:	128f0c01 	addne	r0, pc, #256	@ 0x100
     b0c:	0a000048 	beq	0xc34
     b10:	eb000e6c 	bl	0x44c8
     b14:	e3a00000 	mov	r0, #0
     b18:	e28dd034 	add	sp, sp, #52	@ 0x34
     b1c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
     b20:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     b24:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     b28:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     b2c:	6c622064 	stclvs	0, cr2, [r2], #-400	@ 0xfffffe70
     b30:	746e636b 	strbtvc	r6, [lr], #-875	@ 0xfffffc95
     b34:	6f687320 	svcvs	0x00687320
     b38:	20646c75 	rsbcs	r6, r4, r5, ror ip
     b3c:	20746f6e 	rsbscs	r6, r4, lr, ror #30
     b40:	30206562 	eorcc	r6, r0, r2, ror #10
     b44:	0000000a 	andeq	r0, r0, sl
     b48:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     b4c:	43203a5d 			@ <UNDEFINED> instruction: 0x43203a5d
     b50:	6e206e61 	cdpvs	14, 2, cr6, cr0, cr1, {3}
     b54:	6620746f 	strtvs	r7, [r0], -pc, ror #8
     b58:	646e756f 	strbtvs	r7, [lr], #-1391	@ 0xfffffa91
     b5c:	76656420 	strbtvc	r6, [r5], -r0, lsr #8
     b60:	20656369 	rsbcs	r6, r5, r9, ror #6
     b64:	000a6425 	andeq	r6, sl, r5, lsr #8
     b68:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     b6c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     b70:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     b74:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
     b78:	6c622074 	stclvs	0, cr2, [r2], #-464	@ 0xfffffe30
     b7c:	206b636f 	rsbcs	r6, fp, pc, ror #6
     b80:	206e656c 	rsbcs	r6, lr, ip, ror #10
     b84:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
     b88:	000a6465 	andeq	r6, sl, r5, ror #8
     b8c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     b90:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     b94:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     b98:	72772064 	rsbsvc	r2, r7, #100	@ 0x64
     b9c:	20657469 	rsbcs	r7, r5, r9, ror #8
     ba0:	636f6c62 	cmnvs	pc, #25088	@ 0x6200
     ba4:	6166206b 	cmnvs	r6, fp, rrx
     ba8:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
     bac:	0000000a 	andeq	r0, r0, sl
     bb0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     bb4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     bb8:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     bbc:	72652064 	rsbvc	r2, r5, #100	@ 0x64
     bc0:	20657361 	rsbcs	r7, r5, r1, ror #6
     bc4:	206b6c62 	rsbcs	r6, fp, r2, ror #24
     bc8:	7e206425 	cdpvc	4, 2, cr6, cr0, cr5, {1}
     bcc:	0a642520 	beq	0x190a054
     bd0:	00000000 	andeq	r0, r0, r0
     bd4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     bd8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     bdc:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     be0:	72652064 	rsbvc	r2, r5, #100	@ 0x64
     be4:	20657361 	rsbcs	r7, r5, r1, ror #6
     be8:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
     bec:	000a6465 	andeq	r6, sl, r5, ror #8
     bf0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     bf4:	43203a5d 			@ <UNDEFINED> instruction: 0x43203a5d
     bf8:	6e206e61 	cdpvs	14, 2, cr6, cr0, cr1, {3}
     bfc:	6620746f 	strtvs	r7, [r0], -pc, ror #8
     c00:	20646e69 	rsbcs	r6, r4, r9, ror #28
     c04:	20636d6d 	rsbcs	r6, r3, sp, ror #26
     c08:	20766564 	rsbscs	r6, r6, r4, ror #10
     c0c:	000a6425 	andeq	r6, sl, r5, lsr #8
     c10:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     c14:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     c18:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     c1c:	72202064 	eorvc	r2, r0, #100	@ 0x64
     c20:	20646165 	rsbcs	r6, r4, r5, ror #2
     c24:	6f636c62 	svcvs	0x00636c62
     c28:	6166206b 	cmnvs	r6, fp, rrx
     c2c:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
     c30:	0000000a 	andeq	r0, r0, sl
     c34:	e3550001 	cmp	r5, #1
     c38:	9a000010 	bls	0xc80
     c3c:	e28d1004 	add	r1, sp, #4
     c40:	e3a0000c 	mov	r0, #12
     c44:	e58d0000 	str	r0, [sp]
     c48:	e3a0001d 	mov	r0, #29
     c4c:	e3a02000 	mov	r2, #0
     c50:	e8810041 	stm	r1, {r0, r6}
     c54:	e1a0100d 	mov	r1, sp
     c58:	e1a00004 	mov	r0, r4
     c5c:	e58d601c 	str	r6, [sp, #28]
     c60:	ebfffe61 	bl	0x5ec
     c64:	e3500000 	cmp	r0, #0
     c68:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     c6c:	124f0fd1 	subne	r0, pc, #836	@ 0x344
     c70:	1affffa6 	bne	0xb10
     c74:	e1a01007 	mov	r1, r7
     c78:	e1a00004 	mov	r0, r4
     c7c:	ebfffe5c 	bl	0x5f4
     c80:	e1a00005 	mov	r0, r5
     c84:	eaffffa3 	b	0xb18
     c88:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
     c8c:	e1a08003 	mov	r8, r3
     c90:	e1a07001 	mov	r7, r1
     c94:	e1a09002 	mov	r9, r2
     c98:	e1a06000 	mov	r6, r0
     c9c:	e1a05002 	mov	r5, r2
     ca0:	ebfffe95 	bl	0x6fc
     ca4:	e3590000 	cmp	r9, #0
     ca8:	e1a04000 	mov	r4, r0
     cac:	05901030 	ldreq	r1, [r0, #48]	@ 0x30
     cb0:	024f0f66 	subeq	r0, pc, #408	@ 0x198
     cb4:	0a00000b 	beq	0xce8
     cb8:	e3540000 	cmp	r4, #0
     cbc:	024f00d4 	subeq	r0, pc, #212	@ 0xd4
     cc0:	01a01006 	moveq	r1, r6
     cc4:	0a000007 	beq	0xce8
     cc8:	e59430a8 	ldr	r3, [r4, #168]	@ 0xa8
     ccc:	e0872009 	add	r2, r7, r9
     cd0:	e1520003 	cmp	r2, r3
     cd4:	9a000006 	bls	0xcf4
     cd8:	e5901030 	ldr	r1, [r0, #48]	@ 0x30
     cdc:	e28f0f71 	add	r0, pc, #452	@ 0x1c4
     ce0:	eb000df8 	bl	0x44c8
     ce4:	ea000000 	b	0xcec
     ce8:	eb000df6 	bl	0x44c8
     cec:	e3a00000 	mov	r0, #0
     cf0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     cf4:	e5941084 	ldr	r1, [r4, #132]	@ 0x84
     cf8:	ebfffe71 	bl	0x6c4
     cfc:	e3500000 	cmp	r0, #0
     d00:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     d04:	128f0e1d 	addne	r0, pc, #464	@ 0x1d0
     d08:	1afffff6 	bne	0xce8
     d0c:	e59460a4 	ldr	r6, [r4, #164]	@ 0xa4
     d10:	e1a02007 	mov	r2, r7
     d14:	e1a01008 	mov	r1, r8
     d18:	e1a00004 	mov	r0, r4
     d1c:	e1560005 	cmp	r6, r5
     d20:	21a06005 	movcs	r6, r5
     d24:	e1a03006 	mov	r3, r6
     d28:	ebffff57 	bl	0xa8c
     d2c:	e1500006 	cmp	r0, r6
     d30:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     d34:	128f0f71 	addne	r0, pc, #452	@ 0x1c4
     d38:	1affffea 	bne	0xce8
     d3c:	e5940084 	ldr	r0, [r4, #132]	@ 0x84
     d40:	e0555006 	subs	r5, r5, r6
     d44:	e0877006 	add	r7, r7, r6
     d48:	e0288096 	mla	r8, r6, r0, r8
     d4c:	01a00009 	moveq	r0, r9
     d50:	1affffed 	bne	0xd0c
     d54:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     d58:	e92d4030 	push	{r4, r5, lr}
     d5c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d60:	e1a05000 	mov	r5, r0
     d64:	e3a00001 	mov	r0, #1
     d68:	eb000a52 	bl	0x36b8
     d6c:	e3a00000 	mov	r0, #0
     d70:	e58d0008 	str	r0, [sp, #8]
     d74:	e1a02000 	mov	r2, r0
     d78:	e1a0100d 	mov	r1, sp
     d7c:	e58d0000 	str	r0, [sp]
     d80:	e58d0004 	str	r0, [sp, #4]
     d84:	e58d001c 	str	r0, [sp, #28]
     d88:	e1a00005 	mov	r0, r5
     d8c:	ebfffe16 	bl	0x5ec
     d90:	e1b04000 	movs	r4, r0
     d94:	0a000005 	beq	0xdb0
     d98:	e5951030 	ldr	r1, [r5, #48]	@ 0x30
     d9c:	e28f0d06 	add	r0, pc, #384	@ 0x180
     da0:	eb000dc8 	bl	0x44c8
     da4:	e1a00004 	mov	r0, r4
     da8:	e28dd024 	add	sp, sp, #36	@ 0x24
     dac:	e8bd8030 	pop	{r4, r5, pc}
     db0:	e3a00002 	mov	r0, #2
     db4:	eb000a3f 	bl	0x36b8
     db8:	e3a00000 	mov	r0, #0
     dbc:	eafffff9 	b	0xda8
     dc0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     dc4:	e59f8178 	ldr	r8, [pc, #376]	@ 0xf44
     dc8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     dcc:	e1a04000 	mov	r4, r0
     dd0:	e30053e8 	movw	r5, #1000	@ 0x3e8
     dd4:	e3a09037 	mov	r9, #55	@ 0x37
     dd8:	e3a0a015 	mov	sl, #21
     ddc:	e3a07001 	mov	r7, #1
     de0:	e3a06000 	mov	r6, #0
     de4:	e58d6008 	str	r6, [sp, #8]
     de8:	e3a02000 	mov	r2, #0
     dec:	e58d601c 	str	r6, [sp, #28]
     df0:	e1a0100d 	mov	r1, sp
     df4:	e1a00004 	mov	r0, r4
     df8:	e88d0600 	stm	sp, {r9, sl}
     dfc:	ebfffdfa 	bl	0x5ec
     e00:	e1b0b000 	movs	fp, r0
     e04:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     e08:	128f0f4e 	addne	r0, pc, #312	@ 0x138
     e0c:	0a000003 	beq	0xe20
     e10:	eb000dac 	bl	0x44c8
     e14:	e1a0000b 	mov	r0, fp
     e18:	e28dd024 	add	sp, sp, #36	@ 0x24
     e1c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
     e20:	e3a00029 	mov	r0, #41	@ 0x29
     e24:	e3a02000 	mov	r2, #0
     e28:	e88d0081 	stm	sp, {r0, r7}
     e2c:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
     e30:	e3100b01 	tst	r0, #1024	@ 0x400
     e34:	05940024 	ldreq	r0, [r4, #36]	@ 0x24
     e38:	13a00000 	movne	r0, #0
     e3c:	059f1128 	ldreq	r1, [pc, #296]	@ 0xf6c
     e40:	00000001 	andeq	r0, r0, r1
     e44:	e58d0008 	str	r0, [sp, #8]
     e48:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
     e4c:	e1a0100d 	mov	r1, sp
     e50:	e1500008 	cmp	r0, r8
     e54:	059d0008 	ldreq	r0, [sp, #8]
     e58:	03800101 	orreq	r0, r0, #1073741824	@ 0x40000000
     e5c:	058d0008 	streq	r0, [sp, #8]
     e60:	e1a00004 	mov	r0, r4
     e64:	ebfffde0 	bl	0x5ec
     e68:	e1b0b000 	movs	fp, r0
     e6c:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
     e70:	128f00f8 	addne	r0, pc, #248	@ 0xf8
     e74:	1affffe5 	bne	0xe10
     e78:	e3a00001 	mov	r0, #1
     e7c:	eb000a0d 	bl	0x36b8
     e80:	e59d000c 	ldr	r0, [sp, #12]
     e84:	e3100102 	tst	r0, #-2147483648	@ 0x80000000
     e88:	0a00004b 	beq	0xfbc
     e8c:	e3550000 	cmp	r5, #0
     e90:	ca00004c 	bgt	0xfc8
     e94:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
     e98:	e28f00f4 	add	r0, pc, #244	@ 0xf4
     e9c:	eb000d89 	bl	0x44c8
     ea0:	e3e00010 	mvn	r0, #16
     ea4:	eaffffdb 	b	0xe18
     ea8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     eac:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     eb0:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     eb4:	62203a64 	eorvs	r3, r0, #100, 20	@ 0x64000
     eb8:	6b636f6c 	blvs	0x18dcc70
     ebc:	6d756e20 	ldclvs	14, cr6, [r5, #-128]!	@ 0xffffff80
     ec0:	20726562 	rsbscs	r6, r2, r2, ror #10
     ec4:	78257830 	stmdavc	r5!, {r4, r5, fp, ip, sp, lr}
     ec8:	63786520 	cmnvs	r8, #32, 10	@ 0x8000000
     ecc:	73646565 	cmnvc	r4, #423624704	@ 0x19400000
     ed0:	78616d20 	stmdavc	r1!, {r5, r8, sl, fp, sp, lr}^
     ed4:	25783028 	ldrbcs	r3, [r8, #-40]!	@ 0xffffffd8
     ed8:	000a2978 	andeq	r2, sl, r8, ror r9
     edc:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     ee0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     ee4:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     ee8:	65532064 	ldrbvs	r2, [r3, #-100]	@ 0xffffff9c
     eec:	6c622074 	stclvs	0, cr2, [r2], #-464	@ 0xfffffe30
     ef0:	206b636f 	rsbcs	r6, fp, pc, ror #6
     ef4:	206e656c 	rsbcs	r6, lr, ip, ror #10
     ef8:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
     efc:	000a6465 	andeq	r6, sl, r5, ror #8
     f00:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     f04:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     f08:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     f0c:	6c622064 	stclvs	0, cr2, [r2], #-400	@ 0xfffffe70
     f10:	206b636f 	rsbcs	r6, fp, pc, ror #6
     f14:	64616572 	strbtvs	r6, [r1], #-1394	@ 0xfffffa8e
     f18:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
     f1c:	0a64656c 	beq	0x191a4d4
     f20:	00000000 	andeq	r0, r0, r0
     f24:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     f28:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     f2c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     f30:	6f672064 	svcvs	0x00672064
     f34:	6c646920 			@ <UNDEFINED> instruction: 0x6c646920
     f38:	61662065 	cmnvs	r6, r5, rrx
     f3c:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
     f40:	0000000a 	andeq	r0, r0, sl
     f44:	00020020 	andeq	r0, r2, r0, lsr #32
     f48:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     f4c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     f50:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     f54:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
     f58:	6120646e 			@ <UNDEFINED> instruction: 0x6120646e
     f5c:	63207070 			@ <UNDEFINED> instruction: 0x63207070
     f60:	6620646d 	strtvs	r6, [r0], -sp, ror #8
     f64:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
     f68:	00000a64 	andeq	r0, r0, r4, ror #20
     f6c:	00ff8000 	rscseq	r8, pc, r0
     f70:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     f74:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     f78:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     f7c:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
     f80:	6320646e 			@ <UNDEFINED> instruction: 0x6320646e
     f84:	3134646d 	teqcc	r4, sp, ror #8
     f88:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
     f8c:	0a64656c 	beq	0x191a544
     f90:	00000000 	andeq	r0, r0, r0
     f94:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
     f98:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     f9c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
     fa0:	61772064 	cmnvs	r7, r4, rrx
     fa4:	63207469 			@ <UNDEFINED> instruction: 0x63207469
     fa8:	20647261 	rsbcs	r7, r4, r1, ror #4
     fac:	74696e69 	strbtvc	r6, [r9], #-3689	@ 0xfffff197
     fb0:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
     fb4:	0a64656c 	beq	0x191a56c
     fb8:	00000000 	andeq	r0, r0, r0
     fbc:	e2555001 	subs	r5, r5, #1
     fc0:	2affff87 	bcs	0xde4
     fc4:	eaffffb2 	b	0xe94
     fc8:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
     fcc:	e1500008 	cmp	r0, r8
     fd0:	159f0228 	ldrne	r0, [pc, #552]	@ 0x1200
     fd4:	15840028 	strne	r0, [r4, #40]	@ 0x28
     fd8:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
     fdc:	e3100b01 	tst	r0, #1024	@ 0x400
     fe0:	0a00000e 	beq	0x1020
     fe4:	e58d6008 	str	r6, [sp, #8]
     fe8:	e3a0003a 	mov	r0, #58	@ 0x3a
     fec:	e58d601c 	str	r6, [sp, #28]
     ff0:	e3a02000 	mov	r2, #0
     ff4:	e88d0081 	stm	sp, {r0, r7}
     ff8:	e1a0100d 	mov	r1, sp
     ffc:	e1a00004 	mov	r0, r4
    1000:	ebfffd79 	bl	0x5ec
    1004:	e1b05000 	movs	r5, r0
    1008:	0a000004 	beq	0x1020
    100c:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    1010:	e28f0f7b 	add	r0, pc, #492	@ 0x1ec
    1014:	eb000d2b 	bl	0x44c8
    1018:	e1a00005 	mov	r0, r5
    101c:	eaffff7d 	b	0xe18
    1020:	e59d000c 	ldr	r0, [sp, #12]
    1024:	e5840050 	str	r0, [r4, #80]	@ 0x50
    1028:	e7e00f50 	ubfx	r0, r0, #30, #1
    102c:	e584003c 	str	r0, [r4, #60]	@ 0x3c
    1030:	e3a00000 	mov	r0, #0
    1034:	e1c467bc 	strh	r6, [r4, #124]	@ 0x7c
    1038:	eaffff76 	b	0xe18
    103c:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    1040:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1044:	e1a04000 	mov	r4, r0
    1048:	e3025710 	movw	r5, #10000	@ 0x2710
    104c:	ebffff41 	bl	0xd58
    1050:	e3a08000 	mov	r8, #0
    1054:	e59f01cc 	ldr	r0, [pc, #460]	@ 0x1228
    1058:	e3a07001 	mov	r7, #1
    105c:	e58d801c 	str	r8, [sp, #28]
    1060:	e1a02008 	mov	r2, r8
    1064:	e1a0100d 	mov	r1, sp
    1068:	e58d7000 	str	r7, [sp]
    106c:	e58d7004 	str	r7, [sp, #4]
    1070:	e58d0008 	str	r0, [sp, #8]
    1074:	e1a00004 	mov	r0, r4
    1078:	ebfffd5b 	bl	0x5ec
    107c:	e1b06000 	movs	r6, r0
    1080:	1a00001b 	bne	0x10f4
    1084:	e3a00001 	mov	r0, #1
    1088:	eb00098a 	bl	0x36b8
    108c:	e59f9198 	ldr	r9, [pc, #408]	@ 0x122c
    1090:	e58d7000 	str	r7, [sp]
    1094:	e58d7004 	str	r7, [sp, #4]
    1098:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
    109c:	e3100b01 	tst	r0, #1024	@ 0x400
    10a0:	13a00000 	movne	r0, #0
    10a4:	1a000005 	bne	0x10c0
    10a8:	e5940024 	ldr	r0, [r4, #36]	@ 0x24
    10ac:	e59d100c 	ldr	r1, [sp, #12]
    10b0:	e0000001 	and	r0, r0, r1
    10b4:	e0000009 	and	r0, r0, r9
    10b8:	e2011206 	and	r1, r1, #1610612736	@ 0x60000000
    10bc:	e1800001 	orr	r0, r0, r1
    10c0:	e58d0008 	str	r0, [sp, #8]
    10c4:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
    10c8:	e3a02000 	mov	r2, #0
    10cc:	e1a0100d 	mov	r1, sp
    10d0:	e3100b02 	tst	r0, #2048	@ 0x800
    10d4:	159d0008 	ldrne	r0, [sp, #8]
    10d8:	13800101 	orrne	r0, r0, #1073741824	@ 0x40000000
    10dc:	158d0008 	strne	r0, [sp, #8]
    10e0:	e1a00004 	mov	r0, r4
    10e4:	e58d801c 	str	r8, [sp, #28]
    10e8:	ebfffd3f 	bl	0x5ec
    10ec:	e1b06000 	movs	r6, r0
    10f0:	0a000005 	beq	0x110c
    10f4:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    10f8:	e28f0e13 	add	r0, pc, #304	@ 0x130
    10fc:	eb000cf1 	bl	0x44c8
    1100:	e1a00006 	mov	r0, r6
    1104:	e28dd024 	add	sp, sp, #36	@ 0x24
    1108:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    110c:	e3a00001 	mov	r0, #1
    1110:	eb000968 	bl	0x36b8
    1114:	e59d000c 	ldr	r0, [sp, #12]
    1118:	e3100102 	tst	r0, #-2147483648	@ 0x80000000
    111c:	0a000006 	beq	0x113c
    1120:	e3550000 	cmp	r5, #0
    1124:	ca000007 	bgt	0x1148
    1128:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    112c:	e28f0e12 	add	r0, pc, #288	@ 0x120
    1130:	eb000ce4 	bl	0x44c8
    1134:	e3e00010 	mvn	r0, #16
    1138:	eafffff1 	b	0x1104
    113c:	e2555001 	subs	r5, r5, #1
    1140:	2affffd2 	bcs	0x1090
    1144:	eafffff7 	b	0x1128
    1148:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
    114c:	e3100b01 	tst	r0, #1024	@ 0x400
    1150:	0a000008 	beq	0x1178
    1154:	e3a0003a 	mov	r0, #58	@ 0x3a
    1158:	e3a02000 	mov	r2, #0
    115c:	e88d0181 	stm	sp, {r0, r7, r8}
    1160:	e1a0100d 	mov	r1, sp
    1164:	e1a00004 	mov	r0, r4
    1168:	e58d801c 	str	r8, [sp, #28]
    116c:	ebfffd1e 	bl	0x5ec
    1170:	e3500000 	cmp	r0, #0
    1174:	1affffe2 	bne	0x1104
    1178:	e3a00801 	mov	r0, #65536	@ 0x10000
    117c:	e5840028 	str	r0, [r4, #40]	@ 0x28
    1180:	e59d000c 	ldr	r0, [sp, #12]
    1184:	e5840050 	str	r0, [r4, #80]	@ 0x50
    1188:	e7e00f50 	ubfx	r0, r0, #30, #1
    118c:	e584003c 	str	r0, [r4, #60]	@ 0x3c
    1190:	e3a00000 	mov	r0, #0
    1194:	e1c477bc 	strh	r7, [r4, #124]	@ 0x7c
    1198:	eaffffd9 	b	0x1104
    119c:	e92d4030 	push	{r4, r5, lr}
    11a0:	e24dd034 	sub	sp, sp, #52	@ 0x34
    11a4:	e1a05000 	mov	r5, r0
    11a8:	e3a00008 	mov	r0, #8
    11ac:	e28d2020 	add	r2, sp, #32
    11b0:	e58d0000 	str	r0, [sp]
    11b4:	e3a00015 	mov	r0, #21
    11b8:	e58d0004 	str	r0, [sp, #4]
    11bc:	e3a00000 	mov	r0, #0
    11c0:	e58d0008 	str	r0, [sp, #8]
    11c4:	e1cd01fc 	strd	r0, [sp, #28]
    11c8:	e3001200 	movw	r1, #512	@ 0x200
    11cc:	e3a00001 	mov	r0, #1
    11d0:	e58d0024 	str	r0, [sp, #36]	@ 0x24
    11d4:	e1cd02f8 	strd	r0, [sp, #40]	@ 0x28
    11d8:	e1a0100d 	mov	r1, sp
    11dc:	e1a00005 	mov	r0, r5
    11e0:	ebfffd01 	bl	0x5ec
    11e4:	e1b04000 	movs	r4, r0
    11e8:	15951030 	ldrne	r1, [r5, #48]	@ 0x30
    11ec:	128f0088 	addne	r0, pc, #136	@ 0x88
    11f0:	1b000cb4 	blne	0x44c8
    11f4:	e28dd034 	add	sp, sp, #52	@ 0x34
    11f8:	e1a00004 	mov	r0, r4
    11fc:	e8bd8030 	pop	{r4, r5, pc}
    1200:	00020010 	andeq	r0, r2, r0, lsl r0
    1204:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1208:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    120c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1210:	70732064 	rsbsvc	r2, r3, r4, rrx
    1214:	65722069 	ldrbvs	r2, [r2, #-105]!	@ 0xffffff97
    1218:	6f206461 	svcvs	0x00206461
    121c:	66207263 	strtvs	r7, [r0], -r3, ror #4
    1220:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1224:	00000a64 	andeq	r0, r0, r4, ror #20
    1228:	40ff8000 	rscsmi	r8, pc, r0
    122c:	007fff80 	rsbseq	pc, pc, r0, lsl #31
    1230:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1234:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1238:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    123c:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
    1240:	6f20646e 	svcvs	0x0020646e
    1244:	6f632070 	svcvs	0x00632070
    1248:	6620646e 	strtvs	r6, [r0], -lr, ror #8
    124c:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1250:	00000a64 	andeq	r0, r0, r4, ror #20
    1254:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1258:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    125c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1260:	61772064 	cmnvs	r7, r4, rrx
    1264:	66207469 	strtvs	r7, [r0], -r9, ror #8
    1268:	6d20726f 	stcvs	2, cr7, [r0, #-444]!	@ 0xfffffe44
    126c:	6920636d 	stmdbvs	r0!, {r0, r2, r3, r5, r6, r8, r9, sp, lr}
    1270:	2074696e 	rsbscs	r6, r4, lr, ror #18
    1274:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    1278:	000a6465 	andeq	r6, sl, r5, ror #8
    127c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1280:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1284:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1288:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
    128c:	6520646e 	strvs	r6, [r0, #-1134]!	@ 0xfffffb92
    1290:	63207478 			@ <UNDEFINED> instruction: 0x63207478
    1294:	66206473 			@ <UNDEFINED> instruction: 0x66206473
    1298:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    129c:	00000a64 	andeq	r0, r0, r4, ror #20
    12a0:	e92d4070 	push	{r4, r5, r6, lr}
    12a4:	e24dd020 	sub	sp, sp, #32
    12a8:	e1a06000 	mov	r6, r0
    12ac:	e3a00006 	mov	r0, #6
    12b0:	e30053e8 	movw	r5, #1000	@ 0x3e8
    12b4:	e1a0100d 	mov	r1, sp
    12b8:	e58d0000 	str	r0, [sp]
    12bc:	e3a0001d 	mov	r0, #29
    12c0:	e58d0004 	str	r0, [sp, #4]
    12c4:	e1a00802 	lsl	r0, r2, #16
    12c8:	e1800403 	orr	r0, r0, r3, lsl #8
    12cc:	e3800403 	orr	r0, r0, #50331648	@ 0x3000000
    12d0:	e58d0008 	str	r0, [sp, #8]
    12d4:	e3a00000 	mov	r0, #0
    12d8:	e58d001c 	str	r0, [sp, #28]
    12dc:	e1a02000 	mov	r2, r0
    12e0:	e1a00006 	mov	r0, r6
    12e4:	ebfffcc0 	bl	0x5ec
    12e8:	e1b04000 	movs	r4, r0
    12ec:	15961030 	ldrne	r1, [r6, #48]	@ 0x30
    12f0:	128f0e2d 	addne	r0, pc, #720	@ 0x2d0
    12f4:	1b000c73 	blne	0x44c8
    12f8:	e1a01005 	mov	r1, r5
    12fc:	e1a00006 	mov	r0, r6
    1300:	ebfffcbb 	bl	0x5f4
    1304:	e28dd020 	add	sp, sp, #32
    1308:	e1a00004 	mov	r0, r4
    130c:	e8bd8070 	pop	{r4, r5, r6, pc}
    1310:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    1314:	e1a04000 	mov	r4, r0
    1318:	e3a00000 	mov	r0, #0
    131c:	e24ddf81 	sub	sp, sp, #516	@ 0x204
    1320:	e3a05005 	mov	r5, #5
    1324:	e5840048 	str	r0, [r4, #72]	@ 0x48
    1328:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
    132c:	e3100b01 	tst	r0, #1024	@ 0x400
    1330:	1a000033 	bne	0x1404
    1334:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
    1338:	e59f12a8 	ldr	r1, [pc, #680]	@ 0x15e8
    133c:	e1510000 	cmp	r1, r0
    1340:	8a00002f 	bhi	0x1404
    1344:	e3000100 	movw	r0, #256	@ 0x100
    1348:	e1a0100d 	mov	r1, sp
    134c:	e5840048 	str	r0, [r4, #72]	@ 0x48
    1350:	e1a00004 	mov	r0, r4
    1354:	ebffff90 	bl	0x119c
    1358:	e1b06000 	movs	r6, r0
    135c:	05dd00c4 	ldrbeq	r0, [sp, #196]	@ 0xc4
    1360:	128f0fa1 	addne	r0, pc, #644	@ 0x284
    1364:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1368:	0200700f 	andeq	r7, r0, #15
    136c:	0a000003 	beq	0x1380
    1370:	eb000c54 	bl	0x44c8
    1374:	e1a00006 	mov	r0, r6
    1378:	e28ddf81 	add	sp, sp, #516	@ 0x204
    137c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    1380:	e3a03001 	mov	r3, #1
    1384:	e3a020b9 	mov	r2, #185	@ 0xb9
    1388:	e1a01003 	mov	r1, r3
    138c:	e1a00004 	mov	r0, r4
    1390:	ebffffc2 	bl	0x12a0
    1394:	e1b06000 	movs	r6, r0
    1398:	0a000007 	beq	0x13bc
    139c:	e28f0f9b 	add	r0, pc, #620	@ 0x26c
    13a0:	eb000c48 	bl	0x44c8
    13a4:	e2455001 	sub	r5, r5, #1
    13a8:	e3750001 	cmn	r5, #1
    13ac:	05941030 	ldreq	r1, [r4, #48]	@ 0x30
    13b0:	028f0f9e 	addeq	r0, pc, #632	@ 0x278
    13b4:	1afffff1 	bne	0x1380
    13b8:	eaffffec 	b	0x1370
    13bc:	e1a0100d 	mov	r1, sp
    13c0:	e1a00004 	mov	r0, r4
    13c4:	ebffff74 	bl	0x119c
    13c8:	e1b05000 	movs	r5, r0
    13cc:	0a000004 	beq	0x13e4
    13d0:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    13d4:	e28f0f9e 	add	r0, pc, #632	@ 0x278
    13d8:	eb000c3a 	bl	0x44c8
    13dc:	e1a00005 	mov	r0, r5
    13e0:	eaffffe4 	b	0x1378
    13e4:	e5dd00b9 	ldrb	r0, [sp, #185]	@ 0xb9
    13e8:	e3500000 	cmp	r0, #0
    13ec:	0affffe1 	beq	0x1378
    13f0:	e5940048 	ldr	r0, [r4, #72]	@ 0x48
    13f4:	e3170002 	tst	r7, #2
    13f8:	13800011 	orrne	r0, r0, #17
    13fc:	03800001 	orreq	r0, r0, #1
    1400:	e5840048 	str	r0, [r4, #72]	@ 0x48
    1404:	e3a00000 	mov	r0, #0
    1408:	eaffffda 	b	0x1378
    140c:	e92d4010 	push	{r4, lr}
    1410:	e1a04001 	mov	r4, r1
    1414:	ebfffcb8 	bl	0x6fc
    1418:	e3500000 	cmp	r0, #0
    141c:	03e00000 	mvneq	r0, #0
    1420:	08bd8010 	popeq	{r4, pc}
    1424:	e3a020b3 	mov	r2, #179	@ 0xb3
    1428:	e3a01001 	mov	r1, #1
    142c:	e5d0307e 	ldrb	r3, [r0, #126]	@ 0x7e
    1430:	e7c23014 	bfi	r3, r4, #0, #3
    1434:	e8bd4010 	pop	{r4, lr}
    1438:	eaffff98 	b	0x12a0
    143c:	e92d4030 	push	{r4, r5, lr}
    1440:	e24dd034 	sub	sp, sp, #52	@ 0x34
    1444:	e3a04006 	mov	r4, #6
    1448:	e59d5040 	ldr	r5, [sp, #64]	@ 0x40
    144c:	e58d4000 	str	r4, [sp]
    1450:	e3a04015 	mov	r4, #21
    1454:	e58d4004 	str	r4, [sp, #4]
    1458:	e3e044ff 	mvn	r4, #-16777216	@ 0xff000000
    145c:	e1844f81 	orr	r4, r4, r1, lsl #31
    1460:	e1a01102 	lsl	r1, r2, #2
    1464:	e3a0200f 	mov	r2, #15
    1468:	e1c42112 	bic	r2, r4, r2, lsl r1
    146c:	e1821113 	orr	r1, r2, r3, lsl r1
    1470:	e28d401c 	add	r4, sp, #28
    1474:	e58d1008 	str	r1, [sp, #8]
    1478:	e3a01000 	mov	r1, #0
    147c:	e28d2020 	add	r2, sp, #32
    1480:	e8840022 	stm	r4, {r1, r5}
    1484:	e3a01040 	mov	r1, #64	@ 0x40
    1488:	e58d102c 	str	r1, [sp, #44]	@ 0x2c
    148c:	e3a01001 	mov	r1, #1
    1490:	e58d1028 	str	r1, [sp, #40]	@ 0x28
    1494:	e58d1024 	str	r1, [sp, #36]	@ 0x24
    1498:	e1a0100d 	mov	r1, sp
    149c:	ebfffc52 	bl	0x5ec
    14a0:	e28dd034 	add	sp, sp, #52	@ 0x34
    14a4:	e8bd8030 	pop	{r4, r5, pc}
    14a8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    14ac:	e24dd07c 	sub	sp, sp, #124	@ 0x7c
    14b0:	e3a06000 	mov	r6, #0
    14b4:	e5806048 	str	r6, [r0, #72]	@ 0x48
    14b8:	e1a04000 	mov	r4, r0
    14bc:	e1d004bc 	ldrh	r0, [r0, #76]	@ 0x4c
    14c0:	e3100b01 	tst	r0, #1024	@ 0x400
    14c4:	1a0000ac 	bne	0x177c
    14c8:	e28d1004 	add	r1, sp, #4
    14cc:	e3a00037 	mov	r0, #55	@ 0x37
    14d0:	e3a07015 	mov	r7, #21
    14d4:	e3a02000 	mov	r2, #0
    14d8:	e8810081 	stm	r1, {r0, r7}
    14dc:	e1d407bc 	ldrh	r0, [r4, #124]	@ 0x7c
    14e0:	e1a00800 	lsl	r0, r0, #16
    14e4:	e58d000c 	str	r0, [sp, #12]
    14e8:	e1a00004 	mov	r0, r4
    14ec:	e58d6020 	str	r6, [sp, #32]
    14f0:	ebfffc3d 	bl	0x5ec
    14f4:	e1b05000 	movs	r5, r0
    14f8:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    14fc:	128f0f5d 	addne	r0, pc, #372	@ 0x174
    1500:	0a000003 	beq	0x1514
    1504:	eb000bef 	bl	0x44c8
    1508:	e1a00005 	mov	r0, r5
    150c:	e28dd07c 	add	sp, sp, #124	@ 0x7c
    1510:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    1514:	e28d1004 	add	r1, sp, #4
    1518:	e58d600c 	str	r6, [sp, #12]
    151c:	e3a00033 	mov	r0, #51	@ 0x33
    1520:	e58d6020 	str	r6, [sp, #32]
    1524:	e28d9074 	add	r9, sp, #116	@ 0x74
    1528:	e3a05003 	mov	r5, #3
    152c:	e8810081 	stm	r1, {r0, r7}
    1530:	e3a07008 	mov	r7, #8
    1534:	e3a08001 	mov	r8, #1
    1538:	e28d2064 	add	r2, sp, #100	@ 0x64
    153c:	e1a00004 	mov	r0, r4
    1540:	e28d1004 	add	r1, sp, #4
    1544:	e58d7070 	str	r7, [sp, #112]	@ 0x70
    1548:	e58d806c 	str	r8, [sp, #108]	@ 0x6c
    154c:	e58d9064 	str	r9, [sp, #100]	@ 0x64
    1550:	e58d8068 	str	r8, [sp, #104]	@ 0x68
    1554:	ebfffc24 	bl	0x5ec
    1558:	e1b06000 	movs	r6, r0
    155c:	0a000007 	beq	0x1580
    1560:	e2455001 	sub	r5, r5, #1
    1564:	e3750001 	cmn	r5, #1
    1568:	05941030 	ldreq	r1, [r4, #48]	@ 0x30
    156c:	028f0f4a 	addeq	r0, pc, #296	@ 0x128
    1570:	1afffff0 	bne	0x1538
    1574:	eb000bd3 	bl	0x44c8
    1578:	e1a00006 	mov	r0, r6
    157c:	eaffffe2 	b	0x150c
    1580:	e59d0074 	ldr	r0, [sp, #116]	@ 0x74
    1584:	e51f238c 	ldr	r2, [pc, #-908]	@ 0x1200
    1588:	e6bf0f30 	rev	r0, r0
    158c:	e5840054 	str	r0, [r4, #84]	@ 0x54
    1590:	e59d1078 	ldr	r1, [sp, #120]	@ 0x78
    1594:	e6bf1f31 	rev	r1, r1
    1598:	e5841058 	str	r1, [r4, #88]	@ 0x58
    159c:	e7e31c50 	ubfx	r1, r0, #24, #4
    15a0:	e3510000 	cmp	r1, #0
    15a4:	0a000005 	beq	0x15c0
    15a8:	e3510001 	cmp	r1, #1
    15ac:	0282100a 	addeq	r1, r2, #10
    15b0:	0a000041 	beq	0x16bc
    15b4:	e3510002 	cmp	r1, #2
    15b8:	051f167c 	ldreq	r1, [pc, #-1660]	@ 0xf44
    15bc:	0a00003e 	beq	0x16bc
    15c0:	e5842028 	str	r2, [r4, #40]	@ 0x28
    15c4:	ea00003d 	b	0x16c0
    15c8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    15cc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    15d0:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    15d4:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    15d8:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    15dc:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
    15e0:	0a64656c 	beq	0x191ab98
    15e4:	00000000 	andeq	r0, r0, r0
    15e8:	00010040 	andeq	r0, r1, r0, asr #32
    15ec:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    15f0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    15f4:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    15f8:	65672064 	strbvs	r2, [r7, #-100]!	@ 0xffffff9c
    15fc:	78652074 	stmdavc	r5!, {r2, r4, r5, r6, sp}^
    1600:	73632074 	cmnvc	r3, #116	@ 0x74
    1604:	61662064 	cmnvs	r6, r4, rrx
    1608:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
    160c:	0000000a 	andeq	r0, r0, sl
    1610:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1614:	72203a5d 	eorvc	r3, r0, #380928	@ 0x5d000
    1618:	79727465 	ldmdbvc	r2!, {r0, r2, r5, r6, sl, ip, sp, lr}^
    161c:	636d6d20 	cmnvs	sp, #32, 26	@ 0x800
    1620:	69777320 	ldmdbvs	r7!, {r5, r8, r9, ip, sp, lr}^
    1624:	28686374 	stmdacs	r8!, {r2, r4, r5, r6, r8, r9, sp, lr}^
    1628:	36646d63 	strbtcc	r6, [r4], -r3, ror #26
    162c:	00000a29 	andeq	r0, r0, r9, lsr #20
    1630:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1634:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1638:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    163c:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    1640:	65676e61 	strbvs	r6, [r7, #-3681]!	@ 0xfffff19f
    1644:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    1648:	66207368 	strtvs	r7, [r0], -r8, ror #6
    164c:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1650:	00000a64 	andeq	r0, r0, r4, ror #20
    1654:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1658:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    165c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1660:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
    1664:	6520646e 	strvs	r6, [r0, #-1134]!	@ 0xfffffb92
    1668:	63207478 			@ <UNDEFINED> instruction: 0x63207478
    166c:	66206473 			@ <UNDEFINED> instruction: 0x66206473
    1670:	646c6961 	strbtvs	r6, [ip], #-2401	@ 0xfffff69f
    1674:	0000000a 	andeq	r0, r0, sl
    1678:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    167c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1680:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1684:	65532064 	ldrbvs	r2, [r3, #-100]	@ 0xffffff9c
    1688:	6120646e 			@ <UNDEFINED> instruction: 0x6120646e
    168c:	63207070 			@ <UNDEFINED> instruction: 0x63207070
    1690:	6620646d 	strtvs	r6, [r0], -sp, ror #8
    1694:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1698:	00000a64 	andeq	r0, r0, r4, ror #20
    169c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    16a0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    16a4:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    16a8:	65532064 	ldrbvs	r2, [r3, #-100]	@ 0xffffff9c
    16ac:	7320646e 			@ <UNDEFINED> instruction: 0x7320646e
    16b0:	66207263 	strtvs	r7, [r0], -r3, ror #4
    16b4:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    16b8:	00000a64 	andeq	r0, r0, r4, ror #20
    16bc:	e5841028 	str	r1, [r4, #40]	@ 0x28
    16c0:	e3100701 	tst	r0, #262144	@ 0x40000
    16c4:	15940048 	ldrne	r0, [r4, #72]	@ 0x48
    16c8:	13800c01 	orrne	r0, r0, #256	@ 0x100
    16cc:	15840048 	strne	r0, [r4, #72]	@ 0x48
    16d0:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
    16d4:	e1500002 	cmp	r0, r2
    16d8:	128d7024 	addne	r7, sp, #36	@ 0x24
    16dc:	13a05004 	movne	r5, #4
    16e0:	0a000025 	beq	0x177c
    16e4:	ea00000d 	b	0x1720
    16e8:	e3a02000 	mov	r2, #0
    16ec:	e3a03001 	mov	r3, #1
    16f0:	e1a01002 	mov	r1, r2
    16f4:	e1a00004 	mov	r0, r4
    16f8:	e58d7000 	str	r7, [sp]
    16fc:	ebffff4e 	bl	0x143c
    1700:	e1b06000 	movs	r6, r0
    1704:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1708:	128f0fd7 	addne	r0, pc, #860	@ 0x35c
    170c:	1affff98 	bne	0x1574
    1710:	e59d0040 	ldr	r0, [sp, #64]	@ 0x40
    1714:	e6bf0f30 	rev	r0, r0
    1718:	e3100802 	tst	r0, #131072	@ 0x20000
    171c:	0a000001 	beq	0x1728
    1720:	e2555001 	subs	r5, r5, #1
    1724:	2affffef 	bcs	0x16e8
    1728:	e59d0030 	ldr	r0, [sp, #48]	@ 0x30
    172c:	e6bf0f30 	rev	r0, r0
    1730:	e2100802 	ands	r0, r0, #131072	@ 0x20000
    1734:	0affff74 	beq	0x150c
    1738:	e3a03001 	mov	r3, #1
    173c:	e3a02000 	mov	r2, #0
    1740:	e1a01003 	mov	r1, r3
    1744:	e1a00004 	mov	r0, r4
    1748:	e58d7000 	str	r7, [sp]
    174c:	ebffff3a 	bl	0x143c
    1750:	e1b05000 	movs	r5, r0
    1754:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1758:	128f0fcf 	addne	r0, pc, #828	@ 0x33c
    175c:	1affff68 	bne	0x1504
    1760:	e59d0034 	ldr	r0, [sp, #52]	@ 0x34
    1764:	e6bf0f30 	rev	r0, r0
    1768:	e200040f 	and	r0, r0, #251658240	@ 0xf000000
    176c:	e3500401 	cmp	r0, #16777216	@ 0x1000000
    1770:	05940048 	ldreq	r0, [r4, #72]	@ 0x48
    1774:	03800001 	orreq	r0, r0, #1
    1778:	05840048 	streq	r0, [r4, #72]	@ 0x48
    177c:	e3a00000 	mov	r0, #0
    1780:	eaffff61 	b	0x150c
    1784:	e590109c 	ldr	r1, [r0, #156]	@ 0x9c
    1788:	e12fff11 	bx	r1
    178c:	e5902038 	ldr	r2, [r0, #56]	@ 0x38
    1790:	e1520001 	cmp	r2, r1
    1794:	31a01002 	movcc	r1, r2
    1798:	e5902034 	ldr	r2, [r0, #52]	@ 0x34
    179c:	e1520001 	cmp	r2, r1
    17a0:	81a01002 	movhi	r1, r2
    17a4:	e5801044 	str	r1, [r0, #68]	@ 0x44
    17a8:	e590109c 	ldr	r1, [r0, #156]	@ 0x9c
    17ac:	e12fff11 	bx	r1
    17b0:	e5801040 	str	r1, [r0, #64]	@ 0x40
    17b4:	e590109c 	ldr	r1, [r0, #156]	@ 0x9c
    17b8:	e12fff11 	bx	r1
    17bc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    17c0:	e24ddf8b 	sub	sp, sp, #556	@ 0x22c
    17c4:	e1a04000 	mov	r4, r0
    17c8:	e1d004bc 	ldrh	r0, [r0, #76]	@ 0x4c
    17cc:	e28d1f82 	add	r1, sp, #520	@ 0x208
    17d0:	e3a06000 	mov	r6, #0
    17d4:	e3a09007 	mov	r9, #7
    17d8:	e3100b01 	tst	r0, #1024	@ 0x400
    17dc:	e58d6210 	str	r6, [sp, #528]	@ 0x210
    17e0:	13a0000a 	movne	r0, #10
    17e4:	03a00002 	moveq	r0, #2
    17e8:	e58d6224 	str	r6, [sp, #548]	@ 0x224
    17ec:	e30073e8 	movw	r7, #1000	@ 0x3e8
    17f0:	e8810201 	stm	r1, {r0, r9}
    17f4:	e1a02006 	mov	r2, r6
    17f8:	e1a00004 	mov	r0, r4
    17fc:	ebfffb7a 	bl	0x5ec
    1800:	e1b05000 	movs	r5, r0
    1804:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1808:	128f0fae 	addne	r0, pc, #696	@ 0x2b8
    180c:	0a000001 	beq	0x1818
    1810:	eb000b2c 	bl	0x44c8
    1814:	ea000091 	b	0x1a60
    1818:	e28d5f85 	add	r5, sp, #532	@ 0x214
    181c:	e3a08015 	mov	r8, #21
    1820:	e895000f 	ldm	r5, {r0, r1, r2, r3}
    1824:	e284506c 	add	r5, r4, #108	@ 0x6c
    1828:	e885000f 	stm	r5, {r0, r1, r2, r3}
    182c:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
    1830:	e3100b01 	tst	r0, #1024	@ 0x400
    1834:	1a000013 	bne	0x1888
    1838:	e3a00003 	mov	r0, #3
    183c:	e58d0208 	str	r0, [sp, #520]	@ 0x208
    1840:	e1d407bc 	ldrh	r0, [r4, #124]	@ 0x7c
    1844:	e28d1f82 	add	r1, sp, #520	@ 0x208
    1848:	e3a02000 	mov	r2, #0
    184c:	e58d820c 	str	r8, [sp, #524]	@ 0x20c
    1850:	e1a00800 	lsl	r0, r0, #16
    1854:	e58d0210 	str	r0, [sp, #528]	@ 0x210
    1858:	e1a00004 	mov	r0, r4
    185c:	e58d6224 	str	r6, [sp, #548]	@ 0x224
    1860:	ebfffb61 	bl	0x5ec
    1864:	e1b05000 	movs	r5, r0
    1868:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    186c:	128f0fa2 	addne	r0, pc, #648	@ 0x288
    1870:	1affffe6 	bne	0x1810
    1874:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
    1878:	e3100802 	tst	r0, #131072	@ 0x20000
    187c:	159d0214 	ldrne	r0, [sp, #532]	@ 0x214
    1880:	11a00820 	lsrne	r0, r0, #16
    1884:	11c407bc 	strhne	r0, [r4, #124]	@ 0x7c
    1888:	e28d1f82 	add	r1, sp, #520	@ 0x208
    188c:	e3a00009 	mov	r0, #9
    1890:	e3a02000 	mov	r2, #0
    1894:	e8810201 	stm	r1, {r0, r9}
    1898:	e1d407bc 	ldrh	r0, [r4, #124]	@ 0x7c
    189c:	e1a00800 	lsl	r0, r0, #16
    18a0:	e58d0210 	str	r0, [sp, #528]	@ 0x210
    18a4:	e1a00004 	mov	r0, r4
    18a8:	e58d6224 	str	r6, [sp, #548]	@ 0x224
    18ac:	ebfffb4e 	bl	0x5ec
    18b0:	e1a05000 	mov	r5, r0
    18b4:	e1a01007 	mov	r1, r7
    18b8:	e1a00004 	mov	r0, r4
    18bc:	ebfffb4c 	bl	0x5f4
    18c0:	e3550000 	cmp	r5, #0
    18c4:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    18c8:	128f0f93 	addne	r0, pc, #588	@ 0x24c
    18cc:	1affffcf 	bne	0x1810
    18d0:	e59d0214 	ldr	r0, [sp, #532]	@ 0x214
    18d4:	e584005c 	str	r0, [r4, #92]	@ 0x5c
    18d8:	e59d1218 	ldr	r1, [sp, #536]	@ 0x218
    18dc:	e5841060 	str	r1, [r4, #96]	@ 0x60
    18e0:	e59d021c 	ldr	r0, [sp, #540]	@ 0x21c
    18e4:	e5840064 	str	r0, [r4, #100]	@ 0x64
    18e8:	e59d2220 	ldr	r2, [sp, #544]	@ 0x220
    18ec:	e5842068 	str	r2, [r4, #104]	@ 0x68
    18f0:	e5942028 	ldr	r2, [r4, #40]	@ 0x28
    18f4:	e59fb240 	ldr	fp, [pc, #576]	@ 0x1b3c
    18f8:	e3520801 	cmp	r2, #65536	@ 0x10000
    18fc:	e28ba01e 	add	sl, fp, #30
    1900:	1a000014 	bne	0x1958
    1904:	e59d2214 	ldr	r2, [sp, #532]	@ 0x214
    1908:	e24a302e 	sub	r3, sl, #46	@ 0x2e
    190c:	e7e32d52 	ubfx	r2, r2, #26, #4
    1910:	e3520005 	cmp	r2, #5
    1914:	308ff102 	addcc	pc, pc, r2, lsl #2
    1918:	ea000004 	b	0x1930
    191c:	ea000003 	b	0x1930
    1920:	ea000004 	b	0x1938
    1924:	ea000005 	b	0x1940
    1928:	ea000006 	b	0x1948
    192c:	ea000008 	b	0x1954
    1930:	e5843028 	str	r3, [r4, #40]	@ 0x28
    1934:	ea000007 	b	0x1958
    1938:	e59f2200 	ldr	r2, [pc, #512]	@ 0x1b40
    193c:	ea000002 	b	0x194c
    1940:	e584b028 	str	fp, [r4, #40]	@ 0x28
    1944:	ea000003 	b	0x1958
    1948:	e59f21f4 	ldr	r2, [pc, #500]	@ 0x1b44
    194c:	e5842028 	str	r2, [r4, #40]	@ 0x28
    1950:	ea000000 	b	0x1958
    1954:	e584a028 	str	sl, [r4, #40]	@ 0x28
    1958:	e3a07001 	mov	r7, #1
    195c:	e59d2214 	ldr	r2, [sp, #532]	@ 0x214
    1960:	e59f31e0 	ldr	r3, [pc, #480]	@ 0x1b48
    1964:	e2022007 	and	r2, r2, #7
    1968:	e59f51dc 	ldr	r5, [pc, #476]	@ 0x1b4c
    196c:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    1970:	e59d3214 	ldr	r3, [sp, #532]	@ 0x214
    1974:	e7e331d3 	ubfx	r3, r3, #3, #4
    1978:	e7953103 	ldr	r3, [r5, r3, lsl #2]
    197c:	e0020392 	mul	r2, r2, r3
    1980:	e5842080 	str	r2, [r4, #128]	@ 0x80
    1984:	e59d2218 	ldr	r2, [sp, #536]	@ 0x218
    1988:	e7e32852 	ubfx	r2, r2, #16, #4
    198c:	e1a05217 	lsl	r5, r7, r2
    1990:	e5845084 	str	r5, [r4, #132]	@ 0x84
    1994:	e5942028 	ldr	r2, [r4, #40]	@ 0x28
    1998:	e3120802 	tst	r2, #131072	@ 0x20000
    199c:	15845088 	strne	r5, [r4, #136]	@ 0x88
    19a0:	1a000003 	bne	0x19b4
    19a4:	e59d2220 	ldr	r2, [sp, #544]	@ 0x220
    19a8:	e7e32b52 	ubfx	r2, r2, #22, #4
    19ac:	e1a02217 	lsl	r2, r7, r2
    19b0:	e5842088 	str	r2, [r4, #136]	@ 0x88
    19b4:	e594203c 	ldr	r2, [r4, #60]	@ 0x3c
    19b8:	e3520000 	cmp	r2, #0
    19bc:	11a01d01 	lslne	r1, r1, #26
    19c0:	13a02008 	movne	r2, #8
    19c4:	07e227d0 	ubfxeq	r2, r0, #15, #3
    19c8:	11a01521 	lsrne	r1, r1, #10
    19cc:	11811820 	orrne	r1, r1, r0, lsr #16
    19d0:	07df151f 	bfceq	r1, #10, #22
    19d4:	01a01101 	lsleq	r1, r1, #2
    19d8:	01811f20 	orreq	r1, r1, r0, lsr #30
    19dc:	e2910001 	adds	r0, r1, #1
    19e0:	e2a61000 	adc	r1, r6, #0
    19e4:	e2922002 	adds	r2, r2, #2
    19e8:	fa000d11 	blx	0x4e34
    19ec:	e0832590 	umull	r2, r3, r0, r5
    19f0:	e0213591 	mla	r1, r1, r5, r3
    19f4:	e0201690 	mla	r0, r0, r6, r1
    19f8:	e5840094 	str	r0, [r4, #148]	@ 0x94
    19fc:	e3550c02 	cmp	r5, #512	@ 0x200
    1a00:	e5842090 	str	r2, [r4, #144]	@ 0x90
    1a04:	e3000200 	movw	r0, #512	@ 0x200
    1a08:	85840084 	strhi	r0, [r4, #132]	@ 0x84
    1a0c:	e5941088 	ldr	r1, [r4, #136]	@ 0x88
    1a10:	e3510c02 	cmp	r1, #512	@ 0x200
    1a14:	85840088 	strhi	r0, [r4, #136]	@ 0x88
    1a18:	e1d404bc 	ldrh	r0, [r4, #76]	@ 0x4c
    1a1c:	e3100b01 	tst	r0, #1024	@ 0x400
    1a20:	1a000052 	bne	0x1b70
    1a24:	e3a0001d 	mov	r0, #29
    1a28:	e58d020c 	str	r0, [sp, #524]	@ 0x20c
    1a2c:	e58d9208 	str	r9, [sp, #520]	@ 0x208
    1a30:	e28d1f82 	add	r1, sp, #520	@ 0x208
    1a34:	e1d407bc 	ldrh	r0, [r4, #124]	@ 0x7c
    1a38:	e3a02000 	mov	r2, #0
    1a3c:	e1a00800 	lsl	r0, r0, #16
    1a40:	e58d0210 	str	r0, [sp, #528]	@ 0x210
    1a44:	e1a00004 	mov	r0, r4
    1a48:	e58d6224 	str	r6, [sp, #548]	@ 0x224
    1a4c:	ebfffae6 	bl	0x5ec
    1a50:	e1b05000 	movs	r5, r0
    1a54:	0a000045 	beq	0x1b70
    1a58:	e28f00f0 	add	r0, pc, #240	@ 0xf0
    1a5c:	eb000a99 	bl	0x44c8
    1a60:	e1a00005 	mov	r0, r5
    1a64:	e28ddf8b 	add	sp, sp, #556	@ 0x22c
    1a68:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1a6c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1a70:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1a74:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1a78:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
    1a7c:	206b6365 	rsbcs	r6, fp, r5, ror #6
    1a80:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
    1a84:	65707320 	ldrbvs	r7, [r0, #-800]!	@ 0xfffffce0
    1a88:	73206465 			@ <UNDEFINED> instruction: 0x73206465
    1a8c:	75746174 	ldrbvc	r6, [r4, #-372]!	@ 0xfffffe8c
    1a90:	61662073 	smcvs	25091	@ 0x6203
    1a94:	0a646c69 	beq	0x191cc40
    1a98:	00000000 	andeq	r0, r0, r0
    1a9c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1aa0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1aa4:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1aa8:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    1aac:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    1ab0:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    1ab4:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
    1ab8:	65707320 	ldrbvs	r7, [r0, #-800]!	@ 0xfffffce0
    1abc:	66206465 	strtvs	r6, [r0], -r5, ror #8
    1ac0:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1ac4:	00000a64 	andeq	r0, r0, r4, ror #20
    1ac8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1acc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1ad0:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1ad4:	75502064 	ldrbvc	r2, [r0, #-100]	@ 0xffffff9c
    1ad8:	68742074 	ldmdavs	r4!, {r2, r4, r5, r6, sp}^
    1adc:	61432065 	cmpvs	r3, r5, rrx
    1ae0:	69206472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, sp, lr}
    1ae4:	6449206e 	strbvs	r2, [r9], #-110	@ 0xffffff92
    1ae8:	69746e65 	ldmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    1aec:	4d207966 			@ <UNDEFINED> instruction: 0x4d207966
    1af0:	2065646f 	rsbcs	r6, r5, pc, ror #8
    1af4:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    1af8:	000a6465 	andeq	r6, sl, r5, ror #8
    1afc:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1b00:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1b04:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1b08:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
    1b0c:	7220646e 	eorvc	r6, r0, #1845493760	@ 0x6e000000
    1b10:	66206163 	strtvs	r6, [r0], -r3, ror #2
    1b14:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1b18:	00000a64 	andeq	r0, r0, r4, ror #20
    1b1c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1b20:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1b24:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1b28:	65672064 	strbvs	r2, [r7, #-100]!	@ 0xffffff9c
    1b2c:	73632074 	cmnvc	r3, #116	@ 0x74
    1b30:	61662064 	cmnvs	r6, r4, rrx
    1b34:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
    1b38:	0000000a 	andeq	r0, r0, sl
    1b3c:	00010022 	andeq	r0, r1, r2, lsr #32
    1b40:	00010014 	andeq	r0, r1, r4, lsl r0
    1b44:	00010030 	andeq	r0, r1, r0, lsr r0
    1b48:	00005184 	andeq	r5, r0, r4, lsl #3
    1b4c:	00005194 	muleq	r0, r4, r1
    1b50:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1b54:	53203a5d 			@ <UNDEFINED> instruction: 0x53203a5d
    1b58:	63656c65 	cmnvs	r5, #25856	@ 0x6500
    1b5c:	68742074 	ldmdavs	r4!, {r2, r4, r5, r6, sp}^
    1b60:	61632065 	cmnvs	r3, r5, rrx
    1b64:	66206472 			@ <UNDEFINED> instruction: 0x66206472
    1b68:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1b6c:	00000a64 	andeq	r0, r0, r4, ror #20
    1b70:	e584708c 	str	r7, [r4, #140]	@ 0x8c
    1b74:	e3a000ff 	mov	r0, #255	@ 0xff
    1b78:	e5c4007e 	strb	r0, [r4, #126]	@ 0x7e
    1b7c:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
    1b80:	e59f5320 	ldr	r5, [pc, #800]	@ 0x1ea8
    1b84:	e3100802 	tst	r0, #131072	@ 0x20000
    1b88:	1a000044 	bne	0x1ca0
    1b8c:	e15a0000 	cmp	sl, r0
    1b90:	8a000042 	bhi	0x1ca0
    1b94:	e28d1008 	add	r1, sp, #8
    1b98:	e1a00004 	mov	r0, r4
    1b9c:	ebfffd7e 	bl	0x119c
    1ba0:	e3500000 	cmp	r0, #0
    1ba4:	1a00002d 	bne	0x1c60
    1ba8:	e5dd10c8 	ldrb	r1, [sp, #200]	@ 0xc8
    1bac:	e3510008 	cmp	r1, #8
    1bb0:	308ff101 	addcc	pc, pc, r1, lsl #2
    1bb4:	ea000016 	b	0x1c14
    1bb8:	ea000006 	b	0x1bd8
    1bbc:	ea000007 	b	0x1be0
    1bc0:	ea000008 	b	0x1be8
    1bc4:	ea000009 	b	0x1bf0
    1bc8:	ea000011 	b	0x1c14
    1bcc:	ea00000a 	b	0x1bfc
    1bd0:	ea00000b 	b	0x1c04
    1bd4:	ea00000c 	b	0x1c0c
    1bd8:	e584a028 	str	sl, [r4, #40]	@ 0x28
    1bdc:	ea00000e 	b	0x1c1c
    1be0:	e5845028 	str	r5, [r4, #40]	@ 0x28
    1be4:	ea00000c 	b	0x1c1c
    1be8:	e59f02bc 	ldr	r0, [pc, #700]	@ 0x1eac
    1bec:	ea000000 	b	0x1bf4
    1bf0:	e59f02b8 	ldr	r0, [pc, #696]	@ 0x1eb0
    1bf4:	e5840028 	str	r0, [r4, #40]	@ 0x28
    1bf8:	ea000007 	b	0x1c1c
    1bfc:	e59f02b0 	ldr	r0, [pc, #688]	@ 0x1eb4
    1c00:	eafffffb 	b	0x1bf4
    1c04:	e59f02ac 	ldr	r0, [pc, #684]	@ 0x1eb8
    1c08:	e5840028 	str	r0, [r4, #40]	@ 0x28
    1c0c:	e59f02a8 	ldr	r0, [pc, #680]	@ 0x1ebc
    1c10:	eafffff7 	b	0x1bf4
    1c14:	e3500000 	cmp	r0, #0
    1c18:	1a000010 	bne	0x1c60
    1c1c:	e5dd00c8 	ldrb	r0, [sp, #200]	@ 0xc8
    1c20:	e3500002 	cmp	r0, #2
    1c24:	3a00000d 	bcc	0x1c60
    1c28:	e5dd00df 	ldrb	r0, [sp, #223]	@ 0xdf
    1c2c:	e59d10dc 	ldr	r1, [sp, #220]	@ 0xdc
    1c30:	e7df1c10 	bfi	r1, r0, #24, #8
    1c34:	e1a00fc1 	asr	r0, r1, #31
    1c38:	e1a00480 	lsl	r0, r0, #9
    1c3c:	e1800ba1 	orr	r0, r0, r1, lsr #23
    1c40:	e1a01481 	lsl	r1, r1, #9
    1c44:	e1a07a20 	lsr	r7, r0, #20
    1c48:	e1a03a21 	lsr	r3, r1, #20
    1c4c:	e1832600 	orr	r2, r3, r0, lsl #12
    1c50:	e2722b02 	rsbs	r2, r2, #2048	@ 0x800
    1c54:	e2f72000 	rscs	r2, r7, #0
    1c58:	35840094 	strcc	r0, [r4, #148]	@ 0x94
    1c5c:	35841090 	strcc	r1, [r4, #144]	@ 0x90
    1c60:	e5dd00b7 	ldrb	r0, [sp, #183]	@ 0xb7
    1c64:	e3500000 	cmp	r0, #0
    1c68:	15dd00e8 	ldrbne	r0, [sp, #232]	@ 0xe8
    1c6c:	11a00980 	lslne	r0, r0, #19
    1c70:	1a000005 	bne	0x1c8c
    1c74:	e1d406b4 	ldrh	r0, [r4, #100]	@ 0x64
    1c78:	e7e41550 	ubfx	r1, r0, #10, #5
    1c7c:	e7e402d0 	ubfx	r0, r0, #5, #5
    1c80:	e2811001 	add	r1, r1, #1
    1c84:	e2800001 	add	r0, r0, #1
    1c88:	e1600081 	smulbb	r0, r1, r0
    1c8c:	e584008c 	str	r0, [r4, #140]	@ 0x8c
    1c90:	e5dd00a8 	ldrb	r0, [sp, #168]	@ 0xa8
    1c94:	e3100001 	tst	r0, #1
    1c98:	15dd00bb 	ldrbne	r0, [sp, #187]	@ 0xbb
    1c9c:	15c4007e 	strbne	r0, [r4, #126]	@ 0x7e
    1ca0:	e1a00004 	mov	r0, r4
    1ca4:	e59f9214 	ldr	r9, [pc, #532]	@ 0x1ec0
    1ca8:	e1a01009 	mov	r1, r9
    1cac:	ebfffeb6 	bl	0x178c
    1cb0:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
    1cb4:	e3100802 	tst	r0, #131072	@ 0x20000
    1cb8:	e1a00004 	mov	r0, r4
    1cbc:	0a000001 	beq	0x1cc8
    1cc0:	ebfffdf8 	bl	0x14a8
    1cc4:	ea000000 	b	0x1ccc
    1cc8:	ebfffd90 	bl	0x1310
    1ccc:	e1b07000 	movs	r7, r0
    1cd0:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1cd4:	128f0f7a 	addne	r0, pc, #488	@ 0x1e8
    1cd8:	0a000002 	beq	0x1ce8
    1cdc:	eb0009f9 	bl	0x44c8
    1ce0:	e1a00007 	mov	r0, r7
    1ce4:	eaffff5e 	b	0x1a64
    1ce8:	e1c404d8 	ldrd	r0, [r4, #72]	@ 0x48
    1cec:	e0000001 	and	r0, r0, r1
    1cf0:	e5840048 	str	r0, [r4, #72]	@ 0x48
    1cf4:	e5941028 	ldr	r1, [r4, #40]	@ 0x28
    1cf8:	e3110802 	tst	r1, #131072	@ 0x20000
    1cfc:	0a000032 	beq	0x1dcc
    1d00:	e3100c01 	tst	r0, #256	@ 0x100
    1d04:	0a000020 	beq	0x1d8c
    1d08:	e28d1f82 	add	r1, sp, #520	@ 0x208
    1d0c:	e3a00037 	mov	r0, #55	@ 0x37
    1d10:	e3a02000 	mov	r2, #0
    1d14:	e8810101 	stm	r1, {r0, r8}
    1d18:	e1d407bc 	ldrh	r0, [r4, #124]	@ 0x7c
    1d1c:	e1a00800 	lsl	r0, r0, #16
    1d20:	e58d0210 	str	r0, [sp, #528]	@ 0x210
    1d24:	e1a00004 	mov	r0, r4
    1d28:	e58d6224 	str	r6, [sp, #548]	@ 0x224
    1d2c:	ebfffa2e 	bl	0x5ec
    1d30:	e1b07000 	movs	r7, r0
    1d34:	159f01b0 	ldrne	r0, [pc, #432]	@ 0x1eec
    1d38:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1d3c:	1affffe6 	bne	0x1cdc
    1d40:	e28d1f82 	add	r1, sp, #520	@ 0x208
    1d44:	e3a00006 	mov	r0, #6
    1d48:	e3a02000 	mov	r2, #0
    1d4c:	e8810101 	stm	r1, {r0, r8}
    1d50:	e3a00002 	mov	r0, #2
    1d54:	e58d0210 	str	r0, [sp, #528]	@ 0x210
    1d58:	e1a00004 	mov	r0, r4
    1d5c:	e58d6224 	str	r6, [sp, #548]	@ 0x224
    1d60:	ebfffa21 	bl	0x5ec
    1d64:	e1b06000 	movs	r6, r0
    1d68:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1d6c:	128f0f5f 	addne	r0, pc, #380	@ 0x17c
    1d70:	0a000002 	beq	0x1d80
    1d74:	eb0009d3 	bl	0x44c8
    1d78:	e1a00006 	mov	r0, r6
    1d7c:	eaffff38 	b	0x1a64
    1d80:	e3a01004 	mov	r1, #4
    1d84:	e1a00004 	mov	r0, r4
    1d88:	ebfffe88 	bl	0x17b0
    1d8c:	e5d40048 	ldrb	r0, [r4, #72]	@ 0x48
    1d90:	e3100001 	tst	r0, #1
    1d94:	159f117c 	ldrne	r1, [pc, #380]	@ 0x1f18
    1d98:	01a01009 	moveq	r1, r9
    1d9c:	e1a00004 	mov	r0, r4
    1da0:	ebfffe79 	bl	0x178c
    1da4:	e5942084 	ldr	r2, [r4, #132]	@ 0x84
    1da8:	e3a03000 	mov	r3, #0
    1dac:	e58420ac 	str	r2, [r4, #172]	@ 0xac
    1db0:	e1c409d0 	ldrd	r0, [r4, #144]	@ 0x90
    1db4:	eb000b52 	bl	0x4b04
    1db8:	e58400a8 	str	r0, [r4, #168]	@ 0xa8
    1dbc:	e5940028 	ldr	r0, [r4, #40]	@ 0x28
    1dc0:	e3100802 	tst	r0, #131072	@ 0x20000
    1dc4:	0a000023 	beq	0x1e58
    1dc8:	ea000098 	b	0x2030
    1dcc:	e3100c01 	tst	r0, #256	@ 0x100
    1dd0:	0a000013 	beq	0x1e24
    1dd4:	e3a03001 	mov	r3, #1
    1dd8:	e3a020b7 	mov	r2, #183	@ 0xb7
    1ddc:	e1a01003 	mov	r1, r3
    1de0:	e1a00004 	mov	r0, r4
    1de4:	ebfffd2d 	bl	0x12a0
    1de8:	e1b06000 	movs	r6, r0
    1dec:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1df0:	128f0f49 	addne	r0, pc, #292	@ 0x124
    1df4:	03a01004 	moveq	r1, #4
    1df8:	1affffdd 	bne	0x1d74
    1dfc:	e1a00004 	mov	r0, r4
    1e00:	ebfffe6a 	bl	0x17b0
    1e04:	e5940048 	ldr	r0, [r4, #72]	@ 0x48
    1e08:	e3100001 	tst	r0, #1
    1e0c:	059f1130 	ldreq	r1, [pc, #304]	@ 0x1f44
    1e10:	0affffe1 	beq	0x1d9c
    1e14:	e3100010 	tst	r0, #16
    1e18:	159f1128 	ldrne	r1, [pc, #296]	@ 0x1f48
    1e1c:	059f1128 	ldreq	r1, [pc, #296]	@ 0x1f4c
    1e20:	eaffffdd 	b	0x1d9c
    1e24:	e3100c02 	tst	r0, #512	@ 0x200
    1e28:	0afffff5 	beq	0x1e04
    1e2c:	e3a03002 	mov	r3, #2
    1e30:	e3a020b7 	mov	r2, #183	@ 0xb7
    1e34:	e3a01001 	mov	r1, #1
    1e38:	e1a00004 	mov	r0, r4
    1e3c:	ebfffd17 	bl	0x12a0
    1e40:	e1b06000 	movs	r6, r0
    1e44:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    1e48:	128f0c01 	addne	r0, pc, #256	@ 0x100
    1e4c:	03a01008 	moveq	r1, #8
    1e50:	1affffc7 	bne	0x1d74
    1e54:	eaffffe8 	b	0x1dfc
    1e58:	e2401801 	sub	r1, r0, #65536	@ 0x10000
    1e5c:	e1500005 	cmp	r0, r5
    1e60:	e2411041 	sub	r1, r1, #65	@ 0x41
    1e64:	028f0f43 	addeq	r0, pc, #268	@ 0x10c
    1e68:	0a00006f 	beq	0x202c
    1e6c:	ca00005c 	bgt	0x1fe4
    1e70:	e2401801 	sub	r1, r0, #65536	@ 0x10000
    1e74:	e150000b 	cmp	r0, fp
    1e78:	e2411022 	sub	r1, r1, #34	@ 0x22
    1e7c:	028f0f42 	addeq	r0, pc, #264	@ 0x108
    1e80:	0a000069 	beq	0x202c
    1e84:	ca00004f 	bgt	0x1fc8
    1e88:	e2400801 	sub	r0, r0, #65536	@ 0x10000
    1e8c:	e2500012 	subs	r0, r0, #18
    1e90:	028f0f42 	addeq	r0, pc, #264	@ 0x108
    1e94:	0a000064 	beq	0x202c
    1e98:	e3500002 	cmp	r0, #2
    1e9c:	028f0f44 	addeq	r0, pc, #68, 30	@ 0x110
    1ea0:	0a000061 	beq	0x202c
    1ea4:	ea00005f 	b	0x2028
    1ea8:	00010041 	andeq	r0, r1, r1, asr #32
    1eac:	00010042 	andeq	r0, r1, r2, asr #32
    1eb0:	00010043 	andeq	r0, r1, r3, asr #32
    1eb4:	00010044 	andeq	r0, r1, r4, asr #32
    1eb8:	00010045 	andeq	r0, r1, r5, asr #32
    1ebc:	00010050 	andeq	r0, r1, r0, asr r0
    1ec0:	017d7840 	cmneq	sp, r0, asr #16
    1ec4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1ec8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1ecc:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1ed0:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
    1ed4:	65676e61 	strbvs	r6, [r7, #-3681]!	@ 0xfffff19f
    1ed8:	65707320 	ldrbvs	r7, [r0, #-800]!	@ 0xfffffce0
    1edc:	6d206465 	stcvs	4, cr6, [r0, #-404]!	@ 0xfffffe6c
    1ee0:	2065646f 	rsbcs	r6, r5, pc, ror #8
    1ee4:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    1ee8:	000a6465 	andeq	r6, sl, r5, ror #8
    1eec:	00000f48 	andeq	r0, r0, r8, asr #30
    1ef0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1ef4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1ef8:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1efc:	64732064 	ldrbtvs	r2, [r3], #-100	@ 0xffffff9c
    1f00:	74657320 	strbtvc	r7, [r5], #-800	@ 0xfffffce0
    1f04:	73756220 	cmnvc	r5, #32, 4
    1f08:	64697720 	strbtvs	r7, [r9], #-1824	@ 0xfffff8e0
    1f0c:	66206874 			@ <UNDEFINED> instruction: 0x66206874
    1f10:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1f14:	00000a64 	andeq	r0, r0, r4, ror #20
    1f18:	02faf080 	rscseq	pc, sl, #128	@ 0x80
    1f1c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1f20:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1f24:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1f28:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    1f2c:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    1f30:	73756220 	cmnvc	r5, #32, 4
    1f34:	64697720 	strbtvs	r7, [r9], #-1824	@ 0xfffff8e0
    1f38:	66206874 			@ <UNDEFINED> instruction: 0x66206874
    1f3c:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    1f40:	00000a64 	andeq	r0, r0, r4, ror #20
    1f44:	01312d00 	teqeq	r1, r0, lsl #26
    1f48:	03197500 	tsteq	r9, #0, 10
    1f4c:	018cba80 	orreq	fp, ip, r0, lsl #21
    1f50:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1f54:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1f58:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    1f5c:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    1f60:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    1f64:	73756220 	cmnvc	r5, #32, 4
    1f68:	64697720 	strbtvs	r7, [r9], #-1824	@ 0xfffff8e0
    1f6c:	20386874 	eorscs	r6, r8, r4, ror r8
    1f70:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    1f74:	000a6465 	andeq	r6, sl, r5, ror #8
    1f78:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1f7c:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1f80:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1f84:	34207265 	strtcc	r7, [r0], #-613	@ 0xfffffd9b
    1f88:	000a312e 	andeq	r3, sl, lr, lsr #2
    1f8c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1f90:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1f94:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1f98:	32207265 	eorcc	r7, r0, #1342177286	@ 0x50000006
    1f9c:	000a322e 	andeq	r3, sl, lr, lsr #4
    1fa0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1fa4:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1fa8:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1fac:	31207265 			@ <UNDEFINED> instruction: 0x31207265
    1fb0:	000a322e 	andeq	r3, sl, lr, lsr #4
    1fb4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    1fb8:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1fbc:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1fc0:	31207265 			@ <UNDEFINED> instruction: 0x31207265
    1fc4:	000a342e 	andeq	r3, sl, lr, lsr #8
    1fc8:	e351000e 	cmp	r1, #14
    1fcc:	028f00dc 	addeq	r0, pc, #220	@ 0xdc
    1fd0:	0a000015 	beq	0x202c
    1fd4:	e351001e 	cmp	r1, #30
    1fd8:	028f00e4 	addeq	r0, pc, #228	@ 0xe4
    1fdc:	0a000012 	beq	0x202c
    1fe0:	ea000010 	b	0x2028
    1fe4:	e3510003 	cmp	r1, #3
    1fe8:	028f00e8 	addeq	r0, pc, #232	@ 0xe8
    1fec:	0a00000e 	beq	0x202c
    1ff0:	ca000006 	bgt	0x2010
    1ff4:	e3510001 	cmp	r1, #1
    1ff8:	028f00f0 	addeq	r0, pc, #240	@ 0xf0
    1ffc:	0a00000a 	beq	0x202c
    2000:	e3510002 	cmp	r1, #2
    2004:	028f00f8 	addeq	r0, pc, #248	@ 0xf8
    2008:	0a000007 	beq	0x202c
    200c:	ea000005 	b	0x2028
    2010:	e3510004 	cmp	r1, #4
    2014:	028f00fc 	addeq	r0, pc, #252	@ 0xfc
    2018:	0a000003 	beq	0x202c
    201c:	e351000f 	cmp	r1, #15
    2020:	028f0f41 	addeq	r0, pc, #260	@ 0x104
    2024:	0a000000 	beq	0x202c
    2028:	e28f0e11 	add	r0, pc, #272	@ 0x110
    202c:	eb000925 	bl	0x44c8
    2030:	e59400a8 	ldr	r0, [r4, #168]	@ 0xa8
    2034:	e1a025a0 	lsr	r2, r0, #11
    2038:	e1d404b8 	ldrh	r0, [r4, #72]	@ 0x48
    203c:	e3100c01 	tst	r0, #256	@ 0x100
    2040:	e28f0e11 	add	r0, pc, #272	@ 0x110
    2044:	13a01004 	movne	r1, #4
    2048:	03a01001 	moveq	r1, #1
    204c:	eb00091d 	bl	0x44c8
    2050:	e5940074 	ldr	r0, [r4, #116]	@ 0x74
    2054:	e5941078 	ldr	r1, [r4, #120]	@ 0x78
    2058:	e1a00400 	lsl	r0, r0, #8
    205c:	e1802c21 	orr	r2, r0, r1, lsr #24
    2060:	e594006c 	ldr	r0, [r4, #108]	@ 0x6c
    2064:	e1a01420 	lsr	r1, r0, #8
    2068:	e28f0f45 	add	r0, pc, #276	@ 0x114
    206c:	eb000915 	bl	0x44c8
    2070:	e5940070 	ldr	r0, [r4, #112]	@ 0x70
    2074:	e20020ff 	and	r2, r0, #255	@ 0xff
    2078:	e7e71450 	ubfx	r1, r0, #8, #8
    207c:	e88d0006 	stm	sp, {r1, r2}
    2080:	e1a02c20 	lsr	r2, r0, #24
    2084:	e5d4106c 	ldrb	r1, [r4, #108]	@ 0x6c
    2088:	e7e73850 	ubfx	r3, r0, #16, #8
    208c:	e28f0e11 	add	r0, pc, #272	@ 0x110
    2090:	eb00090c 	bl	0x44c8
    2094:	e5940074 	ldr	r0, [r4, #116]	@ 0x74
    2098:	e1a01e20 	lsr	r1, r0, #28
    209c:	e7e32c50 	ubfx	r2, r0, #24, #4
    20a0:	e28f0f46 	add	r0, pc, #280	@ 0x118
    20a4:	eb000907 	bl	0x44c8
    20a8:	e3a00000 	mov	r0, #0
    20ac:	eafffe6c 	b	0x1a64
    20b0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    20b4:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    20b8:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    20bc:	33207265 			@ <UNDEFINED> instruction: 0x33207265
    20c0:	000a302e 	andeq	r3, sl, lr, lsr #32
    20c4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    20c8:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    20cc:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    20d0:	34207265 	strtcc	r7, [r0], #-613	@ 0xfffffd9b
    20d4:	000a302e 	andeq	r3, sl, lr, lsr #32
    20d8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    20dc:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    20e0:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    20e4:	34207265 	strtcc	r7, [r0], #-613	@ 0xfffffd9b
    20e8:	0a31342e 	beq	0xc4f1a8
    20ec:	00000000 	andeq	r0, r0, r0
    20f0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    20f4:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    20f8:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    20fc:	34207265 	strtcc	r7, [r0], #-613	@ 0xfffffd9b
    2100:	000a322e 	andeq	r3, sl, lr, lsr #4
    2104:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2108:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    210c:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    2110:	34207265 	strtcc	r7, [r0], #-613	@ 0xfffffd9b
    2114:	000a332e 	andeq	r3, sl, lr, lsr #6
    2118:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    211c:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    2120:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    2124:	34207265 	strtcc	r7, [r0], #-613	@ 0xfffffd9b
    2128:	000a352e 	andeq	r3, sl, lr, lsr #10
    212c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2130:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    2134:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    2138:	35207265 	strcc	r7, [r0, #-613]!	@ 0xfffffd9b
    213c:	000a302e 	andeq	r3, sl, lr, lsr #32
    2140:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2144:	55203a5d 	strpl	r3, [r0, #-2653]!	@ 0xfffff5a3
    2148:	6f6e6b6e 	svcvs	0x006e6b6e
    214c:	4d4d2077 	stclmi	0, cr2, [sp, #-476]	@ 0xfffffe24
    2150:	65762043 	ldrbvs	r2, [r6, #-67]!	@ 0xffffffbd
    2154:	00000a72 	andeq	r0, r0, r2, ror sl
    2158:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    215c:	53203a5d 			@ <UNDEFINED> instruction: 0x53203a5d
    2160:	4d4d2f44 	stclmi	15, cr2, [sp, #-272]	@ 0xfffffef0
    2164:	61432043 	cmpvs	r3, r3, asr #32
    2168:	203a6472 	eorscs	r6, sl, r2, ror r4
    216c:	69626425 	stmdbvs	r2!, {r0, r2, r5, sl, sp, lr}^
    2170:	63202c74 			@ <UNDEFINED> instruction: 0x63202c74
    2174:	63617061 	cmnvs	r1, #97	@ 0x61
    2178:	3a797469 	bcc	0x1e5f324
    217c:	4d642520 	stclmi	5, cr2, [r4, #-128]!	@ 0xffffff80
    2180:	00000a42 	andeq	r0, r0, r2, asr #20
    2184:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2188:	76203a5d 			@ <UNDEFINED> instruction: 0x76203a5d
    218c:	6f646e65 	svcvs	0x00646e65
    2190:	4d203a72 	vstmdbmi	r0!, {s6-s119}
    2194:	25206e61 	strcs	r6, [r0, #-3681]!	@ 0xfffff19f
    2198:	6e532078 	mrcvs	0, 2, r2, cr3, cr8, {3}
    219c:	78252072 	stmdavc	r5!, {r1, r4, r5, r6, sp}
    21a0:	0000000a 	andeq	r0, r0, sl
    21a4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    21a8:	70203a5d 	eorvc	r3, r0, sp, asr sl
    21ac:	75646f72 	strbvc	r6, [r4, #-3954]!	@ 0xfffff08e
    21b0:	203a7463 	eorscs	r7, sl, r3, ror #8
    21b4:	63256325 			@ <UNDEFINED> instruction: 0x63256325
    21b8:	63256325 			@ <UNDEFINED> instruction: 0x63256325
    21bc:	000a6325 	andeq	r6, sl, r5, lsr #6
    21c0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    21c4:	72203a5d 	eorvc	r3, r0, #380928	@ 0x5d000
    21c8:	73697665 	cmnvc	r9, #105906176	@ 0x6500000
    21cc:	3a6e6f69 	bcc	0x1b9df78
    21d0:	2e642520 	cdpcs	5, 6, cr2, cr4, cr0, {1}
    21d4:	000a6425 	andeq	r6, sl, r5, lsr #8
    21d8:	e92d4030 	push	{r4, r5, lr}
    21dc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    21e0:	e1a04000 	mov	r4, r0
    21e4:	e3a00008 	mov	r0, #8
    21e8:	e59f115c 	ldr	r1, [pc, #348]	@ 0x234c
    21ec:	e58d0000 	str	r0, [sp]
    21f0:	e5940024 	ldr	r0, [r4, #36]	@ 0x24
    21f4:	e0100001 	ands	r0, r0, r1
    21f8:	e3a010aa 	mov	r1, #170	@ 0xaa
    21fc:	13a00001 	movne	r0, #1
    2200:	e1810400 	orr	r0, r1, r0, lsl #8
    2204:	e58d0008 	str	r0, [sp, #8]
    2208:	e3a00015 	mov	r0, #21
    220c:	e58d0004 	str	r0, [sp, #4]
    2210:	e3a00000 	mov	r0, #0
    2214:	e1a0100d 	mov	r1, sp
    2218:	e1a02000 	mov	r2, r0
    221c:	e58d001c 	str	r0, [sp, #28]
    2220:	e1a00004 	mov	r0, r4
    2224:	ebfff8f0 	bl	0x5ec
    2228:	e1b05000 	movs	r5, r0
    222c:	0a000005 	beq	0x2248
    2230:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    2234:	e28f0f45 	add	r0, pc, #276	@ 0x114
    2238:	eb0008a2 	bl	0x44c8
    223c:	e1a00005 	mov	r0, r5
    2240:	e28dd024 	add	sp, sp, #36	@ 0x24
    2244:	e8bd8030 	pop	{r4, r5, pc}
    2248:	e59d000c 	ldr	r0, [sp, #12]
    224c:	e20000ff 	and	r0, r0, #255	@ 0xff
    2250:	e35000aa 	cmp	r0, #170	@ 0xaa
    2254:	059f0118 	ldreq	r0, [pc, #280]	@ 0x2374
    2258:	13e00010 	mvnne	r0, #16
    225c:	05840028 	streq	r0, [r4, #40]	@ 0x28
    2260:	03a00000 	moveq	r0, #0
    2264:	eafffff5 	b	0x2240
    2268:	e92d4070 	push	{r4, r5, r6, lr}
    226c:	e1a04000 	mov	r4, r0
    2270:	e590002c 	ldr	r0, [r0, #44]	@ 0x2c
    2274:	e3500000 	cmp	r0, #0
    2278:	0a000004 	beq	0x2290
    227c:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    2280:	e28f00f0 	add	r0, pc, #240	@ 0xf0
    2284:	eb00088f 	bl	0x44c8
    2288:	e3a00000 	mov	r0, #0
    228c:	e8bd8070 	pop	{r4, r5, r6, pc}
    2290:	e59410a0 	ldr	r1, [r4, #160]	@ 0xa0
    2294:	e1a00004 	mov	r0, r4
    2298:	e12fff31 	blx	r1
    229c:	e1b05000 	movs	r5, r0
    22a0:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    22a4:	128f00e4 	addne	r0, pc, #228	@ 0xe4
    22a8:	1a00000b 	bne	0x22dc
    22ac:	e3a01001 	mov	r1, #1
    22b0:	e1a00004 	mov	r0, r4
    22b4:	ebfffd3d 	bl	0x17b0
    22b8:	e3a01001 	mov	r1, #1
    22bc:	e1a00004 	mov	r0, r4
    22c0:	ebfffd31 	bl	0x178c
    22c4:	e1a00004 	mov	r0, r4
    22c8:	ebfffaa2 	bl	0xd58
    22cc:	e1b05000 	movs	r5, r0
    22d0:	15941030 	ldrne	r1, [r4, #48]	@ 0x30
    22d4:	128f00d4 	addne	r0, pc, #212	@ 0xd4
    22d8:	0a000001 	beq	0x22e4
    22dc:	eb000879 	bl	0x44c8
    22e0:	ea000077 	b	0x24c4
    22e4:	e3a06000 	mov	r6, #0
    22e8:	e5c4607f 	strb	r6, [r4, #127]	@ 0x7f
    22ec:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    22f0:	e28f00dc 	add	r0, pc, #220	@ 0xdc
    22f4:	eb000873 	bl	0x44c8
    22f8:	e1a00004 	mov	r0, r4
    22fc:	ebffffb5 	bl	0x21d8
    2300:	e1a00004 	mov	r0, r4
    2304:	ebfffaad 	bl	0xdc0
    2308:	e3500000 	cmp	r0, #0
    230c:	0a000064 	beq	0x24a4
    2310:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    2314:	e28f00e8 	add	r0, pc, #232	@ 0xe8
    2318:	eb00086a 	bl	0x44c8
    231c:	e1a00004 	mov	r0, r4
    2320:	ebfffb45 	bl	0x103c
    2324:	e3500000 	cmp	r0, #0
    2328:	0a00005d 	beq	0x24a4
    232c:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    2330:	e28f00fc 	add	r0, pc, #252	@ 0xfc
    2334:	eb000863 	bl	0x44c8
    2338:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    233c:	e28f0f4a 	add	r0, pc, #296	@ 0x128
    2340:	eb000860 	bl	0x44c8
    2344:	e3e00010 	mvn	r0, #16
    2348:	e8bd8070 	pop	{r4, r5, r6, pc}
    234c:	00ff8000 	rscseq	r8, pc, r0
    2350:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2354:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2358:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    235c:	65732064 	ldrbvs	r2, [r3, #-100]!	@ 0xffffff9c
    2360:	6920646e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, sl, sp, lr}
    2364:	6f632066 	svcvs	0x00632066
    2368:	6620646e 	strtvs	r6, [r0], -lr, ror #8
    236c:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    2370:	00000a64 	andeq	r0, r0, r4, ror #20
    2374:	00020020 	andeq	r0, r2, r0, lsr #32
    2378:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    237c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2380:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2384:	61482064 	cmpvs	r8, r4, rrx
    2388:	6e692073 	mcrvs	0, 3, r2, cr9, cr3, {3}
    238c:	000a7469 	andeq	r7, sl, r9, ror #8
    2390:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2394:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2398:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    239c:	6f682064 	svcvs	0x00682064
    23a0:	69207473 	stmdbvs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
    23a4:	2074696e 	rsbscs	r6, r4, lr, ror #18
    23a8:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    23ac:	000a6465 	andeq	r6, sl, r5, ror #8
    23b0:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    23b4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    23b8:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    23bc:	65722064 	ldrbvs	r2, [r2, #-100]!	@ 0xffffff9c
    23c0:	20746573 	rsbscs	r6, r4, r3, ror r5
    23c4:	64726163 	ldrbtvs	r6, [r2], #-355	@ 0xfffffe9d
    23c8:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
    23cc:	0a64656c 	beq	0x191b984
    23d0:	00000000 	andeq	r0, r0, r0
    23d4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    23d8:	2a203a5d 	bcs	0x810d54
    23dc:	2a2a2a2a 	bcs	0xa8cc8c
    23e0:	2a2a2a2a 	bcs	0xa8cc90
    23e4:	542a2a2a 	strtpl	r2, [sl], #-2602	@ 0xfffff5d6
    23e8:	53207972 			@ <UNDEFINED> instruction: 0x53207972
    23ec:	61632044 	cmnvs	r3, r4, asr #32
    23f0:	25206472 	strcs	r6, [r0, #-1138]!	@ 0xfffffb8e
    23f4:	2a2a2a64 	bcs	0xa8cd8c
    23f8:	2a2a2a2a 	bcs	0xa8cca8
    23fc:	2a2a2a2a 	bcs	0xa8ccac
    2400:	00000a2a 	andeq	r0, r0, sl, lsr #20
    2404:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2408:	2a203a5d 	bcs	0x810d84
    240c:	2a2a2a2a 	bcs	0xa8ccbc
    2410:	2a2a2a2a 	bcs	0xa8ccc0
    2414:	542a2a2a 	strtpl	r2, [sl], #-2602	@ 0xfffff5d6
    2418:	4d207972 			@ <UNDEFINED> instruction: 0x4d207972
    241c:	6320434d 			@ <UNDEFINED> instruction: 0x6320434d
    2420:	20647261 	rsbcs	r7, r4, r1, ror #4
    2424:	2a2a6425 	bcs	0xa9b4c0
    2428:	2a2a2a2a 	bcs	0xa8ccd8
    242c:	2a2a2a2a 	bcs	0xa8ccdc
    2430:	000a2a2a 	andeq	r2, sl, sl, lsr #20
    2434:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2438:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    243c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2440:	61432064 	cmpvs	r3, r4, rrx
    2444:	64206472 	strtvs	r6, [r0], #-1138	@ 0xfffffb8e
    2448:	6e206469 	cdpvs	4, 2, cr6, cr0, cr9, {3}
    244c:	7220746f 	eorvc	r7, r0, #1862270976	@ 0x6f000000
    2450:	6f707365 	svcvs	0x00707365
    2454:	7420646e 	strtvc	r6, [r0], #-1134	@ 0xfffffb92
    2458:	6f76206f 	svcvs	0x0076206f
    245c:	6761746c 	strbvs	r7, [r1, -ip, ror #8]!
    2460:	65732065 	ldrbvs	r2, [r3, #-101]!	@ 0xffffff9b
    2464:	7463656c 	strbtvc	r6, [r3], #-1388	@ 0xfffffa94
    2468:	00000a21 	andeq	r0, r0, r1, lsr #20
    246c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2470:	2a203a5d 	bcs	0x810dec
    2474:	2a2a2a2a 	bcs	0xa8cd24
    2478:	2a2a2a2a 	bcs	0xa8cd28
    247c:	532a2a2a 			@ <UNDEFINED> instruction: 0x532a2a2a
    2480:	4d4d2f44 	stclmi	15, cr2, [sp, #-272]	@ 0xfffffef0
    2484:	64252043 	strtvs	r2, [r5], #-67	@ 0xffffffbd
    2488:	696e6920 	stmdbvs	lr!, {r5, r8, fp, sp, lr}^
    248c:	72652074 	rsbvc	r2, r5, #116	@ 0x74
    2490:	21726f72 	cmncs	r2, r2, ror pc
    2494:	2a2a2121 	bcs	0xa8a920
    2498:	2a2a2a2a 	bcs	0xa8cd48
    249c:	2a2a2a2a 	bcs	0xa8cd4c
    24a0:	000a2a2a 	andeq	r2, sl, sl, lsr #20
    24a4:	e1a00004 	mov	r0, r4
    24a8:	ebfffcc3 	bl	0x17bc
    24ac:	e1b05000 	movs	r5, r0
    24b0:	0a000005 	beq	0x24cc
    24b4:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    24b8:	e24f0054 	sub	r0, pc, #84	@ 0x54
    24bc:	eb000801 	bl	0x44c8
    24c0:	e584602c 	str	r6, [r4, #44]	@ 0x2c
    24c4:	e1a00005 	mov	r0, r5
    24c8:	e8bd8070 	pop	{r4, r5, r6, pc}
    24cc:	e3a00001 	mov	r0, #1
    24d0:	e584002c 	str	r0, [r4, #44]	@ 0x2c
    24d4:	e5941030 	ldr	r1, [r4, #48]	@ 0x30
    24d8:	e28f0034 	add	r0, pc, #52	@ 0x34
    24dc:	eaffff7e 	b	0x22dc
    24e0:	e59f2064 	ldr	r2, [pc, #100]	@ 0x254c
    24e4:	e7821100 	str	r1, [r2, r0, lsl #2]
    24e8:	e59100a4 	ldr	r0, [r1, #164]	@ 0xa4
    24ec:	e3500000 	cmp	r0, #0
    24f0:	030f0fff 	movweq	r0, #65535	@ 0xffff
    24f4:	058100a4 	streq	r0, [r1, #164]	@ 0xa4
    24f8:	e1a00001 	mov	r0, r1
    24fc:	eaffff59 	b	0x2268
    2500:	e59f2044 	ldr	r2, [pc, #68]	@ 0x254c
    2504:	e3a01000 	mov	r1, #0
    2508:	e7821100 	str	r1, [r2, r0, lsl #2]
    250c:	e1a00001 	mov	r0, r1
    2510:	e12fff1e 	bx	lr
    2514:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2518:	2a203a5d 	bcs	0x810e94
    251c:	2a2a2a2a 	bcs	0xa8cdcc
    2520:	2a2a2a2a 	bcs	0xa8cdd0
    2524:	532a2a2a 			@ <UNDEFINED> instruction: 0x532a2a2a
    2528:	4d4d2f44 	stclmi	15, cr2, [sp, #-272]	@ 0xfffffef0
    252c:	64252043 	strtvs	r2, [r5], #-67	@ 0xffffffbd
    2530:	696e6920 	stmdbvs	lr!, {r5, r8, fp, sp, lr}^
    2534:	4b4f2074 	blmi	0x13ca70c
    2538:	2a212121 	bcs	0x84a9c4
    253c:	2a2a2a2a 	bcs	0xa8cdec
    2540:	2a2a2a2a 	bcs	0xa8cdf0
    2544:	0a2a2a2a 	beq	0xa8cdf4
    2548:	00000000 	andeq	r0, r0, r0
    254c:	00005254 	andeq	r5, r0, r4, asr r2
    2550:	e92d4070 	push	{r4, r5, r6, lr}
    2554:	e1b05000 	movs	r5, r0
    2558:	e59f1360 	ldr	r1, [pc, #864]	@ 0x28c0
    255c:	e3a02001 	mov	r2, #1
    2560:	e0800105 	add	r0, r0, r5, lsl #2
    2564:	e0814180 	add	r4, r1, r0, lsl #3
    2568:	e59f0354 	ldr	r0, [pc, #852]	@ 0x28c4
    256c:	e3a01008 	mov	r1, #8
    2570:	028000f8 	addeq	r0, r0, #248	@ 0xf8
    2574:	12800f5e 	addne	r0, r0, #376	@ 0x178
    2578:	eb0008ab 	bl	0x482c
    257c:	e5940010 	ldr	r0, [r4, #16]
    2580:	e5902000 	ldr	r2, [r0]
    2584:	e2853008 	add	r3, r5, #8
    2588:	e3a01001 	mov	r1, #1
    258c:	e1a01311 	lsl	r1, r1, r3
    2590:	e1822001 	orr	r2, r2, r1
    2594:	e5802000 	str	r2, [r0]
    2598:	e594000c 	ldr	r0, [r4, #12]
    259c:	e5902000 	ldr	r2, [r0]
    25a0:	e1811002 	orr	r1, r1, r2
    25a4:	e5801000 	str	r1, [r0]
    25a8:	e5941014 	ldr	r1, [r4, #20]
    25ac:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
    25b0:	e5810000 	str	r0, [r1]
    25b4:	e59f030c 	ldr	r0, [pc, #780]	@ 0x28c8
    25b8:	e5840008 	str	r0, [r4, #8]
    25bc:	e3a00000 	mov	r0, #0
    25c0:	e8bd8070 	pop	{r4, r5, r6, pc}
    25c4:	e92d4010 	push	{r4, lr}
    25c8:	e5902020 	ldr	r2, [r0, #32]
    25cc:	e59f02f8 	ldr	r0, [pc, #760]	@ 0x28cc
    25d0:	e59f12f8 	ldr	r1, [pc, #760]	@ 0x28d0
    25d4:	e5923000 	ldr	r3, [r2]
    25d8:	e5831018 	str	r1, [r3, #24]
    25dc:	e5921000 	ldr	r1, [r2]
    25e0:	e5913018 	ldr	r3, [r1, #24]
    25e4:	e3130102 	tst	r3, #-2147483648	@ 0x80000000
    25e8:	0a000002 	beq	0x25f8
    25ec:	e2500001 	subs	r0, r0, #1
    25f0:	2afffffa 	bcs	0x25e0
    25f4:	ea000004 	b	0x260c
    25f8:	e3500000 	cmp	r0, #0
    25fc:	a5910038 	ldrge	r0, [r1, #56]	@ 0x38
    2600:	a5810038 	strge	r0, [r1, #56]	@ 0x38
    2604:	a3a00000 	movge	r0, #0
    2608:	a8bd8010 	popge	{r4, pc}
    260c:	e5921004 	ldr	r1, [r2, #4]
    2610:	e28f0faf 	add	r0, pc, #700	@ 0x2bc
    2614:	eb0007ab 	bl	0x44c8
    2618:	e3e00000 	mvn	r0, #0
    261c:	e8bd8010 	pop	{r4, pc}
    2620:	e92d4070 	push	{r4, r5, r6, lr}
    2624:	e5901044 	ldr	r1, [r0, #68]	@ 0x44
    2628:	e1a05000 	mov	r5, r0
    262c:	e5904020 	ldr	r4, [r0, #32]
    2630:	e3a06001 	mov	r6, #1
    2634:	e3510000 	cmp	r1, #0
    2638:	0a000006 	beq	0x2658
    263c:	eb0001d4 	bl	0x2d94
    2640:	e3500000 	cmp	r0, #0
    2644:	0a000003 	beq	0x2658
    2648:	e28f0faa 	add	r0, pc, #680	@ 0x2a8
    264c:	eb00079d 	bl	0x44c8
    2650:	e5846020 	str	r6, [r4, #32]
    2654:	e8bd8070 	pop	{r4, r5, r6, pc}
    2658:	e5950040 	ldr	r0, [r5, #64]	@ 0x40
    265c:	e3500008 	cmp	r0, #8
    2660:	03a00002 	moveq	r0, #2
    2664:	0a000004 	beq	0x267c
    2668:	e3500004 	cmp	r0, #4
    266c:	05940000 	ldreq	r0, [r4]
    2670:	0580600c 	streq	r6, [r0, #12]
    2674:	13a00000 	movne	r0, #0
    2678:	08bd8070 	popeq	{r4, r5, r6, pc}
    267c:	e5941000 	ldr	r1, [r4]
    2680:	e581000c 	str	r0, [r1, #12]
    2684:	e8bd8070 	pop	{r4, r5, r6, pc}
    2688:	e92d4070 	push	{r4, r5, r6, lr}
    268c:	e5904020 	ldr	r4, [r0, #32]
    2690:	e3a00007 	mov	r0, #7
    2694:	e5941000 	ldr	r1, [r4]
    2698:	e5810000 	str	r0, [r1]
    269c:	e5940000 	ldr	r0, [r4]
    26a0:	e5901000 	ldr	r1, [r0]
    26a4:	e3110007 	tst	r1, #7
    26a8:	1afffffc 	bne	0x26a0
    26ac:	e3a05001 	mov	r5, #1
    26b0:	e5805078 	str	r5, [r0, #120]	@ 0x78
    26b4:	e5941000 	ldr	r1, [r4]
    26b8:	e3a00000 	mov	r0, #0
    26bc:	e5810078 	str	r0, [r1, #120]	@ 0x78
    26c0:	e1a00005 	mov	r0, r5
    26c4:	eb0003fb 	bl	0x36b8
    26c8:	e5940000 	ldr	r0, [r4]
    26cc:	e5805078 	str	r5, [r0, #120]	@ 0x78
    26d0:	e3a00000 	mov	r0, #0
    26d4:	e8bd8070 	pop	{r4, r5, r6, pc}
    26d8:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    26dc:	e5904020 	ldr	r4, [r0, #32]
    26e0:	e1a07001 	mov	r7, r1
    26e4:	e3a05000 	mov	r5, #0
    26e8:	e1a06002 	mov	r6, r2
    26ec:	e1a0b000 	mov	fp, r0
    26f0:	e1a09005 	mov	r9, r5
    26f4:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
    26f8:	e1a08005 	mov	r8, r5
    26fc:	e5941020 	ldr	r1, [r4, #32]
    2700:	e3510000 	cmp	r1, #0
    2704:	0a000003 	beq	0x2718
    2708:	e5941004 	ldr	r1, [r4, #4]
    270c:	e28f0f81 	add	r0, pc, #516	@ 0x204
    2710:	eb00076c 	bl	0x44c8
    2714:	ea0000f8 	b	0x2afc
    2718:	e5971000 	ldr	r1, [r7]
    271c:	e351000c 	cmp	r1, #12
    2720:	0a0000f7 	beq	0x2b04
    2724:	e3510000 	cmp	r1, #0
    2728:	e5971004 	ldr	r1, [r7, #4]
    272c:	059f0214 	ldreq	r0, [pc, #532]	@ 0x2948
    2730:	e3110001 	tst	r1, #1
    2734:	13800040 	orrne	r0, r0, #64	@ 0x40
    2738:	e3110002 	tst	r1, #2
    273c:	13800080 	orrne	r0, r0, #128	@ 0x80
    2740:	e3110004 	tst	r1, #4
    2744:	13800c01 	orrne	r0, r0, #256	@ 0x100
    2748:	e3560000 	cmp	r6, #0
    274c:	0a000015 	beq	0x27a8
    2750:	e5d61000 	ldrb	r1, [r6]
    2754:	e3110003 	tst	r1, #3
    2758:	0a000003 	beq	0x276c
    275c:	e5941004 	ldr	r1, [r4, #4]
    2760:	e28f0f79 	add	r0, pc, #484	@ 0x1e4
    2764:	eb000757 	bl	0x44c8
    2768:	ea00003f 	b	0x286c
    276c:	e5d61004 	ldrb	r1, [r6, #4]
    2770:	e3800c22 	orr	r0, r0, #8704	@ 0x2200
    2774:	e5942000 	ldr	r2, [r4]
    2778:	e3110002 	tst	r1, #2
    277c:	e5961008 	ldr	r1, [r6, #8]
    2780:	13800b01 	orrne	r0, r0, #1024	@ 0x400
    2784:	e3510001 	cmp	r1, #1
    2788:	e596100c 	ldr	r1, [r6, #12]
    278c:	83800a01 	orrhi	r0, r0, #4096	@ 0x1000
    2790:	e5821010 	str	r1, [r2, #16]
    2794:	e2861008 	add	r1, r6, #8
    2798:	e8910006 	ldm	r1, {r1, r2}
    279c:	e0010291 	mul	r1, r1, r2
    27a0:	e5942000 	ldr	r2, [r4]
    27a4:	e5821014 	str	r1, [r2, #20]
    27a8:	e5942000 	ldr	r2, [r4]
    27ac:	e5971008 	ldr	r1, [r7, #8]
    27b0:	e582101c 	str	r1, [r2, #28]
    27b4:	e3560000 	cmp	r6, #0
    27b8:	e30babc2 	movw	sl, #48066	@ 0xbbc2
    27bc:	0a000017 	beq	0x2820
    27c0:	e2861008 	add	r1, r6, #8
    27c4:	e8910006 	ldm	r1, {r1, r2}
    27c8:	e0080192 	mul	r8, r2, r1
    27cc:	e5941000 	ldr	r1, [r4]
    27d0:	e5912000 	ldr	r2, [r1]
    27d4:	e3822102 	orr	r2, r2, #-2147483648	@ 0x80000000
    27d8:	e5812000 	str	r2, [r1]
    27dc:	e5971000 	ldr	r1, [r7]
    27e0:	e1800001 	orr	r0, r0, r1
    27e4:	e5941000 	ldr	r1, [r4]
    27e8:	e5810018 	str	r0, [r1, #24]
    27ec:	e1a01006 	mov	r1, r6
    27f0:	e1a0000b 	mov	r0, fp
    27f4:	eb000198 	bl	0x2e5c
    27f8:	e3500000 	cmp	r0, #0
    27fc:	0a00000b 	beq	0x2830
    2800:	e5941004 	ldr	r1, [r4, #4]
    2804:	e28f0f5a 	add	r0, pc, #360	@ 0x168
    2808:	eb00072e 	bl	0x44c8
    280c:	e5940000 	ldr	r0, [r4]
    2810:	e5900038 	ldr	r0, [r0, #56]	@ 0x38
    2814:	e010500a 	ands	r5, r0, sl
    2818:	0a000013 	beq	0x286c
    281c:	ea0000a3 	b	0x2ab0
    2820:	e5971000 	ldr	r1, [r7]
    2824:	e1800001 	orr	r0, r0, r1
    2828:	e5941000 	ldr	r1, [r4]
    282c:	e5810018 	str	r0, [r1, #24]
    2830:	e3e024ff 	mvn	r2, #-16777216	@ 0xff000000
    2834:	e5940000 	ldr	r0, [r4]
    2838:	e5901038 	ldr	r1, [r0, #56]	@ 0x38
    283c:	e2522001 	subs	r2, r2, #1
    2840:	3a000001 	bcc	0x284c
    2844:	e111000a 	tst	r1, sl
    2848:	0a000009 	beq	0x2874
    284c:	e011500a 	ands	r5, r1, sl
    2850:	e5972000 	ldr	r2, [r7]
    2854:	03e05000 	mvneq	r5, #0
    2858:	e5941004 	ldr	r1, [r4, #4]
    285c:	e28f0e13 	add	r0, pc, #304	@ 0x130
    2860:	e1a03005 	mov	r3, r5
    2864:	eb000717 	bl	0x44c8
    2868:	ea00007f 	b	0x2a6c
    286c:	e3e05000 	mvn	r5, #0
    2870:	ea00008e 	b	0x2ab0
    2874:	e3110004 	tst	r1, #4
    2878:	0affffee 	beq	0x2838
    287c:	e3560000 	cmp	r6, #0
    2880:	0a00005c 	beq	0x29f8
    2884:	e3590000 	cmp	r9, #0
    2888:	10682808 	rsbne	r2, r8, r8, lsl #16
    288c:	030f2fff 	movweq	r2, #65535	@ 0xffff
    2890:	e5901038 	ldr	r1, [r0, #56]	@ 0x38
    2894:	e2522001 	subs	r2, r2, #1
    2898:	3a000001 	bcc	0x28a4
    289c:	e111000a 	tst	r1, sl
    28a0:	0a00004e 	beq	0x29e0
    28a4:	e011500a 	ands	r5, r1, sl
    28a8:	e5941004 	ldr	r1, [r4, #4]
    28ac:	03e05000 	mvneq	r5, #0
    28b0:	e28f0f41 	add	r0, pc, #260	@ 0x104
    28b4:	e1a02005 	mov	r2, r5
    28b8:	eb000702 	bl	0x44c8
    28bc:	ea00006a 	b	0x2a6c
    28c0:	00005528 	andeq	r5, r0, r8, lsr #10
    28c4:	00000000 	andeq	r0, r0, r0
    28c8:	016e3600 	cmneq	lr, r0, lsl #12
    28cc:	000fffff 	strdeq	pc, [pc], -pc	@ <UNPREDICTABLE>
    28d0:	80202000 	eorhi	r2, r0, r0
    28d4:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    28d8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    28dc:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    28e0:	70752064 	rsbsvc	r2, r5, r4, rrx
    28e4:	65746164 	ldrbvs	r6, [r4, #-356]!	@ 0xfffffe9c
    28e8:	6b6c6320 	blvs	0x1b1b570
    28ec:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
    28f0:	0a64656c 	beq	0x191bea8
    28f4:	00000000 	andeq	r0, r0, r0
    28f8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    28fc:	2a203a5d 	bcs	0x811278
    2900:	75202a2a 	strvc	r2, [r0, #-2602]!	@ 0xfffff5d6
    2904:	74616470 	strbtvc	r6, [r1], #-1136	@ 0xfffffb90
    2908:	6c632065 	stclvs	0, cr2, [r3], #-404	@ 0xfffffe6c
    290c:	206b636f 	rsbcs	r6, fp, pc, ror #6
    2910:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    2914:	000a6465 	andeq	r6, sl, r5, ror #8
    2918:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    291c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2920:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2924:	6f462064 	svcvs	0x00462064
    2928:	20646e75 	rsbcs	r6, r4, r5, ror lr
    292c:	61746166 	cmnvs	r4, r6, ror #2
    2930:	7265206c 	rsbvc	r2, r5, #108	@ 0x6c
    2934:	6f732c72 	svcvs	0x00732c72
    2938:	206f6e20 	rsbcs	r6, pc, r0, lsr #28
    293c:	646e6573 	strbtvs	r6, [lr], #-1395	@ 0xfffffa8d
    2940:	646d6320 	strbtvs	r6, [sp], #-800	@ 0xfffffce0
    2944:	0000000a 	andeq	r0, r0, sl
    2948:	80008000 	andhi	r8, r0, r0
    294c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2950:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2954:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2958:	65642064 	strbvs	r2, [r4, #-100]!	@ 0xffffff9c
    295c:	69207473 	stmdbvs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
    2960:	6f6e2073 	svcvs	0x006e2073
    2964:	20342074 	eorscs	r2, r4, r4, ror r0
    2968:	65747962 	ldrbvs	r7, [r4, #-2402]!	@ 0xfffff69e
    296c:	696c6120 	stmdbvs	ip!, {r5, r8, sp, lr}^
    2970:	000a6e67 	andeq	r6, sl, r7, ror #28
    2974:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2978:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    297c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2980:	72542064 	subsvc	r2, r4, #100	@ 0x64
    2984:	66736e61 	ldrbtvs	r6, [r3], -r1, ror #28
    2988:	66207265 	strtvs	r7, [r0], -r5, ror #4
    298c:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    2990:	00000a64 	andeq	r0, r0, r4, ror #20
    2994:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2998:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    299c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    29a0:	6d632064 	stclvs	0, cr2, [r3, #-400]!	@ 0xfffffe70
    29a4:	64252064 	strtvs	r2, [r5], #-100	@ 0xffffff9c
    29a8:	6d697420 	stclvs	4, cr7, [r9, #-128]!	@ 0xffffff80
    29ac:	74756f65 	ldrbtvc	r6, [r5], #-3941	@ 0xfffff09b
    29b0:	7265202c 	rsbvc	r2, r5, #44	@ 0x2c
    29b4:	78252072 	stmdavc	r5!, {r1, r4, r5, r6, sp}
    29b8:	0000000a 	andeq	r0, r0, sl
    29bc:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    29c0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    29c4:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    29c8:	61642064 	cmnvs	r4, r4, rrx
    29cc:	74206174 	strtvc	r6, [r0], #-372	@ 0xfffffe8c
    29d0:	6f656d69 	svcvs	0x00656d69
    29d4:	202c7475 	eorcs	r7, ip, r5, ror r4
    29d8:	20727265 	rsbscs	r7, r2, r5, ror #4
    29dc:	000a7825 	andeq	r7, sl, r5, lsr #16
    29e0:	e5963008 	ldr	r3, [r6, #8]
    29e4:	e3530001 	cmp	r3, #1
    29e8:	82011901 	andhi	r1, r1, #16384	@ 0x4000
    29ec:	92011008 	andls	r1, r1, #8
    29f0:	e3510000 	cmp	r1, #0
    29f4:	0affffa5 	beq	0x2890
    29f8:	e5973004 	ldr	r3, [r7, #4]
    29fc:	e3130008 	tst	r3, #8
    2a00:	13e014fb 	mvnne	r1, #-83886080	@ 0xfb000000
    2a04:	0a000004 	beq	0x2a1c
    2a08:	e590203c 	ldr	r2, [r0, #60]	@ 0x3c
    2a0c:	e2511001 	subs	r1, r1, #1
    2a10:	3a000011 	bcc	0x2a5c
    2a14:	e3120c02 	tst	r2, #512	@ 0x200
    2a18:	1afffffa 	bne	0x2a08
    2a1c:	e3130002 	tst	r3, #2
    2a20:	05900020 	ldreq	r0, [r0, #32]
    2a24:	0587000c 	streq	r0, [r7, #12]
    2a28:	0a00000f 	beq	0x2a6c
    2a2c:	e590002c 	ldr	r0, [r0, #44]	@ 0x2c
    2a30:	e587000c 	str	r0, [r7, #12]
    2a34:	e5940000 	ldr	r0, [r4]
    2a38:	e5900028 	ldr	r0, [r0, #40]	@ 0x28
    2a3c:	e5870010 	str	r0, [r7, #16]
    2a40:	e5940000 	ldr	r0, [r4]
    2a44:	e5900024 	ldr	r0, [r0, #36]	@ 0x24
    2a48:	e5870014 	str	r0, [r7, #20]
    2a4c:	e5940000 	ldr	r0, [r4]
    2a50:	e5900020 	ldr	r0, [r0, #32]
    2a54:	e5870018 	str	r0, [r7, #24]
    2a58:	ea000003 	b	0x2a6c
    2a5c:	e5941004 	ldr	r1, [r4, #4]
    2a60:	e3e05000 	mvn	r5, #0
    2a64:	e28f0f77 	add	r0, pc, #476	@ 0x1dc
    2a68:	eb000696 	bl	0x44c8
    2a6c:	e3560000 	cmp	r6, #0
    2a70:	13590000 	cmpne	r9, #0
    2a74:	0a00000b 	beq	0x2aa8
    2a78:	e5940000 	ldr	r0, [r4]
    2a7c:	e5901088 	ldr	r1, [r0, #136]	@ 0x88
    2a80:	e5801088 	str	r1, [r0, #136]	@ 0x88
    2a84:	e3a00000 	mov	r0, #0
    2a88:	e5941000 	ldr	r1, [r4]
    2a8c:	e581008c 	str	r0, [r1, #140]	@ 0x8c
    2a90:	e5941000 	ldr	r1, [r4]
    2a94:	e5810080 	str	r0, [r1, #128]	@ 0x80
    2a98:	e5940000 	ldr	r0, [r4]
    2a9c:	e5901000 	ldr	r1, [r0]
    2aa0:	e3c11020 	bic	r1, r1, #32
    2aa4:	e5801000 	str	r1, [r0]
    2aa8:	e3550000 	cmp	r5, #0
    2aac:	0a00000d 	beq	0x2ae8
    2ab0:	e5941000 	ldr	r1, [r4]
    2ab4:	e3a00007 	mov	r0, #7
    2ab8:	e5810000 	str	r0, [r1]
    2abc:	e5940000 	ldr	r0, [r4]
    2ac0:	e5901000 	ldr	r1, [r0]
    2ac4:	e3110007 	tst	r1, #7
    2ac8:	1afffffc 	bne	0x2ac0
    2acc:	e1a0000b 	mov	r0, fp
    2ad0:	ebfffebb 	bl	0x25c4
    2ad4:	e5972000 	ldr	r2, [r7]
    2ad8:	e28f0f61 	add	r0, pc, #388	@ 0x184
    2adc:	e5941004 	ldr	r1, [r4, #4]
    2ae0:	e1a03005 	mov	r3, r5
    2ae4:	eb000677 	bl	0x44c8
    2ae8:	e5941000 	ldr	r1, [r4]
    2aec:	e3e00000 	mvn	r0, #0
    2af0:	e5810038 	str	r0, [r1, #56]	@ 0x38
    2af4:	e3550000 	cmp	r5, #0
    2af8:	0a000001 	beq	0x2b04
    2afc:	e3e00000 	mvn	r0, #0
    2b00:	e8bd9ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
    2b04:	e3a00000 	mov	r0, #0
    2b08:	e8bd9ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
    2b0c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    2b10:	e1a07001 	mov	r7, r1
    2b14:	e1a06000 	mov	r6, r0
    2b18:	e28f1f59 	add	r1, pc, #356	@ 0x164
    2b1c:	e28f0f5d 	add	r0, pc, #372	@ 0x174
    2b20:	eb000668 	bl	0x44c8
    2b24:	e0860086 	add	r0, r6, r6, lsl #1
    2b28:	e0801186 	add	r1, r0, r6, lsl #3
    2b2c:	e59f0180 	ldr	r0, [pc, #384]	@ 0x2cb4
    2b30:	e0800201 	add	r0, r0, r1, lsl #4
    2b34:	e3a010b0 	mov	r1, #176	@ 0xb0
    2b38:	e1a04000 	mov	r4, r0
    2b3c:	fa00095f 	blx	0x50c0
    2b40:	e51f0288 	ldr	r0, [pc, #-648]	@ 0x28c0
    2b44:	e0861106 	add	r1, r6, r6, lsl #2
    2b48:	e0805181 	add	r5, r0, r1, lsl #3
    2b4c:	e3a01028 	mov	r1, #40	@ 0x28
    2b50:	e1a00005 	mov	r0, r5
    2b54:	fa000959 	blx	0x50c0
    2b58:	e28f1f56 	add	r1, pc, #344	@ 0x158
    2b5c:	e1a00004 	mov	r0, r4
    2b60:	fb0008bc 	blx	0x4e5a
    2b64:	e59f015c 	ldr	r0, [pc, #348]	@ 0x2cc8
    2b68:	e3570004 	cmp	r7, #4
    2b6c:	e5840098 	str	r0, [r4, #152]	@ 0x98
    2b70:	e59f0154 	ldr	r0, [pc, #340]	@ 0x2ccc
    2b74:	e584009c 	str	r0, [r4, #156]	@ 0x9c
    2b78:	e59f0150 	ldr	r0, [pc, #336]	@ 0x2cd0
    2b7c:	e58400a0 	str	r0, [r4, #160]	@ 0xa0
    2b80:	e3a008fe 	mov	r0, #16646144	@ 0xfe0000
    2b84:	e5840024 	str	r0, [r4, #36]	@ 0x24
    2b88:	e3000811 	movw	r0, #2065	@ 0x811
    2b8c:	e584004c 	str	r0, [r4, #76]	@ 0x4c
    2b90:	03000911 	movweq	r0, #2321	@ 0x911
    2b94:	e5845020 	str	r5, [r4, #32]
    2b98:	0584004c 	streq	r0, [r4, #76]	@ 0x4c
    2b9c:	e1b01006 	movs	r1, r6
    2ba0:	e59f012c 	ldr	r0, [pc, #300]	@ 0x2cd4
    2ba4:	e5840034 	str	r0, [r4, #52]	@ 0x34
    2ba8:	e59f0128 	ldr	r0, [pc, #296]	@ 0x2cd8
    2bac:	e5840038 	str	r0, [r4, #56]	@ 0x38
    2bb0:	e3a00442 	mov	r0, #1107296256	@ 0x42000000
    2bb4:	e5846030 	str	r6, [r4, #48]	@ 0x30
    2bb8:	e5850024 	str	r0, [r5, #36]	@ 0x24
    2bbc:	e59f0118 	ldr	r0, [pc, #280]	@ 0x2cdc
    2bc0:	e0800601 	add	r0, r0, r1, lsl #12
    2bc4:	e5850000 	str	r0, [r5]
    2bc8:	e2800c02 	add	r0, r0, #512	@ 0x200
    2bcc:	e5850018 	str	r0, [r5, #24]
    2bd0:	e59f0108 	ldr	r0, [pc, #264]	@ 0x2ce0
    2bd4:	e5850010 	str	r0, [r5, #16]
    2bd8:	e2800e26 	add	r0, r0, #608	@ 0x260
    2bdc:	e585000c 	str	r0, [r5, #12]
    2be0:	02400f8e 	subeq	r0, r0, #568	@ 0x238
    2be4:	0a000009 	beq	0x2c10
    2be8:	e3510002 	cmp	r1, #2
    2bec:	059f00f0 	ldreq	r0, [pc, #240]	@ 0x2ce4
    2bf0:	0a000006 	beq	0x2c10
    2bf4:	e28f00ec 	add	r0, pc, #236	@ 0xec
    2bf8:	eb000632 	bl	0x44c8
    2bfc:	e28f0c01 	add	r0, pc, #256	@ 0x100
    2c00:	e1a01006 	mov	r1, r6
    2c04:	eb00062f 	bl	0x44c8
    2c08:	e3e00000 	mvn	r0, #0
    2c0c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2c10:	e5a56004 	str	r6, [r5, #4]!
    2c14:	e3a01001 	mov	r1, #1
    2c18:	e5850010 	str	r0, [r5, #16]
    2c1c:	e1a00006 	mov	r0, r6
    2c20:	ebfffe4a 	bl	0x2550
    2c24:	e1a01004 	mov	r1, r4
    2c28:	e1a00006 	mov	r0, r6
    2c2c:	ebfffe2b 	bl	0x24e0
    2c30:	e3500000 	cmp	r0, #0
    2c34:	a59400a8 	ldrge	r0, [r4, #168]	@ 0xa8
    2c38:	b28f00e8 	addlt	r0, pc, #232	@ 0xe8
    2c3c:	b1a01006 	movlt	r1, r6
    2c40:	baffffef 	blt	0x2c04
    2c44:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2c48:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2c4c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2c50:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2c54:	75622064 	strbvc	r2, [r2, #-100]!	@ 0xffffff9c
    2c58:	74207973 	strtvc	r7, [r0], #-2419	@ 0xfffff68d
    2c5c:	6f656d69 	svcvs	0x00656d69
    2c60:	000a7475 	andeq	r7, sl, r5, ror r4
    2c64:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2c68:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2c6c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2c70:	6d632064 	stclvs	0, cr2, [r3, #-400]!	@ 0xfffffe70
    2c74:	64252064 	strtvs	r2, [r5], #-100	@ 0xffffff9c
    2c78:	72726520 	rsbsvc	r6, r2, #32, 10	@ 0x8000000
    2c7c:	0a782520 	beq	0x1e0c104
    2c80:	00000000 	andeq	r0, r0, r0
    2c84:	34313032 	ldrtcc	r3, [r1], #-50	@ 0xffffffce
    2c88:	2d32302d 	ldccs	0, cr3, [r2, #-180]!	@ 0xffffff4c
    2c8c:	31203832 			@ <UNDEFINED> instruction: 0x31203832
    2c90:	35333a36 	ldrcc	r3, [r3, #-2614]!	@ 0xfffff5ca
    2c94:	00000000 	andeq	r0, r0, r0
    2c98:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2c9c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2ca0:	6420636d 	strtvs	r6, [r0], #-877	@ 0xfffffc93
    2ca4:	65766972 	ldrbvs	r6, [r6, #-2418]!	@ 0xfffff68e
    2ca8:	65762072 	ldrbvs	r2, [r6, #-114]!	@ 0xffffff8e
    2cac:	73252072 			@ <UNDEFINED> instruction: 0x73252072
    2cb0:	0000000a 	andeq	r0, r0, sl
    2cb4:	00005268 	andeq	r5, r0, r8, ror #4
    2cb8:	584e5553 	stmdapl	lr, {r0, r1, r4, r6, r8, sl, ip, lr}^
    2cbc:	44532049 	ldrbmi	r2, [r3], #-73	@ 0xffffffb7
    2cc0:	434d4d2f 	movtmi	r4, #56623	@ 0xdd2f
    2cc4:	00000000 	andeq	r0, r0, r0
    2cc8:	000026d8 	ldrdeq	r2, [r0], -r8
    2ccc:	00002620 	andeq	r2, r0, r0, lsr #12
    2cd0:	00002688 	andeq	r2, r0, r8, lsl #13
    2cd4:	00061a80 	andeq	r1, r6, r0, lsl #21
    2cd8:	017d7840 	cmneq	sp, r0, asr #16
    2cdc:	01c0f000 	biceq	pc, r0, r0
    2ce0:	01c20060 	biceq	r0, r2, r0, rrx
    2ce4:	01c20090 			@ <UNDEFINED> instruction: 0x01c20090
    2ce8:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2cec:	57203a5d 			@ <UNDEFINED> instruction: 0x57203a5d
    2cf0:	676e6f72 			@ <UNDEFINED> instruction: 0x676e6f72
    2cf4:	636d6d20 	cmnvs	sp, #32, 26	@ 0x800
    2cf8:	2e4f4e20 	cdpcs	14, 4, cr4, cr15, cr0, {1}
    2cfc:	6425203a 	strtvs	r2, [r5], #-58	@ 0xffffffc6
    2d00:	0000000a 	andeq	r0, r0, sl
    2d04:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2d08:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2d0c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2d10:	65722064 	ldrbvs	r2, [r2, #-100]!	@ 0xffffff9c
    2d14:	72756f73 	rsbsvc	r6, r5, #460	@ 0x1cc
    2d18:	69206563 	stmdbvs	r0!, {r0, r1, r5, r6, r8, sl, sp, lr}
    2d1c:	2074696e 	rsbscs	r6, r4, lr, ror #18
    2d20:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    2d24:	000a6465 	andeq	r6, sl, r5, ror #8
    2d28:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2d2c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2d30:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2d34:	65722064 	ldrbvs	r2, [r2, #-100]!	@ 0xffffff9c
    2d38:	74736967 	ldrbtvc	r6, [r3], #-2407	@ 0xfffff699
    2d3c:	66207265 	strtvs	r7, [r0], -r5, ror #4
    2d40:	656c6961 	strbvs	r6, [ip, #-2401]!	@ 0xfffff69f
    2d44:	00000a64 	andeq	r0, r0, r4, ror #20
    2d48:	e92d4010 	push	{r4, lr}
    2d4c:	e1a04000 	mov	r4, r0
    2d50:	e3a01000 	mov	r1, #0
    2d54:	ebfffdfd 	bl	0x2550
    2d58:	e1a00004 	mov	r0, r4
    2d5c:	ebfffde7 	bl	0x2500
    2d60:	e0840084 	add	r0, r4, r4, lsl #1
    2d64:	e51f10b8 	ldr	r1, [pc, #-184]	@ 0x2cb4
    2d68:	e0800184 	add	r0, r0, r4, lsl #3
    2d6c:	e0810200 	add	r0, r1, r0, lsl #4
    2d70:	e3a010b0 	mov	r1, #176	@ 0xb0
    2d74:	fa0008d1 	blx	0x50c0
    2d78:	e51f14c0 	ldr	r1, [pc, #-1216]	@ 0x28c0
    2d7c:	e0840104 	add	r0, r4, r4, lsl #2
    2d80:	e0810180 	add	r0, r1, r0, lsl #3
    2d84:	e3a01028 	mov	r1, #40	@ 0x28
    2d88:	fa0008cc 	blx	0x50c0
    2d8c:	e3a00000 	mov	r0, #0
    2d90:	e8bd8010 	pop	{r4, pc}
    2d94:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    2d98:	e5904020 	ldr	r4, [r0, #32]
    2d9c:	e1a07001 	mov	r7, r1
    2da0:	e1a06000 	mov	r6, r0
    2da4:	e5942000 	ldr	r2, [r4]
    2da8:	e5923004 	ldr	r3, [r2, #4]
    2dac:	e3c35801 	bic	r5, r3, #65536	@ 0x10000
    2db0:	e5825004 	str	r5, [r2, #4]
    2db4:	ebfffe02 	bl	0x25c4
    2db8:	e3500000 	cmp	r0, #0
    2dbc:	15941004 	ldrne	r1, [r4, #4]
    2dc0:	128f0f53 	addne	r0, pc, #332	@ 0x14c
    2dc4:	0a000002 	beq	0x2dd4
    2dc8:	eb0005be 	bl	0x44c8
    2dcc:	e3e00000 	mvn	r0, #0
    2dd0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2dd4:	e5941014 	ldr	r1, [r4, #20]
    2dd8:	e3a00000 	mov	r0, #0
    2ddc:	e5810000 	str	r0, [r1]
    2de0:	e51f0114 	ldr	r0, [pc, #-276]	@ 0x2cd4
    2de4:	e1570000 	cmp	r7, r0
    2de8:	859f0148 	ldrhi	r0, [pc, #328]	@ 0x2f38
    2dec:	e5840008 	str	r0, [r4, #8]
    2df0:	83a00001 	movhi	r0, #1
    2df4:	e5941014 	ldr	r1, [r4, #20]
    2df8:	959f013c 	ldrls	r0, [pc, #316]	@ 0x2f3c
    2dfc:	e5810000 	str	r0, [r1]
    2e00:	e5941014 	ldr	r1, [r4, #20]
    2e04:	e5910000 	ldr	r0, [r1]
    2e08:	e3800102 	orr	r0, r0, #-2147483648	@ 0x80000000
    2e0c:	e5810000 	str	r0, [r1]
    2e10:	e5940000 	ldr	r0, [r4]
    2e14:	e3c550ff 	bic	r5, r5, #255	@ 0xff
    2e18:	e5805004 	str	r5, [r0, #4]
    2e1c:	e1a00006 	mov	r0, r6
    2e20:	ebfffde7 	bl	0x25c4
    2e24:	e3500000 	cmp	r0, #0
    2e28:	15941004 	ldrne	r1, [r4, #4]
    2e2c:	128f0f43 	addne	r0, pc, #268	@ 0x10c
    2e30:	1affffe4 	bne	0x2dc8
    2e34:	e5941000 	ldr	r1, [r4]
    2e38:	e3850803 	orr	r0, r5, #196608	@ 0x30000
    2e3c:	e5810004 	str	r0, [r1, #4]
    2e40:	e1a00006 	mov	r0, r6
    2e44:	ebfffdde 	bl	0x25c4
    2e48:	e3500000 	cmp	r0, #0
    2e4c:	15941004 	ldrne	r1, [r4, #4]
    2e50:	128f0f45 	addne	r0, pc, #276	@ 0x114
    2e54:	1affffdb 	bne	0x2dc8
    2e58:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2e5c:	e2813008 	add	r3, r1, #8
    2e60:	e92d4070 	push	{r4, r5, r6, lr}
    2e64:	e5902020 	ldr	r2, [r0, #32]
    2e68:	e8930009 	ldm	r3, {r0, r3}
    2e6c:	e5915000 	ldr	r5, [r1]
    2e70:	e0040093 	mul	r4, r3, r0
    2e74:	e5d13004 	ldrb	r3, [r1, #4]
    2e78:	e3e004ff 	mvn	r0, #-16777216	@ 0xff000000
    2e7c:	e3a01000 	mov	r1, #0
    2e80:	e3130001 	tst	r3, #1
    2e84:	1a00000b 	bne	0x2eb8
    2e88:	ea000018 	b	0x2ef0
    2e8c:	e2500001 	subs	r0, r0, #1
    2e90:	0a00001a 	beq	0x2f00
    2e94:	e5923000 	ldr	r3, [r2]
    2e98:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
    2e9c:	e3130004 	tst	r3, #4
    2ea0:	1afffff9 	bne	0x2e8c
    2ea4:	e5920018 	ldr	r0, [r2, #24]
    2ea8:	e5900000 	ldr	r0, [r0]
    2eac:	e7850101 	str	r0, [r5, r1, lsl #2]
    2eb0:	e3e004ff 	mvn	r0, #-16777216	@ 0xff000000
    2eb4:	e2811001 	add	r1, r1, #1
    2eb8:	e1510124 	cmp	r1, r4, lsr #2
    2ebc:	3afffff2 	bcc	0x2e8c
    2ec0:	ea00000c 	b	0x2ef8
    2ec4:	e2500001 	subs	r0, r0, #1
    2ec8:	0a00000c 	beq	0x2f00
    2ecc:	e5923000 	ldr	r3, [r2]
    2ed0:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
    2ed4:	e3130008 	tst	r3, #8
    2ed8:	1afffff9 	bne	0x2ec4
    2edc:	e5923018 	ldr	r3, [r2, #24]
    2ee0:	e7950101 	ldr	r0, [r5, r1, lsl #2]
    2ee4:	e5830000 	str	r0, [r3]
    2ee8:	e3e004ff 	mvn	r0, #-16777216	@ 0xff000000
    2eec:	e2811001 	add	r1, r1, #1
    2ef0:	e1510124 	cmp	r1, r4, lsr #2
    2ef4:	3afffff2 	bcc	0x2ec4
    2ef8:	e3a00000 	mov	r0, #0
    2efc:	e8bd8070 	pop	{r4, r5, r6, pc}
    2f00:	e5921004 	ldr	r1, [r2, #4]
    2f04:	e28f0088 	add	r0, pc, #136	@ 0x88
    2f08:	eb00056e 	bl	0x44c8
    2f0c:	e3e00000 	mvn	r0, #0
    2f10:	e8bd8070 	pop	{r4, r5, r6, pc}
    2f14:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2f18:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2f1c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2f20:	69642064 	stmdbvs	r4!, {r2, r5, r6, sp}^
    2f24:	6c626173 	stclvs	1, cr6, [r2], #-460	@ 0xfffffe34
    2f28:	6c632065 	stclvs	0, cr2, [r3], #-404	@ 0xfffffe6c
    2f2c:	206b636f 	rsbcs	r6, fp, pc, ror #6
    2f30:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    2f34:	000a6465 	andeq	r6, sl, r5, ror #8
    2f38:	00b71b00 	adcseq	r1, r7, r0, lsl #22
    2f3c:	0002000f 	andeq	r0, r2, pc
    2f40:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2f44:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2f48:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2f4c:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
    2f50:	65676e61 	strbvs	r6, [r7, #-3681]!	@ 0xfffff19f
    2f54:	76694420 	strbtvc	r4, [r9], -r0, lsr #8
    2f58:	72656469 	rsbvc	r6, r5, #1761607680	@ 0x69000000
    2f5c:	63614620 	cmnvs	r1, #32, 12	@ 0x2000000
    2f60:	20726f74 	rsbscs	r6, r2, r4, ror pc
    2f64:	6c696166 	stclvs	1, cr6, [r9], #-408	@ 0xfffffe68
    2f68:	000a6465 	andeq	r6, sl, r5, ror #8
    2f6c:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2f70:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2f74:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2f78:	65722064 	ldrbvs	r2, [r2, #-100]!	@ 0xffffff9c
    2f7c:	616e652d 	cmnvs	lr, sp, lsr #10
    2f80:	20656c62 	rsbcs	r6, r5, r2, ror #24
    2f84:	636f6c63 	cmnvs	pc, #25344	@ 0x6300
    2f88:	6166206b 	cmnvs	r6, fp, rrx
    2f8c:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
    2f90:	0000000a 	andeq	r0, r0, sl
    2f94:	636d6d5b 	cmnvs	sp, #5824	@ 0x16c0
    2f98:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2f9c:	2520636d 	strcs	r6, [r0, #-877]!	@ 0xfffffc93
    2fa0:	72742064 	rsbsvc	r2, r4, #100	@ 0x64
    2fa4:	66736e61 	ldrbtvs	r6, [r3], -r1, ror #28
    2fa8:	62207265 	eorvs	r7, r0, #1342177286	@ 0x50000006
    2fac:	70632079 	rsbvc	r2, r3, r9, ror r0
    2fb0:	61662075 	smcvs	25093	@ 0x6205
    2fb4:	64656c69 	strbtvs	r6, [r5], #-3177	@ 0xfffff397
    2fb8:	0000000a 	andeq	r0, r0, sl
    2fbc:	e92d4010 	push	{r4, lr}
    2fc0:	ebfffed1 	bl	0x2b0c
    2fc4:	e3500000 	cmp	r0, #0
    2fc8:	d3e00000 	mvnle	r0, #0
    2fcc:	e8bd8010 	pop	{r4, pc}
    2fd0:	e92d4010 	push	{r4, lr}
    2fd4:	ebffff5b 	bl	0x2d48
    2fd8:	e3a00000 	mov	r0, #0
    2fdc:	e8bd8010 	pop	{r4, pc}
    2fe0:	e92d0030 	push	{r4, r5}
    2fe4:	e1a04003 	mov	r4, r3
    2fe8:	e1a03002 	mov	r3, r2
    2fec:	e1a02001 	mov	r2, r1
    2ff0:	e1a01000 	mov	r1, r0
    2ff4:	e1a00004 	mov	r0, r4
    2ff8:	e8bd0030 	pop	{r4, r5}
    2ffc:	eafff721 	b	0xc88
    3000:	e92d0030 	push	{r4, r5}
    3004:	e1a04003 	mov	r4, r3
    3008:	e1a03002 	mov	r3, r2
    300c:	e1a02001 	mov	r2, r1
    3010:	e1a01000 	mov	r1, r0
    3014:	e1a00004 	mov	r0, r4
    3018:	e8bd0030 	pop	{r4, r5}
    301c:	eafff64d 	b	0x958
    3020:	e92d4010 	push	{r4, lr}
    3024:	ebfff5b4 	bl	0x6fc
    3028:	e59000a8 	ldr	r0, [r0, #168]	@ 0xa8
    302c:	e8bd8010 	pop	{r4, pc}
    3030:	e1a03002 	mov	r3, r2
    3034:	e1a02001 	mov	r2, r1
    3038:	e1a01000 	mov	r1, r0
    303c:	e1a00003 	mov	r0, r3
    3040:	eafff670 	b	0xa08
    3044:	e59f30b4 	ldr	r3, [pc, #180]	@ 0x3100
    3048:	e5831000 	str	r1, [r3]
    304c:	e1a01002 	mov	r1, r2
    3050:	eaffffd9 	b	0x2fbc
    3054:	e59f10a4 	ldr	r1, [pc, #164]	@ 0x3100
    3058:	e92d4010 	push	{r4, lr}
    305c:	e3a04000 	mov	r4, #0
    3060:	e5814000 	str	r4, [r1]
    3064:	ebffff37 	bl	0x2d48
    3068:	e1a00004 	mov	r0, r4
    306c:	e8bd8010 	pop	{r4, pc}
    3070:	e92d0030 	push	{r4, r5}
    3074:	e1a04001 	mov	r4, r1
    3078:	e59f1080 	ldr	r1, [pc, #128]	@ 0x3100
    307c:	e1a05003 	mov	r5, r3
    3080:	e1a03002 	mov	r3, r2
    3084:	e1a02004 	mov	r2, r4
    3088:	e5911000 	ldr	r1, [r1]
    308c:	e0811000 	add	r1, r1, r0
    3090:	e1a00005 	mov	r0, r5
    3094:	e8bd0030 	pop	{r4, r5}
    3098:	eafff6fa 	b	0xc88
    309c:	e92d0030 	push	{r4, r5}
    30a0:	e1a04001 	mov	r4, r1
    30a4:	e59f1054 	ldr	r1, [pc, #84]	@ 0x3100
    30a8:	e1a05003 	mov	r5, r3
    30ac:	e1a03002 	mov	r3, r2
    30b0:	e1a02004 	mov	r2, r4
    30b4:	e5911000 	ldr	r1, [r1]
    30b8:	e0811000 	add	r1, r1, r0
    30bc:	e1a00005 	mov	r0, r5
    30c0:	e8bd0030 	pop	{r4, r5}
    30c4:	eafff623 	b	0x958
    30c8:	e92d4010 	push	{r4, lr}
    30cc:	ebffffd3 	bl	0x3020
    30d0:	e59f1028 	ldr	r1, [pc, #40]	@ 0x3100
    30d4:	e5911000 	ldr	r1, [r1]
    30d8:	e0400001 	sub	r0, r0, r1
    30dc:	e8bd8010 	pop	{r4, pc}
    30e0:	e1a03002 	mov	r3, r2
    30e4:	e1a02001 	mov	r2, r1
    30e8:	e59f1010 	ldr	r1, [pc, #16]	@ 0x3100
    30ec:	e5911000 	ldr	r1, [r1]
    30f0:	e0811000 	add	r1, r1, r0
    30f4:	e1a00003 	mov	r0, r3
    30f8:	eafff642 	b	0xa08
    30fc:	e12fff1e 	bx	lr
    3100:	00005234 	andeq	r5, r0, r4, lsr r2
    3104:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    3108:	e59f1138 	ldr	r1, [pc, #312]	@ 0x3248
    310c:	e3a05000 	mov	r5, #0
    3110:	e59f0134 	ldr	r0, [pc, #308]	@ 0x324c
    3114:	fa0007e9 	blx	0x50c0
    3118:	eb00017a 	bl	0x3708
    311c:	eb000157 	bl	0x3680
    3120:	e59f4128 	ldr	r4, [pc, #296]	@ 0x3250
    3124:	e59f2128 	ldr	r2, [pc, #296]	@ 0x3254
    3128:	e28410bc 	add	r1, r4, #188	@ 0xbc
    312c:	e59400b8 	ldr	r0, [r4, #184]	@ 0xb8
    3130:	eb00057a 	bl	0x4720
    3134:	e59400cc 	ldr	r0, [r4, #204]	@ 0xcc
    3138:	e3500000 	cmp	r0, #0
    313c:	128400d0 	addne	r0, r4, #208	@ 0xd0
    3140:	1b000073 	blne	0x3314
    3144:	e28f0f43 	add	r0, pc, #268	@ 0x10c
    3148:	eb0004de 	bl	0x44c8
    314c:	e284102a 	add	r1, r4, #42	@ 0x2a
    3150:	e28f0f47 	add	r0, pc, #284	@ 0x11c
    3154:	eb0004db 	bl	0x44c8
    3158:	e3a0161f 	mov	r1, #32505856	@ 0x1f00000
    315c:	e5910108 	ldr	r0, [r1, #264]	@ 0x108
    3160:	e59f2120 	ldr	r2, [pc, #288]	@ 0x3288
    3164:	e59f6120 	ldr	r6, [pc, #288]	@ 0x328c
    3168:	e1500002 	cmp	r0, r2
    316c:	03a00000 	moveq	r0, #0
    3170:	05810108 	streq	r0, [r1, #264]	@ 0x108
    3174:	1a000006 	bne	0x3194
    3178:	e28f0e11 	add	r0, pc, #272	@ 0x110
    317c:	eb0004d1 	bl	0x44c8
    3180:	eb000136 	bl	0x3660
    3184:	e3a0000a 	mov	r0, #10
    3188:	eb00014a 	bl	0x36b8
    318c:	e1a00006 	mov	r0, r6
    3190:	eb0007ed 	bl	0x514c
    3194:	e3a00101 	mov	r0, #1073741824	@ 0x40000000
    3198:	e3082000 	movw	r2, #32768	@ 0x8000
    319c:	e3001400 	movw	r1, #1024	@ 0x400
    31a0:	eb000108 	bl	0x35c8
    31a4:	eb000121 	bl	0x3630
    31a8:	e2841038 	add	r1, r4, #56	@ 0x38
    31ac:	e1a00005 	mov	r0, r5
    31b0:	eb0003ff 	bl	0x41b4
    31b4:	e1b05000 	movs	r5, r0
    31b8:	0a000003 	beq	0x31cc
    31bc:	e1a01000 	mov	r1, r0
    31c0:	e28f00d8 	add	r0, pc, #216	@ 0xd8
    31c4:	eb0004bf 	bl	0x44c8
    31c8:	ea000005 	b	0x31e4
    31cc:	e28f00dc 	add	r0, pc, #220	@ 0xdc
    31d0:	eb0004bc 	bl	0x44c8
    31d4:	eb00011c 	bl	0x364c
    31d8:	eb000120 	bl	0x3660
    31dc:	e1a00006 	mov	r0, r6
    31e0:	eb0007d9 	bl	0x514c
    31e4:	e59f00e0 	ldr	r0, [pc, #224]	@ 0x32cc
    31e8:	e2841038 	add	r1, r4, #56	@ 0x38
    31ec:	e3a02080 	mov	r2, #128	@ 0x80
    31f0:	eb000788 	bl	0x5018
    31f4:	e2840f7e 	add	r0, r4, #504	@ 0x1f8
    31f8:	ebfff44e 	bl	0x338
    31fc:	e1a07000 	mov	r7, r0
    3200:	e28f00c8 	add	r0, pc, #200	@ 0xc8
    3204:	eb0004af 	bl	0x44c8
    3208:	eb00010f 	bl	0x364c
    320c:	e3570000 	cmp	r7, #0
    3210:	0a000005 	beq	0x322c
    3214:	eb000111 	bl	0x3660
    3218:	e28f00cc 	add	r0, pc, #204	@ 0xcc
    321c:	eb0004a9 	bl	0x44c8
    3220:	e1a00006 	mov	r0, r6
    3224:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    3228:	ea0007c7 	b	0x514c
    322c:	e2840038 	add	r0, r4, #56	@ 0x38
    3230:	e1a01005 	mov	r1, r5
    3234:	eb0000d0 	bl	0x357c
    3238:	e28f00bc 	add	r0, pc, #188	@ 0xbc
    323c:	eb0004a1 	bl	0x44c8
    3240:	e3a0044a 	mov	r0, #1241513984	@ 0x4a000000
    3244:	eafffff6 	b	0x3224
    3248:	00000374 	andeq	r0, r0, r4, ror r3
    324c:	00005254 	andeq	r5, r0, r4, asr r2
    3250:	00000000 	andeq	r0, r0, r0
    3254:	016e3600 	cmneq	lr, r0, lsl #12
    3258:	4c4c4548 	mcrrmi	5, 4, r4, ip, cr8
    325c:	4220214f 	eormi	r2, r0, #-1073741805	@ 0xc0000013
    3260:	30544f4f 	subscc	r4, r4, pc, asr #30
    3264:	20736920 	rsbscs	r6, r3, r0, lsr #18
    3268:	72617473 	rsbvc	r7, r1, #1929379840	@ 0x73000000
    326c:	676e6974 			@ <UNDEFINED> instruction: 0x676e6974
    3270:	00000a21 	andeq	r0, r0, r1, lsr #20
    3274:	746f6f62 	strbtvc	r6, [pc], #-3938	@ 0x327c
    3278:	65762030 	ldrbvs	r2, [r6, #-48]!	@ 0xffffffd0
    327c:	6f697372 	svcvs	0x00697372
    3280:	203a206e 	eorscs	r2, sl, lr, rrx
    3284:	000a7325 	andeq	r7, sl, r5, lsr #6
    3288:	5aa5a55a 	bpl	0xfe96c7f8
    328c:	ffff0020 			@ <UNDEFINED> instruction: 0xffff0020
    3290:	6c617265 	stclvs	2, cr7, [r1], #-404	@ 0xfffffe6c
    3294:	756a2079 	strbvc	r2, [sl, #-121]!	@ 0xffffff87
    3298:	6620706d 	strtvs	r7, [r0], -sp, rrx
    329c:	000a6c65 	andeq	r6, sl, r5, ror #24
    32a0:	6d617264 	stclvs	2, cr7, [r1, #-400]!	@ 0xfffffe70
    32a4:	7a697320 	bvc	0x1a5ff2c
    32a8:	253d2065 	ldrcs	r2, [sp, #-101]!	@ 0xffffff9b
    32ac:	00000a64 	andeq	r0, r0, r4, ror #20
    32b0:	74696e69 	strbtvc	r6, [r9], #-3689	@ 0xfffff197
    32b4:	696c6169 	stmdbvs	ip!, {r0, r3, r5, r6, r8, sp, lr}^
    32b8:	676e697a 			@ <UNDEFINED> instruction: 0x676e697a
    32bc:	52445320 	subpl	r5, r4, #32, 6	@ 0x80000000
    32c0:	46204d41 	strtmi	r4, [r0], -r1, asr #26
    32c4:	2e6c6961 	vnmulcs.f16	s13, s24, s3	@ <UNPREDICTABLE>
    32c8:	0000000a 	andeq	r0, r0, sl
    32cc:	40800000 	addmi	r0, r0, r0
    32d0:	64616552 	strbtvs	r6, [r1], #-1362	@ 0xfffffaae
    32d4:	6f742079 	svcvs	0x00742079
    32d8:	73696420 	cmnvc	r9, #32, 8	@ 0x20000000
    32dc:	656c6261 	strbvs	r6, [ip, #-609]!	@ 0xfffffd9f
    32e0:	61636920 	cmnvs	r3, r0, lsr #18
    32e4:	2e656863 	cdpcs	8, 6, cr6, cr5, cr3, {3}
    32e8:	0000000a 	andeq	r0, r0, sl
    32ec:	706d754a 	rsbvc	r7, sp, sl, asr #10
    32f0:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    32f4:	2e6c6546 	cdpcs	5, 6, cr6, cr12, cr6, {2}
    32f8:	0000000a 	andeq	r0, r0, sl
    32fc:	706d754a 	rsbvc	r7, sp, sl, asr #10
    3300:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    3304:	65636573 	strbvs	r6, [r3, #-1395]!	@ 0xfffffa8d
    3308:	4220646e 	eormi	r6, r0, #1845493760	@ 0x6e000000
    330c:	2e746f6f 	cdpcs	15, 7, cr6, cr4, cr15, {3}
    3310:	0000000a 	andeq	r0, r0, sl
    3314:	e3a02001 	mov	r2, #1
    3318:	e3a01006 	mov	r1, #6
    331c:	ea000542 	b	0x482c
    3320:	e2800004 	add	r0, r0, #4
    3324:	e3a02008 	mov	r2, #8
    3328:	e92d4010 	push	{r4, lr}
    332c:	eb0006db 	bl	0x4ea0
    3330:	e3500000 	cmp	r0, #0
    3334:	13a00001 	movne	r0, #1
    3338:	e8bd8010 	pop	{r4, pc}
    333c:	e92d4070 	push	{r4, r5, r6, lr}
    3340:	e590500c 	ldr	r5, [r0, #12]
    3344:	e1a01121 	lsr	r1, r1, #2
    3348:	e59f30ac 	ldr	r3, [pc, #172]	@ 0x33fc
    334c:	e1a02000 	mov	r2, r0
    3350:	e3a04000 	mov	r4, #0
    3354:	e580300c 	str	r3, [r0, #12]
    3358:	e4903004 	ldr	r3, [r0], #4
    335c:	e2411004 	sub	r1, r1, #4
    3360:	e0833004 	add	r3, r3, r4
    3364:	e4904004 	ldr	r4, [r0], #4
    3368:	e3510003 	cmp	r1, #3
    336c:	e0833004 	add	r3, r3, r4
    3370:	e4904004 	ldr	r4, [r0], #4
    3374:	e0833004 	add	r3, r3, r4
    3378:	e4904004 	ldr	r4, [r0], #4
    337c:	e0844003 	add	r4, r4, r3
    3380:	8afffff4 	bhi	0x3358
    3384:	e2411001 	sub	r1, r1, #1
    3388:	e3710001 	cmn	r1, #1
    338c:	14903004 	ldrne	r3, [r0], #4
    3390:	10844003 	addne	r4, r4, r3
    3394:	1afffffa 	bne	0x3384
    3398:	e28f0060 	add	r0, pc, #96	@ 0x60
    339c:	e1a01004 	mov	r1, r4
    33a0:	e582500c 	str	r5, [r2, #12]
    33a4:	eb000447 	bl	0x44c8
    33a8:	e28f0058 	add	r0, pc, #88	@ 0x58
    33ac:	e1a01005 	mov	r1, r5
    33b0:	eb000444 	bl	0x44c8
    33b4:	e1540005 	cmp	r4, r5
    33b8:	03a00000 	moveq	r0, #0
    33bc:	13a00001 	movne	r0, #1
    33c0:	e8bd8070 	pop	{r4, r5, r6, pc}
    33c4:	e92d4070 	push	{r4, r5, r6, lr}
    33c8:	e1a04001 	mov	r4, r1
    33cc:	e1a05000 	mov	r5, r0
    33d0:	e1a01002 	mov	r1, r2
    33d4:	ebffffd1 	bl	0x3320
    33d8:	e3500000 	cmp	r0, #0
    33dc:	1a000004 	bne	0x33f4
    33e0:	e1a01004 	mov	r1, r4
    33e4:	e1a00005 	mov	r0, r5
    33e8:	ebffffd3 	bl	0x333c
    33ec:	e3500000 	cmp	r0, #0
    33f0:	08bd8070 	popeq	{r4, r5, r6, pc}
    33f4:	e3a00001 	mov	r0, #1
    33f8:	e8bd8070 	pop	{r4, r5, r6, pc}
    33fc:	5f0a6c39 	svcpl	0x000a6c39
    3400:	3d6d7573 	stclcc	5, cr7, [sp, #-460]!	@ 0xfffffe34
    3404:	000a7825 	andeq	r7, sl, r5, lsr #16
    3408:	5f637273 	svcpl	0x00637273
    340c:	3d6d7573 	stclcc	5, cr7, [sp, #-460]!	@ 0xfffffe34
    3410:	000a7825 	andeq	r7, sl, r5, lsr #16
    3414:	e3510000 	cmp	r1, #0
    3418:	e3a03000 	mov	r3, #0
    341c:	05823000 	streq	r3, [r2]
    3420:	0a000008 	beq	0x3448
    3424:	e3510001 	cmp	r1, #1
    3428:	05820000 	streq	r0, [r2]
    342c:	0a000005 	beq	0x3448
    3430:	e1510000 	cmp	r1, r0
    3434:	e5823000 	str	r3, [r2]
    3438:	90400001 	subls	r0, r0, r1
    343c:	92833001 	addls	r3, r3, #1
    3440:	9afffffa 	bls	0x3430
    3444:	e12fff1e 	bx	lr
    3448:	e3a00000 	mov	r0, #0
    344c:	e12fff1e 	bx	lr
    3450:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    3454:	e5d02000 	ldrb	r2, [r0]
    3458:	e3520030 	cmp	r2, #48	@ 0x30
    345c:	0a000007 	beq	0x3480
    3460:	e352002d 	cmp	r2, #45	@ 0x2d
    3464:	e3a05000 	mov	r5, #0
    3468:	03a05001 	moveq	r5, #1
    346c:	e3a06001 	mov	r6, #1
    3470:	03a06000 	moveq	r6, #0
    3474:	e3a03000 	mov	r3, #0
    3478:	e1a02005 	mov	r2, r5
    347c:	ea000031 	b	0x3548
    3480:	e5d02001 	ldrb	r2, [r0, #1]
    3484:	e3520078 	cmp	r2, #120	@ 0x78
    3488:	13520058 	cmpne	r2, #88	@ 0x58
    348c:	13a03000 	movne	r3, #0
    3490:	03a04000 	moveq	r4, #0
    3494:	03a03002 	moveq	r3, #2
    3498:	11a02003 	movne	r2, r3
    349c:	0a00000d 	beq	0x34d8
    34a0:	e7d04002 	ldrb	r4, [r0, r2]
    34a4:	e2445030 	sub	r5, r4, #48	@ 0x30
    34a8:	e3550007 	cmp	r5, #7
    34ac:	90843183 	addls	r3, r4, r3, lsl #3
    34b0:	92433030 	subls	r3, r3, #48	@ 0x30
    34b4:	92822001 	addls	r2, r2, #1
    34b8:	9afffff8 	bls	0x34a0
    34bc:	e3510000 	cmp	r1, #0
    34c0:	10800002 	addne	r0, r0, r2
    34c4:	15810000 	strne	r0, [r1]
    34c8:	e1a00003 	mov	r0, r3
    34cc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    34d0:	e0824204 	add	r4, r2, r4, lsl #4
    34d4:	e2833001 	add	r3, r3, #1
    34d8:	e7d02003 	ldrb	r2, [r0, r3]
    34dc:	e2425030 	sub	r5, r2, #48	@ 0x30
    34e0:	e3550009 	cmp	r5, #9
    34e4:	92422030 	subls	r2, r2, #48	@ 0x30
    34e8:	9afffff8 	bls	0x34d0
    34ec:	e2425061 	sub	r5, r2, #97	@ 0x61
    34f0:	e3550005 	cmp	r5, #5
    34f4:	92422057 	subls	r2, r2, #87	@ 0x57
    34f8:	9afffff4 	bls	0x34d0
    34fc:	e2425041 	sub	r5, r2, #65	@ 0x41
    3500:	e3550005 	cmp	r5, #5
    3504:	92422037 	subls	r2, r2, #55	@ 0x37
    3508:	9afffff0 	bls	0x34d0
    350c:	e3530002 	cmp	r3, #2
    3510:	0a000004 	beq	0x3528
    3514:	e3510000 	cmp	r1, #0
    3518:	10800003 	addne	r0, r0, r3
    351c:	15810000 	strne	r0, [r1]
    3520:	e1a00004 	mov	r0, r4
    3524:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    3528:	e3510000 	cmp	r1, #0
    352c:	15810000 	strne	r0, [r1]
    3530:	e3a00000 	mov	r0, #0
    3534:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    3538:	e0833103 	add	r3, r3, r3, lsl #2
    353c:	e2822001 	add	r2, r2, #1
    3540:	e0843083 	add	r3, r4, r3, lsl #1
    3544:	e2433030 	sub	r3, r3, #48	@ 0x30
    3548:	e7d04002 	ldrb	r4, [r0, r2]
    354c:	e2447030 	sub	r7, r4, #48	@ 0x30
    3550:	e3570009 	cmp	r7, #9
    3554:	9afffff7 	bls	0x3538
    3558:	e1520005 	cmp	r2, r5
    355c:	0afffff1 	beq	0x3528
    3560:	e3560000 	cmp	r6, #0
    3564:	02633000 	rsbeq	r3, r3, #0
    3568:	eaffffd3 	b	0x34bc
    356c:	e3a00001 	mov	r0, #1
    3570:	e12fff1e 	bx	lr
    3574:	e59f0040 	ldr	r0, [pc, #64]	@ 0x35bc
    3578:	e12fff1e 	bx	lr
    357c:	e1a02001 	mov	r2, r1
    3580:	e5901010 	ldr	r1, [r0, #16]
    3584:	e6ff2072 	uxth	r2, r2
    3588:	e7cf101f 	bfc	r1, #0, #16
    358c:	e1811002 	orr	r1, r1, r2
    3590:	e5801010 	str	r1, [r0, #16]
    3594:	e3a02080 	mov	r2, #128	@ 0x80
    3598:	e1a01000 	mov	r1, r0
    359c:	e59f001c 	ldr	r0, [pc, #28]	@ 0x35c0
    35a0:	ea00067a 	b	0x4f90
    35a4:	e59f1018 	ldr	r1, [pc, #24]	@ 0x35c4
    35a8:	e3a020ac 	mov	r2, #172	@ 0xac
    35ac:	e92d4010 	push	{r4, lr}
    35b0:	eb000698 	bl	0x5018
    35b4:	e3a00000 	mov	r0, #0
    35b8:	e8bd8010 	pop	{r4, pc}
    35bc:	40100000 	andsmi	r0, r0, r0
    35c0:	4a000030 	bmi	0x3688
    35c4:	000001f8 	strdeq	r0, [r0], -r8
    35c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    35cc:	e1a05002 	mov	r5, r2
    35d0:	e3a03000 	mov	r3, #0
    35d4:	e3004de2 	movw	r4, #3554	@ 0xde2
    35d8:	e1846a03 	orr	r6, r4, r3, lsl #20
    35dc:	e7826103 	str	r6, [r2, r3, lsl #2]
    35e0:	e2833001 	add	r3, r3, #1
    35e4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    35e8:	23004dea 	movwcs	r4, #3562	@ 0xdea
    35ec:	23a03000 	movcs	r3, #0
    35f0:	25824000 	strcs	r4, [r2]
    35f4:	3afffff7 	bcc	0x35d8
    35f8:	ea000004 	b	0x3610
    35fc:	e0806a03 	add	r6, r0, r3, lsl #20
    3600:	e0837a20 	add	r7, r3, r0, lsr #20
    3604:	e1866004 	orr	r6, r6, r4
    3608:	e2833001 	add	r3, r3, #1
    360c:	e7826107 	str	r6, [r2, r7, lsl #2]
    3610:	e1530001 	cmp	r3, r1
    3614:	3afffff8 	bcc	0x35fc
    3618:	eb0006d2 	bl	0x5168
    361c:	ee025f10 	mcr	15, 0, r5, cr2, cr0, {0}
    3620:	ee025f30 	mcr	15, 0, r5, cr2, cr0, {1}
    3624:	eb0006c5 	bl	0x5140
    3628:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    362c:	ea0006c9 	b	0x5158
    3630:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    3634:	e3011007 	movw	r1, #4103	@ 0x1007
    3638:	e1c00001 	bic	r0, r0, r1
    363c:	e3011001 	movw	r1, #4097	@ 0x1001
    3640:	e1800001 	orr	r0, r0, r1
    3644:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    3648:	e12fff1e 	bx	lr
    364c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    3650:	e3011007 	movw	r1, #4103	@ 0x1007
    3654:	e1c00001 	bic	r0, r0, r1
    3658:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    365c:	e12fff1e 	bx	lr
    3660:	e59f01ac 	ldr	r0, [pc, #428]	@ 0x3814
    3664:	e3a01801 	mov	r1, #65536	@ 0x10000
    3668:	e5801050 	str	r1, [r0, #80]	@ 0x50
    366c:	e3011000 	movw	r1, #4096	@ 0x1000
    3670:	e5801000 	str	r1, [r0]
    3674:	e3011010 	movw	r1, #4112	@ 0x1010
    3678:	e5801054 	str	r1, [r0, #84]	@ 0x54
    367c:	e12fff1e 	bx	lr
    3680:	e59f018c 	ldr	r0, [pc, #396]	@ 0x3814
    3684:	e5901144 	ldr	r1, [r0, #324]	@ 0x144
    3688:	e3811102 	orr	r1, r1, #-2147483648	@ 0x80000000
    368c:	e5801144 	str	r1, [r0, #324]	@ 0x144
    3690:	e59f1180 	ldr	r1, [pc, #384]	@ 0x3818
    3694:	e3a00001 	mov	r0, #1
    3698:	e5810000 	str	r0, [r1]
    369c:	e281100c 	add	r1, r1, #12
    36a0:	e3020ee0 	movw	r0, #12000	@ 0x2ee0
    36a4:	e5810000 	str	r0, [r1]
    36a8:	e2411008 	sub	r1, r1, #8
    36ac:	e3a00000 	mov	r0, #0
    36b0:	e5810000 	str	r0, [r1]
    36b4:	e12fff1e 	bx	lr
    36b8:	e59f115c 	ldr	r1, [pc, #348]	@ 0x381c
    36bc:	e5912000 	ldr	r2, [r1]
    36c0:	e0822000 	add	r2, r2, r0
    36c4:	e5910000 	ldr	r0, [r1]
    36c8:	e1520000 	cmp	r2, r0
    36cc:	2afffffc 	bcs	0x36c4
    36d0:	e12fff1e 	bx	lr
    36d4:	e59f113c 	ldr	r1, [pc, #316]	@ 0x3818
    36d8:	e3a00000 	mov	r0, #0
    36dc:	e5810000 	str	r0, [r1]
    36e0:	e3021ee0 	movw	r1, #12000	@ 0x2ee0
    36e4:	e59f2134 	ldr	r2, [pc, #308]	@ 0x3820
    36e8:	e5821000 	str	r1, [r2]
    36ec:	e1c21541 	bic	r1, r2, r1, asr #10
    36f0:	e5810000 	str	r0, [r1]
    36f4:	e59f0118 	ldr	r0, [pc, #280]	@ 0x3814
    36f8:	e5901144 	ldr	r1, [r0, #324]	@ 0x144
    36fc:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    3700:	e5801144 	str	r1, [r0, #324]	@ 0x144
    3704:	e12fff1e 	bx	lr
    3708:	e12fff1e 	bx	lr
    370c:	e59f1110 	ldr	r1, [pc, #272]	@ 0x3824
    3710:	e3a00801 	mov	r0, #65536	@ 0x10000
    3714:	e5810000 	str	r0, [r1]
    3718:	e281100c 	add	r1, r1, #12
    371c:	e3a00000 	mov	r0, #0
    3720:	e5810000 	str	r0, [r1]
    3724:	e3a00009 	mov	r0, #9
    3728:	e0211100 	eor	r1, r1, r0, lsl #2
    372c:	e5810000 	str	r0, [r1]
    3730:	e2811088 	add	r1, r1, #136	@ 0x88
    3734:	e3a00008 	mov	r0, #8
    3738:	e5810000 	str	r0, [r1]
    373c:	e3a00507 	mov	r0, #29360128	@ 0x1c00000
    3740:	e5901024 	ldr	r1, [r0, #36]	@ 0x24
    3744:	e3811902 	orr	r1, r1, #32768	@ 0x8000
    3748:	e5801024 	str	r1, [r0, #36]	@ 0x24
    374c:	e5901024 	ldr	r1, [r0, #36]	@ 0x24
    3750:	e5902024 	ldr	r2, [r0, #36]	@ 0x24
    3754:	e3c22902 	bic	r2, r2, #32768	@ 0x8000
    3758:	e5802024 	str	r2, [r0, #36]	@ 0x24
    375c:	e1a01821 	lsr	r1, r1, #16
    3760:	e3012650 	movw	r2, #5712	@ 0x1650
    3764:	e1510002 	cmp	r1, r2
    3768:	e5901044 	ldr	r1, [r0, #68]	@ 0x44
    376c:	03811b06 	orreq	r1, r1, #6144	@ 0x1800
    3770:	138110c0 	orrne	r1, r1, #192	@ 0xc0
    3774:	e5801044 	str	r1, [r0, #68]	@ 0x44
    3778:	e1a00000 	nop			@ (mov r0, r0)
    377c:	e59f1090 	ldr	r1, [pc, #144]	@ 0x3814
    3780:	e59f00a0 	ldr	r0, [pc, #160]	@ 0x3828
    3784:	e5810050 	str	r0, [r1, #80]	@ 0x50
    3788:	e59f009c 	ldr	r0, [pc, #156]	@ 0x382c
    378c:	e5810000 	str	r0, [r1]
    3790:	e5910000 	ldr	r0, [r1]
    3794:	e3100201 	tst	r0, #268435456	@ 0x10000000
    3798:	0afffffc 	beq	0x3790
    379c:	e3020101 	movw	r0, #8449	@ 0x2101
    37a0:	e5810054 	str	r0, [r1, #84]	@ 0x54
    37a4:	e5910050 	ldr	r0, [r1, #80]	@ 0x50
    37a8:	e3c00c03 	bic	r0, r0, #768	@ 0x300
    37ac:	e3800c01 	orr	r0, r0, #256	@ 0x100
    37b0:	e3800001 	orr	r0, r0, #1
    37b4:	e5810050 	str	r0, [r1, #80]	@ 0x50
    37b8:	e5910050 	ldr	r0, [r1, #80]	@ 0x50
    37bc:	e3c00803 	bic	r0, r0, #196608	@ 0x30000
    37c0:	e3800802 	orr	r0, r0, #131072	@ 0x20000
    37c4:	e5810050 	str	r0, [r1, #80]	@ 0x50
    37c8:	e59102c0 	ldr	r0, [r1, #704]	@ 0x2c0
    37cc:	e3800040 	orr	r0, r0, #64	@ 0x40
    37d0:	e58102c0 	str	r0, [r1, #704]	@ 0x2c0
    37d4:	e3a00000 	mov	r0, #0
    37d8:	e2800001 	add	r0, r0, #1
    37dc:	e3500064 	cmp	r0, #100	@ 0x64
    37e0:	bafffffc 	blt	0x37d8
    37e4:	e5910060 	ldr	r0, [r1, #96]	@ 0x60
    37e8:	e3800040 	orr	r0, r0, #64	@ 0x40
    37ec:	e5810060 	str	r0, [r1, #96]	@ 0x60
    37f0:	e59f2038 	ldr	r2, [pc, #56]	@ 0x3830
    37f4:	e3a00007 	mov	r0, #7
    37f8:	e5820020 	str	r0, [r2, #32]
    37fc:	e59f0030 	ldr	r0, [pc, #48]	@ 0x3834
    3800:	e581015c 	str	r0, [r1, #348]	@ 0x15c
    3804:	e5910028 	ldr	r0, [r1, #40]	@ 0x28
    3808:	e3800102 	orr	r0, r0, #-2147483648	@ 0x80000000
    380c:	e5810028 	str	r0, [r1, #40]	@ 0x28
    3810:	e12fff1e 	bx	lr
    3814:	01c20000 	biceq	r0, r2, r0
    3818:	01c20c80 	biceq	r0, r2, r0, lsl #25
    381c:	01c20c84 	biceq	r0, r2, r4, lsl #25
    3820:	01c20c8c 	biceq	r0, r2, ip, lsl #25
    3824:	01f01400 	mvnseq	r1, r0, lsl #8
    3828:	00010001 	andeq	r0, r1, r1
    382c:	80001000 	andhi	r1, r0, r0
    3830:	01c02000 	biceq	r2, r0, r0
    3834:	81000003 	tsthi	r0, r3
    3838:	e59f0b1c 	ldr	r0, [pc, #2844]	@ 0x435c
    383c:	e3a01008 	mov	r1, #8
    3840:	e92d4010 	push	{r4, lr}
    3844:	e5801010 	str	r1, [r0, #16]
    3848:	e59f2b10 	ldr	r2, [pc, #2832]	@ 0x4360
    384c:	e5802014 	str	r2, [r0, #20]
    3850:	e3a02004 	mov	r2, #4
    3854:	e5802018 	str	r2, [r0, #24]
    3858:	e3a03080 	mov	r3, #128	@ 0x80
    385c:	e580301c 	str	r3, [r0, #28]
    3860:	e5802020 	str	r2, [r0, #32]
    3864:	e3a04019 	mov	r4, #25
    3868:	e5804024 	str	r4, [r0, #36]	@ 0x24
    386c:	e5802028 	str	r2, [r0, #40]	@ 0x28
    3870:	e580302c 	str	r3, [r0, #44]	@ 0x2c
    3874:	e5802030 	str	r2, [r0, #48]	@ 0x30
    3878:	e59f3ae4 	ldr	r3, [pc, #2788]	@ 0x4364
    387c:	e5803034 	str	r3, [r0, #52]	@ 0x34
    3880:	e5802038 	str	r2, [r0, #56]	@ 0x38
    3884:	e59f3adc 	ldr	r3, [pc, #2780]	@ 0x4368
    3888:	e580303c 	str	r3, [r0, #60]	@ 0x3c
    388c:	e5802040 	str	r2, [r0, #64]	@ 0x40
    3890:	e0033440 	and	r3, r3, r0, asr #8
    3894:	e5803044 	str	r3, [r0, #68]	@ 0x44
    3898:	e5802048 	str	r2, [r0, #72]	@ 0x48
    389c:	e580304c 	str	r3, [r0, #76]	@ 0x4c
    38a0:	e5801050 	str	r1, [r0, #80]	@ 0x50
    38a4:	e3a03001 	mov	r3, #1
    38a8:	e5803054 	str	r3, [r0, #84]	@ 0x54
    38ac:	e5801058 	str	r1, [r0, #88]	@ 0x58
    38b0:	e3a04005 	mov	r4, #5
    38b4:	e580405c 	str	r4, [r0, #92]	@ 0x5c
    38b8:	e5801060 	str	r1, [r0, #96]	@ 0x60
    38bc:	e3a03003 	mov	r3, #3
    38c0:	e5803064 	str	r3, [r0, #100]	@ 0x64
    38c4:	e5801068 	str	r1, [r0, #104]	@ 0x68
    38c8:	e580406c 	str	r4, [r0, #108]	@ 0x6c
    38cc:	e5801070 	str	r1, [r0, #112]	@ 0x70
    38d0:	e5803074 	str	r3, [r0, #116]	@ 0x74
    38d4:	e5801078 	str	r1, [r0, #120]	@ 0x78
    38d8:	e580207c 	str	r2, [r0, #124]	@ 0x7c
    38dc:	e5801080 	str	r1, [r0, #128]	@ 0x80
    38e0:	e3a02002 	mov	r2, #2
    38e4:	e5802084 	str	r2, [r0, #132]	@ 0x84
    38e8:	e5801088 	str	r1, [r0, #136]	@ 0x88
    38ec:	e580308c 	str	r3, [r0, #140]	@ 0x8c
    38f0:	e59f1a74 	ldr	r1, [pc, #2676]	@ 0x436c
    38f4:	e5801090 	str	r1, [r0, #144]	@ 0x90
    38f8:	e8bd8010 	pop	{r4, pc}
    38fc:	e590105c 	ldr	r1, [r0, #92]	@ 0x5c
    3900:	e3110102 	tst	r1, #-2147483648	@ 0x80000000
    3904:	059f0a64 	ldreq	r0, [pc, #2660]	@ 0x4370
    3908:	0a00000b 	beq	0x393c
    390c:	e3a01803 	mov	r1, #196608	@ 0x30000
    3910:	e5d02014 	ldrb	r2, [r0, #20]
    3914:	e3e0300f 	mvn	r3, #15
    3918:	e5900010 	ldr	r0, [r0, #16]
    391c:	e7e32252 	ubfx	r2, r2, #4, #4
    3920:	e1811782 	orr	r1, r1, r2, lsl #15
    3924:	e7e72850 	ubfx	r2, r0, #16, #8
    3928:	e3811b06 	orr	r1, r1, #6144	@ 0x1800
    392c:	e0832202 	add	r2, r3, r2, lsl #4
    3930:	e7e30c50 	ubfx	r0, r0, #24, #4
    3934:	e1811002 	orr	r1, r1, r2
    3938:	e1810100 	orr	r0, r1, r0, lsl #2
    393c:	e59f1a18 	ldr	r1, [pc, #2584]	@ 0x435c
    3940:	e5810000 	str	r0, [r1]
    3944:	e2810a03 	add	r0, r1, #12288	@ 0x3000
    3948:	e5900200 	ldr	r0, [r0, #512]	@ 0x200
    394c:	e3500000 	cmp	r0, #0
    3950:	1a000003 	bne	0x3964
    3954:	e5910000 	ldr	r0, [r1]
    3958:	e3c00c0f 	bic	r0, r0, #3840	@ 0xf00
    395c:	e3800c07 	orr	r0, r0, #1792	@ 0x700
    3960:	e5810000 	str	r0, [r1]
    3964:	e59100a8 	ldr	r0, [r1, #168]	@ 0xa8
    3968:	e59f2a04 	ldr	r2, [pc, #2564]	@ 0x4374
    396c:	e1800002 	orr	r0, r0, r2
    3970:	e58100a8 	str	r0, [r1, #168]	@ 0xa8
    3974:	e12fff1e 	bx	lr
    3978:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    397c:	e5d0105c 	ldrb	r1, [r0, #92]	@ 0x5c
    3980:	e3a04000 	mov	r4, #0
    3984:	e59f59f0 	ldr	r5, [pc, #2544]	@ 0x437c
    3988:	e3110020 	tst	r1, #32
    398c:	059f19e4 	ldreq	r1, [pc, #2532]	@ 0x4378
    3990:	1300140b 	movwne	r1, #1035	@ 0x40b
    3994:	e5851044 	str	r1, [r5, #68]	@ 0x44
    3998:	e590105c 	ldr	r1, [r0, #92]	@ 0x5c
    399c:	e3110501 	tst	r1, #4194304	@ 0x400000
    39a0:	1a000004 	bne	0x39b8
    39a4:	e595103c 	ldr	r1, [r5, #60]	@ 0x3c
    39a8:	e3012220 	movw	r2, #4640	@ 0x1220
    39ac:	e7cc129f 	bfc	r1, #5, #8
    39b0:	e1811002 	orr	r1, r1, r2
    39b4:	e585103c 	str	r1, [r5, #60]	@ 0x3c
    39b8:	e5901000 	ldr	r1, [r0]
    39bc:	e3510e1e 	cmp	r1, #480	@ 0x1e0
    39c0:	23a01917 	movcs	r1, #376832	@ 0x5c000
    39c4:	33a01937 	movcc	r1, #901120	@ 0xdc000
    39c8:	e5851018 	str	r1, [r5, #24]
    39cc:	e59f19ac 	ldr	r1, [pc, #2476]	@ 0x4380
    39d0:	e5851008 	str	r1, [r5, #8]
    39d4:	e59f19a8 	ldr	r1, [pc, #2472]	@ 0x4384
    39d8:	e585100c 	str	r1, [r5, #12]
    39dc:	e5901018 	ldr	r1, [r0, #24]
    39e0:	e5851054 	str	r1, [r5, #84]	@ 0x54
    39e4:	e590101c 	ldr	r1, [r0, #28]
    39e8:	e5851058 	str	r1, [r5, #88]	@ 0x58
    39ec:	e5901020 	ldr	r1, [r0, #32]
    39f0:	e585105c 	str	r1, [r5, #92]	@ 0x5c
    39f4:	e5901024 	ldr	r1, [r0, #36]	@ 0x24
    39f8:	e5851060 	str	r1, [r5, #96]	@ 0x60
    39fc:	e590105c 	ldr	r1, [r0, #92]	@ 0x5c
    3a00:	e3110801 	tst	r1, #65536	@ 0x10000
    3a04:	1a000007 	bne	0x3a28
    3a08:	e59511c0 	ldr	r1, [r5, #448]	@ 0x1c0
    3a0c:	e3c11b0e 	bic	r1, r1, #14336	@ 0x3800
    3a10:	e3811a02 	orr	r1, r1, #8192	@ 0x2000
    3a14:	e58511c0 	str	r1, [r5, #448]	@ 0x1c0
    3a18:	e5951200 	ldr	r1, [r5, #512]	@ 0x200
    3a1c:	e3c11b0e 	bic	r1, r1, #14336	@ 0x3800
    3a20:	e3811a02 	orr	r1, r1, #8192	@ 0x2000
    3a24:	e5851200 	str	r1, [r5, #512]	@ 0x200
    3a28:	e5901028 	ldr	r1, [r0, #40]	@ 0x28
    3a2c:	e1a02001 	mov	r2, r1
    3a30:	e7e432d1 	ubfx	r3, r1, #5, #5
    3a34:	e7df2293 	bfi	r2, r3, #5, #27
    3a38:	e7e43551 	ubfx	r3, r1, #10, #5
    3a3c:	e7e417d1 	ubfx	r1, r1, #15, #5
    3a40:	e1822503 	orr	r2, r2, r3, lsl #10
    3a44:	e1821781 	orr	r1, r2, r1, lsl #15
    3a48:	e5851024 	str	r1, [r5, #36]	@ 0x24
    3a4c:	e590102c 	ldr	r1, [r0, #44]	@ 0x2c
    3a50:	e3e02c0e 	mvn	r2, #3584	@ 0xe00
    3a54:	e0022a21 	and	r2, r2, r1, lsr #20
    3a58:	e7df1a12 	bfi	r1, r2, #20, #12
    3a5c:	e5851028 	str	r1, [r5, #40]	@ 0x28
    3a60:	e5901028 	ldr	r1, [r0, #40]	@ 0x28
    3a64:	e3e02b0f 	mvn	r2, #15360	@ 0x3c00
    3a68:	e0022a21 	and	r2, r2, r1, lsr #20
    3a6c:	e5901030 	ldr	r1, [r0, #48]	@ 0x30
    3a70:	e7df1912 	bfi	r1, r2, #18, #14
    3a74:	e585102c 	str	r1, [r5, #44]	@ 0x2c
    3a78:	e5901034 	ldr	r1, [r0, #52]	@ 0x34
    3a7c:	e201233f 	and	r2, r1, #-67108864	@ 0xfc000000
    3a80:	e7e33b51 	ubfx	r3, r1, #22, #4
    3a84:	e1822b03 	orr	r2, r2, r3, lsl #22
    3a88:	e7e53851 	ubfx	r3, r1, #16, #6
    3a8c:	e1822803 	orr	r2, r2, r3, lsl #16
    3a90:	e7e33651 	ubfx	r3, r1, #12, #4
    3a94:	e1822603 	orr	r2, r2, r3, lsl #12
    3a98:	e7e33451 	ubfx	r3, r1, #8, #4
    3a9c:	e1822403 	orr	r2, r2, r3, lsl #8
    3aa0:	e7e33251 	ubfx	r3, r1, #4, #4
    3aa4:	e201100f 	and	r1, r1, #15
    3aa8:	e1822203 	orr	r2, r2, r3, lsl #4
    3aac:	e1811002 	orr	r1, r1, r2
    3ab0:	e5851048 	str	r1, [r5, #72]	@ 0x48
    3ab4:	e5901038 	ldr	r1, [r0, #56]	@ 0x38
    3ab8:	e2012102 	and	r2, r1, #-2147483648	@ 0x80000000
    3abc:	e7e03f51 	ubfx	r3, r1, #30, #1
    3ac0:	e1822f03 	orr	r2, r2, r3, lsl #30
    3ac4:	e7e03ed1 	ubfx	r3, r1, #29, #1
    3ac8:	e1822e83 	orr	r2, r2, r3, lsl #29
    3acc:	e3e03b07 	mvn	r3, #7168	@ 0x1c00
    3ad0:	e00339a1 	and	r3, r3, r1, lsr #19
    3ad4:	e1822983 	orr	r2, r2, r3, lsl #19
    3ad8:	e7e337d1 	ubfx	r3, r1, #15, #4
    3adc:	e1822783 	orr	r2, r2, r3, lsl #15
    3ae0:	e7e43551 	ubfx	r3, r1, #10, #5
    3ae4:	e7df151f 	bfc	r1, #10, #22
    3ae8:	e1822503 	orr	r2, r2, r3, lsl #10
    3aec:	e1811002 	orr	r1, r1, r2
    3af0:	e5851050 	str	r1, [r5, #80]	@ 0x50
    3af4:	e59f188c 	ldr	r1, [pc, #2188]	@ 0x4388
    3af8:	e5851068 	str	r1, [r5, #104]	@ 0x68
    3afc:	e3a03000 	mov	r3, #0
    3b00:	e5902000 	ldr	r2, [r0]
    3b04:	e59f1880 	ldr	r1, [pc, #2176]	@ 0x438c
    3b08:	e35200f0 	cmp	r2, #240	@ 0xf0
    3b0c:	9a000002 	bls	0x3b1c
    3b10:	e5d0200c 	ldrb	r2, [r0, #12]
    3b14:	e3120001 	tst	r2, #1
    3b18:	1a000009 	bne	0x3b44
    3b1c:	e59521c0 	ldr	r2, [r5, #448]	@ 0x1c0
    3b20:	e3c22c06 	bic	r2, r2, #1536	@ 0x600
    3b24:	e58521c0 	str	r2, [r5, #448]	@ 0x1c0
    3b28:	e5952200 	ldr	r2, [r5, #512]	@ 0x200
    3b2c:	e3c22c06 	bic	r2, r2, #1536	@ 0x600
    3b30:	e5852200 	str	r2, [r5, #512]	@ 0x200
    3b34:	e5902000 	ldr	r2, [r0]
    3b38:	e35200f0 	cmp	r2, #240	@ 0xf0
    3b3c:	95853064 	strls	r3, [r5, #100]	@ 0x64
    3b40:	95813244 	strls	r3, [r1, #580]	@ 0x244
    3b44:	e1d023bc 	ldrh	r2, [r0, #60]	@ 0x3c
    3b48:	e7e36452 	ubfx	r6, r2, #8, #4
    3b4c:	e7e471d2 	ubfx	r7, r2, #3, #5
    3b50:	e1a06a06 	lsl	r6, r6, #20
    3b54:	e2022007 	and	r2, r2, #7
    3b58:	e1866607 	orr	r6, r6, r7, lsl #12
    3b5c:	e1862402 	orr	r2, r6, r2, lsl #8
    3b60:	e5812050 	str	r2, [r1, #80]	@ 0x50
    3b64:	e590203c 	ldr	r2, [r0, #60]	@ 0x3c
    3b68:	e7e56652 	ubfx	r6, r2, #12, #6
    3b6c:	e7e57952 	ubfx	r7, r2, #18, #6
    3b70:	e1a06c06 	lsl	r6, r6, #24
    3b74:	e7e52c52 	ubfx	r2, r2, #24, #6
    3b78:	e1866807 	orr	r6, r6, r7, lsl #16
    3b7c:	e1862402 	orr	r2, r6, r2, lsl #8
    3b80:	e5d06040 	ldrb	r6, [r0, #64]	@ 0x40
    3b84:	e206603f 	and	r6, r6, #63	@ 0x3f
    3b88:	e1822006 	orr	r2, r2, r6
    3b8c:	e5812100 	str	r2, [r1, #256]	@ 0x100
    3b90:	e5902040 	ldr	r2, [r0, #64]	@ 0x40
    3b94:	e7e46352 	ubfx	r6, r2, #6, #5
    3b98:	e7e475d2 	ubfx	r7, r2, #11, #5
    3b9c:	e1a06806 	lsl	r6, r6, #16
    3ba0:	e1866407 	orr	r6, r6, r7, lsl #8
    3ba4:	e7e52852 	ubfx	r2, r2, #16, #6
    3ba8:	e1822006 	orr	r2, r2, r6
    3bac:	e5812104 	str	r2, [r1, #260]	@ 0x104
    3bb0:	e5902040 	ldr	r2, [r0, #64]	@ 0x40
    3bb4:	e7e52b52 	ubfx	r2, r2, #22, #6
    3bb8:	e1a06c02 	lsl	r6, r2, #24
    3bbc:	e1d024b4 	ldrh	r2, [r0, #68]	@ 0x44
    3bc0:	e202701f 	and	r7, r2, #31
    3bc4:	e1866807 	orr	r6, r6, r7, lsl #16
    3bc8:	e7e472d2 	ubfx	r7, r2, #5, #5
    3bcc:	e7e52552 	ubfx	r2, r2, #10, #6
    3bd0:	e1866407 	orr	r6, r6, r7, lsl #8
    3bd4:	e1822006 	orr	r2, r2, r6
    3bd8:	e5812108 	str	r2, [r1, #264]	@ 0x108
    3bdc:	e5902044 	ldr	r2, [r0, #68]	@ 0x44
    3be0:	e3e06b3f 	mvn	r6, #64512	@ 0xfc00
    3be4:	e0062822 	and	r2, r6, r2, lsr #16
    3be8:	e5906040 	ldr	r6, [r0, #64]	@ 0x40
    3bec:	e1a06e26 	lsr	r6, r6, #28
    3bf0:	e1822606 	orr	r2, r2, r6, lsl #12
    3bf4:	e581210c 	str	r2, [r1, #268]	@ 0x10c
    3bf8:	e5902044 	ldr	r2, [r0, #68]	@ 0x44
    3bfc:	e7e32d52 	ubfx	r2, r2, #26, #4
    3c00:	e1a06c02 	lsl	r6, r2, #24
    3c04:	e1d024b8 	ldrh	r2, [r0, #72]	@ 0x48
    3c08:	e2027007 	and	r7, r2, #7
    3c0c:	e1866807 	orr	r6, r6, r7, lsl #16
    3c10:	e7e271d2 	ubfx	r7, r2, #3, #3
    3c14:	e7e32352 	ubfx	r2, r2, #6, #4
    3c18:	e1866407 	orr	r6, r6, r7, lsl #8
    3c1c:	e1822006 	orr	r2, r2, r6
    3c20:	e5812110 	str	r2, [r1, #272]	@ 0x110
    3c24:	e5902048 	ldr	r2, [r0, #72]	@ 0x48
    3c28:	e7e36552 	ubfx	r6, r2, #10, #4
    3c2c:	e7e37752 	ubfx	r7, r2, #14, #4
    3c30:	e1a06c06 	lsl	r6, r6, #24
    3c34:	e1866807 	orr	r6, r6, r7, lsl #16
    3c38:	e7e57952 	ubfx	r7, r2, #18, #6
    3c3c:	e7e32c52 	ubfx	r2, r2, #24, #4
    3c40:	e1866407 	orr	r6, r6, r7, lsl #8
    3c44:	e1822006 	orr	r2, r2, r6
    3c48:	e5812114 	str	r2, [r1, #276]	@ 0x114
    3c4c:	e3a02008 	mov	r2, #8
    3c50:	e5812120 	str	r2, [r1, #288]	@ 0x120
    3c54:	e5902048 	ldr	r2, [r0, #72]	@ 0x48
    3c58:	e1a02e22 	lsr	r2, r2, #28
    3c5c:	e1a06c02 	lsl	r6, r2, #24
    3c60:	e1d024bc 	ldrh	r2, [r0, #76]	@ 0x4c
    3c64:	e7e47552 	ubfx	r7, r2, #10, #5
    3c68:	e1866807 	orr	r6, r6, r7, lsl #16
    3c6c:	e7e472d2 	ubfx	r7, r2, #5, #5
    3c70:	e202201f 	and	r2, r2, #31
    3c74:	e1866407 	orr	r6, r6, r7, lsl #8
    3c78:	e1822006 	orr	r2, r2, r6
    3c7c:	e5812190 	str	r2, [r1, #400]	@ 0x190
    3c80:	e5912194 	ldr	r2, [r1, #404]	@ 0x194
    3c84:	e3822702 	orr	r2, r2, #524288	@ 0x80000
    3c88:	e5812194 	str	r2, [r1, #404]	@ 0x194
    3c8c:	e590204c 	ldr	r2, [r0, #76]	@ 0x4c
    3c90:	e3026001 	movw	r6, #8193	@ 0x2001
    3c94:	e7e627d2 	ubfx	r2, r2, #15, #7
    3c98:	e1862c02 	orr	r2, r6, r2, lsl #24
    3c9c:	e5812250 	str	r2, [r1, #592]	@ 0x250
    3ca0:	e1d061b8 	ldrh	r6, [r0, #24]
    3ca4:	e590201c 	ldr	r2, [r0, #28]
    3ca8:	e1822806 	orr	r2, r2, r6, lsl #16
    3cac:	e58120dc 	str	r2, [r1, #220]	@ 0xdc
    3cb0:	e1d062b0 	ldrh	r6, [r0, #32]
    3cb4:	e5902024 	ldr	r2, [r0, #36]	@ 0x24
    3cb8:	e1822806 	orr	r2, r2, r6, lsl #16
    3cbc:	e58120e0 	str	r2, [r1, #224]	@ 0xe0
    3cc0:	e3a02000 	mov	r2, #0
    3cc4:	e58121b0 	str	r2, [r1, #432]	@ 0x1b0
    3cc8:	e3a02102 	mov	r2, #-2147483648	@ 0x80000000
    3ccc:	e58121a0 	str	r2, [r1, #416]	@ 0x1a0
    3cd0:	e590204c 	ldr	r2, [r0, #76]	@ 0x4c
    3cd4:	e1d065b0 	ldrh	r6, [r0, #80]	@ 0x50
    3cd8:	e3c66a0f 	bic	r6, r6, #61440	@ 0xf000
    3cdc:	e1a02b22 	lsr	r2, r2, #22
    3ce0:	e1822806 	orr	r2, r2, r6, lsl #16
    3ce4:	e5812064 	str	r2, [r1, #100]	@ 0x64
    3ce8:	e5d0205c 	ldrb	r2, [r0, #92]	@ 0x5c
    3cec:	e3120020 	tst	r2, #32
    3cf0:	059f2698 	ldreq	r2, [pc, #1688]	@ 0x4390
    3cf4:	159f2698 	ldrne	r2, [pc, #1688]	@ 0x4394
    3cf8:	e5812000 	str	r2, [r1]
    3cfc:	e590205c 	ldr	r2, [r0, #92]	@ 0x5c
    3d00:	e3120802 	tst	r2, #131072	@ 0x20000
    3d04:	1a000003 	bne	0x3d18
    3d08:	e3a02002 	mov	r2, #2
    3d0c:	e5812030 	str	r2, [r1, #48]	@ 0x30
    3d10:	e3082001 	movw	r2, #32769	@ 0x8001
    3d14:	e5812034 	str	r2, [r1, #52]	@ 0x34
    3d18:	e3a02001 	mov	r2, #1
    3d1c:	e5812060 	str	r2, [r1, #96]	@ 0x60
    3d20:	e58121b0 	str	r2, [r1, #432]	@ 0x1b0
    3d24:	e59f666c 	ldr	r6, [pc, #1644]	@ 0x4398
    3d28:	e5962000 	ldr	r2, [r6]
    3d2c:	e59f7668 	ldr	r7, [pc, #1640]	@ 0x439c
    3d30:	e3120001 	tst	r2, #1
    3d34:	13a04001 	movne	r4, #1
    3d38:	e59720f4 	ldr	r2, [r7, #244]	@ 0xf4
    3d3c:	e3822102 	orr	r2, r2, #-2147483648	@ 0x80000000
    3d40:	e58720f4 	str	r2, [r7, #244]	@ 0xf4
    3d44:	e2877a42 	add	r7, r7, #270336	@ 0x42000
    3d48:	e5972004 	ldr	r2, [r7, #4]
    3d4c:	e3822702 	orr	r2, r2, #524288	@ 0x80000
    3d50:	e5872004 	str	r2, [r7, #4]
    3d54:	e3540000 	cmp	r4, #0
    3d58:	e3a07000 	mov	r7, #0
    3d5c:	0a00002c 	beq	0x3e14
    3d60:	e5900000 	ldr	r0, [r0]
    3d64:	e3500e15 	cmp	r0, #336	@ 0x150
    3d68:	359f0630 	ldrcc	r0, [pc, #1584]	@ 0x43a0
    3d6c:	259f0630 	ldrcs	r0, [pc, #1584]	@ 0x43a4
    3d70:	e5850004 	str	r0, [r5, #4]
    3d74:	e5950010 	ldr	r0, [r5, #16]
    3d78:	e3100001 	tst	r0, #1
    3d7c:	0afffffc 	beq	0x3d74
    3d80:	e5910004 	ldr	r0, [r1, #4]
    3d84:	e3100001 	tst	r0, #1
    3d88:	0afffffc 	beq	0x3d80
    3d8c:	e59f0614 	ldr	r0, [pc, #1556]	@ 0x43a8
    3d90:	e5850008 	str	r0, [r5, #8]
    3d94:	e3540000 	cmp	r4, #0
    3d98:	03a00000 	moveq	r0, #0
    3d9c:	05810060 	streq	r0, [r1, #96]	@ 0x60
    3da0:	15910030 	ldrne	r0, [r1, #48]	@ 0x30
    3da4:	13800001 	orrne	r0, r0, #1
    3da8:	15810030 	strne	r0, [r1, #48]	@ 0x30
    3dac:	08bd80f0 	popeq	{r4, r5, r6, r7, pc}
    3db0:	e5910004 	ldr	r0, [r1, #4]
    3db4:	e2000007 	and	r0, r0, #7
    3db8:	e3500003 	cmp	r0, #3
    3dbc:	1afffffb 	bne	0x3db0
    3dc0:	e5950040 	ldr	r0, [r5, #64]	@ 0x40
    3dc4:	e3800201 	orr	r0, r0, #268435456	@ 0x10000000
    3dc8:	e5850040 	str	r0, [r5, #64]	@ 0x40
    3dcc:	e595003c 	ldr	r0, [r5, #60]	@ 0x3c
    3dd0:	e3c00018 	bic	r0, r0, #24
    3dd4:	e585003c 	str	r0, [r5, #60]	@ 0x3c
    3dd8:	e5950038 	ldr	r0, [r5, #56]	@ 0x38
    3ddc:	e3c00701 	bic	r0, r0, #262144	@ 0x40000
    3de0:	e3c00f42 	bic	r0, r0, #264	@ 0x108
    3de4:	e5850038 	str	r0, [r5, #56]	@ 0x38
    3de8:	e5960000 	ldr	r0, [r6]
    3dec:	e3c00001 	bic	r0, r0, #1
    3df0:	e5860000 	str	r0, [r6]
    3df4:	e5910030 	ldr	r0, [r1, #48]	@ 0x30
    3df8:	e3c00001 	bic	r0, r0, #1
    3dfc:	e5810030 	str	r0, [r1, #48]	@ 0x30
    3e00:	e5910004 	ldr	r0, [r1, #4]
    3e04:	e2000007 	and	r0, r0, #7
    3e08:	e3500001 	cmp	r0, #1
    3e0c:	1afffffb 	bne	0x3e00
    3e10:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    3e14:	e1d020b8 	ldrh	r2, [r0, #8]
    3e18:	e7e72452 	ubfx	r2, r2, #8, #8
    3e1c:	e5852184 	str	r2, [r5, #388]	@ 0x184
    3e20:	e3a02003 	mov	r2, #3
    3e24:	e5852004 	str	r2, [r5, #4]
    3e28:	e3a02000 	mov	r2, #0
    3e2c:	e2822001 	add	r2, r2, #1
    3e30:	e3520ffa 	cmp	r2, #1000	@ 0x3e8
    3e34:	23a02009 	movcs	r2, #9
    3e38:	3afffffb 	bcc	0x3e2c
    3e3c:	e595c010 	ldr	ip, [r5, #16]
    3e40:	e1d2c00c 	bics	ip, r2, ip
    3e44:	1afffffc 	bne	0x3e3c
    3e48:	e5952188 	ldr	r2, [r5, #392]	@ 0x188
    3e4c:	e5802054 	str	r2, [r0, #84]	@ 0x54
    3e50:	e5952188 	ldr	r2, [r5, #392]	@ 0x188
    3e54:	e3822201 	orr	r2, r2, #268435456	@ 0x10000000
    3e58:	e5852190 	str	r2, [r5, #400]	@ 0x190
    3e5c:	e5d02008 	ldrb	r2, [r0, #8]
    3e60:	e5852184 	str	r2, [r5, #388]	@ 0x184
    3e64:	e30025f3 	movw	r2, #1523	@ 0x5f3
    3e68:	e1877002 	orr	r7, r7, r2
    3e6c:	e5857004 	str	r7, [r5, #4]
    3e70:	e3a02000 	mov	r2, #0
    3e74:	e2822001 	add	r2, r2, #1
    3e78:	e3520ffa 	cmp	r2, #1000	@ 0x3e8
    3e7c:	23a02003 	movcs	r2, #3
    3e80:	3afffffb 	bcc	0x3e74
    3e84:	e595c010 	ldr	ip, [r5, #16]
    3e88:	e1d2c00c 	bics	ip, r2, ip
    3e8c:	1afffffc 	bne	0x3e84
    3e90:	e5952204 	ldr	r2, [r5, #516]	@ 0x204
    3e94:	e3120401 	tst	r2, #16777216	@ 0x1000000
    3e98:	0a00000b 	beq	0x3ecc
    3e9c:	e5853200 	str	r3, [r5, #512]	@ 0x200
    3ea0:	e5d02008 	ldrb	r2, [r0, #8]
    3ea4:	e5852184 	str	r2, [r5, #388]	@ 0x184
    3ea8:	e5857004 	str	r7, [r5, #4]
    3eac:	e3a02000 	mov	r2, #0
    3eb0:	e3023710 	movw	r3, #10000	@ 0x2710
    3eb4:	e2822001 	add	r2, r2, #1
    3eb8:	e1520003 	cmp	r2, r3
    3ebc:	25912000 	ldrcs	r2, [r1]
    3ec0:	23822a01 	orrcs	r2, r2, #4096	@ 0x1000
    3ec4:	25812000 	strcs	r2, [r1]
    3ec8:	3afffff9 	bcc	0x3eb4
    3ecc:	e59521e4 	ldr	r2, [r5, #484]	@ 0x1e4
    3ed0:	e590300c 	ldr	r3, [r0, #12]
    3ed4:	e3130102 	tst	r3, #-2147483648	@ 0x80000000
    3ed8:	e7e77453 	ubfx	r7, r3, #8, #8
    3edc:	e7e7c452 	ubfx	ip, r2, #8, #8
    3ee0:	0a000010 	beq	0x3f28
    3ee4:	e157000c 	cmp	r7, ip
    3ee8:	23c22cff 	biccs	r2, r2, #65280	@ 0xff00
    3eec:	32033cff 	andcc	r3, r3, #65280	@ 0xff00
    3ef0:	30422003 	subcc	r2, r2, r3
    3ef4:	e58521e4 	str	r2, [r5, #484]	@ 0x1e4
    3ef8:	e5952224 	ldr	r2, [r5, #548]	@ 0x224
    3efc:	e590000c 	ldr	r0, [r0, #12]
    3f00:	e3100102 	tst	r0, #-2147483648	@ 0x80000000
    3f04:	e7e73450 	ubfx	r3, r0, #8, #8
    3f08:	e7e77452 	ubfx	r7, r2, #8, #8
    3f0c:	0a00000b 	beq	0x3f40
    3f10:	e1530007 	cmp	r3, r7
    3f14:	32000cff 	andcc	r0, r0, #65280	@ 0xff00
    3f18:	23c20cff 	biccs	r0, r2, #65280	@ 0xff00
    3f1c:	30420000 	subcc	r0, r2, r0
    3f20:	e5850224 	str	r0, [r5, #548]	@ 0x224
    3f24:	eaffff95 	b	0x3d80
    3f28:	e087700c 	add	r7, r7, ip
    3f2c:	e35700ff 	cmp	r7, #255	@ 0xff
    3f30:	23822cff 	orrcs	r2, r2, #65280	@ 0xff00
    3f34:	32033cff 	andcc	r3, r3, #65280	@ 0xff00
    3f38:	30822003 	addcc	r2, r2, r3
    3f3c:	eaffffec 	b	0x3ef4
    3f40:	e0833007 	add	r3, r3, r7
    3f44:	e35300ff 	cmp	r3, #255	@ 0xff
    3f48:	32000cff 	andcc	r0, r0, #65280	@ 0xff00
    3f4c:	23820cff 	orrcs	r0, r2, #65280	@ 0xff00
    3f50:	30800002 	addcc	r0, r0, r2
    3f54:	eafffff1 	b	0x3f20
    3f58:	e92d4010 	push	{r4, lr}
    3f5c:	e59f4438 	ldr	r4, [pc, #1080]	@ 0x439c
    3f60:	e5941060 	ldr	r1, [r4, #96]	@ 0x60
    3f64:	e3c11901 	bic	r1, r1, #16384	@ 0x4000
    3f68:	e5841060 	str	r1, [r4, #96]	@ 0x60
    3f6c:	e59412c0 	ldr	r1, [r4, #704]	@ 0x2c0
    3f70:	e3c11901 	bic	r1, r1, #16384	@ 0x4000
    3f74:	e58412c0 	str	r1, [r4, #704]	@ 0x2c0
    3f78:	e59410f4 	ldr	r1, [r4, #244]	@ 0xf4
    3f7c:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    3f80:	e58410f4 	str	r1, [r4, #244]	@ 0xf4
    3f84:	e59410f4 	ldr	r1, [r4, #244]	@ 0xf4
    3f88:	e3811801 	orr	r1, r1, #65536	@ 0x10000
    3f8c:	e58410f4 	str	r1, [r4, #244]	@ 0xf4
    3f90:	e59410f4 	ldr	r1, [r4, #244]	@ 0xf4
    3f94:	e3110801 	tst	r1, #65536	@ 0x10000
    3f98:	1afffffc 	bne	0x3f90
    3f9c:	e5941020 	ldr	r1, [r4, #32]
    3fa0:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    3fa4:	e5841020 	str	r1, [r4, #32]
    3fa8:	e5941020 	ldr	r1, [r4, #32]
    3fac:	e3811801 	orr	r1, r1, #65536	@ 0x10000
    3fb0:	e5841020 	str	r1, [r4, #32]
    3fb4:	e5941020 	ldr	r1, [r4, #32]
    3fb8:	e3110801 	tst	r1, #65536	@ 0x10000
    3fbc:	1afffffc 	bne	0x3fb4
    3fc0:	e590105c 	ldr	r1, [r0, #92]	@ 0x5c
    3fc4:	e3110701 	tst	r1, #262144	@ 0x40000
    3fc8:	159f13dc 	ldrne	r1, [pc, #988]	@ 0x43ac
    3fcc:	0a000019 	beq	0x4038
    3fd0:	e5841290 	str	r1, [r4, #656]	@ 0x290
    3fd4:	e3a02018 	mov	r2, #24
    3fd8:	e5901000 	ldr	r1, [r0]
    3fdc:	e731f211 	udiv	r1, r1, r2
    3fe0:	e590005c 	ldr	r0, [r0, #92]	@ 0x5c
    3fe4:	e1a01401 	lsl	r1, r1, #8
    3fe8:	e2411c01 	sub	r1, r1, #256	@ 0x100
    3fec:	e310070f 	tst	r0, #3932160	@ 0x3c0000
    3ff0:	e3811106 	orr	r1, r1, #-2147483647	@ 0x80000001
    3ff4:	13811401 	orrne	r1, r1, #16777216	@ 0x1000000
    3ff8:	e5841020 	str	r1, [r4, #32]
    3ffc:	e5940020 	ldr	r0, [r4, #32]
    4000:	e3800601 	orr	r0, r0, #1048576	@ 0x100000
    4004:	e5840020 	str	r0, [r4, #32]
    4008:	e5940020 	ldr	r0, [r4, #32]
    400c:	e3100601 	tst	r0, #1048576	@ 0x100000
    4010:	1afffffc 	bne	0x4008
    4014:	e3a0000a 	mov	r0, #10
    4018:	ebfffda6 	bl	0x36b8
    401c:	e59402c0 	ldr	r0, [r4, #704]	@ 0x2c0
    4020:	e3800901 	orr	r0, r0, #16384	@ 0x4000
    4024:	e58402c0 	str	r0, [r4, #704]	@ 0x2c0
    4028:	e5940060 	ldr	r0, [r4, #96]	@ 0x60
    402c:	e3800901 	orr	r0, r0, #16384	@ 0x4000
    4030:	e5840060 	str	r0, [r4, #96]	@ 0x60
    4034:	e8bd8010 	pop	{r4, pc}
    4038:	e3110702 	tst	r1, #524288	@ 0x80000
    403c:	159f136c 	ldrne	r1, [pc, #876]	@ 0x43b0
    4040:	1affffe2 	bne	0x3fd0
    4044:	e3110601 	tst	r1, #1048576	@ 0x100000
    4048:	159f1364 	ldrne	r1, [pc, #868]	@ 0x43b4
    404c:	1affffdf 	bne	0x3fd0
    4050:	e3110602 	tst	r1, #2097152	@ 0x200000
    4054:	159f135c 	ldrne	r1, [pc, #860]	@ 0x43b8
    4058:	1affffdc 	bne	0x3fd0
    405c:	eaffffdc 	b	0x3fd4
    4060:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    4064:	e1b04000 	movs	r4, r0
    4068:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
    406c:	ebffffb9 	bl	0x3f58
    4070:	e1a00004 	mov	r0, r4
    4074:	ebfffe3f 	bl	0x3978
    4078:	e1a00004 	mov	r0, r4
    407c:	ebfffe1e 	bl	0x38fc
    4080:	e59f02f4 	ldr	r0, [pc, #756]	@ 0x437c
    4084:	e5900200 	ldr	r0, [r0, #512]	@ 0x200
    4088:	e3e0c00f 	mvn	ip, #15
    408c:	e59f72c8 	ldr	r7, [pc, #712]	@ 0x435c
    4090:	e3500000 	cmp	r0, #0
    4094:	e594005c 	ldr	r0, [r4, #92]	@ 0x5c
    4098:	03a06000 	moveq	r6, #0
    409c:	13a06001 	movne	r6, #1
    40a0:	e3100102 	tst	r0, #-2147483648	@ 0x80000000
    40a4:	03a05101 	moveq	r5, #1073741824	@ 0x40000000
    40a8:	03a01000 	moveq	r1, #0
    40ac:	0a00000a 	beq	0x40dc
    40b0:	e5970000 	ldr	r0, [r7]
    40b4:	e5941010 	ldr	r1, [r4, #16]
    40b8:	e3c000f0 	bic	r0, r0, #240	@ 0xf0
    40bc:	e7e71851 	ubfx	r1, r1, #16, #8
    40c0:	e08c1201 	add	r1, ip, r1, lsl #4
    40c4:	e1800001 	orr	r0, r0, r1
    40c8:	e5870000 	str	r0, [r7]
    40cc:	ebfffdd9 	bl	0x3838
    40d0:	e5940010 	ldr	r0, [r4, #16]
    40d4:	e7df061f 	bfc	r0, #12, #20
    40d8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    40dc:	e3110001 	tst	r1, #1
    40e0:	11a00101 	lslne	r0, r1, #2
    40e4:	12800101 	addne	r0, r0, #1073741824	@ 0x40000000
    40e8:	00850101 	addeq	r0, r5, r1, lsl #2
    40ec:	01e00000 	mvneq	r0, r0
    40f0:	e7850101 	str	r0, [r5, r1, lsl #2]
    40f4:	e2811001 	add	r1, r1, #1
    40f8:	e3510040 	cmp	r1, #64	@ 0x40
    40fc:	23a0000b 	movcs	r0, #11
    4100:	23a0e001 	movcs	lr, #1
    4104:	3afffff4 	bcc	0x40dc
    4108:	e0801006 	add	r1, r0, r6
    410c:	e3a02000 	mov	r2, #0
    4110:	e281100d 	add	r1, r1, #13
    4114:	e1a0111e 	lsl	r1, lr, r1
    4118:	e2813101 	add	r3, r1, #1073741824	@ 0x40000000
    411c:	e1a01002 	mov	r1, r2
    4120:	e7958101 	ldr	r8, [r5, r1, lsl #2]
    4124:	e7939101 	ldr	r9, [r3, r1, lsl #2]
    4128:	e2811001 	add	r1, r1, #1
    412c:	e1580009 	cmp	r8, r9
    4130:	02822001 	addeq	r2, r2, #1
    4134:	e3510040 	cmp	r1, #64	@ 0x40
    4138:	3afffff8 	bcc	0x4120
    413c:	e3520040 	cmp	r2, #64	@ 0x40
    4140:	0a000003 	beq	0x4154
    4144:	e2800001 	add	r0, r0, #1
    4148:	e3500010 	cmp	r0, #16
    414c:	9affffed 	bls	0x4108
    4150:	ea000001 	b	0x415c
    4154:	e3500010 	cmp	r0, #16
    4158:	3a000000 	bcc	0x4160
    415c:	e3a00010 	mov	r0, #16
    4160:	e5971000 	ldr	r1, [r7]
    4164:	e3c110f0 	bic	r1, r1, #240	@ 0xf0
    4168:	e08c2200 	add	r2, ip, r0, lsl #4
    416c:	e1811002 	orr	r1, r1, r2
    4170:	e5871000 	str	r1, [r7]
    4174:	e5941010 	ldr	r1, [r4, #16]
    4178:	e2832103 	add	r2, r3, #-1073741824	@ 0xc0000000
    417c:	e3560000 	cmp	r6, #0
    4180:	e7cb101f 	bfc	r1, #0, #12
    4184:	e1811a22 	orr	r1, r1, r2, lsr #20
    4188:	e3c118ff 	bic	r1, r1, #16711680	@ 0xff0000
    418c:	e1810800 	orr	r0, r1, r0, lsl #16
    4190:	e5840010 	str	r0, [r4, #16]
    4194:	e5940014 	ldr	r0, [r4, #20]
    4198:	e3c0000f 	bic	r0, r0, #15
    419c:	03800002 	orreq	r0, r0, #2
    41a0:	e5840014 	str	r0, [r4, #20]
    41a4:	e594005c 	ldr	r0, [r4, #92]	@ 0x5c
    41a8:	e3800102 	orr	r0, r0, #-2147483648	@ 0x80000000
    41ac:	e584005c 	str	r0, [r4, #92]	@ 0x5c
    41b0:	eaffffc5 	b	0x40cc
    41b4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    41b8:	e59f41fc 	ldr	r4, [pc, #508]	@ 0x43bc
    41bc:	e28f0f7f 	add	r0, pc, #508	@ 0x1fc
    41c0:	e5841000 	str	r1, [r4]
    41c4:	e5911000 	ldr	r1, [r1]
    41c8:	eb0000be 	bl	0x44c8
    41cc:	e5940000 	ldr	r0, [r4]
    41d0:	ebffffa2 	bl	0x4060
    41d4:	e1a05000 	mov	r5, r0
    41d8:	e3a0000a 	mov	r0, #10
    41dc:	ebfffd35 	bl	0x36b8
    41e0:	e59f11f0 	ldr	r1, [pc, #496]	@ 0x43d8
    41e4:	e3a00001 	mov	r0, #1
    41e8:	e5810000 	str	r0, [r1]
    41ec:	e0814100 	add	r4, r1, r0, lsl #2
    41f0:	e5840000 	str	r0, [r4]
    41f4:	e3a02101 	mov	r2, #1073741824	@ 0x40000000
    41f8:	e59f11dc 	ldr	r1, [pc, #476]	@ 0x43dc
    41fc:	e5821000 	str	r1, [r2]
    4200:	e5821100 	str	r1, [r2, #256]	@ 0x100
    4204:	e182c600 	orr	ip, r2, r0, lsl #12
    4208:	e58c1000 	str	r1, [ip]
    420c:	e1823800 	orr	r3, r2, r0, lsl #16
    4210:	e5831000 	str	r1, [r3]
    4214:	e1820a00 	orr	r0, r2, r0, lsl #20
    4218:	e5801000 	str	r1, [r0]
    421c:	e240780e 	sub	r7, r0, #917504	@ 0xe0000
    4220:	e5871000 	str	r1, [r7]
    4224:	e2406afe 	sub	r6, r0, #1040384	@ 0xfe000
    4228:	e5861000 	str	r1, [r6]
    422c:	e5821200 	str	r1, [r2, #512]	@ 0x200
    4230:	f57ff05f 	dmb	sy
    4234:	e5921000 	ldr	r1, [r2]
    4238:	e592e100 	ldr	lr, [r2, #256]	@ 0x100
    423c:	e59cc000 	ldr	ip, [ip]
    4240:	e081100e 	add	r1, r1, lr
    4244:	e5933000 	ldr	r3, [r3]
    4248:	e081100c 	add	r1, r1, ip
    424c:	e5900000 	ldr	r0, [r0]
    4250:	e0811003 	add	r1, r1, r3
    4254:	e0800001 	add	r0, r0, r1
    4258:	e5971000 	ldr	r1, [r7]
    425c:	e0800001 	add	r0, r0, r1
    4260:	e5961000 	ldr	r1, [r6]
    4264:	e0800001 	add	r0, r0, r1
    4268:	e5921200 	ldr	r1, [r2, #512]	@ 0x200
    426c:	e0800001 	add	r0, r0, r1
    4270:	e59f1168 	ldr	r1, [pc, #360]	@ 0x43e0
    4274:	e1500001 	cmp	r0, r1
    4278:	1a000006 	bne	0x4298
    427c:	e28f0e16 	add	r0, pc, #352	@ 0x160
    4280:	eb000090 	bl	0x44c8
    4284:	f57ff05f 	dmb	sy
    4288:	e3a00000 	mov	r0, #0
    428c:	e5840000 	str	r0, [r4]
    4290:	e1a00005 	mov	r0, r5
    4294:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    4298:	e28f0e15 	add	r0, pc, #336	@ 0x150
    429c:	eb000089 	bl	0x44c8
    42a0:	eafffffe 	b	0x42a0
    42a4:	e5903000 	ldr	r3, [r0]
    42a8:	e1c31001 	bic	r1, r3, r1
    42ac:	e1811002 	orr	r1, r1, r2
    42b0:	e5801000 	str	r1, [r0]
    42b4:	e12fff1e 	bx	lr
    42b8:	e59f00dc 	ldr	r0, [pc, #220]	@ 0x439c
    42bc:	e5900028 	ldr	r0, [r0, #40]	@ 0x28
    42c0:	e7e41450 	ubfx	r1, r0, #8, #5
    42c4:	e7e10250 	ubfx	r0, r0, #4, #2
    42c8:	e2811001 	add	r1, r1, #1
    42cc:	e2800001 	add	r0, r0, #1
    42d0:	e1600081 	smulbb	r0, r1, r0
    42d4:	e59f1120 	ldr	r1, [pc, #288]	@ 0x43fc
    42d8:	e0000190 	mul	r0, r0, r1
    42dc:	e1a000a0 	lsr	r0, r0, #1
    42e0:	e12fff1e 	bx	lr
    42e4:	e59f00b0 	ldr	r0, [pc, #176]	@ 0x439c
    42e8:	e5900000 	ldr	r0, [r0]
    42ec:	e7e41450 	ubfx	r1, r0, #8, #5
    42f0:	e2812001 	add	r2, r1, #1
    42f4:	e7e11250 	ubfx	r1, r0, #4, #2
    42f8:	e2811001 	add	r1, r1, #1
    42fc:	e2000003 	and	r0, r0, #3
    4300:	e1610182 	smulbb	r1, r2, r1
    4304:	e59f20f0 	ldr	r2, [pc, #240]	@ 0x43fc
    4308:	e2800001 	add	r0, r0, #1
    430c:	e0010291 	mul	r1, r1, r2
    4310:	e730f011 	udiv	r0, r1, r0
    4314:	e12fff1e 	bx	lr
    4318:	e59f007c 	ldr	r0, [pc, #124]	@ 0x439c
    431c:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    4320:	e5901050 	ldr	r1, [r0, #80]	@ 0x50
    4324:	e7e10851 	ubfx	r0, r1, #16, #2
    4328:	e3500000 	cmp	r0, #0
    432c:	e2011007 	and	r1, r1, #7
    4330:	03070d00 	movweq	r0, #32000	@ 0x7d00
    4334:	e2813001 	add	r3, r1, #1
    4338:	0a000005 	beq	0x4354
    433c:	e3500001 	cmp	r0, #1
    4340:	059f00b4 	ldreq	r0, [pc, #180]	@ 0x43fc
    4344:	0a000002 	beq	0x4354
    4348:	e3500002 	cmp	r0, #2
    434c:	13500003 	cmpne	r0, #3
    4350:	0bffffe3 	bleq	0x42e4
    4354:	e730f310 	udiv	r0, r0, r3
    4358:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    435c:	01c62000 	biceq	r2, r6, r0
    4360:	0001000d 	andeq	r0, r1, sp
    4364:	01010040 	tsteq	r1, r0, asr #32
    4368:	0001002f 	andeq	r0, r1, pc, lsr #32
    436c:	00010138 	andeq	r0, r1, r8, lsr r1
    4370:	000318f4 	strdeq	r1, [r3], -r4
    4374:	0003ffff 	strdeq	pc, [r3], -pc	@ <UNPREDICTABLE>
    4378:	1000040b 	andne	r0, r0, fp, lsl #8
    437c:	01c65000 	biceq	r5, r6, r0
    4380:	0a003e3f 	beq	0x13c84
    4384:	03008421 	movweq	r8, #1057	@ 0x421
    4388:	01000081 	smlabbeq	r0, r1, r0, r0
    438c:	01c63000 	biceq	r3, r6, r0
    4390:	01040401 	tsteq	r4, r1, lsl #8
    4394:	01040001 	tsteq	r4, r1
    4398:	01f01510 	mvnseq	r1, r0, lsl r5
    439c:	01c20000 	biceq	r0, r2, r0
    43a0:	40000161 	andmi	r0, r0, r1, ror #2
    43a4:	40000171 	andmi	r0, r0, r1, ror r1
    43a8:	08003e3f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r5, r9, sl, fp, ip, sp}
    43ac:	d1303333 	teqle	r0, r3, lsr r3
    43b0:	cce06666 	stclgt	6, cr6, [r0], #408	@ 0x198
    43b4:	c8909999 	ldmgt	r0, {r0, r3, r4, r7, r8, fp, ip, pc}
    43b8:	c440cccc 	strbgt	ip, [r0], #-3276	@ 0xfffff334
    43bc:	00005238 	andeq	r5, r0, r8, lsr r2
    43c0:	4152445b 	cmpmi	r2, fp, asr r4
    43c4:	65765d4d 	ldrbvs	r5, [r6, #-3405]!	@ 0xfffff2b3
    43c8:	2e302072 	mrccs	0, 1, r2, cr0, cr2, {3}
    43cc:	6c632039 	stclvs	0, cr2, [r3], #-228	@ 0xffffff1c
    43d0:	203d206b 	eorscs	r2, sp, fp, rrx
    43d4:	000a6425 	andeq	r6, sl, r5, lsr #8
    43d8:	01c20cb4 	strheq	r0, [r2, #196]	@ 0xc4
    43dc:	00123456 	andseq	r3, r2, r6, asr r4
    43e0:	0091a2b0 			@ <UNDEFINED> instruction: 0x0091a2b0
    43e4:	6d617264 	stclvs	2, cr7, [r1, #-400]!	@ 0xfffffe70
    43e8:	0a6b6f20 	beq	0x1ae0070
    43ec:	00000000 	andeq	r0, r0, r0
    43f0:	6d617264 	stclvs	2, cr7, [r1, #-400]!	@ 0xfffffe70
    43f4:	64616220 	strbtvs	r6, [r1], #-544	@ 0xfffffde0
    43f8:	0000000a 	andeq	r0, r0, sl
    43fc:	016e3600 	cmneq	lr, r0, lsl #12
    4400:	e51f006c 	ldr	r0, [pc, #-108]	@ 0x439c
    4404:	e92d4010 	push	{r4, lr}
    4408:	e5901054 	ldr	r1, [r0, #84]	@ 0x54
    440c:	e3a03001 	mov	r3, #1
    4410:	e7e10651 	ubfx	r0, r1, #12, #2
    4414:	e7e12351 	ubfx	r2, r1, #6, #2
    4418:	e7e11251 	ubfx	r1, r1, #4, #2
    441c:	e2822001 	add	r2, r2, #1
    4420:	e1a04113 	lsl	r4, r3, r1
    4424:	e3500000 	cmp	r0, #0
    4428:	03070d00 	movweq	r0, #32000	@ 0x7d00
    442c:	0a00000b 	beq	0x4460
    4430:	e3500001 	cmp	r0, #1
    4434:	051f0040 	ldreq	r0, [pc, #-64]	@ 0x43fc
    4438:	0a000008 	beq	0x4460
    443c:	e3500002 	cmp	r0, #2
    4440:	0a000002 	beq	0x4450
    4444:	e3500003 	cmp	r0, #3
    4448:	0a000002 	beq	0x4458
    444c:	ea000003 	b	0x4460
    4450:	ebffffb0 	bl	0x4318
    4454:	ea000001 	b	0x4460
    4458:	ebffff96 	bl	0x42b8
    445c:	e730f210 	udiv	r0, r0, r2
    4460:	e730f410 	udiv	r0, r0, r4
    4464:	e8bd8010 	pop	{r4, pc}
    4468:	e52de004 	push	{lr}		@ (str lr, [sp, #-4]!)
    446c:	e24dd064 	sub	sp, sp, #100	@ 0x64
    4470:	e59f101c 	ldr	r1, [pc, #28]	@ 0x4494
    4474:	e3a02060 	mov	r2, #96	@ 0x60
    4478:	e1a0000d 	mov	r0, sp
    447c:	eb0002e5 	bl	0x5018
    4480:	e1a0100d 	mov	r1, sp
    4484:	e3a00000 	mov	r0, #0
    4488:	ebffff49 	bl	0x41b4
    448c:	e28dd064 	add	sp, sp, #100	@ 0x64
    4490:	e49df004 	pop	{pc}		@ (ldr pc, [sp], #4)
    4494:	000051d4 	ldrdeq	r5, [r0], -r4
    4498:	e92d4010 	push	{r4, lr}
    449c:	e1a04000 	mov	r4, r0
    44a0:	ea000004 	b	0x44b8
    44a4:	e350000a 	cmp	r0, #10
    44a8:	03a0000d 	moveq	r0, #13
    44ac:	0b0000d0 	bleq	0x47f4
    44b0:	e4d40001 	ldrb	r0, [r4], #1
    44b4:	eb0000ce 	bl	0x47f4
    44b8:	e5d40000 	ldrb	r0, [r4]
    44bc:	e3500000 	cmp	r0, #0
    44c0:	1afffff7 	bne	0x44a4
    44c4:	e8bd8010 	pop	{r4, pc}
    44c8:	e92d000f 	push	{r0, r1, r2, r3}
    44cc:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
    44d0:	e28d4024 	add	r4, sp, #36	@ 0x24
    44d4:	ea000033 	b	0x45a8
    44d8:	e3500025 	cmp	r0, #37	@ 0x25
    44dc:	0a000007 	beq	0x4500
    44e0:	e350000a 	cmp	r0, #10
    44e4:	03a0000d 	moveq	r0, #13
    44e8:	0b0000c1 	bleq	0x47f4
    44ec:	e59d1020 	ldr	r1, [sp, #32]
    44f0:	e4d10001 	ldrb	r0, [r1], #1
    44f4:	e58d1020 	str	r1, [sp, #32]
    44f8:	eb0000bd 	bl	0x47f4
    44fc:	ea000029 	b	0x45a8
    4500:	e2811001 	add	r1, r1, #1
    4504:	e58d1020 	str	r1, [sp, #32]
    4508:	e1a0500d 	mov	r5, sp
    450c:	e3a02058 	mov	r2, #88	@ 0x58
    4510:	e5d11000 	ldrb	r1, [r1]
    4514:	e3510070 	cmp	r1, #112	@ 0x70
    4518:	0a00001a 	beq	0x4588
    451c:	ca000007 	bgt	0x4540
    4520:	e3510058 	cmp	r1, #88	@ 0x58
    4524:	0a000017 	beq	0x4588
    4528:	e3510063 	cmp	r1, #99	@ 0x63
    452c:	04d40004 	ldrbeq	r0, [r4], #4
    4530:	0a00000e 	beq	0x4570
    4534:	e3510064 	cmp	r1, #100	@ 0x64
    4538:	1a000008 	bne	0x4560
    453c:	ea00000d 	b	0x4578
    4540:	e3510073 	cmp	r1, #115	@ 0x73
    4544:	04940004 	ldreq	r0, [r4], #4
    4548:	0a000012 	beq	0x4598
    454c:	e3510075 	cmp	r1, #117	@ 0x75
    4550:	0a00001a 	beq	0x45c0
    4554:	e3510078 	cmp	r1, #120	@ 0x78
    4558:	03a02078 	moveq	r2, #120	@ 0x78
    455c:	0a000009 	beq	0x4588
    4560:	e3a00025 	mov	r0, #37	@ 0x25
    4564:	eb0000a2 	bl	0x47f4
    4568:	e59d0020 	ldr	r0, [sp, #32]
    456c:	e5d00000 	ldrb	r0, [r0]
    4570:	eb00009f 	bl	0x47f4
    4574:	ea000008 	b	0x459c
    4578:	e4940004 	ldr	r0, [r4], #4
    457c:	e1a01005 	mov	r1, r5
    4580:	eb000012 	bl	0x45d0
    4584:	ea000002 	b	0x4594
    4588:	e4940004 	ldr	r0, [r4], #4
    458c:	e1a01005 	mov	r1, r5
    4590:	eb000050 	bl	0x46d8
    4594:	e1a00005 	mov	r0, r5
    4598:	ebffffbe 	bl	0x4498
    459c:	e59d0020 	ldr	r0, [sp, #32]
    45a0:	e2800001 	add	r0, r0, #1
    45a4:	e58d0020 	str	r0, [sp, #32]
    45a8:	e59d1020 	ldr	r1, [sp, #32]
    45ac:	e5d10000 	ldrb	r0, [r1]
    45b0:	e3500000 	cmp	r0, #0
    45b4:	1affffc7 	bne	0x44d8
    45b8:	e8bd007f 	pop	{r0, r1, r2, r3, r4, r5, r6}
    45bc:	e49df014 	ldr	pc, [sp], #20
    45c0:	e4940004 	ldr	r0, [r4], #4
    45c4:	e1a01005 	mov	r1, r5
    45c8:	eb000025 	bl	0x4664
    45cc:	eafffff0 	b	0x4594
    45d0:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
    45d4:	e3500000 	cmp	r0, #0
    45d8:	e3a07000 	mov	r7, #0
    45dc:	b2600000 	rsblt	r0, r0, #0
    45e0:	e1a06007 	mov	r6, r7
    45e4:	03a00030 	moveq	r0, #48	@ 0x30
    45e8:	05c10000 	strbeq	r0, [r1]
    45ec:	b3a07001 	movlt	r7, #1
    45f0:	13a02000 	movne	r2, #0
    45f4:	11a0500d 	movne	r5, sp
    45f8:	13a0300a 	movne	r3, #10
    45fc:	05c16001 	strbeq	r6, [r1, #1]
    4600:	0a000016 	beq	0x4660
    4604:	ea000005 	b	0x4620
    4608:	e1a04000 	mov	r4, r0
    460c:	e710f310 	sdiv	r0, r0, r3
    4610:	e0644093 	mls	r4, r3, r0, r4
    4614:	e2844030 	add	r4, r4, #48	@ 0x30
    4618:	e7c54002 	strb	r4, [r5, r2]
    461c:	e2822001 	add	r2, r2, #1
    4620:	e3500000 	cmp	r0, #0
    4624:	cafffff7 	bgt	0x4608
    4628:	e3570001 	cmp	r7, #1
    462c:	e3a00000 	mov	r0, #0
    4630:	03a0002d 	moveq	r0, #45	@ 0x2d
    4634:	05c10000 	strbeq	r0, [r1]
    4638:	e2422001 	sub	r2, r2, #1
    463c:	03a00001 	moveq	r0, #1
    4640:	ea000003 	b	0x4654
    4644:	e7d53002 	ldrb	r3, [r5, r2]
    4648:	e2422001 	sub	r2, r2, #1
    464c:	e7c13000 	strb	r3, [r1, r0]
    4650:	e2800001 	add	r0, r0, #1
    4654:	e3520000 	cmp	r2, #0
    4658:	b7c16000 	strblt	r6, [r1, r0]
    465c:	aafffff8 	bge	0x4644
    4660:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
    4664:	e92d407e 	push	{r1, r2, r3, r4, r5, r6, lr}
    4668:	e3500000 	cmp	r0, #0
    466c:	e3a06000 	mov	r6, #0
    4670:	03a00030 	moveq	r0, #48	@ 0x30
    4674:	05c10000 	strbeq	r0, [r1]
    4678:	13a02000 	movne	r2, #0
    467c:	13a0300a 	movne	r3, #10
    4680:	11a0500d 	movne	r5, sp
    4684:	05c16001 	strbeq	r6, [r1, #1]
    4688:	0a000011 	beq	0x46d4
    468c:	e1a04000 	mov	r4, r0
    4690:	e730f310 	udiv	r0, r0, r3
    4694:	e0644093 	mls	r4, r3, r0, r4
    4698:	e3500000 	cmp	r0, #0
    469c:	e2844030 	add	r4, r4, #48	@ 0x30
    46a0:	e7c54002 	strb	r4, [r5, r2]
    46a4:	e2822001 	add	r2, r2, #1
    46a8:	02420001 	subeq	r0, r2, #1
    46ac:	03a02000 	moveq	r2, #0
    46b0:	1afffff5 	bne	0x468c
    46b4:	ea000003 	b	0x46c8
    46b8:	e7d53000 	ldrb	r3, [r5, r0]
    46bc:	e2400001 	sub	r0, r0, #1
    46c0:	e7c13002 	strb	r3, [r1, r2]
    46c4:	e2822001 	add	r2, r2, #1
    46c8:	e3500000 	cmp	r0, #0
    46cc:	b7c16002 	strblt	r6, [r1, r2]
    46d0:	aafffff8 	bge	0x46b8
    46d4:	e8bd807e 	pop	{r1, r2, r3, r4, r5, r6, pc}
    46d8:	e59f303c 	ldr	r3, [pc, #60]	@ 0x471c
    46dc:	e3a02009 	mov	r2, #9
    46e0:	e92d4010 	push	{r4, lr}
    46e4:	e200400f 	and	r4, r0, #15
    46e8:	e1a00240 	asr	r0, r0, #4
    46ec:	e7d34004 	ldrb	r4, [r3, r4]
    46f0:	e7c14002 	strb	r4, [r1, r2]
    46f4:	e2422001 	sub	r2, r2, #1
    46f8:	e3520001 	cmp	r2, #1
    46fc:	cafffff8 	bgt	0x46e4
    4700:	e3a00030 	mov	r0, #48	@ 0x30
    4704:	e5c10000 	strb	r0, [r1]
    4708:	e3a00078 	mov	r0, #120	@ 0x78
    470c:	e5c10001 	strb	r0, [r1, #1]
    4710:	e3a00000 	mov	r0, #0
    4714:	e5c1000a 	strb	r0, [r1, #10]
    4718:	e8bd8010 	pop	{r4, pc}
    471c:	0000523c 	andeq	r5, r0, ip, lsr r2
    4720:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    4724:	e59f40ec 	ldr	r4, [pc, #236]	@ 0x4818
    4728:	e3500007 	cmp	r0, #7
    472c:	e1a06002 	mov	r6, r2
    4730:	e1a07001 	mov	r7, r1
    4734:	e5840000 	str	r0, [r4]
    4738:	88bd81f0 	pophi	{r4, r5, r6, r7, r8, pc}
    473c:	e59f20d8 	ldr	r2, [pc, #216]	@ 0x481c
    4740:	e5921000 	ldr	r1, [r2]
    4744:	e2800010 	add	r0, r0, #16
    4748:	e3a05001 	mov	r5, #1
    474c:	e1a03015 	lsl	r3, r5, r0
    4750:	e1c10003 	bic	r0, r1, r3
    4754:	e5820000 	str	r0, [r2]
    4758:	e3a00000 	mov	r0, #0
    475c:	e2800001 	add	r0, r0, #1
    4760:	e3500064 	cmp	r0, #100	@ 0x64
    4764:	3afffffc 	bcc	0x475c
    4768:	e5920000 	ldr	r0, [r2]
    476c:	e1800003 	orr	r0, r0, r3
    4770:	e5820000 	str	r0, [r2]
    4774:	e59f00a4 	ldr	r0, [pc, #164]	@ 0x4820
    4778:	e59012d8 	ldr	r1, [r0, #728]	@ 0x2d8
    477c:	e1811003 	orr	r1, r1, r3
    4780:	e58012d8 	str	r1, [r0, #728]	@ 0x2d8
    4784:	e3a02001 	mov	r2, #1
    4788:	e3a01002 	mov	r1, #2
    478c:	e1a00007 	mov	r0, r7
    4790:	eb000025 	bl	0x482c
    4794:	e59f1088 	ldr	r1, [pc, #136]	@ 0x4824
    4798:	e2860ae1 	add	r0, r6, #921600	@ 0xe1000
    479c:	e731f110 	udiv	r1, r0, r1
    47a0:	e5942000 	ldr	r2, [r4]
    47a4:	e59f007c 	ldr	r0, [pc, #124]	@ 0x4828
    47a8:	e0800502 	add	r0, r0, r2, lsl #10
    47ac:	e590200c 	ldr	r2, [r0, #12]
    47b0:	e58050a4 	str	r5, [r0, #164]	@ 0xa4
    47b4:	e3823080 	orr	r3, r2, #128	@ 0x80
    47b8:	e580300c 	str	r3, [r0, #12]
    47bc:	e1a03421 	lsr	r3, r1, #8
    47c0:	e5803004 	str	r3, [r0, #4]
    47c4:	e20110ff 	and	r1, r1, #255	@ 0xff
    47c8:	e5801000 	str	r1, [r0]
    47cc:	e3c21080 	bic	r1, r2, #128	@ 0x80
    47d0:	e580100c 	str	r1, [r0, #12]
    47d4:	e3a01000 	mov	r1, #0
    47d8:	e58010a4 	str	r1, [r0, #164]	@ 0xa4
    47dc:	e3a01003 	mov	r1, #3
    47e0:	e580100c 	str	r1, [r0, #12]
    47e4:	e3a01006 	mov	r1, #6
    47e8:	e5801008 	str	r1, [r0, #8]
    47ec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    47f0:	e12fff1e 	bx	lr
    47f4:	e59f101c 	ldr	r1, [pc, #28]	@ 0x4818
    47f8:	e59f2028 	ldr	r2, [pc, #40]	@ 0x4828
    47fc:	e5911000 	ldr	r1, [r1]
    4800:	e0821501 	add	r1, r2, r1, lsl #10
    4804:	e5912014 	ldr	r2, [r1, #20]
    4808:	e3120040 	tst	r2, #64	@ 0x40
    480c:	15810000 	strne	r0, [r1]
    4810:	0afffffb 	beq	0x4804
    4814:	e12fff1e 	bx	lr
    4818:	00005250 	andeq	r5, r0, r0, asr r2
    481c:	01c2006c 	biceq	r0, r2, ip, rrx
    4820:	01c20000 	biceq	r0, r2, r0
    4824:	001c2000 	andseq	r2, ip, r0
    4828:	01c28000 	biceq	r8, r2, r0
    482c:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4830:	e24dd020 	sub	sp, sp, #32
    4834:	e3a01000 	mov	r1, #0
    4838:	e1a04001 	mov	r4, r1
    483c:	e1a05001 	mov	r5, r1
    4840:	e1a06001 	mov	r6, r1
    4844:	e1a02001 	mov	r2, r1
    4848:	e58d101c 	str	r1, [sp, #28]
    484c:	e1a08001 	mov	r8, r1
    4850:	e1a0e001 	mov	lr, r1
    4854:	e1a09001 	mov	r9, r1
    4858:	e1a03001 	mov	r3, r1
    485c:	e58d1008 	str	r1, [sp, #8]
    4860:	e58d1004 	str	r1, [sp, #4]
    4864:	e58d1010 	str	r1, [sp, #16]
    4868:	e58d0014 	str	r0, [sp, #20]
    486c:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
    4870:	e1530000 	cmp	r3, r0
    4874:	2a000038 	bcs	0x495c
    4878:	e59d0014 	ldr	r0, [sp, #20]
    487c:	e7f0c183 	ldrb	ip, [r0, r3, lsl #3]!
    4880:	e35c0000 	cmp	ip, #0
    4884:	e5d07001 	ldrb	r7, [r0, #1]
    4888:	02833001 	addeq	r3, r3, #1
    488c:	0afffff6 	beq	0x486c
    4890:	e59f2268 	ldr	r2, [pc, #616]	@ 0x4b00
    4894:	e08c418c 	add	r4, ip, ip, lsl #3
    4898:	e1a011a7 	lsr	r1, r7, #3
    489c:	e0829104 	add	r9, r2, r4, lsl #2
    48a0:	e0892101 	add	r2, r9, r1, lsl #2
    48a4:	e1a0b227 	lsr	fp, r7, #4
    48a8:	e592a000 	ldr	sl, [r2]
    48ac:	e089e10b 	add	lr, r9, fp, lsl #2
    48b0:	e28e801c 	add	r8, lr, #28
    48b4:	e59e401c 	ldr	r4, [lr, #28]
    48b8:	e5be5014 	ldr	r5, [lr, #20]!
    48bc:	e5b96010 	ldr	r6, [r9, #16]!
    48c0:	e98d1002 	stmib	sp, {r1, ip}
    48c4:	e0471181 	sub	r1, r7, r1, lsl #3
    48c8:	e58db010 	str	fp, [sp, #16]
    48cc:	e1a0c101 	lsl	ip, r1, #2
    48d0:	e3a01007 	mov	r1, #7
    48d4:	e1ca1c11 	bic	r1, sl, r1, lsl ip
    48d8:	e59da028 	ldr	sl, [sp, #40]	@ 0x28
    48dc:	e35a0000 	cmp	sl, #0
    48e0:	0a000002 	beq	0x48f0
    48e4:	e5d0a002 	ldrb	sl, [r0, #2]
    48e8:	e20aa007 	and	sl, sl, #7
    48ec:	e1811c1a 	orr	r1, r1, sl, lsl ip
    48f0:	e1d0a0d3 	ldrsb	sl, [r0, #3]
    48f4:	e047c20b 	sub	ip, r7, fp, lsl #4
    48f8:	e35a0000 	cmp	sl, #0
    48fc:	e1a0c08c 	lsl	ip, ip, #1
    4900:	ba000003 	blt	0x4914
    4904:	e3a0b003 	mov	fp, #3
    4908:	e20aa003 	and	sl, sl, #3
    490c:	e1c44c1b 	bic	r4, r4, fp, lsl ip
    4910:	e1844c1a 	orr	r4, r4, sl, lsl ip
    4914:	e1d0a0d4 	ldrsb	sl, [r0, #4]
    4918:	e35a0000 	cmp	sl, #0
    491c:	ba000003 	blt	0x4930
    4920:	e3a0b003 	mov	fp, #3
    4924:	e20aa003 	and	sl, sl, #3
    4928:	e1c55c1b 	bic	r5, r5, fp, lsl ip
    492c:	e1855c1a 	orr	r5, r5, sl, lsl ip
    4930:	e5d0c002 	ldrb	ip, [r0, #2]
    4934:	e35c0001 	cmp	ip, #1
    4938:	1a000007 	bne	0x495c
    493c:	e1d000d5 	ldrsb	r0, [r0, #5]
    4940:	e3500000 	cmp	r0, #0
    4944:	ba000004 	blt	0x495c
    4948:	e3a0c001 	mov	ip, #1
    494c:	e58dc01c 	str	ip, [sp, #28]
    4950:	e2000001 	and	r0, r0, #1
    4954:	e1c6671c 	bic	r6, r6, ip, lsl r7
    4958:	e1866710 	orr	r6, r6, r0, lsl r7
    495c:	e59d0024 	ldr	r0, [sp, #36]	@ 0x24
    4960:	e1500003 	cmp	r0, r3
    4964:	93e00000 	mvnls	r0, #0
    4968:	82830001 	addhi	r0, r3, #1
    496c:	9a000061 	bls	0x4af8
    4970:	ea000053 	b	0x4ac4
    4974:	e28d7014 	add	r7, sp, #20
    4978:	e8970009 	ldm	r7, {r0, r3}
    497c:	e7f07183 	ldrb	r7, [r0, r3, lsl #3]!
    4980:	e3570000 	cmp	r7, #0
    4984:	e5d03001 	ldrb	r3, [r0, #1]
    4988:	0a000051 	beq	0x4ad4
    498c:	e59db010 	ldr	fp, [sp, #16]
    4990:	e1a0a223 	lsr	sl, r3, #4
    4994:	e1a0c1a3 	lsr	ip, r3, #3
    4998:	e15a000b 	cmp	sl, fp
    499c:	1a000002 	bne	0x49ac
    49a0:	e59db008 	ldr	fp, [sp, #8]
    49a4:	e157000b 	cmp	r7, fp
    49a8:	0a000012 	beq	0x49f8
    49ac:	e5821000 	str	r1, [r2]
    49b0:	e5884000 	str	r4, [r8]
    49b4:	e58e5000 	str	r5, [lr]
    49b8:	e59d101c 	ldr	r1, [sp, #28]
    49bc:	e3510000 	cmp	r1, #0
    49c0:	13a01000 	movne	r1, #0
    49c4:	158d101c 	strne	r1, [sp, #28]
    49c8:	15896000 	strne	r6, [r9]
    49cc:	e0872187 	add	r2, r7, r7, lsl #3
    49d0:	e59f1128 	ldr	r1, [pc, #296]	@ 0x4b00
    49d4:	e0819102 	add	r9, r1, r2, lsl #2
    49d8:	e089210c 	add	r2, r9, ip, lsl #2
    49dc:	e089e10a 	add	lr, r9, sl, lsl #2
    49e0:	e28e801c 	add	r8, lr, #28
    49e4:	e5921000 	ldr	r1, [r2]
    49e8:	e59e401c 	ldr	r4, [lr, #28]
    49ec:	e5be5014 	ldr	r5, [lr, #20]!
    49f0:	e5b96010 	ldr	r6, [r9, #16]!
    49f4:	ea000008 	b	0x4a1c
    49f8:	e59db004 	ldr	fp, [sp, #4]
    49fc:	e15b000c 	cmp	fp, ip
    4a00:	0a000005 	beq	0x4a1c
    4a04:	e5821000 	str	r1, [r2]
    4a08:	e0871187 	add	r1, r7, r7, lsl #3
    4a0c:	e1a01101 	lsl	r1, r1, #2
    4a10:	e081210c 	add	r2, r1, ip, lsl #2
    4a14:	e59f10e4 	ldr	r1, [pc, #228]	@ 0x4b00
    4a18:	e7b21001 	ldr	r1, [r2, r1]!
    4a1c:	e58d7008 	str	r7, [sp, #8]
    4a20:	e043718c 	sub	r7, r3, ip, lsl #3
    4a24:	e58dc004 	str	ip, [sp, #4]
    4a28:	e58da010 	str	sl, [sp, #16]
    4a2c:	e1a07107 	lsl	r7, r7, #2
    4a30:	e1d0b0d2 	ldrsb	fp, [r0, #2]
    4a34:	e35b0000 	cmp	fp, #0
    4a38:	0a000005 	beq	0x4a54
    4a3c:	e3a0c007 	mov	ip, #7
    4a40:	e1c1171c 	bic	r1, r1, ip, lsl r7
    4a44:	e59dc028 	ldr	ip, [sp, #40]	@ 0x28
    4a48:	e35c0000 	cmp	ip, #0
    4a4c:	120bc007 	andne	ip, fp, #7
    4a50:	1181171c 	orrne	r1, r1, ip, lsl r7
    4a54:	e1d0c0d3 	ldrsb	ip, [r0, #3]
    4a58:	e043720a 	sub	r7, r3, sl, lsl #4
    4a5c:	e35c0000 	cmp	ip, #0
    4a60:	e1a07087 	lsl	r7, r7, #1
    4a64:	ba000003 	blt	0x4a78
    4a68:	e3a0a003 	mov	sl, #3
    4a6c:	e20cc003 	and	ip, ip, #3
    4a70:	e1c4471a 	bic	r4, r4, sl, lsl r7
    4a74:	e184471c 	orr	r4, r4, ip, lsl r7
    4a78:	e1d0c0d4 	ldrsb	ip, [r0, #4]
    4a7c:	e35c0000 	cmp	ip, #0
    4a80:	ba000003 	blt	0x4a94
    4a84:	e3a0a003 	mov	sl, #3
    4a88:	e20cc003 	and	ip, ip, #3
    4a8c:	e1c5571a 	bic	r5, r5, sl, lsl r7
    4a90:	e185571c 	orr	r5, r5, ip, lsl r7
    4a94:	e35b0001 	cmp	fp, #1
    4a98:	1a000007 	bne	0x4abc
    4a9c:	e1d000d5 	ldrsb	r0, [r0, #5]
    4aa0:	e3500000 	cmp	r0, #0
    4aa4:	ba000004 	blt	0x4abc
    4aa8:	e3a07001 	mov	r7, #1
    4aac:	e58d701c 	str	r7, [sp, #28]
    4ab0:	e2000001 	and	r0, r0, #1
    4ab4:	e1c66317 	bic	r6, r6, r7, lsl r3
    4ab8:	e1866310 	orr	r6, r6, r0, lsl r3
    4abc:	e59d0018 	ldr	r0, [sp, #24]
    4ac0:	e2800001 	add	r0, r0, #1
    4ac4:	e59d3024 	ldr	r3, [sp, #36]	@ 0x24
    4ac8:	e58d0018 	str	r0, [sp, #24]
    4acc:	e1530000 	cmp	r3, r0
    4ad0:	8affffa7 	bhi	0x4974
    4ad4:	e3520000 	cmp	r2, #0
    4ad8:	0a000005 	beq	0x4af4
    4adc:	e5821000 	str	r1, [r2]
    4ae0:	e5884000 	str	r4, [r8]
    4ae4:	e58e5000 	str	r5, [lr]
    4ae8:	e59d001c 	ldr	r0, [sp, #28]
    4aec:	e3500000 	cmp	r0, #0
    4af0:	15896000 	strne	r6, [r9]
    4af4:	e3a00000 	mov	r0, #0
    4af8:	e28dd02c 	add	sp, sp, #44	@ 0x2c
    4afc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4b00:	01c207dc 	ldrdeq	r0, [r2, #124]	@ 0x7c
    4b04:	e92d4070 	push	{r4, r5, r6, lr}
    4b08:	e1a04003 	mov	r4, r3
    4b0c:	e1a05002 	mov	r5, r2
    4b10:	e1a03001 	mov	r3, r1
    4b14:	e1a02000 	mov	r2, r0
    4b18:	e3540000 	cmp	r4, #0
    4b1c:	11a0c004 	movne	ip, r4
    4b20:	01a0c005 	moveq	ip, r5
    4b24:	e16fef1c 	clz	lr, ip
    4b28:	e28e0001 	add	r0, lr, #1
    4b2c:	e1a0c01c 	lsl	ip, ip, r0
    4b30:	127ee03f 	rsbsne	lr, lr, #63	@ 0x3f
    4b34:	027ee01f 	rsbseq	lr, lr, #31
    4b38:	4a000094 	bmi	0x4d90
    4b3c:	e3530000 	cmp	r3, #0
    4b40:	116f1f13 	clzne	r1, r3
    4b44:	016f1f12 	clzeq	r1, r2
    4b48:	1271103f 	rsbsne	r1, r1, #63	@ 0x3f
    4b4c:	0271101f 	rsbseq	r1, r1, #31
    4b50:	e051600e 	subs	r6, r1, lr
    4b54:	4a000092 	bmi	0x4da4
    4b58:	52760004 	rsbspl	r0, r6, #4
    4b5c:	5a000093 	bpl	0x4db0
    4b60:	e24e0020 	sub	r0, lr, #32
    4b64:	e3500004 	cmp	r0, #4
    4b68:	d1a01035 	lsrle	r1, r5, r0
    4b6c:	d18cc001 	orrle	ip, ip, r1
    4b70:	e28f1f9f 	add	r1, pc, #636	@ 0x27c
    4b74:	e1a0ce2c 	lsr	ip, ip, #28
    4b78:	e35e001f 	cmp	lr, #31
    4b7c:	e791c10c 	ldr	ip, [r1, ip, lsl #2]
    4b80:	824ee020 	subhi	lr, lr, #32
    4b84:	e26e6020 	rsb	r6, lr, #32
    4b88:	8a000048 	bhi	0x4cb0
    4b8c:	e081059c 	umull	r0, r1, ip, r5
    4b90:	e1a04e30 	lsr	r4, r0, lr
    4b94:	e1a01611 	lsl	r1, r1, r6
    4b98:	e1a00610 	lsl	r0, r0, r6
    4b9c:	e1811004 	orr	r1, r1, r4
    4ba0:	e2700000 	rsbs	r0, r0, #0
    4ba4:	e2611000 	rsb	r1, r1, #0
    4ba8:	32411001 	subcc	r1, r1, #1
    4bac:	e081019c 	umull	r0, r1, ip, r1
    4bb0:	e08cc001 	add	ip, ip, r1
    4bb4:	e081059c 	umull	r0, r1, ip, r5
    4bb8:	e1a04e30 	lsr	r4, r0, lr
    4bbc:	e1a01611 	lsl	r1, r1, r6
    4bc0:	e1a00610 	lsl	r0, r0, r6
    4bc4:	e1811004 	orr	r1, r1, r4
    4bc8:	e2700000 	rsbs	r0, r0, #0
    4bcc:	e2611000 	rsb	r1, r1, #0
    4bd0:	32411001 	subcc	r1, r1, #1
    4bd4:	e3530000 	cmp	r3, #0
    4bd8:	e081019c 	umull	r0, r1, ip, r1
    4bdc:	e08cc001 	add	ip, ip, r1
    4be0:	0a000009 	beq	0x4c0c
    4be4:	e081059c 	umull	r0, r1, ip, r5
    4be8:	e1a04e30 	lsr	r4, r0, lr
    4bec:	e1a01611 	lsl	r1, r1, r6
    4bf0:	e1a00610 	lsl	r0, r0, r6
    4bf4:	e1811004 	orr	r1, r1, r4
    4bf8:	e2700000 	rsbs	r0, r0, #0
    4bfc:	e2611000 	rsb	r1, r1, #0
    4c00:	32411001 	subcc	r1, r1, #1
    4c04:	e081019c 	umull	r0, r1, ip, r1
    4c08:	e08cc001 	add	ip, ip, r1
    4c0c:	e080129c 	umull	r1, r0, ip, r2
    4c10:	e3a01000 	mov	r1, #0
    4c14:	e0a1039c 	umlal	r0, r1, ip, r3
    4c18:	e1a00e30 	lsr	r0, r0, lr
    4c1c:	e1a04611 	lsl	r4, r1, r6
    4c20:	e1800004 	orr	r0, r0, r4
    4c24:	e1a01e31 	lsr	r1, r1, lr
    4c28:	e0846590 	umull	r6, r4, r0, r5
    4c2c:	e0522006 	subs	r2, r2, r6
    4c30:	e0244591 	mla	r4, r1, r5, r4
    4c34:	e0c33004 	sbc	r3, r3, r4
    4c38:	e3530001 	cmp	r3, #1
    4c3c:	31520005 	cmpcc	r2, r5
    4c40:	38bd8070 	popcc	{r4, r5, r6, pc}
    4c44:	e086429c 	umull	r4, r6, ip, r2
    4c48:	e3a04000 	mov	r4, #0
    4c4c:	e0a4639c 	umlal	r6, r4, ip, r3
    4c50:	e26ec020 	rsb	ip, lr, #32
    4c54:	e1a06e36 	lsr	r6, r6, lr
    4c58:	e1a03c14 	lsl	r3, r4, ip
    4c5c:	e1866003 	orr	r6, r6, r3
    4c60:	e3a03000 	mov	r3, #0
    4c64:	e1a04e34 	lsr	r4, r4, lr
    4c68:	e08ce596 	umull	lr, ip, r6, r5
    4c6c:	e0900006 	adds	r0, r0, r6
    4c70:	e0a11004 	adc	r1, r1, r4
    4c74:	e042200e 	sub	r2, r2, lr
    4c78:	e1520005 	cmp	r2, r5
    4c7c:	38bd8070 	popcc	{r4, r5, r6, pc}
    4c80:	e2900001 	adds	r0, r0, #1
    4c84:	e2a11000 	adc	r1, r1, #0
    4c88:	e0422005 	sub	r2, r2, r5
    4c8c:	e052c005 	subs	ip, r2, r5
    4c90:	21a0200c 	movcs	r2, ip
    4c94:	e2b00000 	adcs	r0, r0, #0
    4c98:	e2a11000 	adc	r1, r1, #0
    4c9c:	e052c005 	subs	ip, r2, r5
    4ca0:	21a0200c 	movcs	r2, ip
    4ca4:	e2b00000 	adcs	r0, r0, #0
    4ca8:	e2a11000 	adc	r1, r1, #0
    4cac:	e8bd8070 	pop	{r4, r5, r6, pc}
    4cb0:	e080159c 	umull	r1, r0, ip, r5
    4cb4:	e3a01000 	mov	r1, #0
    4cb8:	e0a1049c 	umlal	r0, r1, ip, r4
    4cbc:	e1a01611 	lsl	r1, r1, r6
    4cc0:	e1a06e30 	lsr	r6, r0, lr
    4cc4:	e1811006 	orr	r1, r1, r6
    4cc8:	e26e6020 	rsb	r6, lr, #32
    4ccc:	e2611000 	rsb	r1, r1, #0
    4cd0:	e1a00610 	lsl	r0, r0, r6
    4cd4:	e2700000 	rsbs	r0, r0, #0
    4cd8:	32411001 	subcc	r1, r1, #1
    4cdc:	e081019c 	umull	r0, r1, ip, r1
    4ce0:	e08cc001 	add	ip, ip, r1
    4ce4:	e080159c 	umull	r1, r0, ip, r5
    4ce8:	e3a01000 	mov	r1, #0
    4cec:	e0a1049c 	umlal	r0, r1, ip, r4
    4cf0:	e1a01611 	lsl	r1, r1, r6
    4cf4:	e1a06e30 	lsr	r6, r0, lr
    4cf8:	e1811006 	orr	r1, r1, r6
    4cfc:	e26e6020 	rsb	r6, lr, #32
    4d00:	e2611000 	rsb	r1, r1, #0
    4d04:	e1a00610 	lsl	r0, r0, r6
    4d08:	e2700000 	rsbs	r0, r0, #0
    4d0c:	32411001 	subcc	r1, r1, #1
    4d10:	e081019c 	umull	r0, r1, ip, r1
    4d14:	e08cc001 	add	ip, ip, r1
    4d18:	e24cc001 	sub	ip, ip, #1
    4d1c:	e080129c 	umull	r1, r0, ip, r2
    4d20:	e3a01000 	mov	r1, #0
    4d24:	e0a1039c 	umlal	r0, r1, ip, r3
    4d28:	e1a00e31 	lsr	r0, r1, lr
    4d2c:	e0816590 	umull	r6, r1, r0, r5
    4d30:	e0522006 	subs	r2, r2, r6
    4d34:	e0211490 	mla	r1, r0, r4, r1
    4d38:	e0c33001 	sbc	r3, r3, r1
    4d3c:	e1530004 	cmp	r3, r4
    4d40:	01520005 	cmpeq	r2, r5
    4d44:	33a01000 	movcc	r1, #0
    4d48:	38bd8070 	popcc	{r4, r5, r6, pc}
    4d4c:	e081629c 	umull	r6, r1, ip, r2
    4d50:	e3a06000 	mov	r6, #0
    4d54:	e0a6139c 	umlal	r1, r6, ip, r3
    4d58:	e3a01000 	mov	r1, #0
    4d5c:	e1a06e36 	lsr	r6, r6, lr
    4d60:	e08ce596 	umull	lr, ip, r6, r5
    4d64:	e0800006 	add	r0, r0, r6
    4d68:	e052200e 	subs	r2, r2, lr
    4d6c:	e02ec496 	mla	lr, r6, r4, ip
    4d70:	e0c3300e 	sbc	r3, r3, lr
    4d74:	e1530004 	cmp	r3, r4
    4d78:	01520005 	cmpeq	r2, r5
    4d7c:	38bd8070 	popcc	{r4, r5, r6, pc}
    4d80:	e2800001 	add	r0, r0, #1
    4d84:	e0522005 	subs	r2, r2, r5
    4d88:	e0c33004 	sbc	r3, r3, r4
    4d8c:	e8bd8070 	pop	{r4, r5, r6, pc}
    4d90:	e92d000c 	push	{r2, r3}
    4d94:	e3a01000 	mov	r1, #0
    4d98:	e3a00000 	mov	r0, #0
    4d9c:	e1a00000 	nop			@ (mov r0, r0)
    4da0:	e8bd807c 	pop	{r2, r3, r4, r5, r6, pc}
    4da4:	e3a01000 	mov	r1, #0
    4da8:	e3a00000 	mov	r0, #0
    4dac:	e8bd8070 	pop	{r4, r5, r6, pc}
    4db0:	e266e020 	rsb	lr, r6, #32
    4db4:	e3a00000 	mov	r0, #0
    4db8:	e3a01000 	mov	r1, #0
    4dbc:	e1a04614 	lsl	r4, r4, r6
    4dc0:	e1a0ce35 	lsr	ip, r5, lr
    4dc4:	e1a05615 	lsl	r5, r5, r6
    4dc8:	e184400c 	orr	r4, r4, ip
    4dcc:	e052e005 	subs	lr, r2, r5
    4dd0:	e0d3c004 	sbcs	ip, r3, r4
    4dd4:	e0a00000 	adc	r0, r0, r0
    4dd8:	21a0300c 	movcs	r3, ip
    4ddc:	21a0200e 	movcs	r2, lr
    4de0:	e2566001 	subs	r6, r6, #1
    4de4:	38bd8070 	popcc	{r4, r5, r6, pc}
    4de8:	e1b040a4 	lsrs	r4, r4, #1
    4dec:	e1a05065 	rrx	r5, r5
    4df0:	eafffff5 	b	0x4dcc
    4df4:	f0f0f0f0 			@ <UNDEFINED> instruction: 0xf0f0f0f0
    4df8:	e38e38e3 	orr	r3, lr, #14876672	@ 0xe30000
    4dfc:	d79435e5 	ldrle	r3, [r4, r5, ror #11]
    4e00:	cccccccc 	stclgt	12, cr12, [ip], {204}	@ 0xcc
    4e04:	c30c30c3 	movwgt	r3, #49347	@ 0xc0c3
    4e08:	ba2e8ba2 	blt	0xba7c98
    4e0c:	b21642c8 	andslt	r4, r6, #200, 4	@ 0x8000000c
    4e10:	aaaaaaaa 	bge	0xfeaaf8c0
    4e14:	a3d70a3d 	bicsge	r0, r7, #249856	@ 0x3d000
    4e18:	9d89d89d 	stcls	8, cr13, [r9, #628]	@ 0x274
    4e1c:	97b425ed 	ldrls	r2, [r4, sp, ror #11]!
    4e20:	92492492 	subls	r2, r9, #-1845493760	@ 0x92000000
    4e24:	8d3dcb08 	vldmdbhi	sp!, {d12-d15}
    4e28:	88888888 	stmhi	r8, {r3, r7, fp, pc}
    4e2c:	84210842 	strthi	r0, [r1], #-2114	@ 0xfffff7be
    4e30:	80000000 	andhi	r0, r0, r0
    4e34:	0320f1b2 	msreq	CPSR_, #-2147483604	@ 0x8000002c
    4e38:	f1c2d50a 			@ <UNDEFINED> instruction: 0xf1c2d50a
    4e3c:	fa010320 	blx	0x45ac4
    4e40:	fa20f102 	blx	0x841250
    4e44:	fa00f303 	blx	0x41a58
    4e48:	ea41f002 	b	0x1080e58
    4e4c:	47700103 	ldrbmi	r0, [r0, -r3, lsl #2]!
    4e50:	f103fa00 			@ <UNDEFINED> instruction: 0xf103fa00
    4e54:	0000f04f 	andeq	pc, r0, pc, asr #32
    4e58:	ea404770 	b	0x1016c20
    4e5c:	46020301 	strmi	r0, [r2], -r1, lsl #6
    4e60:	079bb530 			@ <UNDEFINED> instruction: 0x079bb530
    4e64:	f04fd10f 			@ <UNDEFINED> instruction: 0xf04fd10f
    4e68:	e0003401 	and	r3, r0, r1, lsl #8
    4e6c:	c908c208 	stmdbgt	r8, {r3, r9, lr, pc}
    4e70:	f553fac4 	pld	[r3, #-2756]	@ 0xfffff53c
    4e74:	d0f92d00 	rscsle	r2, r9, r0, lsl #26
    4e78:	01fff013 	mvnseq	pc, r3, lsl r0	@ <UNPREDICTABLE>
    4e7c:	1b01f802 	blne	0x82e8c
    4e80:	0a1bd00d 	beq	0x6f8ebc
    4e84:	f811e7f8 			@ <UNDEFINED> instruction: 0xf811e7f8
    4e88:	2b003b01 	blcs	0x13a94
    4e8c:	3b01f802 	blcc	0x82e9c
    4e90:	f811d005 			@ <UNDEFINED> instruction: 0xf811d005
    4e94:	2b003b01 	blcs	0x13aa0
    4e98:	3b01f802 	blcc	0x82ea8
    4e9c:	bd30d1f3 	ldclt	1, cr13, [r0, #-972]!	@ 0xfffffc34
    4ea0:	e1803001 	orr	r3, r0, r1
    4ea4:	e92d4070 	push	{r4, r5, r6, lr}
    4ea8:	e3130003 	tst	r3, #3
    4eac:	059f60d8 	ldreq	r6, [pc, #216]	@ 0x4f8c
    4eb0:	1a000020 	bne	0x4f38
    4eb4:	e3520004 	cmp	r2, #4
    4eb8:	3a00001e 	bcc	0x4f38
    4ebc:	e4903004 	ldr	r3, [r0], #4
    4ec0:	e4914004 	ldr	r4, [r1], #4
    4ec4:	e2422004 	sub	r2, r2, #4
    4ec8:	e6665ff3 	uqsub8	r5, r6, r3
    4ecc:	e3550000 	cmp	r5, #0
    4ed0:	0a000010 	beq	0x4f18
    4ed4:	e20300ff 	and	r0, r3, #255	@ 0xff
    4ed8:	e20410ff 	and	r1, r4, #255	@ 0xff
    4edc:	e0400001 	sub	r0, r0, r1
    4ee0:	e1901c05 	orrs	r1, r0, r5, lsl #24
    4ee4:	18bd8070 	popne	{r4, r5, r6, pc}
    4ee8:	e6ff0073 	uxth	r0, r3
    4eec:	e6ff1074 	uxth	r1, r4
    4ef0:	e0400001 	sub	r0, r0, r1
    4ef4:	e1901805 	orrs	r1, r0, r5, lsl #16
    4ef8:	18bd8070 	popne	{r4, r5, r6, pc}
    4efc:	e3c304ff 	bic	r0, r3, #-16777216	@ 0xff000000
    4f00:	e3c414ff 	bic	r1, r4, #-16777216	@ 0xff000000
    4f04:	e0400001 	sub	r0, r0, r1
    4f08:	e1901405 	orrs	r1, r0, r5, lsl #8
    4f0c:	01a00c23 	lsreq	r0, r3, #24
    4f10:	00400c24 	subeq	r0, r0, r4, lsr #24
    4f14:	e8bd8070 	pop	{r4, r5, r6, pc}
    4f18:	e1530004 	cmp	r3, r4
    4f1c:	0affffe4 	beq	0x4eb4
    4f20:	e6bf0f33 	rev	r0, r3
    4f24:	e6bf1f34 	rev	r1, r4
    4f28:	e1500001 	cmp	r0, r1
    4f2c:	93e00000 	mvnls	r0, #0
    4f30:	83a00001 	movhi	r0, #1
    4f34:	e8bd8070 	pop	{r4, r5, r6, pc}
    4f38:	e3520000 	cmp	r2, #0
    4f3c:	03a00000 	moveq	r0, #0
    4f40:	08bd8070 	popeq	{r4, r5, r6, pc}
    4f44:	e4d03001 	ldrb	r3, [r0], #1
    4f48:	e4d14001 	ldrb	r4, [r1], #1
    4f4c:	e3530000 	cmp	r3, #0
    4f50:	0a00000b 	beq	0x4f84
    4f54:	e1530004 	cmp	r3, r4
    4f58:	1a000009 	bne	0x4f84
    4f5c:	e2522001 	subs	r2, r2, #1
    4f60:	0a000007 	beq	0x4f84
    4f64:	e4d03001 	ldrb	r3, [r0], #1
    4f68:	e4d14001 	ldrb	r4, [r1], #1
    4f6c:	e3530000 	cmp	r3, #0
    4f70:	0a000003 	beq	0x4f84
    4f74:	e1530004 	cmp	r3, r4
    4f78:	1a000001 	bne	0x4f84
    4f7c:	e2522001 	subs	r2, r2, #1
    4f80:	1affffef 	bne	0x4f44
    4f84:	e0430004 	sub	r0, r3, r4
    4f88:	e8bd8070 	pop	{r4, r5, r6, pc}
    4f8c:	01010101 	tsteq	r1, r1, lsl #2
    4f90:	e3520003 	cmp	r2, #3
    4f94:	9a000017 	bls	0x4ff8
    4f98:	e210c003 	ands	ip, r0, #3
    4f9c:	0a000008 	beq	0x4fc4
    4fa0:	e4d13001 	ldrb	r3, [r1], #1
    4fa4:	e35c0002 	cmp	ip, #2
    4fa8:	e082200c 	add	r2, r2, ip
    4fac:	94d1c001 	ldrbls	ip, [r1], #1
    4fb0:	e4c03001 	strb	r3, [r0], #1
    4fb4:	34d13001 	ldrbcc	r3, [r1], #1
    4fb8:	94c0c001 	strbls	ip, [r0], #1
    4fbc:	e2422004 	sub	r2, r2, #4
    4fc0:	34c03001 	strbcc	r3, [r0], #1
    4fc4:	e2113003 	ands	r3, r1, #3
    4fc8:	0a000012 	beq	0x5018
    4fcc:	e2522008 	subs	r2, r2, #8
    4fd0:	3a000004 	bcc	0x4fe8
    4fd4:	e4913004 	ldr	r3, [r1], #4
    4fd8:	e2522008 	subs	r2, r2, #8
    4fdc:	e491c004 	ldr	ip, [r1], #4
    4fe0:	e8a01008 	stmia	r0!, {r3, ip}
    4fe4:	eafffff9 	b	0x4fd0
    4fe8:	e2922004 	adds	r2, r2, #4
    4fec:	54913004 	ldrpl	r3, [r1], #4
    4ff0:	54803004 	strpl	r3, [r0], #4
    4ff4:	e1a00000 	nop			@ (mov r0, r0)
    4ff8:	e1b02f82 	lsls	r2, r2, #31
    4ffc:	24d13001 	ldrbcs	r3, [r1], #1
    5000:	24d1c001 	ldrbcs	ip, [r1], #1
    5004:	44d12001 	ldrbmi	r2, [r1], #1
    5008:	24c03001 	strbcs	r3, [r0], #1
    500c:	24c0c001 	strbcs	ip, [r0], #1
    5010:	44c02001 	strbmi	r2, [r0], #1
    5014:	e12fff1e 	bx	lr
    5018:	e92d4010 	push	{r4, lr}
    501c:	e2522020 	subs	r2, r2, #32
    5020:	3a000005 	bcc	0x503c
    5024:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
    5028:	e2522020 	subs	r2, r2, #32
    502c:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
    5030:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
    5034:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
    5038:	2afffff9 	bcs	0x5024
    503c:	e1b0ce02 	lsls	ip, r2, #28
    5040:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
    5044:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
    5048:	48b10018 	ldmmi	r1!, {r3, r4}
    504c:	48a00018 	stmiami	r0!, {r3, r4}
    5050:	e8bd4010 	pop	{r4, lr}
    5054:	e1b0cf02 	lsls	ip, r2, #30
    5058:	24913004 	ldrcs	r3, [r1], #4
    505c:	24803004 	strcs	r3, [r0], #4
    5060:	012fff1e 	bxeq	lr
    5064:	e1b02f82 	lsls	r2, r2, #31
    5068:	20d130b2 	ldrhcs	r3, [r1], #2
    506c:	44d12001 	ldrbmi	r2, [r1], #1
    5070:	20c030b2 	strhcs	r3, [r0], #2
    5074:	44c02001 	strbmi	r2, [r0], #1
    5078:	e12fff1e 	bx	lr
    507c:	0200f04f 	andeq	pc, r0, #79	@ 0x4f
    5080:	f0c02904 			@ <UNDEFINED> instruction: 0xf0c02904
    5084:	f0108012 			@ <UNDEFINED> instruction: 0xf0108012
    5088:	f0000c03 			@ <UNDEFINED> instruction: 0xf0000c03
    508c:	f1cc801b 			@ <UNDEFINED> instruction: 0xf1cc801b
    5090:	f1bc0c04 			@ <UNDEFINED> instruction: 0xf1bc0c04
    5094:	bf180f02 	svclt	0x00180f02
    5098:	2b01f800 	blcs	0x830a0
    509c:	f820bfa8 			@ <UNDEFINED> instruction: 0xf820bfa8
    50a0:	eba12b02 	bl	0xfe84fcb0
    50a4:	f000010c 			@ <UNDEFINED> instruction: 0xf000010c
    50a8:	ea5fb80d 	b	0x17f30e4
    50ac:	bf247cc1 	svclt	0x00247cc1
    50b0:	2b01f800 	blcs	0x830b8
    50b4:	2b01f800 	blcs	0x830bc
    50b8:	f800bf48 			@ <UNDEFINED> instruction: 0xf800bf48
    50bc:	47702b01 	ldrbmi	r2, [r0, -r1, lsl #22]!
    50c0:	0200f04f 	andeq	pc, r0, #79	@ 0x4f
    50c4:	4613b500 	ldrmi	fp, [r3], -r0, lsl #10
    50c8:	46964694 			@ <UNDEFINED> instruction: 0x46964694
    50cc:	bf223920 	svclt	0x00223920
    50d0:	500ce8a0 	andpl	lr, ip, r0, lsr #17
    50d4:	500ce8a0 	andpl	lr, ip, r0, lsr #17
    50d8:	0120f1b1 	msreq	CPSR_, r1	@ <illegal shifter operand>
    50dc:	aff7f4bf 	svcge	0x00f7f4bf
    50e0:	bf280709 	svclt	0x00280709
    50e4:	500ce8a0 	andpl	lr, ip, r0, lsr #17
    50e8:	c00cbf48 	andgt	fp, ip, r8, asr #30
    50ec:	eb04f85d 	bl	0x143268
    50f0:	bf280089 	svclt	0x00280089
    50f4:	2b04f840 	blcs	0x1431fc
    50f8:	4770bf08 	ldrbmi	fp, [r0, -r8, lsl #30]!
    50fc:	f820bf48 			@ <UNDEFINED> instruction: 0xf820bf48
    5100:	f0112b02 			@ <UNDEFINED> instruction: 0xf0112b02
    5104:	bf184f80 	svclt	0x00184f80
    5108:	2b01f800 	blcs	0x83110
    510c:	00004770 	andeq	r4, r0, r0, ror r7
    5110:	e3a00000 	mov	r0, #0
    5114:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    5118:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    511c:	e3800a01 	orr	r0, r0, #4096	@ 0x1000
    5120:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    5124:	e1a0f00e 	mov	pc, lr
    5128:	e3a00000 	mov	r0, #0
    512c:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    5130:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    5134:	e3c00004 	bic	r0, r0, #4
    5138:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    513c:	e1a0f00e 	mov	pc, lr
    5140:	e3a00000 	mov	r0, #0
    5144:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    5148:	e1a0f00e 	mov	pc, lr
    514c:	e1a0f000 	mov	pc, r0
    5150:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
    5154:	e1a0f00e 	mov	pc, lr
    5158:	ee130f10 	mrc	15, 0, r0, cr3, cr0, {0}
    515c:	e59f001c 	ldr	r0, [pc, #28]	@ 0x5180
    5160:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
    5164:	e1a0f00e 	mov	pc, lr
    5168:	e3a00000 	mov	r0, #0
    516c:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
    5170:	e1a0f00e 	mov	pc, lr
    5174:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
    5178:	e3800040 	orr	r0, r0, #64	@ 0x40
    517c:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
    5180:	55555555 	ldrbpl	r5, [r5, #-1365]	@ 0xfffffaab
    5184:	00002710 	andeq	r2, r0, r0, lsl r7
    5188:	000186a0 	andeq	r8, r1, r0, lsr #13
    518c:	000f4240 	andeq	r4, pc, r0, asr #4
    5190:	00989680 	addseq	r9, r8, r0, lsl #13
    5194:	00000000 	andeq	r0, r0, r0
    5198:	0000000a 	andeq	r0, r0, sl
    519c:	0000000c 	andeq	r0, r0, ip
    51a0:	0000000d 	andeq	r0, r0, sp
    51a4:	0000000f 	andeq	r0, r0, pc
    51a8:	00000014 	andeq	r0, r0, r4, lsl r0
    51ac:	00000019 	andeq	r0, r0, r9, lsl r0
    51b0:	0000001e 	andeq	r0, r0, lr, lsl r0
    51b4:	00000023 	andeq	r0, r0, r3, lsr #32
    51b8:	00000028 	andeq	r0, r0, r8, lsr #32
    51bc:	0000002d 	andeq	r0, r0, sp, lsr #32
    51c0:	00000032 	andeq	r0, r0, r2, lsr r0
    51c4:	00000037 	andeq	r0, r0, r7, lsr r0
    51c8:	0000003c 	andeq	r0, r0, ip, lsr r0
    51cc:	00000046 	andeq	r0, r0, r6, asr #32
    51d0:	00000050 	andeq	r0, r0, r0, asr r0
    51d4:	00000228 	andeq	r0, r0, r8, lsr #4
    51d8:	00000003 	andeq	r0, r0, r3
    51dc:	0000bb7b 	andeq	fp, r0, fp, ror fp
    51e0:	00000001 	andeq	r0, r0, r1
    51e4:	01102400 	tsteq	r0, r0, lsl #8
    51e8:	00000000 	andeq	r0, r0, r0
    51ec:	00001a50 	andeq	r1, r0, r0, asr sl
    51f0:	00000004 	andeq	r0, r0, r4
    51f4:	00000010 	andeq	r0, r0, r0, lsl r0
    51f8:	00000000 	andeq	r0, r0, r0
    51fc:	0ab83def 	beq	0xfee149c0
    5200:	06052080 	streq	r2, [r5], -r0, lsl #1
    5204:	0000d034 	andeq	sp, r0, r4, lsr r0
    5208:	448c5533 	strmi	r5, [ip], #1331	@ 0x533
    520c:	08010d00 	stmdaeq	r1, {r8, sl, fp}
    5210:	0340b20f 	movteq	fp, #527	@ 0x20f
    5214:	20d118cc 	sbcscs	r1, r1, ip, asr #17
    5218:	14062485 	strne	r2, [r6], #-1157	@ 0xfffffb7b
    521c:	220d1d52 	andcs	r1, sp, #5248	@ 0x1480
    5220:	1e078c22 	cdpne	12, 0, cr8, cr7, cr2, {1}
    5224:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
    5230:	00030000 	andeq	r0, r3, r0
	...
    523c:	33323130 	teqcc	r2, #48, 2
    5240:	37363534 			@ <UNDEFINED> instruction: 0x37363534
    5244:	62613938 	rsbvs	r3, r1, #56, 18	@ 0xe0000
    5248:	66656463 	strbtvs	r6, [r5], -r3, ror #8
	...
    5254:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5258:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    525c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5260:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5264:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5268:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    526c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5270:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5274:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5278:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    527c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5280:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5284:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5288:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    528c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5290:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5294:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5298:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    529c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    52fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5300:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5304:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5308:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    530c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5310:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5314:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5318:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    531c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5320:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5324:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5328:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    532c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5330:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5334:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5338:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    533c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5340:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5344:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5348:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    534c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5350:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5354:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5358:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    535c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5360:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5364:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5368:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    536c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5370:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5374:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5378:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    537c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5380:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5384:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5388:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    538c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5390:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5394:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5398:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    539c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    53fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5400:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5404:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5408:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    540c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5410:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5414:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5418:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    541c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5420:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5424:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5428:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    542c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5430:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5434:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5438:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    543c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5440:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5444:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5448:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    544c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5450:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5454:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5458:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    545c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5460:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5464:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5468:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    546c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5470:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5474:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5478:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    547c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5480:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5484:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5488:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    548c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5490:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5494:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5498:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    549c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    54fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5500:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5504:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5508:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    550c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5510:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5514:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5518:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    551c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5520:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5524:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5528:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    552c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5530:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5534:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5538:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    553c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5540:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5544:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5548:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    554c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5550:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5554:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5558:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    555c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5560:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5564:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5568:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    556c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5570:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5574:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5578:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    557c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5580:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5584:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5588:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    558c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5590:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5594:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5598:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    559c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    55fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5600:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5604:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5608:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    560c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5610:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5614:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5618:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    561c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5620:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5624:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5628:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    562c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5630:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5634:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5638:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    563c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5640:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5644:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5648:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    564c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5650:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5654:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5658:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    565c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5660:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5664:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5668:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    566c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5670:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5674:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5678:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    567c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5680:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5684:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5688:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    568c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5690:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5694:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5698:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    569c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    56fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5700:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5704:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5708:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    570c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5710:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5714:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5718:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    571c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5720:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5724:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5728:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    572c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5730:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5734:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5738:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    573c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5740:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5744:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5748:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    574c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5750:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5754:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5758:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    575c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5760:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5764:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5768:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    576c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5770:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5774:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5778:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    577c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5780:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5784:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5788:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    578c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5790:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5794:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5798:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    579c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    57fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5800:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5804:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5808:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    580c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5810:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5814:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5818:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    581c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5820:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5824:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5828:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    582c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5830:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5834:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5838:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    583c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5840:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5844:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5848:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    584c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5850:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5854:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5858:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    585c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5860:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5864:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5868:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    586c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5870:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5874:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5878:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    587c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5880:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5884:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5888:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    588c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5890:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5894:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5898:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    589c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    58fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5900:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5904:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5908:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    590c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5910:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5914:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5918:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    591c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5920:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5924:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5928:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    592c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5930:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5934:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5938:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    593c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5940:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5944:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5948:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    594c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5950:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5954:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5958:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    595c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5960:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5964:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5968:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    596c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5970:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5974:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5978:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    597c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5980:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5984:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5988:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    598c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5990:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5994:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5998:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    599c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    59fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5a9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5aa0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5aa4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5aa8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5aac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ab0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ab4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ab8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5abc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ac0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ac4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ac8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5acc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ad0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ad4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ad8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5adc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ae0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ae4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ae8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5aec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5af0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5af4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5af8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5afc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5b9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ba0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ba4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ba8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5be0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5be4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5be8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bf0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bf4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bf8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5bfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5c9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ca0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ca4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ca8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ccc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ce0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ce4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ce8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cf0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cf4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cf8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5cfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5d9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5da0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5da4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5da8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5db0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5db4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5db8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ddc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5de0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5de4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5de8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5df0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5df4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5df8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5dfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5e9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ea0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ea4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ea8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5eac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5eb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5eb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5eb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ebc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ec0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ec4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ec8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ecc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ed0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ed4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ed8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5edc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ee0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ee4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ee8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5eec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ef0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ef4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ef8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5efc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5f9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fa0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fa4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fa8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fe0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fe4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fe8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5fec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ff0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ff4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ff8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    5ffc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6000:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6004:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6008:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    600c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6010:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6014:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6018:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    601c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6020:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6024:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6028:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    602c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6030:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6034:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6038:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    603c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6040:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6044:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6048:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    604c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6050:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6054:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6058:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    605c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6060:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6064:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6068:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    606c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6070:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6074:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6078:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    607c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6080:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6084:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6088:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    608c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6090:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6094:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6098:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    609c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    60fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6100:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6104:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6108:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    610c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6110:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6114:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6118:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    611c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6120:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6124:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6128:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    612c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6130:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6134:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6138:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    613c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6140:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6144:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6148:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    614c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6150:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6154:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6158:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    615c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6160:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6164:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6168:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    616c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6170:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6174:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6178:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    617c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6180:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6184:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6188:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    618c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6190:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6194:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6198:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    619c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    61fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6200:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6204:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6208:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    620c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6210:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6214:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6218:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    621c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6220:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6224:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6228:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    622c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6230:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6234:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6238:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    623c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6240:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6244:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6248:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    624c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6250:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6254:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6258:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    625c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6260:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6264:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6268:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    626c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6270:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6274:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6278:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    627c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6280:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6284:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6288:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    628c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6290:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6294:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6298:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    629c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    62fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6300:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6304:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6308:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    630c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6310:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6314:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6318:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    631c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6320:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6324:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6328:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    632c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6330:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6334:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6338:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    633c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6340:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6344:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6348:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    634c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6350:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6354:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6358:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    635c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6360:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6364:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6368:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    636c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6370:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6374:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6378:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    637c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6380:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6384:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6388:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    638c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6390:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6394:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6398:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    639c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    63fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6400:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6404:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6408:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    640c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6410:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6414:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6418:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    641c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6420:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6424:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6428:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    642c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6430:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6434:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6438:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    643c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6440:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6444:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6448:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    644c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6450:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6454:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6458:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    645c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6460:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6464:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6468:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    646c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6470:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6474:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6478:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    647c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6480:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6484:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6488:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    648c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6490:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6494:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6498:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    649c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    64fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6500:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6504:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6508:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    650c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6510:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6514:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6518:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    651c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6520:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6524:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6528:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    652c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6530:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6534:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6538:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    653c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6540:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6544:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6548:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    654c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6550:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6554:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6558:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    655c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6560:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6564:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6568:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    656c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6570:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6574:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6578:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    657c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6580:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6584:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6588:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    658c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6590:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6594:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6598:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    659c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    65fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6600:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6604:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6608:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    660c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6610:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6614:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6618:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    661c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6620:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6624:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6628:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    662c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6630:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6634:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6638:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    663c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6640:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6644:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6648:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    664c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6650:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6654:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6658:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    665c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6660:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6664:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6668:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    666c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6670:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6674:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6678:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    667c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6680:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6684:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6688:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    668c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6690:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6694:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6698:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    669c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    66fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6700:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6704:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6708:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    670c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6710:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6714:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6718:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    671c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6720:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6724:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6728:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    672c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6730:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6734:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6738:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    673c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6740:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6744:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6748:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    674c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6750:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6754:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6758:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    675c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6760:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6764:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6768:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    676c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6770:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6774:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6778:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    677c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6780:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6784:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6788:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    678c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6790:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6794:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6798:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    679c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    67fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6800:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6804:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6808:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    680c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6810:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6814:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6818:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    681c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6820:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6824:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6828:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    682c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6830:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6834:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6838:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    683c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6840:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6844:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6848:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    684c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6850:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6854:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6858:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    685c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6860:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6864:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6868:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    686c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6870:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6874:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6878:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    687c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6880:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6884:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6888:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    688c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6890:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6894:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6898:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    689c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    68fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6900:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6904:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6908:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    690c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6910:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6914:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6918:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    691c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6920:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6924:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6928:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    692c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6930:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6934:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6938:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    693c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6940:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6944:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6948:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    694c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6950:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6954:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6958:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    695c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6960:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6964:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6968:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    696c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6970:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6974:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6978:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    697c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6980:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6984:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6988:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    698c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6990:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6994:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6998:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    699c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    69fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6a9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6aa0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6aa4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6aa8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6aac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ab0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ab4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ab8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6abc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ac0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ac4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ac8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6acc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ad0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ad4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ad8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6adc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ae0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ae4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ae8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6aec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6af0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6af4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6af8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6afc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6b9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ba0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ba4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ba8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6be0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6be4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6be8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bf0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bf4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bf8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6bfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6c9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ca0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ca4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ca8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ccc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ce0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ce4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ce8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cf0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cf4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cf8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6cfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6d9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6da0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6da4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6da8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6db0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6db4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6db8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ddc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6de0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6de4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6de8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6df0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6df4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6df8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6dfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6e9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ea0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ea4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ea8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6eac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6eb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6eb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6eb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ebc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ec0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ec4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ec8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ecc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ed0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ed4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ed8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6edc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ee0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ee4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ee8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6eec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ef0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ef4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ef8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6efc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6f9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fa0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fa4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fa8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fe0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fe4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fe8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6fec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ff0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ff4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ff8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    6ffc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7000:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7004:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7008:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    700c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7010:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7014:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7018:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    701c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7020:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7024:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7028:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    702c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7030:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7034:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7038:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    703c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7040:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7044:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7048:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    704c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7050:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7054:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7058:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    705c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7060:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7064:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7068:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    706c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7070:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7074:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7078:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    707c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7080:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7084:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7088:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    708c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7090:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7094:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7098:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    709c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    70fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7100:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7104:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7108:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    710c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7110:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7114:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7118:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    711c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7120:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7124:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7128:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    712c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7130:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7134:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7138:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    713c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7140:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7144:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7148:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    714c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7150:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7154:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7158:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    715c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7160:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7164:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7168:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    716c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7170:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7174:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7178:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    717c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7180:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7184:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7188:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    718c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7190:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7194:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7198:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    719c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    71fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7200:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7204:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7208:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    720c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7210:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7214:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7218:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    721c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7220:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7224:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7228:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    722c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7230:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7234:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7238:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    723c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7240:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7244:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7248:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    724c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7250:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7254:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7258:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    725c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7260:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7264:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7268:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    726c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7270:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7274:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7278:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    727c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7280:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7284:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7288:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    728c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7290:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7294:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7298:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    729c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    72fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7300:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7304:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7308:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    730c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7310:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7314:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7318:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    731c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7320:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7324:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7328:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    732c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7330:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7334:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7338:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    733c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7340:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7344:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7348:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    734c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7350:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7354:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7358:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    735c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7360:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7364:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7368:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    736c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7370:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7374:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7378:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    737c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7380:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7384:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7388:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    738c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7390:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7394:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7398:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    739c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    73fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7400:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7404:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7408:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    740c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7410:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7414:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7418:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    741c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7420:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7424:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7428:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    742c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7430:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7434:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7438:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    743c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7440:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7444:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7448:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    744c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7450:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7454:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7458:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    745c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7460:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7464:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7468:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    746c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7470:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7474:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7478:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    747c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7480:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7484:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7488:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    748c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7490:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7494:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7498:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    749c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    74fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7500:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7504:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7508:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    750c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7510:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7514:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7518:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    751c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7520:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7524:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7528:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    752c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7530:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7534:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7538:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    753c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7540:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7544:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7548:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    754c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7550:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7554:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7558:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    755c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7560:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7564:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7568:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    756c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7570:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7574:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7578:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    757c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7580:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7584:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7588:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    758c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7590:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7594:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7598:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    759c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    75fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7600:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7604:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7608:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    760c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7610:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7614:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7618:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    761c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7620:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7624:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7628:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    762c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7630:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7634:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7638:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    763c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7640:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7644:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7648:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    764c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7650:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7654:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7658:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    765c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7660:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7664:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7668:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    766c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7670:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7674:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7678:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    767c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7680:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7684:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7688:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    768c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7690:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7694:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7698:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    769c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    76fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7700:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7704:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7708:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    770c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7710:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7714:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7718:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    771c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7720:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7724:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7728:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    772c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7730:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7734:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7738:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    773c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7740:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7744:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7748:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    774c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7750:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7754:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7758:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    775c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7760:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7764:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7768:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    776c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7770:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7774:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7778:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    777c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7780:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7784:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7788:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    778c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7790:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7794:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7798:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    779c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    77fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7800:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7804:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7808:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    780c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7810:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7814:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7818:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    781c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7820:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7824:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7828:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    782c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7830:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7834:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7838:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    783c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7840:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7844:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7848:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    784c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7850:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7854:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7858:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    785c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7860:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7864:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7868:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    786c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7870:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7874:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7878:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    787c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7880:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7884:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7888:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    788c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7890:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7894:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7898:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    789c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    78fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7900:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7904:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7908:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    790c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7910:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7914:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7918:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    791c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7920:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7924:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7928:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    792c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7930:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7934:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7938:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    793c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7940:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7944:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7948:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    794c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7950:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7954:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7958:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    795c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7960:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7964:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7968:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    796c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7970:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7974:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7978:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    797c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7980:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7984:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7988:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    798c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7990:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7994:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7998:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    799c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79a0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79a4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79a8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79ac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79b0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79b4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79b8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79bc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79c0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79c4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79c8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79cc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79d0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79d4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79d8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79dc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79e0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79e4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79e8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79ec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79f0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79f4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79f8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    79fc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7a9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7aa0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7aa4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7aa8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7aac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ab0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ab4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ab8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7abc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ac0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ac4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ac8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7acc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ad0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ad4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ad8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7adc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ae0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ae4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ae8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7aec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7af0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7af4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7af8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7afc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7b9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ba0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ba4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ba8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7be0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7be4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7be8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bf0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bf4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bf8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7bfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7c9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ca0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ca4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ca8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ccc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ce0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ce4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ce8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cf0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cf4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cf8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7cfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7d9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7da0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7da4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7da8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7db0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7db4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7db8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ddc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7de0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7de4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7de8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7df0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7df4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7df8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7dfc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7e9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ea0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ea4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ea8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7eac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7eb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7eb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7eb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ebc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ec0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ec4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ec8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ecc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ed0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ed4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ed8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7edc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ee0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ee4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ee8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7eec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ef0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ef4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ef8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7efc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f00:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f04:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f08:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f0c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f10:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f14:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f18:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f1c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f20:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f24:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f28:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f2c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f34:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f38:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f3c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f40:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f44:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f48:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f4c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f50:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f54:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f58:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f5c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f60:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f64:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f68:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f70:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f74:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f78:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f7c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f80:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f84:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f88:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f8c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f90:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f94:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f98:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7f9c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fa0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fa4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fa8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fac:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fb0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fb4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fb8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fbc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fc0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fc4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fc8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fcc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fd0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fd4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fd8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fdc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fe0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fe4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fe8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7fec:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ff0:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ff4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ff8:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
    7ffc:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
