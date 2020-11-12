/*	This header file contains three functions for Lab1Win:
 *	1) bmGSWin -	transfers PPM image from *filedata to *displaydata as it goes
 *					from from an 8-bit to 8-bit display using a colormap if PPM
 *					is greyscale
 *	2) bmRGBWin -	manipulate bits from *filedata to *tempdata to *displaydata
 *					as it goes from a 24-bit to 16-bit display if PPM is RGB
 *	3) divisible4 -	changes the dimensions of the PPM image to values that are
 *					divisible by 4 to avoid errors from Windows
 */

#include <stdio.h>
#include <stdlib.h>

void bmGSWin(unsigned char *filedata,unsigned char *displaydata,int ROWS,int COLS)
{
	int	i;

	//	Because it's a colormap, simply transfer info pixel by pixel from *filedata
	//	to *displaydata via a simple for-loop
	for(i = 0; i < ROWS*COLS; i++)
		displaydata[i] = filedata[i];
}

void bmRGBWin(unsigned char *filedata,unsigned char *displaydata,int ROWS,int COLS)
{
	int				i, oldr, newr;
	unsigned char	manbit1, manbit2;
	unsigned char	*tempdata;			//	Used to temporarily hold information
										//	meant for *displaydata

	// Allocate dynamic memory for *tempdata and do an error check for security
	tempdata = (unsigned char *)calloc(ROWS*COLS*2,sizeof(unsigned char));
	if (tempdata == NULL)
	{
		printf("TEMPDATA: Unable to allocate memory\n");
		exit(0);
	}

	for(i = 0; i < ROWS*COLS*3; i+=3)
	{
		// Bit manipulate the second byte
		manbit1 = filedata[i];
		manbit1 &= 248;
		manbit1 >>= 1;
		manbit2 = filedata[i+1];
		manbit2 &= 192;
		manbit2 >>= 6;
		tempdata[((i/3)*2)+1] = manbit1 | manbit2;

		// Bit manipulate the first byte
		manbit1 = filedata[i+1];
		manbit1 &= 56;
		manbit1 <<= 2;
		manbit2 = filedata[i+2];
		manbit2 &= 248;
		manbit2 >>= 3;
		tempdata[(i/3)*2] = manbit1 | manbit2;
	}

	//	Need to flip PPM image horizontally since it comes out upside down by
	//	doing a for-loop that will copy the information row-by-row
	for(oldr = ROWS-1, newr = 0; newr < ROWS; oldr--, newr++)
		memcpy(&displaydata[COLS*newr*2],&tempdata[COLS*oldr*2],COLS*2);

	//	Don't forget to free up the allocated memory
	free(tempdata);
}

void divisible4(int num)
{
	int i;
	
	//	Check to see if num is divisible by 4
	//	if not divisible, then make it so it is
	i = num % 4;
	if (i != 0)
		num -= i;
}