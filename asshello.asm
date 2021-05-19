section	.text
   global _start     ;it is essential
	
  
_start:	            ;entry point
   mov	edx,len     ;length of message
   mov	ecx,msg     ;message to write
   mov	ebx,1       ;file descriptor (stdout)
   mov	eax,4       ;system call number (sys_write)
   int	0x80        ;call kernel
	
   mov	eax,1       ;system call number (sys_exit)
   int	0x80        ;call kernel

section	.data
msg db 'Hello, world! Bat', 0xa  ;string
len equ $ - msg     ;length of the string
