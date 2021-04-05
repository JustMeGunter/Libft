# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acrucesp <acrucesp@student.42madrid.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/26 17:42:40 by acrucesp          #+#    #+#              #
#    Updated: 2021/04/05 19:42:09 by acrucesp         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = clang
CFLAGS = -Wall -Wextra -Werror

RM = rm -f

INC_DIR = inc
HEADER = libft.h

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c\
	  ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strnstr.c\
	  ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isascii.c ft_isprint.c\
	  ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c\
	  ft_strtrim.c ft_split.c ft_trimf.c ft_nsep.c ft_itoa.c ft_ndigit.c ft_power.c\
	  ft_strmapi.c ft_strrchr.c ft_isalnum.c ft_lstnew.c ft_lstsize.c ft_lstlast.c\
	  ft_lstiter.c


OBJ = $(SRC:%.c=%.o)
OBJ_DIR = obj


%o: %c $(HEADER)
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME): $(OBJ)
	ar rcs $@ $^

.PHONY: all clean fclean re

all: $(NAME)

clean:
	$(RM) $(NAME)

re: fclean all
