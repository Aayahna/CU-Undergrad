/*******************************************************************************
 *	Aayahna Herbert & Tiffani Starks
 *	CPSC/ECE 3220-002
 *	Carl Martin
 * Project 1
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

int main(void)
{
	int fd[2];
	int i, j;
	int val = 0;
	int rc;
	int count = 0;
	int big_count = 0;
	int little_count = 0;
	long long avg = 0;
	long long big_avg = 0;
	long long little_avg = 0;;

	srand(time(NULL));
	pipe(fd);

	/*	Parent process: The reading end of the pipe was closed off before anything
	 *	was done. For easch 5000 iterations, the parent writes 1 to 4 values into
	 *	the pipe. Once it is done doing this, the writing end of the pipe was closed
	 * and the average of the values sent was calculated and displayed on the
	 * the standard output.
	 */
	if (fork() > 0)
	{
		close(fd[0]);

		for (i=0; i <= 5000; i++)
		{
			for(j = rand()%4+1; j>0; j--)
			{
				val = rand()%1000000+1;
				avg += val;
				count++;
				write(fd[1], &val, sizeof(val));
			}
		}

		close(fd[1]);
		
		avg /= count;
		printf("Producer sent %d values and had an average of %lld\n", count, avg);
	}
	
	/*	Child Process: The writing end of the pipe was closed off before anything
	 *	was done. The child was responsible for reading in each value from the
	 *	parent through the pipe. After each 50 values it received, the child
	 *	calculated and printed the average value of each group of 50. Once the
	 *	parent process was finished and closed its pipe, the child would print out
	 *	this information, calculate the remaining values it received from its parent,
	 * and print that out. At the very end of this process, the overall average of
	 * values the child read from the parent was calculated and printed. This should
	 * be the same value as the parent's.
	 */
	else
	{
		close(fd[1]);

		rc = 1;
		while (rc != 0)
		{
			rc = read(fd[0],&val,sizeof(val));

			little_avg += val;
			big_avg += val;
			
			big_count++;
			little_count++;


			if (little_count >= 50)
			{
				little_avg /= little_count;
				printf("\nConsumer received %d values with an average of %lld", little_count, little_avg);
				little_avg = 0;
				little_count = 0;
			}
		}
		/* When the pipe has finished reading information, it doesn't work a value of zero
		 *	but instead sends the last value read in again. To fix this issue, the counts 
		 * were decremented by one and the total values were decreased by the last value
		 *	read in from the pipe.
		 */
		little_count--;
		big_count--;
		little_avg -= val;
		big_avg -= val;

		little_avg /= little_count;
		big_avg /= big_count;
		printf("\nPipe was closed");
		printf("\nConsumer received %d values with an average of %lld", little_count, little_avg);
		printf("\nConsumer received %d values and had an average %lld", big_count, big_avg);
	
		close(fd[0]);

	}
	
	return(0);
}
