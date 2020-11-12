#ifndef TREE_H
#define TREE_H
//A single element of the tree
typedef struct treeNode{
  struct treeNode * leftBranch;
  struct treeNode * rightBranch;
  unsigned char symbol;
} treeNode;

//A frequency pair
typedef struct {
  unsigned char symbol;
  int count;
} frequencyPair;

//a binary code
typedef struct {
  unsigned char length;
  void * data;
} binaryCode;

binaryCode dictionary[256];

//Returns a binaryCode with length = 0 and a single byte of data that is 0x00
binaryCode * safeCreateCode();

//creates a tree from symbols and frequencies
treeNode * constructFromFrequenciesList(frequencyPair * frequencyTable);

void initializedictionary();

void getCodeFromSymbol(treeNode * treeRoot, unsigned char * code, int index);

#endif
