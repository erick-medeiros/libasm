; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strlen.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 13:00:57 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 13:00:57 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

extern __errno_location
section .text
    global ft_strlen

ft_strlen:
    test rdi, rdi
    je _invalid_arg
    xor rax, rax

_loop:
    cmp byte [rdi + rax], 0
    je _exit
    inc rax
    jmp _loop

_invalid_arg:
    call __errno_location
    mov qword [rax], 22
    mov rax, -1
    ret

_exit:
    ret