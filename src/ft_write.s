extern __errno_location

section .text
    global ft_write

ft_write:
    mov rax, 1
    syscall
    test rax, rax
    js _on_error
    ret

_on_error:
    mov r8, rax
    call __errno_location
    neg r8
    mov [rax], r8
    mov rax, -1
    ret