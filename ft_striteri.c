/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cbeltrao <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/09/30 04:25:57 by cbeltrao          #+#    #+#             */
/*   Updated: 2017/10/12 00:58:35 by cbeltrao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

void	ft_striteri(char *s, void (*f)(unsigned int, char*))
{
	size_t i;

	i = 0;
	if (s)
	{
		while (*(s + i))
		{
			f(i, &s[i]);
			i++;
		}
	}
}
