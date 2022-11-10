# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MAKEFILE                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: realdahh <realdahh@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/17 19:21:24 by realdahh          #+#    #+#              #
#    Updated: 2022/10/23 12:42:45 by realdahh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a
cc		=	 gcc
CFLAGS	= -Wall -Wextra -Werror 

SRCS	= ft_printf.c ft_functions01.c ft_functions02.c

OBJS	= $(SRCS:.c=.o)

$(NAME): ${OBJS}
			ar rcs ${NAME} ${OBJS}
			
all:	${NAME}

clean:
		${RM} ${OBJS}
		
fclean:	clean
		${RM} ${NAME}
		
re:		fclean all