#include <assert.h>
#include <stdio.h>
unsigned char getBitAtPosition(void * data, int position){
  //for(i = 0; i < (input->length - 1)/8 + 1; i++){
  //unsigned char currentByte = ((unsigned char *)input->data)[i];
  unsigned char rVal;
         if(position % 8 == 0){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x01 ? 1 : 0;
  } else if(position % 8 == 1){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x02 ? 1 : 0;
  } else if(position % 8 == 2){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x04 ? 1 : 0;
  } else if(position % 8 == 3){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x08 ? 1 : 0;
  } else if(position % 8 == 4){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x10 ? 1 : 0;
  } else if(position % 8 == 5){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x20 ? 1 : 0;
  } else if(position % 8 == 6){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x40 ? 1 : 0;
  } else if(position % 8 == 7){
    rVal = ((unsigned char *)data)[((position)/8)] & 0x80 ? 1 : 0;
  }

  return rVal;
}


void setBitAtPosition(void * data, int position, unsigned char value){
  assert(value == 1 || value == 0);
  if(value == 1){
           if(position % 8 == 0){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x01;
    } else if(position % 8 == 1){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x02;
    } else if(position % 8 == 2){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x04;
    } else if(position % 8 == 3){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x08;
    } else if(position % 8 == 4){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x10;
    } else if(position % 8 == 5){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x20;
    } else if(position % 8 == 6){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x40;
    } else if(position % 8 == 7){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] | 0x80;
    }
  } else if(value == 0){
           if(position % 8 == 0){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xfe;
    } else if(position % 8 == 1){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xfd;
    } else if(position % 8 == 2){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xfb;
    } else if(position % 8 == 3){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xf7;
    } else if(position % 8 == 4){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xef;
    } else if(position % 8 == 5){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xdf;
    } else if(position % 8 == 6){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0xbf;
    } else if(position % 8 == 7){
      ((unsigned char *)data)[position/8] = ((unsigned char *)data)[((position)/8)] & 0x7f;
    }
  } else {
    printf("Invalid usage of setBitAtPosition %d\n",value);
  }
}
