#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <strings.h>
#include "./src/libasm.h"
#include "./src/libasm_bonus.h"

int main(){
    char *s = "hello";
    printf("%s %ld \n", s, ft_strlen(s));

    char s2[6] = {'a','b','c','d','e',0};
    printf("%s\n", ft_strcpy(s2,s));

    printf("%d\n", ft_strcmp(s2,s));

    char fd = open("./Makefile",0);

    char buff[11];
    int len = ft_read(fd, buff, 10);
    buff[len]=0;
    printf("%d %s\n", len, buff);

    int lenw = ft_write(1, "write\n", 7);
    printf("%d\n", lenw);

    char *sclone = ft_strdup("pow");
    printf("%s\n", sclone);
    free(sclone);

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

    return 0;
}