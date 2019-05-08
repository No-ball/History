	.file	"code.f"
	.section .rdata,"dr"
LC0:
	.ascii "code.f\0"
LC1:
	.ascii "(A)"
	.text
	.def	_MAIN__;	.scl	3;	.type	32;	.endef
_MAIN__:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$424, %esp
	movl	$LC0, -400(%ebp)
	movl	$27, -396(%ebp)
	movl	$128, -408(%ebp)
	movl	$5, -404(%ebp)
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_read
	movl	$4, 8(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_transfer_integer
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_read_done
L3:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	jle	L4
	movl	$LC0, -400(%ebp)
	movl	$31, -396(%ebp)
	movl	$LC1, -356(%ebp)
	movl	$3, -352(%ebp)
	movl	$4096, -408(%ebp)
	movl	$5, -404(%ebp)
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_read
	movl	$40, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_transfer_character
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_read_done
	movl	$LC0, -400(%ebp)
	movl	$32, -396(%ebp)
	movl	$LC1, -356(%ebp)
	movl	$3, -352(%ebp)
	movl	$4096, -408(%ebp)
	movl	$6, -404(%ebp)
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_write
	movl	$40, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_transfer_character_write
	leal	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_st_write_done
	movl	-52(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	jmp	L3
L4:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__gfortran_set_args
	movl	$_options.3.3357, 4(%esp)
	movl	$9, (%esp)
	call	__gfortran_set_options
	call	_MAIN__
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
	.align 32
_options.3.3357:
	.long	68
	.long	1023
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	31
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	__gfortran_st_read;	.scl	2;	.type	32;	.endef
	.def	__gfortran_transfer_integer;	.scl	2;	.type	32;	.endef
	.def	__gfortran_st_read_done;	.scl	2;	.type	32;	.endef
	.def	__gfortran_transfer_character;	.scl	2;	.type	32;	.endef
	.def	__gfortran_st_write;	.scl	2;	.type	32;	.endef
	.def	__gfortran_transfer_character_write;	.scl	2;	.type	32;	.endef
	.def	__gfortran_st_write_done;	.scl	2;	.type	32;	.endef
	.def	__gfortran_set_args;	.scl	2;	.type	32;	.endef
	.def	__gfortran_set_options;	.scl	2;	.type	32;	.endef
