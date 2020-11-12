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
 
 
 
 void compress(unsigned char *dataIN,unsigned char *dataOUT,int bytesIN,FILE *fptOUT)
 {
 	int				i, bytesOUT, RunCount, MaxCount;
 	unsigned char	A, B;
 	
 	// Initialize bytesWRITE, RunCount, MaxCount, and read value A
 	bytesOUT = 0;
 	RunCount = 1;
 	MaxCount = 255;
 	A = dataIN[0];
 	
 	// Use a loop to write compressed data & check if we've reached end of data
 	for (i = 1; i < bytesIN; i++)
 	{
 		// Read Value B
 		B = dataIN[i];	
 			
 		// If NOT at end of data, check if A == B
 		if (A == B)	
 		{	
 			// If A == B, see if RunCount is at the maximum number
 			if (RunCount == MaxCount)
 			{		
 				// If RunCount at max, write RunCount & A, A = B, RunCount = 1
 				dataOUT[bytesOUT++] = RunCount;
 				dataOUT[bytesOUT++] = A;
 				A = B;
 				RunCount = 1;
 			}
 				
 			// If RunCount NOT at max, increment RunCount
 			else
 			{
 				RunCount++;
 			}
 		}
 		
 		// If A =/= B, write RunCount & A, let A = B and RunCount = 1
 		else
 		{
 			dataOUT[bytesOUT++] = RunCount;
 			dataOUT[bytesOUT++] = A;
 			A = B;
 			RunCount = 1;
 		}	
 	}
 	
 	// If at end of data, write RunCount and A; DONE
 	dataOUT[bytesOUT++] = RunCount;
 	dataOUT[bytesOUT++] = A;
 	
 	
 	// Write compressed data to the file pointer
 	fwrite(dataOUT, 1, bytesOUT, fptOUT); 	
 }
 
 
 void decompress(unsigned char *dataIN,int bytesIN,FILE *fptOUT)
 {
 	int				i,j;
 	unsigned char	A;
 	
 	// Will go through array by twos to get the symbol and how many times it
 	// needs to be repeated
 	for (i = 0; i < bytesIN; i += 2)
 	{
 		// Store symbol in A
 		A = dataIN[i+1];
 		
 		// Use a for loop to write symbol A to the output file the number of
 		// times specified from the input data
 		for (j = 0; j < dataIN[i]; j++)
 			fwrite(&A,1,1,fptOUT);
 	}
 }
 	
 	
 	
 	
 	
