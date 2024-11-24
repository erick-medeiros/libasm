#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <strings.h>
#include "./src/libasm.h"

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

    return 0;
}