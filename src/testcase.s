	.file	"../testcase/functional_test/04_const_defn.sy"
	.text
	.align	2
	.global	main
	.arch armv7-a
	.arm
	.type	main, %function
main:
    push       {fp, lr}
    add        fp, sp, #4
    mov        r3, #4
    mov        r0, r3
    sub        sp, fp, #4
    pop        {fp, pc}
	.size	main, .-main
