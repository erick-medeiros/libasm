; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_list_push_front.s                               :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 19:38:04 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 19:38:05 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

extern malloc

section .text
	global ft_list_push_front
 
ft_list_push_front:
	push rdi
	push rsi

	mov rdi, 16
    call malloc
	test rax, rax
	jz _on_error

	pop rsi
	mov [rax], rsi

	pop rdi
	mov rdx, [rdi]
	mov [rax + 8], rdx
	mov [rdi], rax
	ret

_on_error:
	xor rax, rax
    ret