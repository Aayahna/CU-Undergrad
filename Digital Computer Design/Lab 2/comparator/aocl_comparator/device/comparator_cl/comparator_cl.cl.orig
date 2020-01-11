
short comparator(int);

__kernel void comparator_kernel(global unsigned short* restrict A, global unsigned short* restrict B, 
			    global unsigned short* equals)

{
	int i = get_global_id(0);

	int temp = 0;

	temp = A[i];
	temp = (temp << 16) | B[i];
	equals[i] = comparator(temp);
	
}
