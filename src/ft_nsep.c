/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_nsep.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acrucesp <acrucesp@student.42madrid.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/03 18:18:12 by acrucesp          #+#    #+#             */
/*   Updated: 2021/04/03 18:20:33 by acrucesp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_nsep(char *str, char c)
{
	int		i;

	if (!str)
		return (0);
	i = 0;
	while (*str)
		if (*str++ == c)
			i++;
	return (i);
}
