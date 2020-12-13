# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltouret <ltouret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 14:54:29 by ltouret           #+#    #+#              #
#    Updated: 2020/12/13 14:54:33 by ltouret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strcmp

ft_strcmp:
	mov rax, 0
	jmp ft_loop

ft_loop:
	movzx rbx, byte [rdi + rax]
	movzx rcx, byte [rsi + rax]
	cmp rbx, rcx
	jne ft_end
	cmp rbx, 0
	je ft_end
	inc rax
	jmp ft_loop

ft_end:
	sub rbx, rcx
	mov rax, rbx
	ret
