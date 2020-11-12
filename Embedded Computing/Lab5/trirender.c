/*	Aayahna Herbert
 *	Dr. Adam Hoover
 *	ECE 4680, Spring 20
 *	5 March 2020
 *	Lab 5: Triangle Rendering
 */
 
 #include <math.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include "trirender.h"
 
 #define PI 3.14159265
 
 int main (int argc, char *argv[])
 {
 	FILE			*fptIN, *fptOUT;
 	unsigned char	pixelColor[256][256];
 	float			**vertices;
 	float			min[3], max[3], center[3];
 	float			camera[3], up[3], angleRad[3], angleDeg[3];
 	float			left[3], right[3], top[3], bottom[3], topleft[3],cen_cam[3];
 	float			image[3], ABC[3], image_cam[3];
 	float			intersect[3], temp1[3], temp2[3], dot1, dot2, dot3;
 	float			v1_v0[3], v2_v0[3], v0_v1[3], v0_v2[3], v2_v1[3], v1_v2[3];
 	float			E, a, z_depth, D, n, d;
 	unsigned char	header[80];
 	int				**faces;
 	int				vertex_size, face_size;
 	int				i, r, c, ROWS = 256, COLS = 256;
 	
 	/* Tell user how to use program if incorrect arguments */
 	if (argc != 5)
 	{
 		printf("Usage: ./a.out [PLY filename] [x angle] [y angle] [z angle]\n");
 		exit(0);
 	}
 	
 	/* Open PLY image for reading */
 	fptIN = fopen(argv[1],"rb");
 	if (fptIN == NULL)
 	{
 		printf("Unable to open %s for reading\n",argv[1]);
 		exit(0);
 	}
 	
 	/* Open PPM image for writing */
 	fptOUT = fopen("output.ppm","wb");
 	if (fptOUT == NULL)
 	{
 		printf("Unable to open output.ppm for writing\n");
 		exit(0);
 	}
 	
 	/* Convert the user inputted angles from degrees to radians */
 	angleDeg[0] = atof(argv[2]);
 	angleDeg[1] = atof(argv[3]);
 	angleDeg[2] = atof(argv[4]);
 	
 	angleRad[0] = angleDeg[0]*(PI/180.0);
 	angleRad[1] = angleDeg[1]*(PI/180.0);
 	angleRad[2] = angleDeg[2]*(PI/180.0);
 	
 	/* STEP 1: Parse PLY file header to determine the number of vertices and
 	 * 		   faces. All other header info is irrelevant for this lab. */
 	fscanf(fptIN,"%s",header);
 	while (strcmp(header,"end_header") != 0)
 	{
 		if (strcmp(header,"vertex") == 0)
 			fscanf(fptIN,"%d",&vertex_size);
 			
 		if (strcmp(header,"face") == 0)
 			fscanf(fptIN,"%d",&face_size);
 		
 		fscanf(fptIN,"%s",header);
 		
 	}
 	
 	/* STEP 2: Read the PLY file vertices and faces */
 	vertices = (float **)calloc(vertex_size,sizeof(float *));
 	for (i = 0; i < vertex_size; i++)
 	{
 		vertices[i] = (float *)calloc(3,sizeof(float));
 		fscanf(fptIN,"%f %f %f",&(vertices[i][0]),&(vertices[i][1]),&(vertices[i][2]));
 	}
 	
 	faces = (int **)calloc(face_size,sizeof(int *));
 	for (i = 0; i < face_size; i++)
 	{
 		faces[i] = (int *)calloc(4,sizeof(int));
 		fscanf(fptIN,"%d %d %d %d",&(faces[i][0]),&(faces[i][1]),&(faces[i][2]),&(faces[i][3]));
 	}
 	
 	/* STEP 3: Calculate the bounding box on the vertices. This will include the
 	 *         the following:
 	 *	(a) Minimum and maximum X, Y and Z (two vectors denoted <min> and <max>)
 	 *	(b) Center X, Y and Z (vector denoted <center>)
 	 *	(c) Maximum extent of bounding box E = scalar that is largest component
 	 *		of <max - min>, i.e. largest extent of the three axes */
 	minVector(vertices, vertex_size, min);
  	maxVector(vertices, vertex_size, max);
 	 
 	center[0] = (min[0] + max[0]) / 2;
 	center[1] = (min[1] + max[1]) / 2;
 	center[2] = (min[2] + max[2]) / 2;
 	
 	E = maxExtent(min, max);
 	 
 	/* STEP 4: Calculate the camera position and orientation using two vectors
 	 *			<camera> and <up> as follows:
 	 *
 	 *  (a) By default assume <camera> is <1,0,0> (positioned on the X axis)
 	 *		 with <up> oriented as <0,0,1> (positive on the Z axis)
 	 *	(b) Rotate both the camera vector and up vector by X degrees about the
 	 *		 X-axis, Y degrees about the Y-axis, and Z degrees about the Z-axis,
 	 *		 where X, Y and Z were supplied as command line arguments
 	 *	(c) Move and scale the camera vector */
	camera[0] = 1;
 	camera[1] = 0;
 	camera[2] = 0;
 	up[0] = 0;
 	up[1] = 0;
 	up[2] = 1;
 	  
 	rotateMatrix(camera, up, angleRad);
 
 	camera[0] = ((float)1.5*E)*camera[0] + center[0];
 	camera[1] = ((float)1.5*E)*camera[1] + center[1];
 	camera[2] = ((float)1.5*E)*camera[2] + center[2];
 	
 	/* STEP 5: Determine the 3D coordinates bounding the image */
 	cen_cam[0] = center[0] - camera[0];
 	cen_cam[1] = center[1] - camera[1];
 	cen_cam[2] = center[2] - camera[2];

 	crossProduct(up,cen_cam,left);
 	
 	a = sqrtf(pow(left[0],2) + pow(left[1],2) + pow(left[2],2));
 	
 	left[0] = ((E/(2*a))*left[0]) + center[0];
 	left[1] = ((E/(2*a))*left[1]) + center[1];
 	left[2] = ((E/(2*a))*left[2]) + center[2];
 	
 	crossProduct(cen_cam,up,right);
 	
 	right[0] = ((E/(2*a))*right[0]) + center[0];
 	right[1] = ((E/(2*a))*right[1]) + center[1];
 	right[2] = ((E/(2*a))*right[2]) + center[2];
 	
 	top[0] = ((E/2)*up[0]) + center[0];
 	top[1] = ((E/2)*up[1]) + center[1];
 	top[2] = ((E/2)*up[2]) + center[2];
 	
 	bottom[0] = ((-E/2)*up[0]) + center[0];
 	bottom[1] = ((-E/2)*up[1]) + center[1];
 	bottom[2] = ((-E/2)*up[2]) + center[2];
 	
 	topleft[0] = ((E/2)*up[0]) + left[0];
 	topleft[1] = ((E/2)*up[1]) + left[1];
 	topleft[2] = ((E/2)*up[2]) + left[2];
 	
 	/* STEP 6: For each pixel r, c in the image:
 	 *	(a) Default image color is black (greyscale=0)
 	 *	(b) Default z-buffer depth is very far (ex. 999999). Note the z-buffer
 	 *		image must be floats or doubles. Recalls it stores the distance to
 	 *		the closest triangle for each pixel so that only the color for that
 	 *		triangle is drawn.
 	 *	(c) Calculate vector coodinates <image> for the image pixel, where COLS
 	 *		and ROWS are the width and height of the image in pixesl and it is
 	 *		assumed c and r index from 0 to COLS-1 and ROWS-1 respectively.
 	 *	(d) For each triangle having coordinates v0, v1 and v2:
 	 *		(1) Find the plane equation <A,B,C,D> that contains the triangle
 	 *		(2) Find the distance along the image pixel ray to the triagnle,
 	 *			denoted n/d. Test if ray is parallel to triangle (if d is near
 	 *			zero), and if so skip this triangle for this pixel
 	 *		(3) Find the 3D coordinates <intersect> of ray and plane
 	 *		(4) Determine if intersection point lies within triangle by
 	 *			calculating the three dot products dot1, dot2, and dot3
 	 *		(5) If any of the dot products in less than zero (if dot1<0 or
 	 *			dot2<0 or dot3<0), then the intersection point lies outside the
 	 *			triangle and it can be skipped
 	 *		(6) If the distance to the triangle n/d is greater than the current
 	 *			z-buffer value for this pixel, then the triangle lies behind a
 	 *			closer tirangle and it can be skipped
 	 *		(7) Set pixel color to 155 + (i%100) where i is the index of the
 	 *			triangle. This provides some variation in colors making the
 	 *			object easier to see */
	for (r = 0; r < ROWS; r++)
	{
		for (c = 0; c < COLS; c++)
		{
			pixelColor[r][c] = 0;
			
			z_depth = 999999;
			
			image[0] = topleft[0] + (((float)c / ((float)COLS - (float)1)) * (right[0] - left[0])) + (((float)r / ((float)ROWS - (float)1)) * (bottom[0] - top[0]));
            image[1] = topleft[1] + (((float)c / ((float)COLS - (float)1)) * (right[1] - left[1])) + (((float)r / ((float)ROWS - (float)1)) * (bottom[1] - top[1]));
            image[2] = topleft[2] + (((float)c / ((float)COLS - (float)1)) * (right[2] - left[2])) + (((float)r / ((float)ROWS - (float)1)) * (bottom[2] - top[2]));
			
			for (i = 0; i < face_size; i++)
			{
				v1_v0[0] = vertices[(faces[i][2])][0] - vertices[(faces[i][1])][0];
				v1_v0[1] = vertices[(faces[i][2])][1] - vertices[(faces[i][1])][1];
				v1_v0[2] = vertices[(faces[i][2])][2] - vertices[(faces[i][1])][2];
				
				v2_v0[0] = vertices[(faces[i][3])][0] - vertices[(faces[i][1])][0];
				v2_v0[1] = vertices[(faces[i][3])][1] - vertices[(faces[i][1])][1];
				v2_v0[2] = vertices[(faces[i][3])][2] - vertices[(faces[i][1])][2];
				
				crossProduct(v1_v0, v2_v0, ABC);
				D = dotProduct(ABC,vertices[faces[i][1]]);
				D = -D;
				
				n = dotProduct(ABC, camera);
				n = -n;
				n -= D;
				image_cam[0] = image[0] - camera[0];
				image_cam[1] = image[1] - camera[1];
				image_cam[2] = image[2] - camera[2];
				d = dotProduct(ABC, image_cam);
				
				
				if (d < 0.000001)
					continue;
						
				// intersect
				intersect[0] = camera[0] + ((n/d)*image_cam[0]);
				intersect[1] = camera[1] + ((n/d)*image_cam[1]);
				intersect[2] = camera[2] + ((n/d)*image_cam[2]);
				
				// dot1
				temp1[0] = intersect[0] - vertices[(faces[i][1])][0];
				temp1[1] = intersect[1] - vertices[(faces[i][1])][1];
				temp1[2] = intersect[2] - vertices[(faces[i][1])][2];
				
				crossProduct(temp1, v1_v0, temp2);
				crossProduct(v2_v0, v1_v0, temp1);
				dot1 = dotProduct(temp1, temp2);
				
				// dot2
				v0_v1[0] = vertices[(faces[i][1])][0] - vertices[(faces[i][2])][0];
				v0_v1[1] = vertices[(faces[i][1])][1] - vertices[(faces[i][2])][1];
				v0_v1[2] = vertices[(faces[i][1])][2] - vertices[(faces[i][2])][2];
					
				v2_v1[0] = vertices[(faces[i][3])][0] - vertices[(faces[i][2])][0];
				v2_v1[1] = vertices[(faces[i][3])][1] - vertices[(faces[i][2])][1];
				v2_v1[2] = vertices[(faces[i][3])][2] - vertices[(faces[i][2])][2];
					
				temp1[0] = intersect[0] - vertices[(faces[i][2])][0];
				temp1[1] = intersect[1] - vertices[(faces[i][2])][1];
				temp1[2] = intersect[2] - vertices[(faces[i][2])][2];
				
				crossProduct(temp1, v2_v1, temp2);
				crossProduct(v0_v1, v2_v1, temp1);
				dot2 = dotProduct(temp1, temp2);
									
				// dot3
				v1_v2[0] = vertices[(faces[i][2])][0] - vertices[(faces[i][3])][0];
				v1_v2[1] = vertices[(faces[i][2])][1] - vertices[(faces[i][3])][1];
				v1_v2[2] = vertices[(faces[i][2])][2] - vertices[(faces[i][3])][2];
				
				v0_v2[0] = vertices[(faces[i][1])][0] - vertices[(faces[i][3])][0];
				v0_v2[1] = vertices[(faces[i][1])][1] - vertices[(faces[i][3])][1];
				v0_v2[2] = vertices[(faces[i][1])][2] - vertices[(faces[i][3])][2];
					
				temp1[0] = intersect[0] - vertices[(faces[i][3])][0];
				temp1[1] = intersect[1] - vertices[(faces[i][3])][1];
				temp1[2] = intersect[2] - vertices[(faces[i][3])][2];
					
				crossProduct(temp1, v0_v2, temp2);
				crossProduct(v1_v2, v0_v2, temp1);
				dot3 = dotProduct(temp1, temp2);
					
				if ((dot1 < 0) || (dot2 < 0) || (dot3 < 0))
					continue;
					
				if ((n/d) > z_depth)
					continue;
							
				z_depth = n/d;
				pixelColor[r][c] = 155 + (i % 100);
			}
		}
	}
 	 
 	 
	/* STEP 7: Write PPM image */
 	fprintf(fptOUT,"P5\n%d\n%d\n255\n",COLS,ROWS);
 	for (r = 0; r < ROWS; r++)
 	{
 		for (c = 0; c < COLS; c++)
 		{	
 			
 			fwrite(&(pixelColor[r][c]),sizeof(unsigned char),1,fptOUT);
 		}
 	}
 	
 	// Don't forget to free up space and close files
 	for (i = 0; i < vertex_size; i++)
 		free(vertices[i]);
 	free(vertices);
 	
 	for (i = 0; i < face_size; i++)
 		free(faces[i]);
 	free(faces);
 	
 	fclose(fptIN);
 	fclose(fptOUT);
 	
 	
 }
