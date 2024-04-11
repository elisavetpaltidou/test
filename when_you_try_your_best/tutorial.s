	.file	"tutorial.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_v1p0_zvamo1p0_zvlsseg1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	li	a5,123457536
	addi	a5,a5,-747
	sw	a5,-20(s0)
	li	a5,987656192
	addi	a5,a5,-1871
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	mul	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	bge	a5,zero,.L2
	li	a5,-1
	j	.L3
.L2:
	li	a5,0
.L3:
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
