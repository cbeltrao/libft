/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cbeltrao <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/09/27 01:52:54 by cbeltrao          #+#    #+#             */
/*   Updated: 2017/09/27 03:31:17 by cbeltrao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

char	*ft_strrchr(const char *s, int c)
{
	char	*s_c;
	long	i;

	s_c = 0;
	i = 0;
	while (*(s + i))
		i++;
	while (*(s + i) != c && i >= 0)
		i--;
	if (*(s + i) == c)
		s_c = (char *)(s + i);
	return (s_c);
}
