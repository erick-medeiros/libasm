/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/05 13:13:22 by eandre-f          #+#    #+#             */
/*   Updated: 2025/01/05 14:04:05 by eandre-f         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include "./src/libasm.h"
#include "./src/libasm_bonus.h"

int main() {
    char *s = "hello";

    // test
    errno = 0;
    size_t ret1 = ft_strlen(s);
    printf("ft_strlen: %s %ld errno: %d\n", s, ret1, errno);

    // test
    errno = 0;
    size_t ret2 = ft_strlen(NULL);
    printf("ft_strlen: %s %ld errno: %d\n", s, ret2, errno);

    // test
    char s2[6] = {'a','b','c','d','e',0};
    errno = 0;
    char *ret3 = ft_strcpy(s2, s);
    printf("ft_strcpy: %s errno: %d\n", ret3, errno);

    // test
    errno = 0;
    char *ret4 = ft_strcpy(NULL, s);
    printf("ft_strcpy: %s errno: %d\n", ret4, errno);

    // test
    errno = 0;
    char *ret5 = ft_strcpy(s2, NULL);
    printf("ft_strcpy: %s errno: %d\n", ret5, errno);

    // test
    errno = 0;
    int ret6 = ft_strcmp(s2, s);
    printf("ft_strcmp: %d errno: %d\n", ret6, errno);

    // test
    errno = 0;
    int ret7 = ft_strcmp(NULL, s);
    printf("ft_strcmp: %d errno: %d\n", ret7, errno);

    // test
    errno = 0;
    int ret8 = ft_strcmp(s2, NULL);
    printf("ft_strcmp: %d errno: %d\n", ret8, errno);

    // test
    errno = 0;
    int ret9 = ft_strcmp("asdasd", "kjklasd");
    printf("ft_strcmp: %d errno: %d\n", ret9, errno);

    // test
    char fd = open("./Makefile",0);

    char buff[11];
    errno = 0;
    int len = ft_read(fd, buff, 10);
    buff[len]=0;
    printf("ft_read: %d %s errno: %d\n", len, buff, errno);

    // test
    errno = 0;
    int len2 = ft_read(fd, NULL, 10);
    printf("ft_read: %d %s errno: %d\n", len2, buff, errno);

    // test
    int lenw = ft_write(1, "write\n", 7);
    printf("%d\n", lenw);

    char *sclone = ft_strdup("pow");
    printf("%s\n", sclone);
    free(sclone);

    /*
    t_list *head = NULL;
    ft_list_push_front(&head, "foo");
    printf("%s\n", (char *)head->data);

    ft_list_push_front(&head, "bar");
    printf("%s\n", (char *)head->next->data);

    printf("%d\n", ft_list_size(head));
    printf("%d\n", ft_list_size(0));

    free(head->next);
    free(head);

    t_list *head2 = NULL;
    ft_list_push_front(&head2, "a");
    ft_list_push_front(&head2, "b");
    ft_list_push_front(&head2, "c");
    printf("%d\n", ft_list_size(head2));
    ft_list_remove_if(&head2, "a", ft_strcmp);
    printf("%d\n", ft_list_size(head2));

    free(head2->next->next);
    free(head2->next);
    free(head2);
    */

    return 0;
}