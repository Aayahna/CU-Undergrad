#include <stdio.h>
#include <stdlib.h>

int main ()
{
	
	int 			i;
 	unsigned char	manbit1, manbit2;
 	unsigned char	filedata[1];
 	unsigned char	displaydata[2];
 	
 	filedata[0] = 206;
 	i = 0;
 	
 	manbit1 = filedata[i];
 	manbit1 &= 248;
 	manbit1 >>= 3;
 	
 	manbit2 = filedata[i];
 	manbit2 &= 28;
 	manbit2 <<= 3;
 	
 	displaydata[(i*2)+1] = manbit1 | manbit2;
 	
 	manbit1 = filedata[i];
 	manbit1 &= 248;
 	
 	manbit2 = filedata[i];
 	manbit2 >>= 5;
 	manbit2 &= 7;
 	
 	displaydata[(i*2)] = manbit1 | manbit2;
 	
 	printf("displaydata[0] = %d\n", displaydata[0]);
 	printf("displaydata[1] = %d\n", displaydata[1]);
	return(0);
}
