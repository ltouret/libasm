# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltouret <ltouret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 16:24:13 by ltouret           #+#    #+#              #
#    Updated: 2020/12/13 14:55:00 by ltouret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strlen

ft_strlen:
	mov rax, 0
	jmp ft_compare

ft_loop:
	inc rax

ft_compare:
	cmp byte [rdi + rax], 0
	jne ft_loop

ret
