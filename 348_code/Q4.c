#include <stdio.h>
#include <stdbool.h>

bool twoStrComp(char[], char[]);

int main(void)
{
	char x[]= "aaaa";
	char y[]= "azzza";
    bool isSmaller = twoStrComp(x,y);
    printf("%s \n", isSmaller ? "true" : "false");
	
}

bool twoStrComp(char string1[], char string2[] )
{
    int i=0, isSmaller=0;
    bool value = false;
       while(isSmaller==0) {
        if (string1[i]>string2[i])
        {
            isSmaller=0;
            value = false;
        }
        else if (string1[i]<string2[i])
        {
            isSmaller=1;
            value = true;
        }
        else if (string1[i]==string2[i])
        {
            return 0;
            value = true;
        }
        else
        {
            i++;
        }
    }
    if(isSmaller == 1)
        return (value == true);
    if(isSmaller == 0)
        return (value == false);
 return value;
}
  
