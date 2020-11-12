
#ifndef BINARYIO_H
#define BINARYIO_H
/*
   Stores our binary position in the file
   */
typedef struct {
  FILE * filepointer;
  unsigned char position;
  unsigned char currentChar;
  unsigned char hasRead;
} binaryIOFile;

//Create a binaryIOFile from a FILE pointer
binaryIOFile * createBinaryIOFile(FILE * currentFile);

//read a bit from a binaryIOFile
//returns the bit if works, returns -1 otherwise
unsigned char readBit(binaryIOFile * currentFile);

//write a bit to a binaryIOFile
void writeBit(binaryIOFile * currentFile, unsigned char value);


void closeBinaryIOFile(binaryIOFile * currentFile);
#endif
