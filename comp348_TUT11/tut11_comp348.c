#include <stdio.h>
int main(void)
{
	char c;
	c = 'L';
	printf("c is  %c\n", c);
	printf("c is %d in ASCII", c);
	c = c=1;

	printf("c is %c\n", c);
	printf("c is %d in ASCII", c);

	printf("lower case letter of %c is %c\n", c, (c+32));
	
	return 0 ;
}

