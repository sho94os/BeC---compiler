	.arch armv7-a
	.file	"test_ifandarray.c"
	.text
	.align	2
	.global	main
	.arm
	.type	main, %function
main:
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r3, #22
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	ble	.L2
	mov	r3, #33
	str	r3, [fp, #-24]
	mov	r3, #35
	str	r3, [fp, #-16]
.L2:
	mov	r3, #0
	mov	r0, r3
	add	sp, fp, #0
	ldr	fp, [sp], #4
	bx	lr
