/*	Aayahna Herbert
 *	Dr. Adam Hoover
 *	ECE 4680, Spring 20
 *	28 January 2020
 *	Lab 1: Image Display - Windows Version
 */

#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include "bitmanipW.h"				// Holds the bit manipulation & dimension fix functions

LRESULT CALLBACK EventProcessor (HWND hWnd,UINT uMsg,WPARAM wParam,LPARAM lParam)
{ return(DefWindowProc(hWnd,uMsg,wParam,lParam)); }

int WINAPI WinMain(HINSTANCE hInstance,HINSTANCE hPrevInstance,
                   LPSTR     lpCmdLine,int nCmdShow)
{
	WNDCLASS		wc;
	HWND			WindowHandle;
	int				ROWS,COLS;
	unsigned char	*displaydata;
	BITMAPINFO		*bm_info;
	HDC				hDC;

	FILE			*fpt;						//	Used to open PPM image
	unsigned char	*filedata;					//	Used to read PPM image
	char			header[80];					//	Used to store image header
	int				i,ROWSwin,COLSwin,BYTES;	//	For-loop index, fixed ROWS & COLS
												//	dimensions, and PPM bytes size

	/* Open image for reading */
	fpt = fopen(lpCmdLine,"rb");
	if (fpt == NULL)
	{
		printf("Unable to open %s for reading\n",lpCmdLine);
		exit(0);
	}

	/* Read image header to determine if ppm is greyscale or RGB */
	i = fscanf(fpt,"%s %d %d %d ", header,&COLS,&ROWS,&BYTES);
	// Making sure we get the right PPM information
	if (i != 4 || (strcmp(header,"P5") != 0 && strcmp(header,"P6") !=0) || BYTES != 255)
	{
		printf("%s is not a PPM image\n",lpCmdLine);
		fclose(fpt);
		exit(0);
	}

	/* Making sure ROWS and COLS are multiples of 4 for Window Handler later on */
	ROWSwin = ROWS;
	COLSwin = COLS;
	divisible4(ROWSwin);
	divisible4(COLSwin);
	ROWSwin += 40;
	COLSwin += 20;

	/* Determine if PPM is greyscale(P5) or RGB(P6) to decide how to handle displaydata */

	/* First case: greyscale image - requires 8-bit colormap */
	if (strcmp(header,"P5") == 0)
	{
		printf("%s is a greyscale %d x %d PPM image\n",lpCmdLine,COLS,ROWS);
		// Allocate dynamic memory for displaydata[1] and filedata[1]
		displaydata = (unsigned char *)calloc(ROWS*COLS,sizeof(unsigned char));
		if (displaydata == NULL)
		{
			printf("DISPLAYDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
			exit(0);
		}

		filedata = (unsigned char *)calloc(ROWS*COLS,sizeof(unsigned char));
		if (filedata == NULL)
		{
			printf("FILEDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
			exit(0);
		}

		// Read image data from file
		fread(filedata,1,ROWS*COLS*1,fpt);
		fclose(fpt);

		// Allocate dynamic memory for bitmap info
		bm_info=(BITMAPINFO *)calloc(1,sizeof(BITMAPINFO) + 256*sizeof(RGBQUAD));

		// Given code for colormap
		for (i=0; i<256; i++)	/* colormap */
		{
			bm_info->bmiColors[i].rgbBlue=bm_info->bmiColors[i].rgbGreen=bm_info->bmiColors[i].rgbRed=i;
			bm_info->bmiColors[i].rgbReserved=0;
		} 

		// Set up bmiHeader field of bm_info
		bm_info->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
		bm_info->bmiHeader.biWidth = COLS;
		bm_info->bmiHeader.biHeight = -ROWS;
		bm_info->bmiHeader.biPlanes = 1;
		bm_info->bmiHeader.biBitCount = 8;
		bm_info->bmiHeader.biCompression = BI_RGB;
		bm_info->bmiHeader.biSizeImage = 0;
		bm_info->bmiHeader.biXPelsPerMeter = 0;
		bm_info->bmiHeader.biYPelsPerMeter = 0;
		bm_info->bmiHeader.biClrUsed = 256;
		bm_info->bmiHeader.biClrImportant = 0;

		// BIT MANIPULATION TO DO FILEDATA[1] -> DISPLAYDATA[1]
		bmGSWin(filedata,displaydata,ROWS,COLS);
	}

	if (strcmp(header,"P6") == 0)
	{
		printf("%s is a RGB %d x %d PPM image\n",lpCmdLine,COLS,ROWS);
		
		// Allocate dynamic memory for displaydata[2] and filedata[3]
		displaydata = (unsigned char *)calloc(ROWS*COLS*2,sizeof(unsigned char));
		if (displaydata == NULL)
		{
			printf("DISPLAYDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
			exit(0);
		}

		filedata = (unsigned char *)calloc(ROWS*COLS*3,sizeof(unsigned char));
		if (filedata == NULL)
		{
			printf("FILEDATA: Unable to allocate %d x %d memory\n",COLS,ROWS);
			exit(0);
		}

		// Read image data from file
		fread(filedata,1,ROWS*COLS*3,fpt);
		fclose(fpt);

		// Allocate dynamic memory for bitmap info
		bm_info=(BITMAPINFO *)calloc(1,sizeof(BITMAPINFO) + 256*sizeof(RGBQUAD));

		// Set up bmiHeader field of bm_info
		bm_info->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
		bm_info->bmiHeader.biWidth = COLS;
		bm_info->bmiHeader.biHeight = ROWS;		// Will result in upside down PPM
		bm_info->bmiHeader.biPlanes = 1;
		bm_info->bmiHeader.biBitCount = 16;
		bm_info->bmiHeader.biCompression = BI_RGB;
		bm_info->bmiHeader.biSizeImage = 0;
		bm_info->bmiHeader.biXPelsPerMeter = 0;
		bm_info->bmiHeader.biYPelsPerMeter = 0;
		bm_info->bmiHeader.biClrUsed = 256;
		bm_info->bmiHeader.biClrImportant = 0;

		// BIT MANIPULATION TO DO FILEDATA[3] -> DISPLAYDATA[2]
		bmRGBWin(filedata,displaydata,ROWS,COLS);
	}

	/* Code initially provided by Dr. Hoover */
	wc.style=CS_HREDRAW | CS_VREDRAW;
	wc.lpfnWndProc=(WNDPROC)EventProcessor;
	wc.cbClsExtra=wc.cbWndExtra=0;
	wc.hInstance=hInstance;
	wc.hIcon=wc.lpszMenuName=NULL;
	wc.hCursor=LoadCursor(NULL,IDC_ARROW);
	wc.hbrBackground=(HBRUSH)(COLOR_WINDOW+1);
	wc.lpszClassName=L"Image Window Class";
	if (RegisterClass(&wc) == 0)
		exit(0);

	WindowHandle=CreateWindow(L"Image Window Class",L"ECE468 Lab1",
								WS_OVERLAPPEDWINDOW,
								10,10,COLSwin,ROWSwin,
								NULL,NULL,hInstance,NULL);
	if (WindowHandle == NULL)
	{
		MessageBox(NULL,"No window","Try again",MB_OK | MB_APPLMODAL);
		exit(0);
	}
	ShowWindow (WindowHandle, SW_SHOWNORMAL);

	hDC=GetDC(WindowHandle);

	SetDIBitsToDevice(hDC,0,0,COLS,ROWS,0,0,
					0, /* first scan line */
					COLS, /* number of scan lines */
					displaydata,bm_info,DIB_RGB_COLORS);
	ReleaseDC(WindowHandle,hDC);

	// Don't forget to free up the allocatd memory
	free(bm_info);
	free(filedata);
	free(displaydata);

	MessageBox(NULL,L"Press OK to continue","",MB_OK | MB_APPLMODAL);
}