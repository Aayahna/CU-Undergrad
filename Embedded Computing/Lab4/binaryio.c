#include <stdlib.h>
#include <stdio.h>
#include "binaryops.h"
#include "binaryio.h"

unsigned char readBit(binaryIOFile * currentFile){
  unsigned char rVal = -1;
  int readIn = 0;
  if(currentFile->hasRead == 0){
    currentFile->hasRead = 1;
    if(feof(currentFile->filepointer)){
      return -1;
    }
    currentFile->currentChar = fgetc(currentFile->filepointer);
    rVal = getBitAtPosition(&currentFile->currentChar,0);
    currentFile->position = 1;
  } else {
    if(currentFile->position >= 7){
      rVal = getBitAtPosition(&currentFile->currentChar,currentFile->position);
      if(feof(currentFile->filepointer)){
        return -1;
      }
      currentFile->currentChar = fgetc(currentFile->filepointer);
      currentFile->position = 0;
    } else {
      rVal = getBitAtPosition(&currentFile->currentChar,currentFile->position);
      currentFile->position++;
    }
  }
  //printf("%d\n",rVal);
  return rVal;
}


binaryIOFile * createBinaryIOFile(FILE * currentFile){
  binaryIOFile * rVal = (binaryIOFile *)malloc(sizeof(binaryIOFile));
  rVal->filepointer = currentFile;
  rVal->position = 0;
  rVal->currentChar = 0;
  rVal->hasRead = 0;
  return rVal;
}

void writeBit(binaryIOFile * currentFile, unsigned char value){
  if(value != 1 && value != 0){
    printf("Invalid usage of writeBit!\n");
  }
  if(currentFile->position >= 7){
    setBitAtPosition(&currentFile->currentChar,currentFile->position,value/*data,position,value*/);
    fputc(currentFile->currentChar,currentFile->filepointer);
    currentFile->currentChar = 0;
    currentFile->position = 0;
  } else {
    setBitAtPosition(&currentFile->currentChar,currentFile->position,value/*data,position,value*/);
    currentFile->position++;
  }
}

void closeBinaryIOFile(binaryIOFile * currentFile){
  if(currentFile->position >0){
    fputc(currentFile->currentChar,currentFile->filepointer);
  }
  fclose(currentFile->filepointer);
}
