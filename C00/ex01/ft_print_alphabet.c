#include <stdio.h>
void ft_print_alphabet(void);
int main()
{
	char c = 'a';
	ft_print_alphabet();
}
void ft_print_alphabet(void)
{
	char c;
		for (c = 'a'; c<= 'z'; ++c)
		printf("%c ", c);
	}
