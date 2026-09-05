INCLUDE Irvine32.inc

.data
array WORD 5 DUP(?)

.code
main PROC

    call ReadInt
    mov array[0], ax

    call ReadInt
    mov array[2], ax

    call ReadInt
    mov array[4], ax

    call ReadInt
    mov array[6], ax

    call ReadInt
    mov array[8], ax

    movzx eax, array[8]
    call WriteInt
    call Crlf

    movzx eax, array[6]
    call WriteInt
    call Crlf

    movzx eax, array[4]
    call WriteInt
    call Crlf

    movzx eax, array[2]
    call WriteInt
    call Crlf

    movzx eax, array[0]
    call WriteInt
    call Crlf

    exit
main ENDP
END main
