	.file	"rsaCryptography.c"
	.text
	.section	.rodata
.LC0:
	.string	"%5x"
	.text
	.globl	printArray
	.type	printArray, @function
printArray:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	cmpl	$0, -4(%rbp)
	je	.L3
	movl	-4(%rbp), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L3
	movl	$10, %edi
	call	putchar@PLT
.L3:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L2:
	cmpl	$1023, -4(%rbp)
	jbe	.L4
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	printArray, .-printArray
	.globl	MMM
	.type	MMM, @function
MMM:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$0, %ebx
	movl	$0, %r12d
	jmp	.L6
.L7:
	movl	%edx, %edi
	movl	%r12d, %ecx
	shrl	%cl, %edi
	movl	%edi, %ecx
	andl	%eax, %ecx
	xorl	%ebx, %ecx
	andl	$1, %ecx
	movl	%ecx, %r13d
	movl	%edx, %esi
	movl	%r12d, %ecx
	shrl	%cl, %esi
	movl	%esi, %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	imull	%eax, %esi
	imull	$77837, %r13d, %ecx
	addl	%esi, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	shrl	%ebx
	addl	$1, %r12d
.L6:
	cmpl	$16, %r12d
	jbe	.L7
	cmpl	$77836, %ebx
	jbe	.L8
	subl	$77837, %ebx
.L8:
	movl	%ebx, %eax
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	MMM, .-MMM
	.globl	encrypt
	.type	encrypt, @function
encrypt:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L11
.L14:
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -8(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$17, -20(%rbp)
	jmp	.L12
.L13:
	movl	-16(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -24(%rbp)
	subl	$1, -20(%rbp)
.L12:
	cmpl	$0, -20(%rbp)
	jne	.L13
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$2, -40(%rbp)
.L11:
	cmpl	$1023, -40(%rbp)
	jbe	.L14
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	encrypt, .-encrypt
	.globl	decrypt
	.type	decrypt, @function
decrypt:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L16
.L19:
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -8(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$32537, -20(%rbp)
	jmp	.L17
.L18:
	movl	-16(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$75729, %esi
	movl	%eax, %edi
	call	MMM
	movl	%eax, -24(%rbp)
	subl	$1, -20(%rbp)
.L17:
	cmpl	$0, -20(%rbp)
	jne	.L18
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$2, -40(%rbp)
.L16:
	cmpl	$1023, -40(%rbp)
	jbe	.L19
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	decrypt, .-decrypt
	.section	.rodata
	.align 8
.LC1:
	.string	"*******************************************************************"
.LC2:
	.string	"Original:"
.LC3:
	.string	"Encrypt:"
.LC4:
	.string	"Decrypt:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8224, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-8208(%rbp), %rdx
	movl	$0, %eax
	movl	$512, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-4112(%rbp), %rdx
	movl	$0, %eax
	movl	$512, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$0, -8212(%rbp)
	jmp	.L21
.L22:
	movl	-8212(%rbp), %eax
	movl	$0, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$1, %eax
	movl	$1, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$2, %eax
	movl	$2, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$3, %eax
	movl	$3, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$4, %eax
	movl	$4, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$5, %eax
	movl	$5, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$6, %eax
	movl	$6, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$7, %eax
	movl	$7, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$8, %eax
	movl	$8, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$9, %eax
	movl	$9, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$10, %eax
	movl	$10, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$11, %eax
	movl	$11, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$12, %eax
	movl	$12, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$13, %eax
	movl	$13, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$14, %eax
	movl	$14, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$15, %eax
	movl	$15, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$16, %eax
	movl	$65535, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$17, %eax
	movl	$6682, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$18, %eax
	movl	$11051, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$19, %eax
	movl	$15420, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$20, %eax
	movl	$19789, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$21, %eax
	movl	$24158, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$22, %eax
	movl	$28527, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$23, %eax
	movl	$31354, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$24, %eax
	movl	$35723, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$25, %eax
	movl	$40092, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$26, %eax
	movl	$44461, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$27, %eax
	movl	$48830, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$28, %eax
	movl	$53199, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$29, %eax
	movl	$53970, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$30, %eax
	movl	$58339, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$31, %eax
	movl	$62708, -8208(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	movl	$0, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$1, %eax
	movl	$1, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$2, %eax
	movl	$2, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$3, %eax
	movl	$3, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$4, %eax
	movl	$4, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$5, %eax
	movl	$5, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$6, %eax
	movl	$6, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$7, %eax
	movl	$7, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$8, %eax
	movl	$8, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$9, %eax
	movl	$9, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$10, %eax
	movl	$10, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$11, %eax
	movl	$11, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$12, %eax
	movl	$12, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$13, %eax
	movl	$13, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$14, %eax
	movl	$14, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$15, %eax
	movl	$15, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$16, %eax
	movl	$65535, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$17, %eax
	movl	$6682, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$18, %eax
	movl	$11051, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$19, %eax
	movl	$15420, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$20, %eax
	movl	$19789, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$21, %eax
	movl	$24158, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$22, %eax
	movl	$28527, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$23, %eax
	movl	$31354, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$24, %eax
	movl	$35723, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$25, %eax
	movl	$40092, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$26, %eax
	movl	$44461, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$27, %eax
	movl	$48830, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$28, %eax
	movl	$53199, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$29, %eax
	movl	$53970, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$30, %eax
	movl	$58339, -4112(%rbp,%rax,4)
	movl	-8212(%rbp), %eax
	addl	$31, %eax
	movl	$62708, -4112(%rbp,%rax,4)
	addl	$32, -8212(%rbp)
.L21:
	cmpl	$1023, -8212(%rbp)
	jbe	.L22
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	-4112(%rbp), %rax
	movq	%rax, %rdi
	call	printArray
	leaq	-4112(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	encrypt
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	-4112(%rbp), %rax
	movq	%rax, %rdi
	call	printArray
	leaq	-4112(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	decrypt
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	-4112(%rbp), %rax
	movq	%rax, %rdi
	call	printArray
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
