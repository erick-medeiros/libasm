/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/05 19:37:59 by eandre-f          #+#    #+#             */
/*   Updated: 2025/01/05 19:38:01 by eandre-f         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>
#include <unistd.h>

size_t ft_strlen(const char *s);

char *ft_strcpy(char *dst, const char *src);

int ft_strcmp(const char *s1, const char *s2);

ssize_t ft_read(int fd, void *buf, size_t count);

ssize_t ft_write(int fd, const void *buf, size_t count);

char *ft_strdup(const char *s);