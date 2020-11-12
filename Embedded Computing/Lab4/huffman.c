/*	Aayahna Herbert
 *	Dr. Adam Hoover
 *	ECE 4680, Spring 20
 *	11 February 2020
 *	Lab 3: LZW Compression
 */
 
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include "huffman.h"

 int main (int argc, char *argv[])
 {
 	int				bytesIN;
 	FILE			*fptIN, *fptOUT;
 	unsigned char	*dataIN;
 	
 	/* Tell user how to use program if incorrect arguments */
 	if (argc != 4)
 	{
 		printf("Usage:	huffman [-c or -d] [input filename] [output filename]\n");
 		printf("Usage:	use -c to compress & -d to decompress\n");
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
 	
 	
 	/* Determine if user wants to compress or decompress the inputfile */
 	if (strcmp(argv[1],"-c") == 0){
 		compress(fptIN, fptOUT);
  }
 	
 	if (strcmp(argv[1],"-d") == 0){
    int i;
    int * freqTableRaw = (int *)malloc(sizeof(int) * 256);
    //fread(freqTableRaw,sizeof(int),256,fptIN);
    frequencyPair * freqTable = (frequencyPair *)malloc(sizeof(frequencyPair) * 256);
    fread(freqTable,sizeof(frequencyPair),256,fptIN);
    //for(i = 0; i < 256; i++){
    //  freqTable[i].symbol = i;
    //  freqTable[i].count = freqTableRaw[i];
    //  printf("table value %d -> count %d\n",i,freqTableRaw[i]);
    //}
 		decompress(fptIN, fptOUT,freqTable);
  }
 	
 	/* Close file pointers and free up the allocated memory */
 	fclose(fptIN);
 	fclose(fptOUT);
 	
 	free(dataIN);
 	
 	return(0);
 }
