NAME = libasm.a

CFLAGS = -Wall -Wextra -Werror
CC = cc
RM = rm -fr

SRC_DIR = src/
OBJ_DIR = obj/

HEADERS = src/libasm.h

FILES = ft_strlen.s
FILES += ft_strcpy.s

SRC = $(addprefix $(SRC_DIR), $(FILES))
OBJ = $(addprefix $(OBJ_DIR), $(FILES:.s=.o))

REQUIRED_DIRS = $(sort $(dir $(OBJ)))

$(NAME): $(REQUIRED_DIRS) $(HEADERS) $(OBJ)
#	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)
	ar rcs $(NAME) $(OBJ)

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

# utils

test:
	$(CC) $(CFLAGS) main.c -L. -lasm -o bin.out

bear:
	bear -- make re

leaks:
	valgrind -q --leak-check=full --show-leak-kinds=all --track-origins=yes ./$(NAME)

.PHONY: all clean fclean re norm bear