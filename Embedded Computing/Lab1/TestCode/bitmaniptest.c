#include <stdio.h>
#include <stdlib.h>

void bmGSX(unsigned char *filedata,unsigned char *displaydata,int ROWS,int COLS)
 {
 	int 			i;
 	unsigned char	manbit1, manbit2;
 	
 	for (i = 0; i < ROWS*COLS; i++)
 	{
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
 	}
 }
