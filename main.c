#include <stdio.h>
#include "./src/libasm.h"

int main(){
    char *s = "hello";
    printf("%s %ld \n", s, ft_strlen(s));
    return 0;
}