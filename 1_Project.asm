#include <stdlib.h>
.data
	str: .space 300
	chDelim: .asciz " "
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%d\n"
	sirb2: .space 400 
	res: .space 400 
	fragment: .space 400
	resatoi: .long 0
.text

.global main

main:
	 
	pushl $str
    	call gets
    	popl %ebx
    
    
    pushl $chDelim
    pushl $str
    call strtok 
    popl %ebx
    popl %ebx
    
    movl %eax, res
    
    movl res, %edi
    lea fragment, %esi  
    xorl %ecx, %ecx
    xorl %eax, %eax
    movb (%edi, %ecx, 1), %al  
    movb %al, (%esi, %ecx, 1)

 
    pushl res
    call atoi  
    popl %ebx
    
   jmp nr
	
et_for:
	
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
    
    cmp $0, %eax
	je exit
	
    movl %eax, res
    
    movl res, %edi
    lea fragment, %esi  
    xorl %ecx, %ecx
    xorl %eax, %eax
    movb (%edi, %ecx, 1), %al
    movb %al, (%esi, %ecx, 1)
    
    pushl res
    call atoi  
    popl %ebx
    
    cmp $0, %eax
     je eoperatie

 jmp nr
	
eoperatie:
	xorl %ecx,%ecx
	cmp $97, (%esi, %ecx, 1)
	je add1
	cmp $100, (%esi, %ecx, 1)
	je div1
	cmp $109, (%esi, %ecx, 1)	
	je mul1
	cmp $115, (%esi, %ecx, 1)	
	je sub1

	
nr: 
pushl %eax
jmp et_for

add1:
popl %eax
popl %ebx

add %ebx, %eax
pushl %eax
jmp et_for

div1:
xorl %edx, %edx
popl %ebx
popl %eax

div %ebx
pushl %eax
jmp et_for

mul1:
popl %ebx
popl %eax

mul %ebx
pushl %eax
jmp et_for

sub1:

popl %ebx
popl %eax
sub %ebx, %eax

pushl %eax
jmp et_for



exit:
	popl %eax
	movl %eax, res
	pushl res
	pushl $formatPrintf
	call printf
	pushl %ebx
	pushl %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
	

