#include <stdlib.h>
.data
	str: .space 1000
	chDelim: .asciz " "
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%d\n"
	sirb2: .space 400 
	res: .space 400 
	fragment: .space 400
	resatoi: .long 0
	vector : .long 0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 ,0 ,0,0 
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
     movl $vector, %edi
    xorl %ecx, %ecx
    
    pushl res
    	call atoi  
    	popl %ebx
    	
    	cmp $0, %eax
    	jg nr
    
    cmp $97, (%esi, %ecx, 1)
     je lita
     
    cmp $98, (%esi, %ecx, 1)
     je litb
     cmp $99, (%esi, %ecx, 1)
     je litc
     cmp $100, (%esi, %ecx, 1)
     je litd
     cmp $101, (%esi, %ecx, 1)
     je lite
     cmp $102, (%esi, %ecx, 1)
     je litf
     cmp $103, (%esi, %ecx, 1)
     je litg
     cmp $104, (%esi, %ecx, 1)
     je lith
     cmp $105, (%esi, %ecx, 1)
     je liti
     cmp $106, (%esi, %ecx, 1)
     je litj
     cmp $107, (%esi, %ecx, 1)
     je litk
     cmp $108, (%esi, %ecx, 1)
     je litl
     cmp $109, (%esi, %ecx, 1)
     je litm
     cmp $110, (%esi, %ecx, 1)
     je litn
     cmp $111, (%esi, %ecx, 1)
     je lito
     cmp $112, (%esi, %ecx, 1)
     je litp
     cmp $113, (%esi, %ecx, 1)
     je litq
     cmp $114, (%esi, %ecx, 1)
     je litr
     cmp $115, (%esi, %ecx, 1)
     je lits
     cmp $116, (%esi, %ecx, 1)
     je litt
     cmp $117, (%esi, %ecx, 1)
     je litu
     cmp $118, (%esi, %ecx, 1)
     je litv
     cmp $119, (%esi, %ecx, 1)
     je litw
     cmp $120, (%esi, %ecx, 1)
     je litx
     cmp $121, (%esi, %ecx, 1)
     je lity
     cmp $122, (%esi, %ecx, 1)
     je litz
  
lita:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $97, %ecx
    	movl %eax, (%edi, %ecx, 4)
    	
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
    
	
litb:pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $98, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litc:
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $99, %ecx
    	movl %eax, (%edi, %ecx, 4)
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litd:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $100, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
lite:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $101, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litf:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $102, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litg:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $103, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
lith:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $104, %ecx
    	movl %eax, (%edi, %ecx, 4)
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
liti:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $105, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litj:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi   
    	popl %ebx
    	movl $vector, %edi
    	movl $106, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litk:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $107, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litl:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $108, %ecx
    	movl %eax, (%edi, %ecx, 4)

    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litm:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $109, %ecx
    	movl %eax, (%edi, %ecx, 4)
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litn:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $110, %ecx
    	movl %eax, (%edi, %ecx, 4)
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
lito:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $111, %ecx
    	movl %eax, (%edi, %ecx, 4)
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litp:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $112, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litq:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi  
    	popl %ebx
    	movl $vector, %edi
    	movl $113, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litr:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $114, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
lits:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $115, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litt:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $116, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
    		
litu:	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $117, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litv:pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $118, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litw:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $119, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litx:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $120, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
lity:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $121, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
litz:
pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	movl %eax, res
	   pushl res
    	call atoi 
    	popl %ebx
    	movl $vector, %edi
    	movl $122, %ecx
    	movl %eax, (%edi, %ecx, 4)
 
    	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
    		jmp et_for
	
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
    incl %ecx
    movb (%edi, %ecx, 1), %bl  
    movb %bl, (%esi, %ecx, 1)
 
    xorl %ecx, %ecx
    movl $vector, %edi
    
      cmp $97, %eax
     je lita1
     
    cmp $98, %eax
     je litb1
     cmp $99, %eax
     je litc1
     cmp $100, %eax
     je litd1
     cmp $101, %eax
     je lite1
     cmp $102, %eax
     je litf1
     cmp $103, %eax
     je litg1
     cmp $104, %eax
     je lith1
     cmp $105, %eax
     je liti1
     cmp $106, %eax
     je litj1
     cmp $107, %eax
     je litk1
     cmp $108, %eax
     je litl1
     cmp $109, %eax
     je litm1
     cmp $110, %eax
     je litn1
     cmp $111, %eax
     je lito1
     cmp $112, %eax
     je litp1
     cmp $113, %eax
     je litq1
     cmp $114, %eax
     je litr1
     cmp $115, %eax
     je lits1
     cmp $116, %eax
     je litt1
     cmp $117, %eax
     je litu1
     cmp $118, %eax
     je litv1
     cmp $119, %eax
     je litw1
     cmp $120, %eax
     je litx1
     cmp $121, %eax
     je lity1
     cmp $122, %eax
     je litz1
     
    pushl res
    call atoi 
    popl %ebx

 jmp nr
lita1:	movl $vector, %edi
	 
	cmp $100, %bl
		je add1
		
	 
	movl $97, %ecx
	cmp $0, (%edi, %ecx,4)
	je puna
pushl (%edi, %ecx,4)
jmp et_for

puna: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $97, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
    
litb1: movl $vector, %edi
movl $98, %ecx
	cmp $0, (%edi, %ecx,4)
	je punb
	
pushl (%edi, %ecx,4)
jmp et_for

punb: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $98, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litc1:
movl $vector, %edi
movl $99, %ecx
	cmp $0, (%edi, %ecx,4)
	je punc
pushl (%edi, %ecx,4)
jmp et_for

punc: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $99, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litd1:movl $vector, %edi
	movl $1, %ecx
	cmp $105, %bl
		je div1
	
movl $100, %ecx
	cmp $0, (%edi, %ecx,4)
	je pund
pushl (%edi, %ecx,4)
jmp et_for

pund: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $100, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
    
    
lite1:movl $vector, %edi
movl $101, %ecx
	cmp $0, (%edi, %ecx,4)
	je pune
pushl (%edi, %ecx,4)
jmp et_for

pune: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $101, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litf1:movl $vector, %edi
movl $102, %ecx
	cmp $0, (%edi, %ecx,4)
	je punf
pushl (%edi, %ecx,4)
jmp et_for

punf: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $102, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litg1:movl $vector, %edi
movl $103, %ecx
	cmp $0, (%edi, %ecx,4)
	je pung
pushl (%edi, %ecx,4)
jmp et_for

pung: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $103, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
lith1:movl $vector, %edi
movl $104, %ecx
	cmp $0, (%edi, %ecx,4)
	je punh
pushl (%edi, %ecx,4)
jmp et_for

punh: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $104, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
liti1:movl $vector, %edi
movl $105, %ecx
	cmp $0, (%edi, %ecx,4)
	je puni
pushl (%edi, %ecx,4)
jmp et_for

puni: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $105, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litj1:movl $vector, %edi
movl $106, %ecx
	cmp $0, (%edi, %ecx,4)
	je punj
pushl (%edi, %ecx,4)
jmp et_for

punj: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $106, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litk1:movl $vector, %edi
movl $107, %ecx
	cmp $0, (%edi, %ecx,4)
	je punk
pushl (%edi, %ecx,4)
jmp et_for

punk: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $107, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litl1:movl $vector, %edi
	movl $1, %ecx
	cmp $101, %bl
		je et_for
		
movl $108, %ecx
	cmp $0, (%edi, %ecx,4)
	je punl
pushl (%edi, %ecx,4)
jmp et_for

punl: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $108, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litm1:movl $vector, %edi
	movl $1, %ecx
	cmp $117, %bl
		je mul1
	
	movl $109, %ecx
	cmp $0, (%edi, %ecx,4)
	je punm
pushl (%edi, %ecx,4)
jmp et_for

punm: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $109, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litn1:movl $vector, %edi
movl $110, %ecx
	cmp $0, (%edi, %ecx,4)
	je punn
pushl (%edi, %ecx,4)
jmp et_for

punn: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $110, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
lito1:movl $vector, %edi
movl $111, %ecx
	cmp $0, (%edi, %ecx,4)
	je puno
pushl (%edi, %ecx,4)
jmp et_for

puno: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $111, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litp1:movl $vector, %edi

movl $112, %ecx
	cmp $0, (%edi, %ecx,4)
	je punp
pushl (%edi, %ecx,4)
jmp et_for

punp: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $112, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litq1:movl $vector, %edi
movl $113, %ecx
	cmp $0, (%edi, %ecx,4)
	je punq
pushl (%edi, %ecx,4)
jmp et_for

punq: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $113, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litr1:movl $vector, %edi
movl $114, %ecx
	cmp $0, (%edi, %ecx,4)
	je punr
pushl (%edi, %ecx,4)
jmp et_for

punr: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $114, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
lits1:movl $vector, %edi
	movl $1, %ecx
	cmp $117, %bl
		je sub1
	
movl $115, %ecx
	cmp $0, (%edi, %ecx,4)
	je puns
pushl (%edi, %ecx,4)
jmp et_for

puns: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $115, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litt1:movl $vector, %edi
movl $116, %ecx
	cmp $0, (%edi, %ecx,4)
	je punt
pushl (%edi, %ecx,4)
jmp et_for

punt: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $116, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litu1:movl $vector, %edi
movl $117, %ecx
	cmp $0, (%edi, %ecx,4)
	je punu
pushl (%edi, %ecx,4)
jmp et_for

punu: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $117, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litv1:movl $vector, %edi
movl $118, %ecx
	cmp $0, (%edi, %ecx,4)
	je punv
pushl (%edi, %ecx,4)
jmp et_for

punv: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $118, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
litw1:movl $vector, %edi
movl $119, %ecx
	cmp $0, (%edi, %ecx,4)
	je punw
pushl (%edi, %ecx,4)
jmp et_for

punw: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $119, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
    
litx1:

movl $vector, %edi
movl $120, %ecx
	cmp $0, (%edi, %ecx,4)
	je punx
movl (%edi, %ecx,4), %eax
 pushl %eax
 
jmp et_for

punx: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $120, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
lity1:
movl $vector, %edi

movl $121, %ecx
	cmp $0, (%edi, %ecx,4)
	je puny
	
pushl (%edi, %ecx,4)
jmp et_for

puny: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    
    movl $vector, %edi
    movl $121, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
    
litz1:movl $vector, %edi
movl $122, %ecx
	cmp $0, (%edi, %ecx,4)
	je punz
pushl (%edi, %ecx,4)
jmp et_for

punz: 

pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
        movl %eax, res
      
        pushl res
    call atoi 
    popl %ebx
    movl $vector, %edi
    movl $122, %ecx
    movl %eax, (%edi, %ecx, 4)
    jmp et_for
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
	

