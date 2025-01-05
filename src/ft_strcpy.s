; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcpy.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 13:31:56 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 13:31:56 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

extern __errno_location
section .text
    global ft_strcpy

ft_strcpy:
    test rsi, rsi
    je _invalid_arg
    test rdi, rdi
    je _invalid_arg
    lea rax, [rdi]
    xor rcx, rcx

_loop:
    mov bl, [rsi + rcx]
    mov [rdi + rcx], bl

    test bl, bl
    je _exit

    inc rcx

    jmp _loop

_invalid_arg:
    call __errno_location
    mov qword [rax], 22
    mov rax, 0
    ret

_exit:
    ret