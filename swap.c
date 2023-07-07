#include "push_swap.h"

void	swap(int *x, int *y)
{
	int	z;

	z = *x;
	*x = *y;
	*y = z;
}

void	sa(int *ary_a)
{
	swap(&ary_a[0], &ary_a[1]);
	printf("sa\n");
}

void	sb(int *ary_b)
{
	swap(&ary_b[0], &ary_b[1]);
	printf("sb\n");
}

void	ss(int *ary_a, int *ary_b)
{
	swap(&ary_a[0], &ary_a[1]);
	swap(&ary_b[0], &ary_b[1]);
	printf("ss\n");
}