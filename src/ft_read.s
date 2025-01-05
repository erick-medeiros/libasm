; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_read.s                                          :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2025/01/05 14:00:14 by eandre-f          #+#    #+#             ;
;   Updated: 2025/01/05 14:00:14 by eandre-f         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

extern __errno_location
section .text
    global ft_read

ft_read:
    test rsi, rsi
    je _invalid_arg
    mov rax, 0
    syscall
    test rax, rax
    js _on_error
    ret

_invalid_arg:
    call __errno_location
    mov qword [rax], 22
    mov rax, -1
    ret

_on_error:
    mov r8, rax
    call __errno_location
    neg r8
    mov [rax], r8
    mov rax, -1
    ret