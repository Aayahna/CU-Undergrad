/*	This header file contains two functions for Lab2RLE:
 *	1) compress -	compresses the data of the input file using algorithm given
 *					during class and then writes newly compressed data to the
 *					user-designated output file
 *
 *	2) decompress -	decompressed the data of the compressed input file and then
 *					writes newly decompressed data to the user-designated output
 *					file
 *
 */
 
 
 
 void compress(unsigned char *dataIN,int bytesIN,FILE *fptOUT)
 {
 	unsigned char		**dictionary;
 	int					*d_length;
 	unsigned char		*P, *PC, C;
 	unsigned short int	code;
 	int					P_length, C_length, PC_length;
 	int					i, j, dataCOUNT, bookmark, PC_dmatch;
 	
 	
 	
 	// Allocate dynamic memory for **dictionary and *d_length
 	dictionary = (unsigned char **)calloc(65536,sizeof(unsigned char *));
 	
 	for (i = 0; i < 65536; i++)
 		dictionary[i] = (unsigned char *)calloc(500,sizeof(unsigned char));
 	
 	d_length = (int *)calloc(65536,sizeof(int));
 	P = (unsigned char *)calloc(500,sizeof(unsigned char));
 	PC = (unsigned char *)calloc(500,sizeof(unsigned char));
 	
 	// Initialize dictionary w/ all roots
 	for (i = 0; i < 256; i++)
 	{
 		dictionary[i][0] = i;
 		d_length[i] = 1;
 	}
 	bookmark = i;
 		
 	// Let P(previous) = empty
	P_length = 0;
	
	// Use a loop to write compressed data & check if we've reached end of data
	for (dataCOUNT = 0; dataCOUNT < bytesIN; dataCOUNT++)
	{
 		// Read C(current)
 		C = dataIN[dataCOUNT];
 		C_length = 1;
 		
 		// Update P+C
		PC_length = P_length + 1;
		if (PC_length >= 500)
		{
			printf("ERROR: You have exceeded the PC_length max size\n");
			exit(0);
		}
		memset(PC,'\0',PC_length);
		for (i = 0; i < PC_length; i++)
		{
			if (i < P_length)
				PC[i] = P[i];
			else
				PC[i] = C;
		}
		
		// Check if P+C in the dictionary
 		for (i = 0; i < bookmark; i++)
 		{
 			PC_dmatch = 0;
 			if (d_length[i] == PC_length)
 			{
 				PC_dmatch = 1;
 				for (j = 0; j < PC_length; j++)
 				{
 					if ( PC[j] != dictionary[i][j])
 						PC_dmatch = 0;
 				}
 			}
 			
 			if (PC_dmatch == 1)
 			{
 				code = i;
 				break;
 			}
 		}
 		
 		// If P+C == dictionary, let P = P+C
 		if (PC_dmatch == 1)
 		{
 			P_length = PC_length;
			memset(P,'\0',P_length);
			if (P_length >= 500)
 			{
 				printf("ERROR: You have exceeded P_length max size\n");
 				exit(0);
 			}
			for (i = 0; i < P_length; i++)	
				P[i] = PC[i];
 		}
		
		// If P+C != dictionary, output P code, add P+C to dictionary, let P=C
 		else if (PC_dmatch == 0)
 		{
 			fwrite(&code,1,2,fptOUT);
 			
 			for (i = 0; i < PC_length; i++)
 				dictionary[bookmark][i] = PC[i];
 			d_length[bookmark] = PC_length;
 			bookmark++;
 			
 			memset(P,'\0',P_length);
 			P_length = 1;
 			P[0] = C;
 			code = C;
 		}
		
 	}
	// Write P code to the file pointer
 	fwrite(&code,1,2,fptOUT); 
 	
 	// Don't forget to free up space
 	free(P);
 	free(PC);
 	free(d_length);
 	for( i = 0; i < 65536; i++)
 		free(dictionary[i]);
 	free(dictionary);
 }
 
 
 void decompress(unsigned char *dataIN,int bytesIN,FILE *fptOUT)
 {
 	unsigned char		**dictionary;	
 	int					*d_length;
 	unsigned short int	P, C;
 	unsigned char		*C_pattern, *P_pattern;
 	int					i, j, C_dmatch, dataCOUNT, bookmark;
 	
 	
 	// Allocate dynamic memory for **dictionary and *d_length
 	dictionary = (unsigned char **)calloc(65536,sizeof(unsigned char *));
 	
 	for (i = 0; i < 65536; i++)
 		dictionary[i] = (unsigned char *)calloc(500,sizeof(unsigned char));
 	
 	d_length = (int *)calloc(65536,sizeof(int));
 	C_pattern = (unsigned char *)calloc(500,sizeof(unsigned char));
 	P_pattern = (unsigned char *)calloc(500,sizeof(unsigned char));
 	
 	// Initialize dictionary w/ all roots
 	for (i = 0; i < 256; i++)
 	{
 		dictionary[i][0] = i;
 		d_length[i] = 1;
 	}
 	bookmark = i;
 	
 	for (i = 256; i < 65536; i++)
 		d_length[i] = 0;
 	
 	// Read C (current)
 	C = (dataIN[1] << 8) | dataIN[0];
 	
 	// Output pattern for C
 	for (i = 0; i < d_length[C]; i++)
 		C_pattern[i] = dictionary[C][i];
 			
 	// Outputting pattern for C
 	fwrite(C_pattern,1,d_length[C],fptOUT);
 		
 	// Use loop to write uncompressed data & check if we've reached end of data
	for (dataCOUNT = 2; dataCOUNT < bytesIN; dataCOUNT += 2)
	{
 		// Let P (previous) = C
 		P = C;
 		
 		// Read C (current)
 		C = (dataIN[dataCOUNT+1] << 8) | dataIN[dataCOUNT];
 		
 		// Check to see if C is in the dictionary
 		if (d_length[C] > 0)
 			C_dmatch = 1;
 		else
 			C_dmatch = 0;
 			 		
 		// In dictionary: output pattern for C, X = pattern for P, Y = 1st char
 		// of pattern for C, and add X+Y to dictionary
 		if (C_dmatch == 1)
 		{ 			
 			// Read Previous and Current pattern
 			for (i = 0; i < d_length[P]; i++)
 				P_pattern[i] = dictionary[P][i];
 				
 			for (i = 0; i < d_length[C]; i++)
 				C_pattern[i] = dictionary[C][i];
 			
 			// Outputting pattern for C
 			fwrite(C_pattern,1,d_length[C],fptOUT);
 			
 			// Adding X+Y to the dictionary
 			d_length[bookmark] = d_length[P] + 1;
 			for (i = 0; i < d_length[P]; i++)
 				dictionary[bookmark][i] = P_pattern[i];
 			dictionary[bookmark][i] = C_pattern[0];
 			
 			// Update bookmark
 			bookmark++;	
 		}
 		
 		// NOT in dictionary: X = pattern for P, Z = 1st char of pattern for P,
 		// output X+Z, and add X+Z to dictionary
 		if (C_dmatch == 0)
 		{
 			// Read Previous pattern
 			for (i = 0; i < d_length[P]; i++)
 				P_pattern[i] = dictionary[P][i];
 			
 			// Adding X+Z to the dictionary
 			d_length[bookmark] = d_length[P] + 1;
 			for (i = 0; i < d_length[P]; i++)
 				dictionary[bookmark][i] = P_pattern[i];	
 			dictionary[bookmark][i] = P_pattern[0];
 			
 			// Outputting pattern for X+Z
 			fwrite(dictionary[bookmark],1,d_length[bookmark],fptOUT);
 			
 			// Update bookmark
 			bookmark++;
 		}	
 	}
 	
 	// Don't forget to free up space
 	free(C_pattern);
 	free(P_pattern);
 	free(d_length);
 	for( i = 0; i < 65536; i++)
 		free(dictionary[i]);
 	free(dictionary);
 }
 	
 	
 	
 	
 	
