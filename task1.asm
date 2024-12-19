; Program to display "welcome assembly language" using Irvine32
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode: dword

include Irvine32.inc

.data
message db "Welcome assembly language", 0

.code
main PROC
    
    mov edx, OFFSET message 
    call WriteString         

    call Crlf                
    call WaitMsg             
    invoke ExitProcess, 0    
main ENDP
END main
