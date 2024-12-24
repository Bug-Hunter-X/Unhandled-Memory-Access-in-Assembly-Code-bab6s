; Improved version with bounds checking
section .data
    array dd 10, 20, 30, 40, 50 ; Example array
    array_size equ ($ - array) / 4 ; Calculate size in elements

section .text
    global _start

_start:
    mov ecx, 2 ; Example index

    ; Check if the index is within bounds
    cmp ecx, array_size
    jge out_of_bounds
    jl valid_index

    out_of_bounds:
        ; Handle out-of-bounds error, e.g., exit with an error code
        mov eax, 1 ; sys_exit
        xor ebx, ebx ; exit code 0
        int 0x80

    valid_index:
        mov ebx, array ; Base address of array
        mov eax, [ebx + ecx*4] ; Access memory only after validation
        ; ...further processing of eax...
        mov eax, 1
        xor ebx, ebx
        int 0x80