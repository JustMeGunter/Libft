# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acrucesp <acrucesp@student.42madrid.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/26 17:42:40 by acrucesp          #+#    #+#              #
#    Updated: 2021/05/04 18:52:40 by acrucesp         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc 
CFLAGS = -Wall -Wextra -Werror -g

RM = rm -f

INC_DIR = inc/
HEADER = libft.h

SRC_DIR = src/
SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c\
	  ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strnstr.c\
	  ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isascii.c ft_isprint.c\
	  ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c\
	  ft_strtrim.c ft_split.c ft_trimf.c ft_nsep.c ft_itoa.c ft_ndigit.c ft_power.c\
	  ft_strmapi.c ft_strrchr.c ft_isalnum.c ft_lstnew.c ft_lstsize.c ft_lstlast.c\
	  ft_lstiter.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c\
	  ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstlast.c\
	  ft_lstmap.c ft_strchrs.c ft_itoa_base.c


OBJ_DIR = obj/
OBJ = $(addprefix $(OBJ_DIR), $(SRC:%.c=%.o))

all: $(NAME)

$(OBJ_DIR)%o: $(SRC_DIR)%c
	$(CC) $(CFLAGS) -I $(INC_DIR) -c $< -o $@

$(OBJ): | $(OBJ_DIR)

$(OBJ_DIR):
	echo $(OBJ)
	mkdir -p $(OBJ_DIR)

$(NAME): $(OBJ)
	ar rcs $@ $^

.PHONY: all clean fclean re

clean:
	$(RM) -rf $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all
