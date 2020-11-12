/*	Aayahna Herbert
 *	Dr. Adam Hoover
 *	ECE 4680, Spring 20
 *	11 February 2020
 *	Lab 3: LZW Compression
 */
 
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include "lzw.h"
 
 int main (int argc, char *argv[])
 {
 	int				bytesIN;
 	FILE			*fptIN, *fptOUT;
 	unsigned char	*dataIN;
 	
 	/* Tell user how to use program if incorrect arguments */
 	if (argc != 4)
 	{
 		printf("Usage:	lzw [-c or -u] [input filename] [output filename]\n");
 		printf("Usage:	use -c to compress & -u to decompress\n");
 		exit(0);
 	}
 	
 	/* Open inputfile for reading */
 	fptIN = fopen(argv[2],"rb");
 	if (fptIN == NULL)
 	{
 		printf("Unable to open %s for reading\n",argv[2]);
 		exit(0);
 	}
 	
 	/* Open outputfile for writing */
 	fptOUT = fopen(argv[3],"wb");
 	if (fptOUT == NULL)
 	{
 		printf("Unable to open %s for writing\n",argv[3]);
 		exit(0);
 	}
 	
 	/* Determing the number bytes for inputfile so we can parse through
 		the inputfile correctly */
 	for (bytesIN = 0; getc(fptIN) != EOF; ++bytesIN);
 	rewind(fptIN);
 	
 	/* Allocate dynamic memory for dataIN and dataOUT */
 	
 	// Going to allocate double the byte size to make sure we have all the space
 	//	needed to work with the input and output data
 	dataIN = (unsigned char *)calloc(bytesIN*2,sizeof(unsigned char));
 	
 	/* Read dataIN from input file */
 	fread(dataIN,1,bytesIN,fptIN);
 	
 	
 	/* Determine if user wants to compress or decompress the inputfile */
 	if (strcmp(argv[1],"-c") == 0)
 		compress(dataIN, bytesIN, fptOUT);
 	
 	if (strcmp(argv[1],"-u") == 0)
 		decompress(dataIN, bytesIN, fptOUT);
 	
 	/* Close file pointers and free up the allocated memory */
 	fclose(fptIN);
 	fclose(fptOUT);
 	
 	free(dataIN);
 	
 	return(0);
 }
