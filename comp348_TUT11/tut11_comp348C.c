#include <stdio.h>
#include <string.h>

int main (void)
{
	char *cellphone = malloc(sizeof(char)* 11);

	strcpy(cellphone, "Cellphone");
	printf("%s\n", cellphone);

	free(cellphone);
	return 0;
}

