include Irvine32.inc

.data
prompt db "Enter a 32-bit integer: ", 0
outputMsg db "You entered: ", 0
inputValue DWORD ?

.code
main PROC
    mov edx, OFFSET prompt 
    call WriteString       

    call ReadInt           
    mov inputValue, eax     

    
    mov edx, OFFSET outputMsg 
    call WriteString          
    
    mov eax, inputValue     
    call WriteDec           

    call Crlf                
    call WaitMsg             
    invoke ExitProcess, 0    
main ENDP
END main
