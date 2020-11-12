#include "tree.h"
#include <stdlib.h>
#include <stdio.h>
#include "binaryops.h"
#include <assert.h>

/*
Things in this file: Priority Queue, Tree, and MergeSort implementation

I read that the most efficient way for calculating the symbol tree for huffman
(on stackoverflow) was to use a priority queue while constructing the tree

So the goal is to pass in an array of frequencyPair structs
these structs contain two things:
The symbol, and the number of times the symbol shows up
this file then mergesorts the symbol array to make sure it's lowest->highest priority
then it constructs a priority queue from the array
then it creates a tree from the queue
this tree is then passed back to main.c
The goal is that you shouldn't have to worry about the implementation of the creation of the tree
*/

//Ugly implementation detail:
//I assume we're only ever going to be operating on one file per run of the codec, so to make things
//easier I used a global to keep track of the number of items currently in the priority queue
//this is opposed to having to pass it into each function that acts on the queue each time a function
//is called
int priorityQueueSize = 256;

//the struct used for the prio queue
typedef struct {
  int priority;
  treeNode * entry;
} priorityQueueEntry;


#define PRIORITY_QUEUE_MAX_SIZE 256

//creates a priority queue (array) from scratch
priorityQueueEntry * createPriorityQueue(){
  priorityQueueEntry * rVal = malloc(PRIORITY_QUEUE_MAX_SIZE * sizeof(priorityQueueEntry));
  int i;
  for(i = 0; i < PRIORITY_QUEUE_MAX_SIZE; i++){
    rVal[i].priority = 0;
    rVal[i].entry = NULL;
  }
  return rVal;
};

priorityQueueEntry * popFromPriorityQueue(priorityQueueEntry * head){
  priorityQueueEntry * rVal;
  rVal = (priorityQueueEntry *)malloc(sizeof(priorityQueueEntry));
  rVal->priority = head->priority;
  rVal->entry = head->entry;
  int i;
  priorityQueueEntry * curr = head;
  priorityQueueEntry * next = head + 1;
  for(i = 0; i < priorityQueueSize - 1; i++){
    curr->priority = next->priority;
    curr->entry = next->entry;
    curr = curr + 1;
    next = next + 1;
    //printf("%p %p\n",curr->entry->leftBranch,curr->entry->rightBranch);
  }
  //printf("\n");
  priorityQueueSize--;
  return rVal;
}



int checkDuplicates(priorityQueueEntry * head,treeNode * node){
  int rVal = 0;
  int i = 0;
  for(i = 0; i < priorityQueueSize; i++){
    if((head + i)->entry == node){
      rVal = 1;
    }
  }
  return rVal;
}

//
//This inserts an element into the priority queue
//
void insertIntoPriorityQueue(priorityQueueEntry * head, priorityQueueEntry * toInsert){
  int i;
  int positionToInsertBefore = 0;
  assert(checkDuplicates(head,toInsert->entry)==0);
  for(i = 0; i < priorityQueueSize; i++){
    if(toInsert->priority < (head + i)->priority){
      break;
    }
    positionToInsertBefore++;
  }
  priorityQueueEntry * curr;
  priorityQueueEntry * next;
  for(i = priorityQueueSize-1; i > positionToInsertBefore-1; i--){
    curr = head + i;
    next = head + i - 1;
    curr->priority = next->priority;
    curr->entry = next->entry;
  }
  (head + positionToInsertBefore)->priority = toInsert->priority;
  (head + positionToInsertBefore)->entry = toInsert->entry;
  priorityQueueSize++;
}




//
//This horrendous block of code merge sorts an unsorted frequency table
//merge sort in 1 function :)
//
frequencyPair * sortFrequencyTable(frequencyPair * inputTable, int length){
  frequencyPair * rVal;
  if(length == 1){
    //if the length of the current subtable is 1, just return the subtable
    rVal = inputTable;
  } else {
    //else if the length of the current subtable isn't one, we're going to...
    //split into two subtables
    //sort each subtable
    //then interweave the returned subtables
    frequencyPair * firstHalf = inputTable;
    frequencyPair * secondHalf = inputTable + (length/2);
    //first we sort the subtables
    frequencyPair * firstHalfSorted = sortFrequencyTable(firstHalf,length/2);
    frequencyPair * secondHalfSorted = sortFrequencyTable(secondHalf,length/2);
    //mallocing new sorted table..
    rVal = (frequencyPair *)malloc(length * sizeof(frequencyPair));
    int i,j;
    unsigned char firstOrSecond = 0;
    unsigned char currentMinIndex;
    unsigned char trippedFlag = 0;
    //now for each element in the RETURNED table
    for(j = 0; j < length; j++){
      currentMinIndex = -1;
      firstOrSecond = 0;
      trippedFlag = 0;
      //the first goal is the find the smallest element between our two subtables
      //this first loop finds the smallest element of the first subtable
      for(i = 0; i < length/2; i++){
        if(firstHalfSorted[i].count != -1){
          if(trippedFlag == 0){
            currentMinIndex = i;
            firstOrSecond = 1;
            trippedFlag = 1;
          } else {
            if(firstHalfSorted[i].count < firstHalfSorted[currentMinIndex].count){
              currentMinIndex = i;
            }
          }
        }
      }
      //this second loop finds the smallest element of the second subtable
      for(i = 0; i < length/2; i++){
        if(secondHalfSorted[i].count != -1){
          if(trippedFlag == 0){
            currentMinIndex = i;
            firstOrSecond = 2;
            trippedFlag = 1;
          } else {
            if(firstOrSecond == 1){
              if(secondHalfSorted[i].count < firstHalfSorted[currentMinIndex].count){
                currentMinIndex = i;
                firstOrSecond = 2;
              }
            } else {
              if(secondHalfSorted[i].count < secondHalfSorted[currentMinIndex].count){
                currentMinIndex = i;
                firstOrSecond = 2;
              }
            }
          }
        }
      }
      //now that we have the smallest element from both tables, add it to our return table
      //make sure to remove the entry in the old subtable
      //we do this by setting the count of the subtable to -1
      unsigned char currentSymbol;
      int currentCount;
      if(firstOrSecond == 1){
        currentSymbol = firstHalfSorted[currentMinIndex].symbol;
        currentCount = firstHalfSorted[currentMinIndex].count;
        firstHalfSorted[currentMinIndex].count = -1;
      } else {
        currentSymbol = secondHalfSorted[currentMinIndex].symbol;
        currentCount = secondHalfSorted[currentMinIndex].count;
        secondHalfSorted[currentMinIndex].count = -1;
      }
      rVal[j].symbol = currentSymbol;
      rVal[j].count = currentCount;
    }
  }
  //return table
  return rVal;
}


treeNode * constructFromFrequenciesList(frequencyPair * frequencyTable){
  treeNode * rVal;
  int i;
  //make sure frequencyTable is sorted
  frequencyPair * sortedTable = sortFrequencyTable(frequencyTable,PRIORITY_QUEUE_MAX_SIZE);
  //for(i = 0; i < 256; i++){
  //  printf("%d %d -> %d %d \n",frequencyTable[i].symbol,frequencyTable[i].count,sortedTable[i].symbol,sortedTable[i].count);
  //}
  //create queue from sorted table
  priorityQueueEntry * queueHead = createPriorityQueue(sortedTable);
  for(i = 0; i < PRIORITY_QUEUE_MAX_SIZE; i++){
    queueHead[i].entry = (treeNode *)malloc(sizeof(treeNode));
    queueHead[i].entry->leftBranch = NULL;
    queueHead[i].entry->rightBranch = NULL;
    queueHead[i].entry->symbol = sortedTable[i].symbol;
    queueHead[i].priority = sortedTable[i].count;
    //printf("Symbol-count:%d %d\n",sortedTable[i].symbol,sortedTable[i].count);
  }

  //for(i = 0; i < 256; i++){
  //  printf("%d %d\n",(queueHead + i)->entry->symbol,(queueHead + i)->priority);
  //}
  /*
  priorityQueueSize = 0;
  for(i = 0; i < 256; i++){
    if(sortedTable[i].count>0){
      priorityQueueEntry * newEntry = (priorityQueueEntry *)malloc(sizeof(priorityQueueEntry));
      newEntry->entry = (treeNode *)malloc(sizeof(treeNode));
      newEntry->entry->leftBranch = NULL;
      newEntry->entry->rightBranch = NULL;
      newEntry->entry->symbol = sortedTable[i].symbol;
      newEntry->priority = sortedTable[i].count;
      insertIntoPriorityQueue(queueHead,newEntry);
    }
  }
  */
  while(priorityQueueSize > 1){
    priorityQueueEntry * lowestEntry = popFromPriorityQueue(queueHead);
    priorityQueueEntry * secondLowestEntry = popFromPriorityQueue(queueHead);
    priorityQueueEntry * newEntry = (priorityQueueEntry *)malloc(sizeof(priorityQueueEntry));
    newEntry->priority = lowestEntry->priority + secondLowestEntry->priority;
    newEntry->entry = (treeNode *)malloc(sizeof(treeNode));
    //printf("new entry: %p\n",newEntry->entry);
    newEntry->entry->leftBranch = (struct treeNode *)lowestEntry->entry;
    //printf("left: %p\n",newEntry->entry->leftBranch);
    newEntry->entry->rightBranch = (struct treeNode *)secondLowestEntry->entry;
    //printf("right: %p\n",newEntry->entry->rightBranch);
    insertIntoPriorityQueue(queueHead,newEntry);
  }
  rVal = popFromPriorityQueue(queueHead)->entry;
  return rVal;
}

unsigned char getSymbolFromCode(binaryCode * codeInput){
  unsigned char rVal;
  return rVal;
}



void initializedictionary(){
	int i; 
	
	for (i = 0; i < 256; i++){
	 dictionary[i].data = malloc(4);
   dictionary[i].length = 0;
  }
}

void getCodeFromSymbol(struct treeNode *treeRoot,unsigned char *code,int index){
  int 	i;
  //printf("current: %p\n",treeRoot); 
  //printf("leftBranch: %p\n",treeRoot->leftBranch);
  //printf("rightBranch: %p\n",treeRoot->rightBranch);
  unsigned char writeVal = 0;
  if (treeRoot->leftBranch)
  {
    writeVal = 0;
  	setBitAtPosition(code,index,writeVal);
  	getCodeFromSymbol(treeRoot->leftBranch,code,index+1);
  }
  
  if (treeRoot->rightBranch)
  {
    writeVal = 1;
  	setBitAtPosition(code,index,writeVal);
  	getCodeFromSymbol(treeRoot->rightBranch,code,index+1);
  }
  
  if ((treeRoot->rightBranch == NULL) && (treeRoot->leftBranch == NULL))
  {
  	dictionary[treeRoot->symbol].length = index;
    //printf("Length: %d\n",dictionary[treeRoot->symbol].length);
  	for (i = 0; i <= index; i++){
  		setBitAtPosition(dictionary[treeRoot->symbol].data,i,getBitAtPosition(code,i));
    }
  }
}

binaryCode * safeCreateCode(){
  binaryCode * rVal = (binaryCode *)malloc(sizeof(binaryCode));
  rVal->data = malloc(4);
  rVal->length = 0;
  ((unsigned char *)rVal->data)[0] = 0;
  return rVal;
};
