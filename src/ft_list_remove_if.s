extern free
section .text
	global ft_list_remove_if

ft_list_remove_if:
    push rbx
    test rdi, rdi
    jz _finish

    mov rbx, [rdi]

_loop:
    test rbx, rbx
    jz _finish

    mov rdi, [rbx]
    call rdx

    mov r9, rdi
    mov rdi, [rdi]
    call rdx
    test rax, rax
    jnz _skip

    mov rdi, [rbx + 8]
    mov [rbx], rdi
    mov rdi, [rbx]
    call free
    mov rbx, [rbx + 8]

_skip:
    mov rbx, [rbx + 8]
    jmp _loop

_finish:
    xor rax, rax
    pop rbx
    ret