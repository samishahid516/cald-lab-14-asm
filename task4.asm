
include Irvine32.inc

.data
outputMsg db "Numbers from 1 to 9:", 0

.code
main PROC
    
    mov edx, OFFSET outputMsg 
    call WriteString          
    call Crlf                 

    mov ecx, 9                
    mov eax, 1                
display_loop:
    call WriteDec            
    call Crlf                
    inc eax                   
    loop display_loop         

    
    call WaitMsg              
    invoke ExitProcess, 0     
main ENDP
END main
