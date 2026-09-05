INCLUDE Irvine32.inc

.data
basicSalary DWORD 90000
fuelAllowance DWORD 4500
overtimeAllowance DWORD 12560
incomeTax DWORD 600
eobi DWORD 550

msg1 BYTE "----- EMPLOYEE PAYSLIP -----",0
msg2 BYTE "Basic Salary: Rs. ",0
msg3 BYTE "Fuel Allowance: Rs. ",0
msg4 BYTE "Over-Time Allowance: Rs. ",0
msg5 BYTE "Income Tax Deduction: Rs. ",0
msg6 BYTE "EOBI Deduction: Rs. ",0
msg7 BYTE "Net Salary: Rs. ",0

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    mov edx, OFFSET msg2
    call WriteString
    mov eax, basicSalary
    call WriteInt
    call Crlf

    mov edx, OFFSET msg3
    call WriteString
    mov eax, fuelAllowance
    call WriteInt
    call Crlf

    mov edx, OFFSET msg4
    call WriteString
    mov eax, overtimeAllowance
    call WriteInt
    call Crlf

    mov edx, OFFSET msg5
    call WriteString
    mov eax, incomeTax
    call WriteInt
    call Crlf

    mov edx, OFFSET msg6
    call WriteString
    mov eax, eobi
    call WriteInt
    call Crlf

    mov eax, basicSalary
    add eax, fuelAllowance
    add eax, overtimeAllowance
    sub eax, incomeTax
    sub eax, eobi

    mov edx, OFFSET msg7
    call WriteString
    call WriteInt
    call Crlf

    exit
main ENDP
END main
