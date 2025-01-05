; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcmp.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 13:51:33 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 13:51:33 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

extern __errno_location
section .text
    global ft_strcmp

ft_strcmp:
    test rdi, rdi
    je _invalid_arg
    test rsi, rsi
    je _invalid_arg
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx

__loop:
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]

    cmp al, 0
    jz __check_s2

    cmp bl, 0
    jz __check_s1

    cmp al, bl
    jnz __get_diff

    inc rcx
    jmp __loop

__check_s2:
    cmp bl, 0
    jz __exit

    jmp __get_diff

__check_s1:
    cmp al, 0
    jz __exit

    jmp __get_diff

__get_diff:
    sub al, bl
    movsx rax, al
    jmp __exit

_invalid_arg:
    call __errno_location
    mov qword [rax], 22
    mov rax, -1
    ret

__exit:
    ret
