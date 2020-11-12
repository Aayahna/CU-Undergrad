/*	This header file contains two functions for Lab1X:
 *	1) bmGSX -	manipulate bits from *filedata to fit *displaydata
 *				as it goes from an 8-bit to 16-bit display if PPM is 
 *				greyscale
 *	2) bmRGBX -	manipulate bits from *filedata to fit *displaydata
 *				as it goes from a 24-bit to 16-bit display if PPM is 
 *				RGB
 */
 
 
 void bmGSX(unsigned char *filedata,unsigned char *displaydata,int ROWS,int COLS)
 {
 	int 			i;
 	unsigned char	manbit1, manbit2;
 	
 	for (i = 0; i < ROWS*COLS; i++)
 	{
 		// Bit manipulate the first byte
 		manbit1 = filedata[i];
 		manbit1 &= 248;
 		manbit1 >>= 3;
 		manbit2 = filedata[i];
 		manbit2 &= 28;
 		manbit2 <<= 3;
 		displaydata[(i*2)] = manbit1 | manbit2;
 		
 		// Bit manipulate the second byte
 		manbit1 = filedata[i];
 		manbit1 &= 248;
 		manbit2 = filedata[i];
 		manbit2 >>= 5;
 		manbit2 &= 7;
 		displaydata[(i*2)+1] = manbit1 | manbit2;
 	}
 }
 
 void bmRGBX(unsigned char *filedata,unsigned char *displaydata,int ROWS,int COLS)
 {
 	int				i;
 	unsigned char	manbit1, manbit2;
 	
 	for (i = 0; i < ROWS*COLS*3; i +=3)
 	{
 		// Bit manipulate the second byte
 		manbit1 = filedata[i];
 		manbit1 &= 248;
 		manbit2 = filedata[i+1];
 		manbit2 >>= 5;
 		displaydata[((i/3)*2)+1] = manbit1 | manbit2;
 	
 		// Bit manipulate the first byte
 		manbit1 = filedata[i+1];
 		manbit1 &= 28;
 		manbit1 <<= 3;
 		manbit2 = filedata[i+2];
 		manbit2 >>= 3;
 		displaydata[(i/3)*2] = manbit1 | manbit2;
 	}
 }