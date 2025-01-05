; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   c.c                                                :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 19:09:29 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 19:09:29 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

extern __errno_location
extern ft_strlen
extern ft_strcpy
extern malloc

section .text
    global ft_strdup

ft_strdup:
    test rdi, rdi
    je _invalid_arg

    xor rcx, rcx

    call ft_strlen
    inc rax
	push rdi

    mov rdi, rax
    call malloc
    cmp rax, 0
    jz _on_error

	pop rsi
	mov rdi, rax
	call ft_strcpy

	ret

_invalid_arg:
    call __errno_location
    mov qword [rax], 22
    xor rax, rax
    ret

_on_error:
    leave
    ret