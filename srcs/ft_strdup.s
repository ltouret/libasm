# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltouret <ltouret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/20 23:06:57 by ltouret           #+#    #+#              #
#    Updated: 2021/01/20 23:15:18 by ltouret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strdup
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	extern __errno_location

ft_strdup:
	call ft_strlen
	mov rbx, rdi
	mov rdi, rax
	call malloc
	cmp rax, 0
	je ft_error
	mov rdi, rax
	mov rsi, rbx
	call ft_strcpy
	ret

ft_error:
	mov rdi, 12
	call __errno_location
	mov [rax], rdi
	mov rax, 0
	ret
