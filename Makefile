NAME = libasm.a

CFLAGS = -Wall -Wextra -Werror -g
CC = cc
RM = rm -fr

SRC_DIR = src/
OBJ_DIR = obj/

FILES = ft_strlen.s
FILES += ft_strcpy.s
FILES += ft_strcmp.s
FILES += ft_read.s
FILES += ft_write.s
FILES += ft_strdup.s
#bonus
FILES += ft_list_push_front.s
FILES += ft_list_size.s
FILES += ft_list_remove_if.s

SRC = $(addprefix $(SRC_DIR), $(FILES))
OBJ = $(addprefix $(OBJ_DIR), $(FILES:.s=.o))

FILES_BONUS = ft_strlen.s

SRC_BONUS = $(addprefix $(SRC_DIR), $(FILES_BONUS))
OBJ_BONUS = $(addprefix $(OBJ_DIR), $(FILES_BONUS:.s=.o))

REQUIRED_DIRS = $(sort $(dir $(OBJ)))

$(NAME): $(REQUIRED_DIRS) $(OBJ)

all: $(NAME)

clean:
	$(RM) $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

$(REQUIRED_DIRS):
	@mkdir -p $@

$(OBJ_DIR)%.o: $(SRC_DIR)%.s
	nasm -g -felf64 -o $@ $<
	ar rcs $(NAME) $@

# utils

test: all
	$(CC) $(CFLAGS) main.c -L. -lasm -o bin.out

bear:
	bear -- make re

leaks: test
	valgrind -q --leak-check=full --show-leak-kinds=all --track-origins=yes ./bin.out

.PHONY: all clean fclean re norm bear