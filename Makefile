SRCS	= ft_printf.c ft_putnmbrs.c ft_putchars.c

OBJS	= ${SRCS:.c=.o}

NAME	= libftprintf.a

AR+FLAGS	= ar rc
CC+FLAGS 	= gcc -Wall -Wextra -Werror -g
RM		= rm -f
.c.o:
		${CC+FLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			${AR+FLAGS}  ${NAME}  ${OBJS}
			ranlib ${NAME}

all:		${NAME} 

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all