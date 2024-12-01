section .text
	global ft_list_size

ft_list_size:
    xor rax, rax
    test rdi, rdi
    jz _finish
    jmp _loop

_loop:
    inc rax
    mov rdi, [rdi + 8]
    test rdi, rdi
    jnz _loop
    ret

_finish:
    ret