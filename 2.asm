INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter Cash Withdrawal: ",0
msg2 BYTE "Enter Cheque Deposit: ",0
msg3 BYTE "Enter Incoming Online Transfer: ",0
msg4 BYTE "Enter Outgoing Online Transfer: ",0
msg5 BYTE "Enter Bill Payment: ",0
msg6 BYTE "Net Balance: Rs. ",0

.code
main PROC

    mov ebx, 30000

    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    sub ebx, eax

    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    add ebx, eax

    mov edx, OFFSET msg3
    call WriteString
    call ReadInt
    add ebx, eax

    mov edx, OFFSET msg4
    call WriteString
    call ReadInt
    sub ebx, eax

    mov edx, OFFSET msg5
    call WriteString
    call ReadInt
    sub ebx, eax

    mov edx, OFFSET msg6
    call WriteString
    mov eax, ebx
    call WriteInt
    call Crlf

    exit
main ENDP
END main
