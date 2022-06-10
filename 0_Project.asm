.data
	sirb16: .space 100 
	sirb2: .space 400 
	formatScanf: .asciz "%s"
	formatPrintf: .asciz "%s\n"
	suma: .long 0
	indexSb2: .long 0
.text

.global main

main:
 
	pushl $sirb16
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx
	
	movl $sirb16, %edi			 
	movl $sirb2, %esi			 
	xorl %ecx, %ecx
et_for:
	movb (%edi, %ecx, 1), %al 
	cmp $0, %al 
	je exit 
	
	cmp $65, %al
	je litA

	cmp $67, %al
	je litC
	
	cmp $56, %al
	je alcnumar
	
	cmp $57, %al
	je nrminus
nrminus:

	
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $45, (%esi, %ecx, 1)
	incl %ecx
	add $1, indexSb2
	popl %ecx
	add $3, %ecx
	movb (%edi, %ecx, 1), %al 	
	
	cmp $65, %al
	 je formarenr2
	cmp $67, %al
	je formarenr2
	cmp $56, %al
	 je formarenr2
	 cmp $57, %al
	 je formarenr2
	  cmp $0, %al
	 je formarenr2
	 
	 sub $3, %ecx
	add $4, %ecx
	movb (%edi, %ecx, 1), %al 	
	
	cmp $65, %al
	 je formarenr3
	 cmp $56, %al
	 je formarenr3
	 cmp $57, %al
	 je formarenr3
	cmp $67, %al
	 je formarenr3
	 cmp $0, %al
	 je formarenr3
alcnumar: 
	
	add $3, %ecx
	movb (%edi, %ecx, 1), %al 	
	
	cmp $65, %al
	 je formarenr2
	cmp $67, %al
	je formarenr2
	cmp $56, %al
	 je formarenr2
	 cmp $57, %al
	 je formarenr2
	  cmp $0, %al
	 je formarenr2
	 
	 sub $3, %ecx
	add $4, %ecx
	movb (%edi, %ecx, 1), %al 	
	
	cmp $65, %al
	 je formarenr3
	 cmp $56, %al
	 je formarenr3
	 cmp $57, %al
	 je formarenr3
	cmp $67, %al
	 je formarenr3
	 cmp $0, %al
	 je formarenr3
	
	
formarenr3: 

	sub $3, %ecx
	movb (%edi, %ecx, 1), %al 	
		
	cmp $49, %al
	je sarlaurmatorul
	
formarenr2:
	sub $2, %ecx
	movb (%edi, %ecx, 1), %al 	
	
	cmp $48, %al
	 je nr1
	 cmp $49, %al
	 je nr2
	 cmp $50, %al
	 je nr3
	 cmp $51, %al
	 je nr4
	 cmp $52, %al
	 je nr5
	 cmp $53, %al
	 je nr6
	 cmp $54, %al
	 je nr7
	 cmp $55, %al
	 je nr8
	 cmp $56, %al
	 je nr9
	 cmp $57, %al
	 je nr10
	 
	 cmp $65, %al
	 je nr11
	 cmp $66, %al
	 je nr12
	 cmp $67, %al
	 je nr13
	 cmp $68, %al
	 je nr14
	 cmp $69, %al
	 je nr15
  	  cmp $70, %al
	  je nr16
	  
nr16:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a1111111111111
	 cmp $49, %al
	 je b1111111111111
	 cmp $50, %al
	 je c1111111111111
	 cmp $51, %al
	 je d1111111111111
	 cmp $52, %al
	 je e1111111111111
	 cmp $53, %al
	 je f1111111111111
	 cmp $54, %al
	 je g1111111111111
	 cmp $55, %al
	 je h1111111111111
	 cmp $56, %al
	 je i1111111111111
	 cmp $57, %al
	 je j1111111111111
	 
	 cmp $65, %al
	 je k1111111111111
	 cmp $66, %al
	 je l1111111111111
	 cmp $67, %al
	 je m1111111111111
	 cmp $68, %al
	 je r1111111111111
	 cmp $69, %al
	 je o1111111111111
  	  cmp $70, %al
	  je p1111111111111
a1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

b1111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

c1111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

d1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

e1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

f1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

g1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

h1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

i1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

j1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

k1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

l1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p1111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr15:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a111111111111
	 cmp $49, %al
	 je b111111111111
	 cmp $50, %al
	 je c111111111111
	 cmp $51, %al
	 je d111111111111
	 cmp $52, %al
	 je e111111111111
	 cmp $53, %al
	 je f111111111111
	 cmp $54, %al
	 je g111111111111
	 cmp $55, %al
	 je h111111111111
	 cmp $56, %al
	 je i111111111111
	 cmp $57, %al
	 je j111111111111
	 
	 cmp $65, %al
	 je k111111111111
	 cmp $66, %al
	 je l111111111111
	 cmp $67, %al
	 je m111111111111
	 cmp $68, %al
	 je r111111111111
	 cmp $69, %al
	 je o111111111111
  	  cmp $70, %al
	  je p111111111111
a111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j111111111111:	
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o111111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p111111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

nr14:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a11111111111
	 cmp $49, %al
	 je b11111111111
	 cmp $50, %al
	 je c11111111111
	 cmp $51, %al
	 je d11111111111
	 cmp $52, %al
	 je e11111111111
	 cmp $53, %al
	 je f11111111111
	 cmp $54, %al
	 je g11111111111
	 cmp $55, %al
	 je h11111111111
	 cmp $56, %al
	 je i11111111111
	 cmp $57, %al
	 je j11111111111
	 
	 cmp $65, %al
	 je k11111111111
	 cmp $66, %al
	 je l11111111111
	 cmp $67, %al
	 je m11111111111
	 cmp $68, %al
	 je r11111111111
	 cmp $69, %al
	 je o11111111111
  	  cmp $70, %al
	  je p11111111111
a11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c11111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g11111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o11111111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p11111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr13:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a1111111111
	 cmp $49, %al
	 je b1111111111
	 cmp $50, %al
	 je c1111111111
	 cmp $51, %al
	 je d1111111111
	 cmp $52, %al
	 je e1111111111
	 cmp $53, %al
	 je f1111111111
	 cmp $54, %al
	 je g1111111111
	 cmp $55, %al
	 je h1111111111
	 cmp $56, %al
	 je i1111111111
	 cmp $57, %al
	 je j1111111111
	 
	 cmp $65, %al
	 je k1111111111
	 cmp $66, %al
	 je l1111111111
	 cmp $67, %al
	 je m1111111111
	 cmp $68, %al
	 je r1111111111
	 cmp $69, %al
	 je o1111111111
  	  cmp $70, %al
	  je p1111111111
a1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p1111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr12:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a111111111
	 cmp $49, %al
	 je b111111111
	 cmp $50, %al
	 je c111111111
	 cmp $51, %al
	 je d111111111
	 cmp $52, %al
	 je e111111111
	 cmp $53, %al
	 je f111111111
	 cmp $54, %al
	 je g111111111
	 cmp $55, %al
	 je h111111111
	 cmp $56, %al
	 je i111111111
	 cmp $57, %al
	 je j111111111
	 
	 cmp $65, %al
	 je k111111111
	 cmp $66, %al
	 je l111111111
	 cmp $67, %al
	 je m111111111
	 cmp $68, %al
	 je r111111111
	 cmp $69, %al
	 je o111111111
  	  cmp $70, %al
	  je p111111111
a111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

b111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

c111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

d111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

e111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

f111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p111111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr11:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a11111111
	 cmp $49, %al
	 je b11111111
	 cmp $50, %al
	 je c11111111
	 cmp $51, %al
	 je d11111111
	 cmp $52, %al
	 je e11111111
	 cmp $53, %al
	 je f11111111
	 cmp $54, %al
	 je g11111111
	 cmp $55, %al
	 je h11111111
	 cmp $56, %al
	 je i11111111
	 cmp $57, %al
	 je j11111111
	 
	 cmp $65, %al
	 je k11111111
	 cmp $66, %al
	 je l11111111
	 cmp $67, %al
	 je m11111111
	 cmp $68, %al
	 je r11111111
	 cmp $69, %al
	 je o11111111
  	  cmp $70, %al
	  je p11111111
a11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c11111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e11111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h11111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j11111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l11111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p11111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr10:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a1111111
	 cmp $49, %al
	 je b1111111
	 cmp $50, %al
	 je c1111111
	 cmp $51, %al
	 je d1111111
	 cmp $52, %al
	 je e1111111
	 cmp $53, %al
	 je f1111111
	 cmp $54, %al
	 je g1111111
	 cmp $55, %al
	 je h1111111
	 cmp $56, %al
	 je i1111111
	 cmp $57, %al
	 je j1111111
	 
	 cmp $65, %al
	 je k1111111
	 cmp $66, %al
	 je l1111111
	 cmp $67, %al
	 je m1111111
	 cmp $68, %al
	 je r1111111
	 cmp $69, %al
	 je o1111111
  	  cmp $70, %al
	  je p1111111
a1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p1111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr9:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a111111
	 cmp $49, %al
	 je b111111
	 cmp $50, %al
	 je c111111
	 cmp $51, %al
	 je d111111
	 cmp $52, %al
	 je e111111
	 cmp $53, %al
	 je f111111
	 cmp $54, %al
	 je g111111
	 cmp $55, %al
	 je h111111
	 cmp $56, %al
	 je i111111
	 cmp $57, %al
	 je j111111
	 
	 cmp $65, %al
	 je k111111
	 cmp $66, %al
	 je l111111
	 cmp $67, %al
	 je m111111
	 cmp $68, %al
	 je r111111
	 cmp $69, %al
	 je o111111
  	  cmp $70, %al
	  je p111111
a111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr8:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a11111
	 cmp $49, %al
	 je b11111
	 cmp $50, %al
	 je c11111
	 cmp $51, %al
	 je d11111
	 cmp $52, %al
	 je e11111
	 cmp $53, %al
	 je f11111
	 cmp $54, %al
	 je g11111
	 cmp $55, %al
	 je h11111
	 cmp $56, %al
	 je i11111
	 cmp $57, %al
	 je j11111
	 
	 cmp $65, %al
	 je k11111
	 cmp $66, %al
	 je l11111
	 cmp $67, %al
	 je m11111
	 cmp $68, %al
	 je r11111
	 cmp $69, %al
	 je o11111
  	  cmp $70, %al
	  je p11111
a11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
b11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
c11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
d11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
e11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p11111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr7:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a1111
	 cmp $49, %al
	 je b1111
	 cmp $50, %al
	 je c1111
	 cmp $51, %al
	 je d1111
	 cmp $52, %al
	 je e1111
	 cmp $53, %al
	 je f1111
	 cmp $54, %al
	 je g1111
	 cmp $55, %al
	 je h1111
	 cmp $56, %al
	 je i1111
	 cmp $57, %al
	 je j1111
	 
	 cmp $65, %al
	 je k1111
	 cmp $66, %al
	 je l1111
	 cmp $67, %al
	 je m1111
	 cmp $68, %al
	 je r1111
	 cmp $69, %al
	 je o1111
  	  cmp $70, %al
	  je p1111
a1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
b1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
c1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
d1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
e1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
f1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
g1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
h1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
i1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
j1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
k1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
l1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
m1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
r1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
o1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
p1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
nr6:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a111
	 cmp $49, %al
	 je b111
	 cmp $50, %al
	 je c111
	 cmp $51, %al
	 je d111
	 cmp $52, %al
	 je e111
	 cmp $53, %al
	 je f111
	 cmp $54, %al
	 je g111
	 cmp $55, %al
	 je h111
	 cmp $56, %al
	 je i111
	 cmp $57, %al
	 je j111
	 
	 cmp $65, %al
	 je k111
	 cmp $66, %al
	 je l111
	 cmp $67, %al
	 je m111
	 cmp $68, %al
	 je r111
	 cmp $69, %al
	 je o111
  	  cmp $70, %al
	  je p111
a111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
b111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
c111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
d111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
e111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
f111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
g111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
h111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
i111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
j111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
k111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
l111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
m111:	
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
r111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
o111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
p111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
nr5: 
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a11
	 cmp $49, %al
	 je b11
	 cmp $50, %al
	 je c11
	 cmp $51, %al
	 je d11
	 cmp $52, %al
	 je e11
	 cmp $53, %al
	 je f11
	 cmp $54, %al
	 je g11
	 cmp $55, %al
	 je h11
	 cmp $56, %al
	 je i11
	 cmp $57, %al
	 je j11
	 
	 cmp $65, %al
	 je k11
	 cmp $66, %al
	 je l11
	 cmp $67, %al
	 je m11
	 cmp $68, %al
	 je r11
	 cmp $69, %al
	 je o11
  	  cmp $70, %al
	  je p11
a11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
b11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
c11:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
d11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
e11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
f11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
g11:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
h11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
i11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
j11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
k11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
l11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
m11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
r11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
o11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
p11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont

nr4:	  
incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je a1
	 cmp $49, %al
	 je b1
	 cmp $50, %al
	 je c1
	 cmp $51, %al
	 je d1
	 cmp $52, %al
	 je e1
	 cmp $53, %al
	 je f1
	 cmp $54, %al
	 je g1
	 cmp $55, %al
	 je h1
	 cmp $56, %al
	 je i1
	 cmp $57, %al
	 je j1
	 
	 cmp $65, %al
	 je k1
	 cmp $66, %al
	 je l1
	 cmp $67, %al
	 je m1
	 cmp $68, %al
	 je r1
	 cmp $69, %al
	 je o1
  	  cmp $70, %al
	  je p1
a1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont

b1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont

c1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont

d1:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
e1:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
f1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
g1:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
h1:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
i1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
j1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
k1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
l1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
m1:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
r1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
o1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
p1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
nr3:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je n111
	 cmp $49, %al
	 je n211
	 cmp $50, %al
	 je n311
	 cmp $51, %al
	 je n411
	 cmp $52, %al
	 je n511
	 cmp $53, %al
	 je n611
	 cmp $54, %al
	 je n711
	 cmp $55, %al
	 je n811
	 cmp $56, %al
	 je n911
	 cmp $57, %al
	 je n1011
	 
	 cmp $65, %al
	 je n1111
	 cmp $66, %al
	 je n1211
	 cmp $67, %al
	 je n1311
	 cmp $68, %al
	 je n1411
	 cmp $69, %al
	 je n1511
  	  cmp $70, %al
	  je n1611
n111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n211:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n311:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n411:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n511:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n611:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n711:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n811:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n911:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1011:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1211:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1311:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1411:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1511:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n1611:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont


nr2:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je n1a
	 cmp $49, %al
	 je n21
	 cmp $50, %al
	 je n31
	 cmp $51, %al
	 je n41
	 cmp $52, %al
	 je n51
	 cmp $53, %al
	 je n61
	 cmp $54, %al
	 je n71
	 cmp $55, %al
	 je n81
	 cmp $56, %al
	 je n91
	 cmp $57, %al
	 je n101
	 
	 cmp $65, %al
	 je n11a
	 cmp $66, %al
	 je n121
	 cmp $67, %al
	 je n131
	 cmp $68, %al
	 je n141
	 cmp $69, %al
	 je n151
  	  cmp $70, %al
	  je n161
n1a:

pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n21:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n31:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n41:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n51:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n61:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n71:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n81:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n91:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n101:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n11a:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n121:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n131:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n141:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n151:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n161:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont

nr1:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	 je n1
	 cmp $49, %al
	 je n2
	 cmp $50, %al
	 je n3
	 cmp $51, %al
	 je n4
	 cmp $52, %al
	 je n5
	 cmp $53, %al
	 je n6
	 cmp $54, %al
	 je n7
	 cmp $55, %al
	 je n8
	 cmp $56, %al
	 je n9
	 cmp $57, %al
	 je n10
	 
	 cmp $65, %al
	 je n11
	 cmp $66, %al
	 je n12
	 cmp $67, %al
	 je n13
	 cmp $68, %al
	 je n14
	 cmp $69, %al
	 je n15
  	  cmp $70, %al
	  je n16
n1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n2:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n3:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n4:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n5:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n6:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n7:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n8:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n9:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n10:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $2, indexSb2
	
	popl %ecx
	jmp cont
n11:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n12:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n13:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n14:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n15:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont
n16:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $3, indexSb2
	
	popl %ecx
	jmp cont

sarlaurmatorul:
	incl %ecx
	
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero	
	cmp $49, %al
	je unu
	cmp $50, %al
	je doi
	cmp $51, %al
	je trei
	cmp $52, %al
	je patru
	cmp $53, %al
	je cinci
	cmp $54, %al
	je sase
	cmp $55, %al
	je sapte
	cmp $56, %al
	je opt
	cmp $57, %al
	je noua
	
	
	cmp $65, %al
	je lita
	cmp $66, %al
	je litb
	
	cmp $67, %al
	je litc
	cmp $68, %al
	je litd
	cmp $69, %al
	je lite
	cmp $70, %al
	je litf
zero:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero1	
	cmp $49, %al
	je unu1
	cmp $50, %al
	je doi1
	cmp $51, %al
	je trei1
	cmp $52, %al
	je patru1
	cmp $53, %al
	je cinci1
	cmp $54, %al
	je sase1
	cmp $55, %al
	je sapte1
	cmp $56, %al
	je opt1
	cmp $57, %al
	je noua1
	
	cmp $65, %al
	je lita1
	cmp $66, %al
	je litb1
	cmp $67, %al
	je litc1
	cmp $68, %al
	je litd1
	cmp $69, %al
	je lite1
	cmp $70, %al
	je litf1
	
zero1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
	
unu:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero11	
	cmp $49, %al
	je unu11
	cmp $50, %al
	je doi11
	cmp $51, %al
	je trei11
	cmp $52, %al
	je patru11
	cmp $53, %al
	je cinci11
	cmp $54, %al
	je sase11
	cmp $55, %al
	je sapte11
	cmp $56, %al
	je opt11
	cmp $57, %al
	je noua11
	
	cmp $65, %al
	je lita11
	cmp $66, %al
	je litb11
	cmp $67, %al
	je litc11
	cmp $68, %al
	je litd11
	cmp $69, %al
	je lite11
	cmp $70, %al
	je litf11

unu1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
	

zero11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

unu11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi11:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf11:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero111
	cmp $49, %al
	je unu111
	cmp $50, %al
	je doi111
	cmp $51, %al
	je trei111
	cmp $52, %al
	je patru111
	cmp $53, %al
	je cinci111
	cmp $54, %al
	je sase111
	cmp $55, %al
	je sapte111
	cmp $56, %al
	je opt111
	cmp $57, %al
	je noua111
	
	cmp $65, %al
	je lita111
	cmp $66, %al
	je litb111
	cmp $67, %al
	je litc111
	cmp $68, %al
	je litd111
	cmp $69, %al
	je lite111
	cmp $70, %al
	je litf111
zero111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi1:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero1111
	cmp $49, %al
	je unu1111
	cmp $50, %al
	je doi1111
	cmp $51, %al
	je trei1111
	cmp $52, %al
	je patru1111
	cmp $53, %al
	je cinci1111
	cmp $54, %al
	je sase1111
	cmp $55, %al
	je sapte1111
	cmp $56, %al
	je opt1111
	cmp $57, %al
	je noua1111
	
	cmp $65, %al
	je lita1111
	cmp $66, %al
	je litb1111
	cmp $67, %al
	je litc1111
	cmp $68, %al
	je litd1111
	cmp $69, %al
	je lite1111
	cmp $70, %al
	je litf1111
zero1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc1111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf1111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je 320
	cmp $49, %al
	je unu11111
	cmp $50, %al
	je doi11111
	cmp $51, %al
	je trei11111
	cmp $52, %al
	je patru11111
	cmp $53, %al
	je cinci11111
	cmp $54, %al
	je sase11111
	cmp $55, %al
	je sapte11111
	cmp $56, %al
	je opt11111
	cmp $57, %al
	je noua11111
	
	cmp $65, %al
	je lita11111
	cmp $66, %al
	je litb11111
	cmp $67, %al
	je litc11111
	cmp $68, %al
	je litd11111
	cmp $69, %al
	je lite11111
	cmp $70, %al
	je litf11111
zero11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf11111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero111111
	cmp $49, %al
	je unu111111
	cmp $50, %al
	je doi111111
	cmp $51, %al
	je trei111111
	cmp $52, %al
	je patru111111
	cmp $53, %al
	je cinci111111
	cmp $54, %al
	je sase111111
	cmp $55, %al
	je sapte111111
	cmp $56, %al
	je opt111111
	cmp $57, %al
	je noua111111
	
	cmp $65, %al
	je lita111111
	cmp $66, %al
	je litb111111
	cmp $67, %al
	je litc111111
	cmp $68, %al
	je litd111111
	cmp $69, %al
	je lite111111
	cmp $70, %al
	je litf111111
zero111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru111111:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero1111111
	cmp $49, %al
	je unu1111111
	cmp $50, %al
	je doi1111111
	cmp $51, %al
	je trei1111111
	cmp $52, %al
	je patru1111111
	cmp $53, %al
	je cinci1111111
	cmp $54, %al
	je sase1111111
	cmp $55, %al
	je sapte1111111
	cmp $56, %al
	je opt111111
	cmp $57, %al
	je noua1111111
	
	cmp $65, %al
	je lita1111111
	cmp $66, %al
	je litb1111111
	cmp $67, %al
	je litc1111111
	cmp $68, %al
	je litd1111111
	cmp $69, %al
	je lite1111111
	cmp $70, %al
	je litf1111111
zero1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt1111111:
pushl %ecx
	
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf1111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero11111111
	cmp $49, %al
	je unu11111111
	cmp $50, %al
	je doi11111111
	cmp $51, %al
	je trei11111111
	cmp $52, %al
	je patru11111111
	cmp $53, %al
	je cinci11111111
	cmp $54, %al
	je sase11111111
	cmp $55, %al
	je sapte11111111
	cmp $56, %al
	je opt11111111
	cmp $57, %al
	je noua11111111
	
	cmp $65, %al
	je lita11111111
	cmp $66, %al
	je litb11111111
	cmp $67, %al
	je litc11111111
	cmp $68, %al
	je litd11111111
	cmp $69, %al
	je lite11111111
	cmp $70, %al
	je litf11111111
zero11111111:
pushl %ecx
	movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf11111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte1:
pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero111111111
	cmp $49, %al
	je unu111111111
	cmp $50, %al
	je doi111111111
	cmp $51, %al
	je trei111111111
	cmp $52, %al
	je patru111111111
	cmp $53, %al
	je cinci111111111
	cmp $54, %al
	je sase111111111
	cmp $55, %al
	je sapte111111111
	cmp $56, %al
	je opt111111111
	cmp $57, %al
	je noua111111111
	
	cmp $65, %al
	je lita111111111
	cmp $66, %al
	je litb111111111
	cmp $67, %al
	je litc111111111
	cmp $68, %al
	je litd111111111
	cmp $69, %al
	je lite111111111
	cmp $70, %al
	je litf111111111
zero111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt1:
pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero1111111111
	cmp $49, %al
	je unu1111111111
	cmp $50, %al
	je doi1111111111
	cmp $51, %al
	je trei1111111111
	cmp $52, %al
	je patru1111111111
	cmp $53, %al
	je cinci1111111111
	cmp $54, %al
	je sase1111111111
	cmp $55, %al
	je sapte1111111111
	cmp $56, %al
	je opt1111111111
	cmp $57, %al
	je noua1111111111
	
	cmp $65, %al
	je lita1111111111
	cmp $66, %al
	je litb1111111111
	cmp $67, %al
	je litc1111111111
	cmp $68, %al
	je litd1111111111
	cmp $69, %al
	je lite1111111111
	cmp $70, %al
	je litf1111111111
zero1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita1111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb1111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc1111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd1111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite1111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf1111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero11111111111
	cmp $49, %al
	je unu11111111111
	cmp $50, %al
	je doi11111111111
	cmp $51, %al
	je trei11111111111
	cmp $52, %al
	je patru11111111111
	cmp $53, %al
	je cinci11111111111
	cmp $54, %al
	je sase11111111111
	cmp $55, %al
	je sapte11111111111
	cmp $56, %al
	je opt11111111111
	cmp $57, %al
	je noua11111111111
	
	cmp $65, %al
	je lita11111111111
	cmp $66, %al
	je litb11111111111
	cmp $67, %al
	je litc11111111111
	cmp $68, %al
	je litd11111111111
	cmp $69, %al
	je lite11111111111
	cmp $70, %al
	je litf11111111111
zero11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

unu11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci11111111111:pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf11111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

lita1:
	
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb:
incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero111111111111
	cmp $49, %al
	je unu111111111111
	cmp $50, %al
	je doi111111111111
	cmp $51, %al
	je trei111111111111
	cmp $52, %al
	je patru111111111111
	cmp $53, %al
	je cinci111111111111
	cmp $54, %al
	je sase111111111111
	cmp $55, %al
	je sapte111111111111
	cmp $56, %al
	je opt111111111111
	cmp $57, %al
	je noua111111111111
	
	cmp $65, %al
	je lita111111111111
	cmp $66, %al
	je litb111111111111
	cmp $67, %al
	je litc111111111111
	cmp $68, %al
	je litd111111111111
	cmp $69, %al
	je lite111111111111
	cmp $70, %al
	je litf111111111111
	
zero111111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

litb1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero1111111111111
	cmp $49, %al
	je unu1111111111111
	cmp $50, %al
	je doi1111111111111
	cmp $51, %al
	je trei1111111111111
	cmp $52, %al
	je patru1111111111111
	cmp $53, %al
	je cinci1111111111111
	cmp $54, %al
	je sase1111111111111
	cmp $55, %al
	je sapte1111111111111
	cmp $56, %al
	je opt1111111111111
	cmp $57, %al
	je noua1111111111111
	
	cmp $65, %al
	je lita1111111111111
	cmp $66, %al
	je litb1111111111111
	cmp $67, %al
	je litc1111111111111
	cmp $68, %al
	je litd1111111111111
	cmp $69, %al
	je lite1111111111111
	cmp $70, %al
	je litf1111111111111
zero1111111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi1111111111111:
	pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc1111111111111:

pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf1111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

litc1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero11111111111111
	cmp $49, %al
	je unu11111111111111
	cmp $50, %al
	je doi11111111111111
	cmp $51, %al
	je trei11111111111111
	cmp $52, %al
	je patru11111111111111
	cmp $53, %al
	je cinci11111111111111
	cmp $54, %al
	je sase11111111111111
	cmp $55, %al
	je sapte11111111111111
	cmp $56, %al
	je opt11111111111111
	cmp $57, %al
	je noua11111111111111
	
	cmp $65, %al
	je lita11111111111111
	cmp $66, %al
	je litb11111111111111
	cmp $67, %al
	je litc11111111111111
	cmp $68, %al
	je litd11111111111111
	cmp $69, %al
	je lite11111111111111
	cmp $70, %al
	je litf11111111111111
zero11111111111111:	
pushl %ecx
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf11111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd1:
	
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero111111111111111
	cmp $49, %al
	je unu111111111111111
	cmp $50, %al
	je doi111111111111111
	cmp $51, %al
	je trei111111111111111
	cmp $52, %al
	je patru111111111111111
	cmp $53, %al
	je cinci111111111111111
	cmp $54, %al
	je sase111111111111111
	cmp $55, %al
	je sapte111111111111111
	cmp $56, %al
	je opt111111111111111
	cmp $57, %al
	je noua111111111111111
	
	cmp $65, %al
	je lita111111111111111
	cmp $66, %al
	je litb111111111111111
	cmp $67, %al
	je litc111111111111111
	cmp $68, %al
	je litd111111111111111
	cmp $69, %al
	je lite111111111111111
	cmp $70, %al
	je litf111111111111111
zero111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei111111111111111:pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite1:
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf:
	incl %ecx
	movb (%edi, %ecx, 1), %al 
	
	cmp $48, %al
	je zero1111111111111111
	cmp $49, %al
	je unu1111111111111111
	cmp $50, %al
	je doi1111111111111111
	cmp $51, %al
	je trei1111111111111111
	cmp $52, %al
	je patru1111111111111111
	cmp $53, %al
	je cinci1111111111111111
	cmp $54, %al
	je sase1111111111111111
	cmp $55, %al
	je sapte1111111111111111
	cmp $56, %al
	je opt1111111111111111
	cmp $57, %al
	je noua1111111111111111
	
	cmp $65, %al
	je lita1111111111111111
	cmp $66, %al
	je litb1111111111111111
	cmp $67, %al
	je litc1111111111111111
	cmp $68, %al
	je litd1111111111111111
	cmp $69, %al
	je lite1111111111111111
	cmp $70, %al
	je litf1111111111111111
zero1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
unu1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
doi1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
trei1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
patru1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
cinci1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sase1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
sapte1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $51, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
opt1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $52, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
noua1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lita1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $54, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litb1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litc1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $56, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litd1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $57, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
lite1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
litf1111111111111111:
pushl %ecx
movl indexSb2, %ecx
	movb $53, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont

litf1:	
	pushl %ecx
	movl indexSb2, %ecx
	movb $50, (%esi, %ecx, 1)
	incl %ecx
	movb $55, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	add $4, indexSb2
	
	popl %ecx
	jmp cont
	
	

cont:
	incl %ecx
	jmp et_for 
	
litA:
	incl %ecx
	movb (%edi, %ecx, 1), %al
	
	cmp $54, %al
	 je cif11
	 
	cmp $55, %al
	je cif12
	
	cmp $49, %al
	je z
	 
	jmp cont
litC:
	incl %ecx
	incl %ecx
	
	movb (%edi, %ecx, 1), %al 
	cmp $48, %al
	je let
	
	cmp $49, %al
	je add
	
	cmp $50, %al
	je sub
	
	cmp $51, %al
	je mul
	
	cmp $52, %al
	je div
	
	
	
let:
	pushl %ecx
	movl indexSb2, %ecx
	movb $108, (%esi, %ecx, 1)
	incl %ecx
	movb $101, (%esi, %ecx, 1)
	incl %ecx
	movb $116, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, indexSb2
	
	popl %ecx
	
	jmp cont
add:
	pushl %ecx
	movl indexSb2, %ecx
	movb $97, (%esi, %ecx, 1)
	incl %ecx
	movb $100, (%esi, %ecx, 1)
	incl %ecx
	movb $100, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, indexSb2
	popl %ecx
	jmp cont
sub: 
	pushl %ecx
	movl indexSb2, %ecx
	movb $115, (%esi, %ecx, 1)
	incl %ecx
	movb $117, (%esi, %ecx, 1)
	incl %ecx
	movb $98, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, indexSb2
	popl %ecx
	jmp cont
mul:
	pushl %ecx
	movl indexSb2, %ecx
	movb $109, (%esi, %ecx, 1)
	incl %ecx
	movb $117, (%esi, %ecx, 1)
	incl %ecx
	movb $108, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, indexSb2
	popl %ecx
	jmp cont
div:
	pushl %ecx
	movl indexSb2, %ecx
	movb $100, (%esi, %ecx, 1)
	incl %ecx
	movb $105, (%esi, %ecx, 1)
	incl %ecx
	movb $118, (%esi, %ecx, 1)
	incl %ecx
	movb $32, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, indexSb2
	popl %ecx
	jmp cont
 cif11: 
		incl %ecx
		movb (%edi, %ecx, 1), %al
		
		cmp $49, %al
		je a
		cmp $50, %al
		je b
		cmp $51, %al
		je c
		cmp $52, %al
		je d
		cmp $53, %al
		je e
		cmp $54, %al
		je f
		cmp $55, %al
		je g
		cmp $56, %al
		je h
		cmp $57, %al
		je i
		
		cmp $65, %al
		je j
		cmp $66, %al
		je k
		cmp $67, %al
		je l
		cmp $68, %al
		je m
		cmp $69, %al
		je n
		cmp $70, %al
		je o
		 
cif12:
		incl %ecx
		movb (%edi, %ecx, 1), %al
		
		
		cmp $48, %al
		je p
		cmp $49, %al
		je q 
		cmp $50, %al
		je r
		cmp $51, %al
		je s
		cmp $52, %al
		je t
		cmp $53, %al
		je u
		cmp $54, %al
		je v
		cmp $55, %al
		je w
		cmp $56, %al
		je x
		cmp $57, %al
		je y
		
		
a:
	pushl %ecx
	movl indexSb2, %ecx
	
	movb $97, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
b:
pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $98, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
c:
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $99, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
d:
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $100, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
			
e:
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $101, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
f:
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $102, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
g:
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $103, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
h: 
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $104, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
i:
	pushl %ecx
	
	movl indexSb2, %ecx
	
	movb $105, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
j:
	pushl %ecx
	movl indexSb2, %ecx
	
	movb $106, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
k:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $107, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
l:
	pushl %ecx
	movl indexSb2, %ecx
	
	movb $108, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
m:
	pushl %ecx
	movl indexSb2, %ecx
	
	movb $109, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
n:
	pushl %ecx
	movl indexSb2, %ecx
	
	movb $110, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
o:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $111, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
p:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $112, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont

q:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $113, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
r:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $114, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
s:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $115, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
t:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $116, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
u:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $117, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
v:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $118, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
w:
pushl %ecx
	movl indexSb2, %ecx
	
	movb $119, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
x:

pushl %ecx
	movl indexSb2, %ecx
	
	movb $120, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont
y:	
pushl %ecx
	movl indexSb2, %ecx
	
	movb $121, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
		
z:	incl %ecx
	pushl %ecx
	movl indexSb2, %ecx
	
	movb $122, (%esi, %ecx, 1)
	incl %ecx
	movb $32,(%esi, %ecx, 1) 
	incl %ecx
	addl $2, indexSb2
	
	popl %ecx
	jmp cont	
								
exit:
	pushl $sirb2
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx

	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
