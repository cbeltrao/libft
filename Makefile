# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cbeltrao <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/27 01:30:02 by cbeltrao          #+#    #+#              #
#    Updated: 2017/10/15 16:34:53 by cbeltrao         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

CFLAGS=-Wall -Wextra -Werror

SRC=\
		ft_strncat.c\
		ft_atoi.c\
		ft_strlcat.c\
		ft_memcmp.c\
		ft_bzero.c\
		ft_memchr.c\
		ft_memccpy.c\
		ft_memcpy.c\
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_strcpy.c\
		ft_strdup.c\
		ft_strlen.c\
		ft_strncpy.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_islower.c\
		ft_isupper.c\
		ft_strcat.c\
		ft_strcmp.c\
		ft_strncmp.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strstr.c\
		ft_putchar.c\
	 	ft_putstr.c\
		ft_putnbr.c\
		ft_memset.c\
		ft_memmove.c\
		ft_strnstr.c\
		ft_memalloc.c\
		ft_memdel.c\
	 	ft_strnew.c\
		ft_strdel.c\
	 	ft_strclr.c\
		ft_striter.c\
		ft_striteri.c\
		ft_strmap.c\
		ft_strmapi.c\
		ft_strequ.c\
		ft_strnequ.c\
		ft_strsub.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_isspace.c\
		ft_strsplit.c\
	 	ft_wordcount.c\
		ft_wordsplit.c\
		ft_iscchar.c\
		ft_putendl.c\
		ft_putstr_fd.c\
		ft_putchar_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_lstnew.c\
	 	ft_lstdelone.c\
		ft_lstdel.c\
		ft_lstadd.c\
		ft_lstiter.c\
		ft_lstmap.c\
		ft_itoa.c\

OBJECTS=$(SRC:.c=.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): 
	@echo "\033[92mCompiling libft\033[0m"
	@gcc -I. $(CFLAGS) -c $(SRC)
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)

clean:
	@echo "\033[31mDeleting objects\033[0m"
	@/bin/rm -f $(OBJECTS)

fclean: clean
	@echo "\033[31mDeleting $(NAME)\033[0m"
	@/bin/rm -f $(NAME)

re: fclean all
