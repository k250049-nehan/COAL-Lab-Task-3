INCLUDE Irvine32.inc

.data
array DWORD 6 DUP(?)

msg1 BYTE "Enter 6 numbers:",0
msg2 BYTE "Array elements:",0
msg3 BYTE "Sum = ",0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    call ReadInt
    mov array[0], eax

    call ReadInt
    mov array[4], eax

    call ReadInt
    mov array[8], eax

    call ReadInt
    mov array[12], eax

    call ReadInt
    mov array[16], eax

    call ReadInt
    mov array[20], eax

    mov edx, OFFSET msg2
    call WriteString
    call Crlf

    mov eax, array[0]
    call WriteInt
    call Crlf

    mov eax, array[4]
    call WriteInt
    call Crlf

    mov eax, array[8]
    call WriteInt
    call Crlf

    mov eax, array[12]
    call WriteInt
    call Crlf

    mov eax, array[16]
    call WriteInt
    call Crlf

    mov eax, array[20]
    call WriteInt
    call Crlf

    mov ebx, 0

    add ebx, array[0]
    add ebx, array[4]
    add ebx, array[8]
    add ebx, array[12]
    add ebx, array[16]
    add ebx, array[20]

    mov edx, OFFSET msg3
    call WriteString
    mov eax, ebx
    call WriteInt
    call Crlf

    exit
main ENDP
END main
