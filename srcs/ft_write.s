# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ltouret <ltouret@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 16:03:35 by ltouret           #+#    #+#              #
#    Updated: 2020/12/13 16:04:06 by ltouret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_write
	extern __errno_location

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jl ft_error
	ret

ft_error:
	neg rax
	mov rdi, rax
	call __errno_location
	mov [rax], rdi
	mov rax, -1
	ret
