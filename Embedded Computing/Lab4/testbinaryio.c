#include <stdio.h>
#include <stdlib.h>
#include "binaryio.h"

int main(int argc, char * argv[]){
  FILE * inputFile = fopen(argv[1],"rb");
  FILE * outputFile = fopen(argv[2],"wb");
  binaryIOFile * inputBinFile = createBinaryIOFile(inputFile);
  binaryIOFile * outputBinFile = createBinaryIOFile(outputFile);
  char currentBit = 0;
  while((currentBit = readBit(inputBinFile))!=-1){
    currentBit = currentBit * -1 + 1;
    writeBit(outputBinFile,currentBit);
  }
  fclose(inputFile);
  fclose(outputFile);
  return 0;
}
