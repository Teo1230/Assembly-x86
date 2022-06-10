#include <stdlib.h>
.data
	str: .space 300
	chDelim: .asciz " "
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%d "
	minus1: .asciz "-1\n"
	format:.asciz "\n"
	vector : .long 0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 
	res: .space 1600
	m: .space 100
	n: .space 100
	n3: .space 100
	k: .long 1
	ok: .long 0
	x : .long 0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 
	ebun: .long 1
	elementx: .long 1
	elementv: .long 1
	poz: .long 1
	poz1: .long 1
	contor: .long 1 
	con: .long 1
	at: .long 1

.text

.global main
// lista reg. de restaurat: %ebx, %esi, %edi, %ebp, %esp


validare:
pushl %ebp
	movl %esp, %ebp
	
	movl 8(%ebp), %ecx 
	movl %ecx, contor
	
	movl 12(%ebp),%edx
	movl %edx,poz1
	
	pushl %edi
	
	lea x, %edi
	cmp $3, (%edi,%ecx,4)
	je return000
	
	movl poz1, %ecx
	subl $1, %ecx
	movl poz1, %eax
	subl m, %eax
	lea vector, %edi
	etfor21:
		cmp %eax, %ecx
		jl mauitdreapta
		cmp $0, %ecx
		je mauitdreapta
		
		movl (%edi,%ecx,4),%edx
		cmp contor, %edx
		je return000
		subl $1, %ecx
		jmp etfor21
	
mauitdreapta:
	movl poz1, %ecx
	movl poz1, %eax
	addl m, %eax
	
	etfor23:
		cmp %eax, %ecx
		jg return111
	
		cmp n3, %ecx
		jg return111
		
		movl (%edi,%ecx,4),%edx
		cmp contor, %edx
		je return000
		
		addl $1, %ecx
		jmp etfor23	
		
return111:
movl $1,%eax
popl %edi
popl %ebp
ret	
return000:
movl $0,%eax
popl %edi
popl %ebp
ret

pozitie0:
	 pushl %ebp
	movl %esp, %ebp
	pushl %edi

	movl $1,%ecx
	lea vector, %edi
	etfor:
		cmp n3, %ecx
		jg return0
		
		cmp $0, (%edi, %ecx,4)
		je returnpoz
		incl %ecx
		jmp etfor
returnpoz:
movl %ecx, %eax
popl %edi
popl %ebp
ret

return0:
movl $0, %eax

popl %edi
popl %ebp
ret
 rezovla:
 	 pushl %ebp
	movl %esp, %ebp
	
	call pozitie0 
	
	cmp $0, %eax
	je return11
	movl $1,%ecx
	movl %eax, poz
	etfor1:
		cmp n,%ecx
		jg return00
		 
		pushl poz
		pushl %ecx
		call validare
		popl %ecx
		popl %edx
		 
		
		cmp $0, %eax
		jg vad
		
		incl %ecx
		jmp etfor1
		
vad:
	movl poz, %edx
	movl %ecx, at
	lea vector, %edi
	movl %ecx, (%edi, %edx, 4)
	lea x, %edi
	addl $1, (%edi, %ecx,4)
	
	pushl %ecx
	pushl poz
	
 	call rezovla
 	
	popl %edx
	popl %ecx
	
	cmp $1, %eax
	je return11
	
	lea x, %edi
	subl  $1, (%edi, %ecx,4)
	lea vector, %edi
	movl $0, (%edi, %edx,4)
	
	incl %ecx
	jmp etfor1 
	
return00:

movl $0, %eax
popl %ebp
ret
	
return11:

movl $1, %eax
popl %ebp
ret


main:
	 
	pushl $str
    	call gets
    	popl %ebx
    
    pushl $chDelim
    pushl $str
    call strtok 
    popl %ebx
    popl %ebx
     
     movl %eax,n
     pushl n
     call atoi
     popl %ebx
     movl %eax,n
     
    pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 

	movl %eax, m
	
	pushl m
	call atoi
	pushl %ebx
	
	movl %eax, m
	
	cmp  %eax,n
	jle afisezminus1
	
	movl n, %eax
	movl $3, %ebx
    	mull %ebx
      	movl %eax,n3
     
       lea vector, %edi
       xorl %ecx, %ecx
       movl $1, %ecx
et_for:
	cmp n3, %ecx
	jg pregatescapelare
	
	pushl %ecx
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
		
	

    	movl %eax, res
    	pushl res
    	call atoi
    	popl %ebx
    	popl %ecx 
    	

    	lea vector, %edi	 	
    	movl %eax, (%edi, %ecx,4)
    	
    	cmp $0, %eax
    	jg crescfrecv
    	
    	jmp cont
    	
crescfrecv:
	lea x, %edi
	addl $1, (%edi,%eax,4)
	jmp cont
cont:
	incl %ecx
	jmp et_for
	
	
pregatescapelare:

 call rezovla
 
 cmp $0, %eax
 je afisezminus1
 
 
 afisare:

	movl $1, %ecx
	lea vector, %edi
	
	fore:	
	cmp n3, %ecx
	jg exit
	
	pushl %ecx
	pushl (%edi,%ecx,4)
	pushl $formatPrintf
	call printf
	
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	incl %ecx
	jmp fore


exit:
	pushl $format
	call printf
	popl %ebx
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80



 

afisezminus1:
	 movl $4, %eax
	 mov $1, %ebx
	 mov $minus1, %ecx
	 movl $4,%edx
	 int $0x80
 	jmp exit
 			

