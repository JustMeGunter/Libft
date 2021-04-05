/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acrucesp <acrucesp@student.42madrid.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/04 18:30:30 by acrucesp          #+#    #+#             */
/*   Updated: 2021/04/04 20:01:41 by acrucesp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_itoa(long long int n)
{
	unsigned long long	nn;
	char				*ret;
	int					i;
	int					s;

	i = ft_ndigit(n, 10);
	if (n < 0 && ++i)
	{
		nn = -n;
		s = 1;
	}		
	else
		nn = n;
	ret = ft_calloc(sizeof(char), i + 1);
	if (nn == 0)
		ret[0] = '0';
	while (nn != 0)
	{
		ret[--i] = 48 + nn % 10;
		nn = nn / 10;
	}
	if (s == 1)
		ret[0] = '-';
	return (ret);
}
