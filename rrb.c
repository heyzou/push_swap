#include "push_swap.h"

void	rrb(int *ary_b)
{
	size_t len_b;
	int x;
	len_b = ft_strlen(ary_b);
	x = ary_b[len_b - 1];
	ary_b[len_b] = '\0';
	while (len_b > 1)
	{
		ary_b[len_b - 1] = ary_b[len_b - 2];
		len_b--;
	}
	ary_b[0] = x;
	printf("rrb\n");
}