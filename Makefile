CC = gcc
GFLAGS = -Wall -Wextra -Werror
NAME = push_swap
SRC = swap.c push.c rotate.c reverse_rotate.c\
	sort_tiny.c sort_small.c sort_many.c\
	coordcomp.c isSorted.c get_max_min.c midian.c  minIndexSign.c half_ary.c push_a_to_b.c error.c\
	ft_atoi.c ft_strlen.c ft_split.c ft_strncmp.c ft_strlcpy.c\
	push_swap.c\

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):$(OBJ)
	$(CC) $(GFLAGS) $(OBJ) -o $(NAME)

# $(OBJ): $(SRC)
# 	$(CC) $(GFLAGS) -c $(SRC)

.c.o:
	$(CC) $(GFLAGS) -c $(SRC)

test: all
	for i in $$(seq 7 7); do \
		cd push_swap_tester/ && \
		python3 push_swap_tester.py -l $$i -c 100 -r 1 $$i && \
		cd - ; \
	done

test1: all
	./push_swap 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean all re
