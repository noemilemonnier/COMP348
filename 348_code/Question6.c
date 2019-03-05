#include <stdio.h>
long power(int, int);
long factorial(int);
long basee(int, int);
long lnx1(int, int);
long computetrig(int, int, int);

int main (void){
	int s1= 1;
	int s2 = 2;
	int x = 1;
	int n = 1;

	float result = computetrig(x, s1, n);
	float result2 = computetrig(x, s2, n);
	printf("for exponential = %f \n", result);
	printf("for log = %f \n", result2);
	printf("\n");

}

long power(int base,int n){
  if (n == 0) 
	  return 1;
  else
	  return(base * power(base, (n-1)));
}

long factorial(int n) {
      if (n < 2)
        return 1;
      else
        return(n * factorial(n-1)); 
}

long basee(int base, int n){
  if(n ==0)
	  return 1;
  else{
	  long temp = (power(base, n) / factorial(n));
 	  long temp2 = (temp + basee(base, n-1));
	  return temp2; }   
}


long lnx1(int base, int n){
   if (n == 0) 
	   return base;
   else{
	   long temp = (power(base, n+1)/(n+1));
   	   long temp2 = temp * power(-1, n);
	   long temp3 = temp2 + lnx1(base, n-1);
	   return temp3;  }  
}

   
long computetrig(int x,int s, int n){
  if( (s != 1) && (s != 2)){
	  printf( "Enter Valid Value");
	  return 0;}
  if(s==1)
	  return basee(x,n);
  if((s==2) && (x> -1) && (x<2))
	  return lnx1(x, n);
  else
	  printf("Error! Please enter valide values");
  return 0; 
}
