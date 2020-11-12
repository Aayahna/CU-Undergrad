#include <stdio.h>
#include <stdlib.h>
#include "tree.h"
#include "binaryops.h"


void displayBinaryCode(binaryCode * input){
  int i,j;
  for(i = 0; i < (input->length - 1)/8 + 1; i++){
    unsigned char currentByte = ((unsigned char *)input->data)[i];
    unsigned char result = currentByte & 0x01;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x02;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x04;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x08;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x10;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x20;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x40;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    result = currentByte & 0x80;
    if(result == 0){
      printf("[0]");
    } else {
      printf("[1]");
    }
    printf(" ");
  }
  printf("\n");
}



int main(){
  binaryCode * testcode = safeCreateCode();
  ((unsigned char *)testcode->data)[0] = 0xa6;
  testcode->length = 1;
  int i;
  for(i = 0; i < 8; i++){
    printf("%d",getBitAtPosition(testcode->data,i));
  }
  printf("\n");
  for(i = 0; i < 8; i++){
    setBitAtPosition(testcode->data,i,1);
  }
  for(i = 0; i < 8; i++){
    printf("%d",getBitAtPosition(testcode->data,i));
  }
  printf("\n");

  for(i = 0; i < 8; i++){
    setBitAtPosition(testcode->data,i,0);
  }
  for(i = 0; i < 8; i++){
    printf("%d",getBitAtPosition(testcode->data,i));
  }
  printf("\n");

  setBitAtPosition(testcode->data,0,0);
  setBitAtPosition(testcode->data,1,0);
  setBitAtPosition(testcode->data,2,1);
  setBitAtPosition(testcode->data,3,1);
  setBitAtPosition(testcode->data,4,1);
  setBitAtPosition(testcode->data,5,1);
  setBitAtPosition(testcode->data,6,0);
  setBitAtPosition(testcode->data,7,0);
  for(i = 0; i < 8; i++){
    printf("%d",getBitAtPosition(testcode->data,i));
  }
  printf("\n");
  frequencyPair * freqTable = malloc(sizeof(frequencyPair) * 256);
  for(i = 0; i < 256; i++){
    freqTable[i].symbol = i;
    freqTable[i].count = i;
  }
  //TODO:calculate the number of each symbol in the file
  //TODO:store count + symbol in freqTable
  treeNode * treeRoot = constructFromFrequenciesList(freqTable);
  //TODO: use tree to encode/decode
  displayBinaryCode(testcode);
  return 0;
}
