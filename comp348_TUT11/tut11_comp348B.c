#include <stdio.h>
#include <string.h>

int main(void)
{
	char computers[10] = "CELLPHONE";
	char *cellphone;

	printf("%s\n ", computers);
	strcpy(computers, "ComPuters");
	printf("%s\n ", computers);

	int index = 0;
	while (computers[index] != '\0')
			{
			printf("%c\n", computers[index]);
			index++;
			}
	return 0;
}

