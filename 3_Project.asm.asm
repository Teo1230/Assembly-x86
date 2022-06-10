#include <stdlib.h>
.data
	str: .space 300
	chDelim: .asciz " "
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%d "
	format: .asciz "\n"
	vector: .space 1600 
	nume: .space 1600 
	nrcol: .long 1600
	nrlin: .long 1600
	n: .long 1600
	res: .space 1600
	variabila: .space 1600
	fragment: .space 1600
	op: .space 1600
	index: .space 1600
	colindex: .space 4
	lineindex: .space 4
	matrix: .space 1600
	i: .long 1
	

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
    
    pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 

	movl %eax, nrlin
	
	pushl nrlin
	call atoi
	pushl %ebx
	
	movl %eax, nrlin
	
	pushl $chDelim
   	 pushl $0
   	 call strtok 
   	 popl %ebx
   	 popl %ebx
   			 
	movl %eax, nrcol
	
	pushl nrcol
	call atoi
	pushl %ebx
	movl %eax, nrcol
	
    movl nrcol, %eax
    mull nrlin
    movl %eax, n
    
    xorl %ecx, %ecx
       lea fragment, %esi 
       lea vector, %edi
       
       
       
et_for:
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
    
	
    movl %eax, res
    
    movl res, %edi
    xorl %ecx, %ecx
    xorl %eax, %eax
    movb (%edi, %ecx, 1), %al  
    movb %al, (%esi, %ecx, 1)
    
    cmp $48, %al
    	je pun0
    pushl res
    call atoi  
    popl %ebx
    
    cmp $0, %eax
     je elso

 jmp nr
 pun0:
  pushl res
    call atoi  
    popl %ebx
    pushl %eax
    jmp et_for
 
nr: 
pushl %eax
jmp et_for

elso:
 xorl %ecx,%ecx
	cmp $97, (%esi, %ecx, 1)
	je add1
	cmp $100, (%esi, %ecx, 1)
	je div1
	cmp $109, (%esi, %ecx, 1)	
	je mul1
	cmp $115, (%esi, %ecx, 1)	
	je sub1
	cmp $114, (%esi, %ecx, 1)
	je rot
	cmp $108, (%esi, %ecx, 1)
	je et_for

 rot:
 	movl n, %ebx

	movl %ebx, index
	xorl %ecx, %ecx
	
	jmp et_for6
	
 
 et_for6:
 	cmp n, %ecx
 	je afisare112
 	
 	popl %eax
 	
 	pushl %ecx
 	
 
 	movl index, %ecx
 	
 	  movl $vector, %edi	
 	  
 	movl %eax, (%edi, %ecx,4)
 	subl $1, %ecx
 	movl %ecx, index
 	
 	popl %ecx
 	incl %ecx
 	jmp et_for6
 afisare112:
 pushl nrcol
       pushl $formatPrintf
       call printf
       pushl %ebx
       pushl %ebx
       
 pushl nrlin
       pushl $formatPrintf
       call printf
       pushl %ebx
       pushl %ebx
       jmp afisarerot
       
       
       
 
 afisarerot:
 			movl i, %eax
 			
 		  cmp nrcol, %eax
 		  jg exit
 		  
 		 	movl nrlin, %ecx
 		 	 forlin:
 		 	 pushl %ecx
 		 	 subl $1, %ecx
 		 	 movl nrcol, %eax
 		 	 mull %ecx
 		 	 add i, %eax
 		 	 movl %eax, %ecx
 		 	 movl (%edi,%ecx,4), %eax
 		 	 pushl %eax
 		 	 pushl $formatPrintf
 		 	 call printf
 		 	 popl %ebx
 		 	 popl %ebx
 		 	 popl %ecx
 		 	 loop forlin
 		incl i
 		jmp afisarerot		
 		 		 	
 		
 		
add1:		movl n, %ebx

	movl %ebx, index

	popl %ebx
	
	xorl %ecx, %ecx
	
	jmp et_for1
	
et_for1:
 	cmp n, %ecx
 	je afisare0
 	
 	popl %eax
 	pushl %ecx
 	
 	add %ebx, %eax
 	movl index, %ecx
 	movl %eax, (%edi, %ecx,4)
 	subl $1, %ecx
 	movl %ecx, index
 	
 	popl %ecx
 	incl %ecx
 	jmp et_for1
 	

div1:
	movl n, %ebx
	movl %ebx, index

	popl %ebx
	
	xorl %ecx, %ecx
	
	jmp et_for5

et_for5:
 	cmp n, %ecx
 	je afisare0
 	
 	popl %eax
 	pushl %ecx
 	cdq
 	idivl %ebx
 	movl index, %ecx
 	movl %eax, (%edi, %ecx,4)
 	subl $1, %ecx
 	movl %ecx, index
 	
 	popl %ecx
 	incl %ecx
 	jmp et_for5

sub1:		movl n, %ebx
	movl %ebx, index

	popl %ebx
	
	xorl %ecx, %ecx
	
	jmp et_for3
	
et_for3:
 	cmp n, %ecx
 	je afisare0
 	
 	popl %eax
 	pushl %ecx
 	cdq
 	subl %ebx, %eax
 	movl index, %ecx
 	movl %eax, (%edi, %ecx,4)
 	subl $1, %ecx
 	movl %ecx, index
 	
 	popl %ecx
 	incl %ecx
 	jmp et_for3
 	
mul1:
movl n, %ebx
	movl %ebx, index

	popl %ebx
	
	xorl %ecx, %ecx
	
	jmp et_for4

et_for4:
 	cmp n, %ecx
 	je afisare0
 	
 	popl %eax
 	pushl %ecx
 	cdq
 	imull %ebx
 	movl index, %ecx
 	movl %eax, (%edi, %ecx,4)
 	subl $1, %ecx
 	movl %ecx, index
 	
 	popl %ecx
 	incl %ecx
 	jmp et_for4
afisare0: 
pushl nrlin
       pushl $formatPrintf
       call printf
       pushl %ebx
       pushl %ebx
       
       pushl nrcol
       pushl $formatPrintf
       call printf
       pushl %ebx
       pushl %ebx
       
        
       
movl $1, %ecx
	movl n, %eax
	add $1, %eax
	movl %eax, n
	
	
		jmp afisare1
		
afisare1:
		cmp n, %ecx
		 je exit
		 
		 movl %ecx, index
		 pushl %ecx
		 movl index, %ecx
		 
		 push (%edi, %ecx,4)
		push $formatPrintf
		call printf
		popl %ebx
		popl %ebx
		
		movl index, %eax
		xorl %edx, %edx
		divl nrcol
		cmp $0, %edx
			je back
		
		popl %ecx
		incl %ecx
		jmp afisare1
		 
 back: 
 	 
	pushl $0
	call fflush
	popl %ebx
 	
 	popl %ecx
 	incl %ecx
 	jmp afisare1
 
 
exit:
	pushl $format
 	call printf
 	popl %ebx
 	popl %ecx
  movl $1, %eax
	xorl %ebx, %ebx
	int $0x80

	
	
	
    
