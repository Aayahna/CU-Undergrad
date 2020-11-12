/*	This header file contains two functions for Lab5TriangleRendering:
 *	1) minVector -		finds the minimum X, Y and Z
 *
 *	2) maxVector -		finds the maximum X, Y and Z
 *
 *	3) maxExtent -		finds the maximum extent of bounding box E = scalar that
 *						is largest component of <max - min>
 *
 *	4) rotateMatrix -	rotates both the camera vector and up vector by X, Y and
 *						Z degree about their respective axes, where X, Y and Z
 *						were supplied as command line arguments
 *
 *	5) crossProduct -	calculates the cross product of two 1x3 matrices
 *
 *	6) dotProduct -		calculates the dot product of two 1x3 matrices and
 *						returns the result as a single float variable
 */
 
 
void minVector (float **vertices, int vertex_size, float min[3])
{
	int i;
 	
 	min[0] = vertices[0][0];
 	min[1] = vertices[0][1];
 	min[2] = vertices[0][2];
 	
 	for (i = 1; i < vertex_size; i++)
 	{
 		if (vertices[i][0] < min[0])
 			min[0] = vertices[i][0];
 			
 		if (vertices[i][1] < min[1])
 			min[1] = vertices[i][1];
 			
 		if (vertices[i][2] < min[2])
 			min[2] = vertices[i][2];
 	}
}
 
void maxVector (float **vertices, int vertex_size, float max[3])
{
	int i;
 	
 	max[0] = vertices[0][0];
 	max[1] = vertices[0][1];
 	max[2] = vertices[0][2];
 	
 	for (i = 1; i < vertex_size; i++)
 	{
 		if (vertices[i][0] > max[0])
 			max[0] = vertices[i][0];
 			
 		if (vertices[i][1] > max[1])
 			max[1] = vertices[i][1];
 			
 		if (vertices[i][2] > max[2])
 			max[2] = vertices[i][2];
 	}
}

float maxExtent (float min[3], float max[3])
{
	float E, X, Y, Z;
	
	X = max[0] - min[0];
	Y = max[1] - min[1];
	Z = max[2] - min[2];
	
	E = X;
	
	if (Y > E)
		E = Y;
	
	if (Z > E)
		E = Z;
	
	return E;
}

void rotateMatrix (float camera[3], float up[3], float angleRad[3])
{
	float	Rx[3][3], Ry[3][3], Rz[3][3];
	float	camTemp[3], upTemp[3];
	
	Rx[0][0] = 1.0;
	Rx[0][1] = 0.0;
	Rx[0][2] = 0.0;
	Rx[1][0] = 0.0;
	Rx[1][1] = cos(angleRad[0]);
	Rx[1][2] = -(sin(angleRad[0]));
	Rx[2][0] = 0.0;
	Rx[2][1] = sin(angleRad[0]);
	Rx[2][2] = cos(angleRad[0]);
	
	Ry[0][0] = cos(angleRad[1]);
	Ry[0][1] = 0.0;
	Ry[0][2] = sin(angleRad[1]);
	Ry[1][0] = 0.0;
	Ry[1][1] = 1.0;
	Ry[1][2] = 0.0;
	Ry[2][0] = -(sin(angleRad[1]));
	Ry[2][1] = 0.0;
	Ry[2][2] = cos(angleRad[1]);
	
	Rz[0][0] = cos(angleRad[2]);
	Rz[0][1] = -(sin(angleRad[2]));
	Rz[0][2] = 0.0;
	Rz[1][0] = sin(angleRad[2]);
	Rz[1][1] = cos(angleRad[2]);
	Rz[1][2] = 0.0;
	Rz[2][0] = 0.0;
	Rz[2][1] = 0.0;
	Rz[2][2] = 1.0;
	
	camTemp[0] = (camera[0]*Rx[0][0]) + (camera[1]*Rx[0][1]) + (camera[2]*Rx[0][2]);
	camTemp[1] = (camera[0]*Rx[1][0]) + (camera[1]*Rx[1][1]) + (camera[2]*Rx[1][2]);
	camTemp[2] = (camera[0]*Rx[2][0]) + (camera[1]*Rx[2][1]) + (camera[2]*Rx[2][2]);
	
	camera[0] = camTemp[0];
	camera[1] = camTemp[1];
	camera[2] = camTemp[2];
	
	camTemp[0] = (camera[0]*Ry[0][0]) + (camera[1]*Ry[0][1]) + (camera[2]*Ry[0][2]);
	camTemp[1] = (camera[0]*Ry[1][0]) + (camera[1]*Ry[1][1]) + (camera[2]*Ry[1][2]);
	camTemp[2] = (camera[0]*Ry[2][0]) + (camera[1]*Ry[2][1]) + (camera[2]*Ry[2][2]);
	
	camera[0] = camTemp[0];
	camera[1] = camTemp[1];
	camera[2] = camTemp[2];
	
	camTemp[0] = (camera[0]*Rz[0][0]) + (camera[1]*Rz[0][1]) + (camera[2]*Rz[0][2]);
	camTemp[1] = (camera[0]*Rz[1][0]) + (camera[1]*Rz[1][1]) + (camera[2]*Rz[1][2]);
	camTemp[2] = (camera[0]*Rz[2][0]) + (camera[1]*Rz[2][1]) + (camera[2]*Rz[2][2]);
	
	camera[0] = camTemp[0];
	camera[1] = camTemp[1];
	camera[2] = camTemp[2];
	
	upTemp[0] = (up[0]*Rx[0][0]) + (up[1]*Rx[0][1]) + (up[2]*Rx[0][2]);
	upTemp[1] = (up[0]*Rx[1][0]) + (up[1]*Rx[1][1]) + (up[2]*Rx[1][2]);
	upTemp[2] = (up[0]*Rx[2][0]) + (up[1]*Rx[2][1]) + (up[2]*Rx[2][2]);
	
	up[0] = upTemp[0];
	up[1] = upTemp[1];
	up[2] = upTemp[2];
	
	upTemp[0] = (up[0]*Ry[0][0]) + (up[1]*Ry[0][1]) + (up[2]*Ry[0][2]);
	upTemp[1] = (up[0]*Ry[1][0]) + (up[1]*Ry[1][1]) + (up[2]*Ry[1][2]);
	upTemp[2] = (up[0]*Ry[2][0]) + (up[1]*Ry[2][1]) + (up[2]*Ry[2][2]);
	
	up[0] = upTemp[0];
	up[1] = upTemp[1];
	up[2] = upTemp[2];
	
	upTemp[0] = (up[0]*Rz[0][0]) + (up[1]*Rz[0][1]) + (up[2]*Rz[0][2]);
	upTemp[1] = (up[0]*Rz[1][0]) + (up[1]*Rz[1][1]) + (up[2]*Rz[1][2]);
	upTemp[2] = (up[0]*Rz[2][0]) + (up[1]*Rz[2][1]) + (up[2]*Rz[2][2]);
	
	up[0] = upTemp[0];
	up[1] = upTemp[1];
	up[2] = upTemp[2];	
}


void crossProduct (float A[3], float B[3], float AxB[3])
{
	float	a, b, c, d, e, f;
	
	a = A[0];
	b = A[1];
	c = A[2];
	
	d = B[0];
	e = B[1];
	f = B[2];
	
	AxB[0] = (b*f) - (c*e);
	AxB[1] = (c*d) - (a*f);
	AxB[2] = (a*e) - (b*d);
}


float dotProduct (float A[3], float B[3])
{
	float	AB;
	
	AB = (A[0]*B[0]) + (A[1]*B[1]) + (A[2]*B[2]);
	
	return AB;
}
