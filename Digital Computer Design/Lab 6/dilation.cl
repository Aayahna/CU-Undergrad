__kernel void dilation_kernel(__global uchar3 * restrict image, __global uchar3 * restrict temp, int width, int height)
{
	//code the same as the function in dilation.h file
	//outer two for loops for the row and col were removed for parallelism
	int col = get_global_id(0);
	int row = get_global_id(1);
	int i = 0;
	int j = 0;

	if(image[row * width + col].x == 255)
	{
		for(i=(row-2); i <= (row+2); i++)
		{
			for(j=(col-2); j <= (col+2); j++)
			{
				if(j >= 0 && i >= 0 && j < width-1 && i < height-1)
				{
					//Seg fault was detected at this area; could not be debugged
					temp[i * width + j].x = 255;
					temp[i * width + j].y = 255;
					temp[i * width + j].z = 255;
				}
			}
		}
	}
	
}
