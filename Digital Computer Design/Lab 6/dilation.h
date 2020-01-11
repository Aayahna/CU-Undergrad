#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct uchar3_t{        

    unsigned char x, y, z;        

    char nothing;

}uchar3;



/******************************************************************************/

//Transforms a 2d subscript into a 1d subscript.
int subscript(int r, int c, int width)
{
	return r * width + c;
}

/******************************************************************************/
void writeHeader(FILE * file, int width, int height)
{
	fprintf(file,"P6\n %d %d 255\n",width,height);
}

void writePixel(FILE * file, uchar3 p)
{
	fprintf(file,"%c%c%c",p.x,p.y,p.z);
}

/*
writePPM algorithm:
1. Open a file for writing. The file name should be the first parameter, filename.
2. Write the PPM header to that file using the writeHeader function.
3. For each row r, from 0 to height
	a. For each column c, from 0 to width
		i. Write the pixel at picture r,c to file using the writePixel function.
			Use the subscript function to calculate the correct subscript.
4. Close the file
*/
void writePPMFile(char * filename, uchar3 * picture, int width, int height)
{
    //Open a file for write. The filename should be the first parameter, filename.
    FILE * writeFile = fopen(filename,"w");

    //Write the PPM header to that file using the writeHeader function.
    writeHeader(writeFile,width,height);

    //For each row r, from 0 to height
    int r, c;
    for (r = 0; r < height; r++)
	{
    	//For each column c, from 0 to width
        for (c = 0; c < width; c++)
		{
        	//read a pixel into the right spot
            writePixel(writeFile,picture[subscript(r,c,width)]);
		}
	}
	
	//close the file
    fclose(writeFile);
}

/******************************************************************************/

void readHeader(FILE *file, int *width, int *height)
{
	fscanf(file,"P6\n %d %d 255\n",width,height);
}

void readPixel(FILE *file, uchar3 *p)
{
	unsigned char r, g, b;
	fscanf(file,"%c%c%c",&r,&g,&b);
	p->x = r;
	p->y = g;
	p->z = b;
}

/*
readPPM algorithm:
1. Open a file for reading. The filename should be the first parameter, filename.
2. Read the PPM header from the file using readHeader function.
3. Dynamically allocate a 1D array to image that is as big as it needs to be to hold the image.
4. For each row r, from 0 to height
	a. For each column c, from 0 to width
		i. Read the pixel into the image at pixel r,c. Use the subscript function
			to calculate the right spot to put it in the array.
5. Close the file.
*/

uchar3 *readPPMFile(char *filename, int *width, int *height)
{
	//Open a file for reading. The filename should be the first parameter, filename.
	FILE *readFile = fopen(filename,"r");

	//Read the PPM header from the file using the readheader function.
	readHeader(readFile,width,height);

	//Dynamically allocate a 1D array to image that's big enough to hold all the pixels.
	uchar3 *image = (uchar3*)malloc(sizeof(uchar3)*(*width)*(*height));

	//For each row r, from 0 to height
	int r, c;
	for (r = 0; r < *height; r++)
	{
		//For each column c, from 0 to width
		for (c = 0; c < *width; c++)
		{
			//read a pixel into the right spot
			readPixel(readFile,&image[subscript(r,c,*width)]);
		}
	}
	//close the file
	fclose(readFile);
    //return a pointer to the image
	return image;
}

/******************************************************************************/

void threshold(uchar3 *image, int width, int height)
{
	int row, col;

	//For each pixel
    for(row=0; row < height; row++)
    {
    	for(col=0; col < width; col++)
        {
			//If any of the three of the color channel values are above 185
			if(image[subscript(row,col,width)].x > 185 || image[subscript(row,col,width)].y > 185 || image[subscript(row,col,width)].z > 185)
			{
				//Make the pixel white
				image[subscript(row,col,width)].x = 255;
				image[subscript(row,col,width)].y = 255;
				image[subscript(row,col,width)].z = 255;
			}
			//Otherwise
			else
			{
				//Make the pixel black
				image[subscript(row,col,width)].x = 0;
				image[subscript(row,col,width)].y = 0;
				image[subscript(row,col,width)].z = 0;
			}
    	}
    }
}

/******************************************************************************/

/*
 Algorithm for dilate:
1. Allocate space for a temp image of the same size.
2. For each row r, from 0 to height-1
	a. For each column c, from 0 to width-1
		i. For each color channel (r, g, and b)
			I. Check to see if the pixel is white or black
			II. If white, place the 5x5 white square in the center for temp;
				if black, change nothing.
3. Set image equal to temp image.
4. Free temp image.
5. Return the pointer to the new image.
*/

void dilate (uchar3 *image, int width, int height)
{
	//Dilated image will be saved in a temp image to avoid possible mishaps in the original picture
	uchar3 *temp = NULL;
	//Memory used calloc to zero out all values so it will be black and then white will be added when needed
	temp = (uchar3*)calloc(sizeof(uchar3),(width)*(height));
	int row, col, i, j;

	//For each row r, from 0 to height-1
	for(row=0; row < height-1; row++)
	{
		//For each column c, from 0  to width-1
		for(col=0; col < width-1; col++)
		{
			if(image[subscript(row,col,width)].x == 255)
			{
				//Starting at the upper left corner of the 5x5 square
				for(i=(row-2); i <= (row+2); i++)
				{
					for(j=(col-2); j <= (col+2); j++)
					{
						//Make sure the square's pixels are still within the picture's boundaries
						if(j >= 0 && i >= 0 && j <= width-1 && i <= height-1)
						{
							//Make the pixels in white
							temp[subscript(i,j,width)].x = 255;
							temp[subscript(i,j,width)].y = 255;
							temp[subscript(i,j,width)].z = 255;
						}
					}
				}
			}
		}
	}
	//Transfer temp back into image
	for(row=0; row < height-1; row++)
	{
		for(col=0; col < width-1; col++)
		{
			image[subscript(row,col,width)] = temp[subscript(row,col,width)];
		}
	}
	
	//image = temp; printf("yoooo");
	free(temp);
	printf("done");
}
