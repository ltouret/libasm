# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltouret <ltouret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 16:31:04 by ltouret           #+#    #+#              #
#    Updated: 2020/12/13 16:06:32 by ltouret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = srcs/ft_strlen.s srcs/ft_strcpy.s srcs/ft_strcmp.s srcs/ft_write.s \
	srcs/ft_read.s

OBJS = ${SRCS:.s=.o}

CC		= clang 
NA		= nasm
RM		= rm -f

CFLAGS		= -g3
NASMFLAGS	= -f elf64

%.o:	%.s
		${NA} ${NASMFLAGS} $<

$(NAME): ${OBJS}
		ar rcs ${NAME} ${OBJS}

all:	${NAME}

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}
		${RM} test

re:		fclean all

test: fclean all
	${CC} ${CFLAGS} main.c ${NAME} 

.PHONY : all clean fclean re test
