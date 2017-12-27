# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: igaliuk <igaliuk@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/27 15:19:25 by igaliuk           #+#    #+#              #
#    Updated: 2017/12/27 16:17:47 by igaliuk          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAG = -Wall -Wextra -Werror
SRC = 	ft_aaff.c \
		ft_colors.c \
		ft_first.c \
		ft_itoa_base_u.c \
		ft_lsttostrzlo.c \
		ft_ordernum_base_u.c \
		ft_persent.c \
		ft_precision.c \
		ft_printf.c \
		ft_printint.c \
		ft_printtype.c \
		ft_second.c \
		ft_specifier.c \
		ft_tofin.c \
		ft_wecha.c \
		ft_writepersent.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	make -C libft
	ar -rcu $(NAME) $(OBJ) libft/*.o
	ranlib $(NAME)

%.o: %.c
	gcc $(FLAG) -c -o $@ $<

clean:
	rm -f $(OBJ)
	make clean -C libft
fclean: clean
	rm -f $(NAME)
	make fclean -C libft

re: fclean all
