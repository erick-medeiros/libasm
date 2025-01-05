; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_list_size.s                                     :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 19:38:04 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 19:38:05 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

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