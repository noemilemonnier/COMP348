#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool twoStrComp(char *, char *);

int main(void)
{
    char x[]= "aaaaza";
    char y[]= "another";
    bool isSmaller = twoStrComp(x,y);
    printf("Is x smaller than y? %s\n", isSmaller ? "YES" : "NO");
}

bool twoStrComp(char string1[], char string2[] )
{
    int i=0;
    bool value = true;
    while (value == true)
    {
        if (string1[i] < string2[i]){
            value = true;
            return 1;} // First one smaller than second one...
        else if (string1[i] > string2[i]){
            value = false;
            return 0;} // First one larger than second one...
        else if (string1[i] && string2[i]){
            value = false;
            return 0;} // identical and end of strings reached.
        else
            i++;   // identical, not yet decided.
    }
}
