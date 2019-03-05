#include <stdio.h>


int main(void)
{
	int n1 = 30;
	int n2 = 40;
	int n3 = 50;
	printf("n1 = %d \n", n1);
	printf("n2 = %d \n", n2);
	printf("n3 = %d \n", n3);

	int *p1 = &n1;

	printf("Location of n1: %p  \n", &n1);
	printf("Location of n2: %p  \n", &n2);
	printf("Location of n3: %p  \n", &n3);

	printf("Location stored in p1 is: %p  \n", p1);
	printf("Value of the location stored: %d  \n", *p1);

	printf("moving the pointer p1 to the next location in memory...\n");
	
	p1 = p1 - 1;

	printf("Location stored in p1 is: %p  \n", p1);
	printf("Value of the location stored: %d  \n", *p1);

	printf("moving the pointer p1 to the next location in memory...\n");
	
	p1 = --p1;

	printf("Location stored in p1 is: %p  \n", p1);
	printf("Value of the location stored: %d  \n", *p1);

	printf("Size of an int: %lu \n", sizeof(n1));

	*p1 = 333;
	
	printf("n1 = %d \n", n1);
	printf("n2 = %d \n", n2);
	printf("n3 = %d \n", n3);
	
	p1++;
	*p1 = 222;
	
	printf("n1 = %d \n", n1);
	printf("n2 = %d \n", n2);
	printf("n3 = %d \n", n3);

	p1= p1 + 1;
	*p1 = 111;
	
	printf("n1 = %d \n", n1);
	printf("n2 = %d \n", n2);
	printf("n3 = %d \n", n3);




		return 0 ;
}

