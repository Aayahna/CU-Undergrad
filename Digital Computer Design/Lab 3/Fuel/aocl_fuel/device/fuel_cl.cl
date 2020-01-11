
char fuel_cl(char);

__kernel void fuel_kernel(global char* restrict A, global char* restrict state)

{
	state[0] = fuel_cl(A[0]);
	
}
