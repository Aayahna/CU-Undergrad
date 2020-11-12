/*	Aayahna Herbert
 *	Dr. Adam Hoover
 *	ECE 4680, Spring 20
 *	28 January 2020
 *	Lab 1: Image Display - X Version
 */

#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include "bitmanip.h"					// Holds the bit manipulation functions

main (int argc, char *argv[])
{
	Display				*Monitor;
	Window				ImageWindow;
	GC					ImageGC;
	XWindowAttributes	Atts;
	XImage				*Picture;
	int					ROWS,COLS;
	unsigned char		*displaydata;
	
	FILE				*fpt;			// Used to open PPM image
	unsigned char		*filedata;		// Used to read PPM image
	char				header[80];		// Used to store image header
	int					i,BYTES;		// For-loop index and PPM byte size
	
	/* Tell user how to use program if incorrect arguments */
	if (argc != 2)
	{
		printf("Usage: lab1x [filename]\n");
		exit(0);
	}
	
	/* Open image for reading */
	fpt = fopen(argv[1],"rb");
	if (fpt == NULL)
	{
		printf("Unable to open %s for reading\n", argv[1]);
		exit(0);
	}
	
	/* Read image header to determine if ppm is greyscale or RGB */
	i = fscanf(fpt,"%s %d %d %d ", header,&COLS,&ROWS,&BYTES);
	// Making sure we get the right PPM information
	if (i != 4 || (strcmp(header,"P5") !=0 && strcmp(header,"P6") !=0)
	 || BYTES != 255)
	{
		printf("%s is not a PPM image\n", argv[1]);
		fclose(fpt);
		exit(0);
	}
	
	/* Allocate dynamic memory for displaydata[2] */
	displaydata = (unsigned char *)calloc(ROWS*COLS*2,sizeof(unsigned char));
	if (displaydata == NULL)
	{
		printf("DISPLAYDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
		exit(0);
	}

	/*	Determine if PPM is greyscale(P5) or RGB(P6) to decide how to handle 
		displaydata */
		
	/* First Case: Greyscale image - requires 8-bits*/
	if (strcmp(header,"P5") == 0)
	{
		printf("%s is a greyscale %d x %d PPM image\n",argv[1],COLS,ROWS);
		// Allocate dynamic memory for filedata[0]
		filedata = (unsigned char *)calloc(ROWS*COLS*1,sizeof(unsigned char));
		if (filedata == NULL)
		{
			printf("FILEDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
			exit(0);
		}
		
		// Read image data from file 
		fread(filedata,1,ROWS*COLS*1,fpt);
		fclose(fpt);
		
		// Bit manipulation to do filedata[0] -> displaydata[2]
		bmGSX(filedata,displaydata,ROWS,COLS);	
	}
	
	/* Second Case: RGB image - requires 24-bits*/
	if (strcmp(header,"P6") == 0)
	{
		printf("%s is a RGB %d x %d PPM image\n",argv[1],COLS,ROWS);
		// Allocate dynamic memory for filedata[3]
		filedata = (unsigned char *)calloc(ROWS*COLS*3,sizeof(unsigned char));
		if (filedata == NULL)
		{
			printf("FILEDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
			exit(0);
		}
		
		// Read image data from file 
		fread(filedata,1,ROWS*COLS*3,fpt);
		fclose(fpt);
		
		// Bit manipulation to do filedata[0] -> displaydata[2]
		bmRGBX(filedata,displaydata,ROWS,COLS);	
	}
	
	
	/* Code initially provided by Dr. Hoover */
	Monitor=XOpenDisplay(NULL);
	if (Monitor == NULL)
  	{
  		printf("Unable to open graphics display\n");
  		exit(0);
  	}

	ImageWindow=XCreateSimpleWindow(Monitor,RootWindow(Monitor,0),
			50,10,		/* x,y on screen */
			COLS,ROWS,	/* width, height */
			2, 		/* border width */
			BlackPixel(Monitor,0),
			WhitePixel(Monitor,0));

	ImageGC=XCreateGC(Monitor,ImageWindow,0,NULL);

	XMapWindow(Monitor,ImageWindow);
	XFlush(Monitor);
	while(1)
  	{
  		XGetWindowAttributes(Monitor,ImageWindow,&Atts);
  		if (Atts.map_state == IsViewable /* 2 */)
   		 break;
 	 }

	Picture=XCreateImage(Monitor,DefaultVisual(Monitor,0),
					DefaultDepth(Monitor,0),
					ZPixmap,	/* format */
					0,		/* offset */
					displaydata,/* the data */
					COLS,ROWS,	/* size of the image data */
					16,		/* pixel quantum (8, 16 or 32) */
					0);		/* bytes per line (0 causes compute) */

	XPutImage(Monitor,ImageWindow,ImageGC,Picture,
					0,0,0,0,	/* src x,y and dest x,y offsets */
					COLS,ROWS);	/* size of the image data */

	XFlush(Monitor);
	sleep(2);
	XCloseDisplay(Monitor);
	
	// Don't forget to free up the allocated memory
	free(filedata);
	free(displaydata);
}
