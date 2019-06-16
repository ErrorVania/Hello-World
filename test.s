.text
.global _start



_start:
	
	mov r7,#syscall_write
	mov r0,#1 /* File Descriptor, 1 = Terminal? */
	ldr r1,=str
	mov r2,#4
	svc 0

	mov r7,#syscall_exit
	mov r0,#0 /*Error Code 0*/
	svc 0

.data
	str: .asciz "asm\n"
.equ 	syscall_write, 4
.equ 	syscall_exit, 1


