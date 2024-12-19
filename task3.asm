include Irvine32.inc

.data
array1 WORD 10, 20, 30, 40, 50       
array2 WORD 60, 70, 80, 90, 100      
output1 db "Array1 elements (Direct Addressing):", 0
output2 db "Array2 elements (Indirect Addressing):", 0

.code
main PROC
    
    mov edx, OFFSET output1        
    call WriteString
    call Crlf

    mov ecx, 5                     
    lea esi, array1                
print_array1:
    movzx eax, WORD PTR [esi]       
    call WriteDec                  
    call Crlf
    add esi, 2                      
    loop print_array1              
    mov edx, OFFSET output2         
    call WriteString
    call Crlf

    mov ecx, 5                     
    lea esi, array2                 
print_array2:
    movzx eax, WORD PTR [esi]       
    call WriteDec                
    call Crlf
    add esi, 2                      
    loop print_array2               

    call WaitMsg                   
    exit
main ENDP
END main
