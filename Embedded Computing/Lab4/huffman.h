#include <stdlib.h>
#include <stdio.h>
#include "tree.h"
#include "binaryio.h"
#include "binaryops.h"
#include <assert.h>

/*	This header file contains two functions for Lab4Huffman:
 *	1) compress -	compresses the data of the input file using algorithm given
 *					during class and then writes newly compressed data to the
 *					user-designated output file
 *
 *	2) decompress -	decompressed the data of the compressed input file and then
 *					writes newly decompressed data to the user-designated output
 *					file
 *
 */
 
 
 void compress(FILE * fptIN,FILE *fptOUT)
 {
 	frequencyPair	*freqTable;
 	treeNode		*treeRoot;
 	unsigned char	*code = (unsigned char *)malloc(4);
 	int				i,j;
  unsigned char currentChar = 0;
  int readVal = 0;
 	
 	// Make frequency table
 	freqTable = (frequencyPair *)calloc(256,sizeof(frequencyPair));
 
  	for(i = 0; i < 256; i++)
  	{
    	freqTable[i].symbol = i;
   		freqTable[i].count = 0;
  	}
    while((readVal = fgetc(fptIN)) != EOF){
      currentChar = readVal;
      freqTable[currentChar].count++;
    }
    rewind(fptIN);
  	//for (i = 0; i < bytesIN; i++){
  	//	freqTable[dataIN[i]].count++;
    //}

    //printf("Counts: \n");
    //for(i = 0; i < 256; i++){
    //  printf("%d \n",freqTable[i].count);
    //}
    //printf("\n");
  		
  	// Print frequency table to the top of the output file (for decompressing)
  	fwrite(freqTable,sizeof(frequencyPair),256,fptOUT);

  	// Sort frequencies & build a tree
	treeRoot = constructFromFrequenciesList(freqTable);

	// Initialize binary code dictionary
	initializedictionary();

	// Create binary code dictionary from the symbol in the tree
	getCodeFromSymbol(treeRoot,code,0);

	binaryIOFile * fptOUTbin = createBinaryIOFile(fptOUT);
	
	// Start reading input data byte-by-byte
  int bytePos = 0;
  while((readVal = fgetc(fptIN)) != EOF){
    bytePos++;
    //printf("%d\n",readVal);
    currentChar = readVal;
    assert(dictionary[currentChar].length>0);
    for(i = 0; i < dictionary[currentChar].length; i++){
      writeBit(fptOUTbin,getBitAtPosition(dictionary[currentChar].data,i));
    }
  }
  closeBinaryIOFile(fptOUTbin);
	//for (i = 0; i < bytesIN; i++)
	//{
	//	for (j = 0; j <= dictionary[dataIN[i]].length; j++)
	//		writeBit(fptOUTbin,getBitAtPosition(dictionary[dataIN[i]].data,j));
	//}
			
  	//free(freqTable);
  	//fclose(fptOUTbin->filepointer);
  }
 
 
 void decompress(FILE * fptIN,FILE *fptOUT,frequencyPair *freqTable)
 {
 	int				i, j, k, match, totalSymbols, code_length, lengthMAX;
 	unsigned char	*code, *symbol;
 	treeNode		*treeRoot;
 	
 	// Initialize approriate variables
 	totalSymbols = 0;
 	//code_length = 0;
 	//lengthMAX = 0;
 	
 	symbol = (unsigned char *)malloc(1);
 	
 	// Set the total number of symbols in the uncompressed file
  //printf("counts \n");
 	for (i = 0; i < 256; i++){
 		totalSymbols += freqTable[i].count;
    //printf("counts: %d\n",freqTable[i].count);
  }
  //printf("\n");
 	
 	// Sort frequencies & build a tree
	treeRoot = constructFromFrequenciesList(freqTable);
	
	// Initialize binary code dictionary
	initializedictionary();

	// Create binary code dictionary from the symbol in the tree
	getCodeFromSymbol(treeRoot,code,0);

  //printf("len: %d\n",dictionary[10].length);

  //printf("%p %p \n",treeRoot->leftBranch,treeRoot->rightBranch);	
  int numSymbolsRead = 0;
  binaryIOFile * inputBinFile = createBinaryIOFile(fptIN);
  treeNode * current = treeRoot;
  //printf("Total symbols: %d\n",totalSymbols);
  int numBitsRead = 0;
  while(numSymbolsRead < totalSymbols){
    unsigned char currentBit = readBit(inputBinFile);
    //printf("b->%d\n",currentBit);
    numBitsRead++;
    if(currentBit == 1){
      current = current->rightBranch;
      //printf("right\n");
    } else {
      current = current->leftBranch;
      //printf("left\n");
    }
    if(current->rightBranch == NULL && current->leftBranch == NULL){
      //printf("%d\n",current->symbol);
      fputc(current->symbol,fptOUT);
      numSymbolsRead++;
      current = treeRoot;
    }
  }
  //printf("%d bits read\n",numBitsRead);
	// Allocate dynamic space for *code
	//code = (unsigned char *)calloc(lengthMAX,sizeof(unsigned char));
	
	// Begin looping through dictionary to find symbol matches for binary codes
	
	
	//free(symbol);
	//free(code);
	//free(treeRoot);
}
				
 
 
 
 
 
 
 
