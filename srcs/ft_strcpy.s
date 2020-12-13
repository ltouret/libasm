# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltouret <ltouret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 17:26:09 by ltouret           #+#    #+#              #
#    Updated: 2020/12/04 19:17:19 by ltouret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strcpy

ft_strcpy:
	mov rax, 0

ft_loop:
	mov dl, byte [rsi + rax]
	mov byte [rdi + rax], dl
	cmp dl, 0
	je ft_end
	inc rax
	jmp ft_loop

ft_end:
	mov		rax, rdi
	ret
