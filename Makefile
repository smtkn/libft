# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stakan <stakan@student.42.tr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/13 14:50:54 by stakan            #+#    #+#              #
#    Updated: 2023/09/13 14:51:03 by stakan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Name of the project
NAME	=	libft.a

#Compiler + Flags 
# -I (include) Specifies a directory dir to search for included makefiles.
CC	=	gcc
CFLAGS	=	-Wall -Wextra -Werror
RM	=	rm -f

#.c files
SRC	=	ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c\
ft_isprint.c ft_memchr.c ft_memcmp.c ft_striteri.c\
ft_memcpy.c ft_memmove.c ft_memset.c ft_putendl_fd.c\
ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c\
ft_strchr.c ft_strlcpy.c ft_strmapi.c\
ft_strdup.c ft_split.c ft_calloc.c ft_itoa.c\
ft_strlen.c ft_strncmp.c ft_substr.c ft_strtrim.c\
ft_strnstr.c ft_strrchr.c ft_strjoin.c\
ft_tolower.c ft_toupper.c ft_strlcat.c

#Object files
OBJ	=	$(SRC:.c=.o)

B = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

B_OBJ =	$(B:.c=.o)

all:	$(NAME)

bonus:	$(B_OBJ)
		ar rcs $(NAME) $(B_OBJ)

$(NAME):	$(OBJ)
			ar rcs $(NAME) $(OBJ)

clean:
			$(RM) $(OBJ) $(B_OBJ)

fclean:	clean
			$(RM) $(NAME)

re:	fclean $(NAME)

.PHONY: all clean fclean re bonus