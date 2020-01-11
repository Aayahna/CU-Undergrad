/* Aayahna Herbert & Tiffani-Shae Starks
 *	CPSC/ECE 3200-002
 * Project 3
 *	gcc -Wall main3.c -pthread
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <pthread.h>

/* GLOBAL VARIABLES */
pthread_mutex_t hl, cl, ol, consumer_lock;
pthread_cond_t h_cv, c_cv, o_cv;
pthread_t cp, hp, op, oc, wc, ec;

int carbon=0, hydrogen=0, oxygen=0;
int total_ethanol=0, total_ozone=0, total_water=0;
int total_c=0, total_h=0, total_o=0;
int quit, exec_time=0;

/* HARD CODED VALUES */
int carbon_iteration = 2;
int carbon_rate = 50;

int hydrogen_iteration = 4;
int hydrogen_rate = 25;

int oxygen_iteration = 2;
int oxygen_rate = 10;

int ethanol_required = 100;
int ethanol_rate = 20;

int water_required = 100;
int water_rate = 20;

int ozone_required = 100;
int ozone_rate = 20;


/* PRODUCER FUNCTIONS FOR CARBON, HYDROGEN, AND OXYGEN */
void *carbon_p (void *arg)
{
	int n;
	
	while(!quit)
	{
		pthread_mutex_lock(&cl);
		
		n = (rand() % carbon_iteration) + 1;
		carbon += n;
		total_c += n;
		
		printf("\nCarbon producer runs - produces %i C=%d",n,carbon);
		
		pthread_cond_signal(&c_cv);
		pthread_mutex_unlock(&cl);
		
		usleep(carbon_rate);
		exec_time += carbon_rate;
		
//		if(quit) pthread_exit(NULL);
	}
	return NULL;
}

void *hydrogen_p (void *arg)
{
	int n;
	
	while(!quit)
	{
		pthread_mutex_lock(&hl);
		
		n = (rand() % hydrogen_iteration) + 1;
		hydrogen += n;
		total_h += n;
		
		printf("\nHydrogen producer runs - produces %i H=%d",n,hydrogen);
		
		pthread_cond_signal(&h_cv);
		pthread_mutex_unlock(&hl);
		
		usleep(hydrogen_rate);
		exec_time += hydrogen_rate;

//		if (quit) pthread_exit(NULL);
	}
	return NULL;
}

void *oxygen_p (void *arg)
{
	int n;
	
	while(!quit)
	{
		pthread_mutex_lock(&ol);
		
		n = (rand() % oxygen_iteration) + 1;
		oxygen += n;
		total_o += n;
		
		printf("\nOxygen producer runs - produces %i O=%d",n,oxygen);
		
		pthread_cond_signal(&o_cv);
		pthread_mutex_unlock(&ol);
		
		usleep(oxygen_rate);
		exec_time += oxygen_rate;

//		if(quit) pthread_exit(NULL);
	}
	return NULL;
}

/* CONSUMER FUNCTIONS FOR ETHANOL, WATER, AND OZONE */
void *ozone_c (void *arg)
{
	int ozone = 0;
	
	while(ozone < ozone_required)
	{
		pthread_mutex_lock(&consumer_lock);
		pthread_mutex_lock(&ol);
		
		while(oxygen < 3)
		{ pthread_cond_wait(&o_cv, &ol); }
		oxygen -= 3;

		printf("\nOzone consumer runs - consumes O3; O=%d",oxygen);
		ozone++;
		
		pthread_mutex_unlock(&ol);
		pthread_mutex_unlock(&consumer_lock);
		
		usleep(ozone_rate);
		exec_time += ozone_rate;
	}
	total_ozone = ozone;

	pthread_exit(NULL);
}

void *water_c (void *arg)
{
	int water = 0;
	
	while(water < water_required)
	{
		pthread_mutex_lock(&consumer_lock);
		pthread_mutex_lock(&hl);
		pthread_mutex_lock(&ol);

		while(hydrogen < 2)
		{ pthread_cond_wait(&h_cv, &hl); }
		hydrogen -= 2;

		while(oxygen < 1)
		{ pthread_cond_wait(&o_cv, &ol); }
		oxygen -= 1;

		printf("\nWater consumer runs - consumes H2O; H=%d, O=%d",hydrogen,oxygen);
		water++;
		
		pthread_mutex_unlock(&ol);
		pthread_mutex_unlock(&hl);
		pthread_mutex_unlock(&consumer_lock);
		
		usleep(water_rate);
		exec_time += water_rate;
	}
	total_water = water;

	pthread_exit(NULL);
}

void *ethanol_c (void *arg)
{
	int ethanol = 0;
	
	while(ethanol < ethanol_required)
	{
		pthread_mutex_lock(&consumer_lock);
		pthread_mutex_lock(&cl);
		pthread_mutex_lock(&hl);
		pthread_mutex_lock(&ol);

		while(carbon < 2)
		{ pthread_cond_wait(&c_cv, &cl); }
		carbon -= 2;

		while(hydrogen < 6)
		{ pthread_cond_wait(&h_cv, &hl); }
		hydrogen -= 6;

		while(oxygen < 1)
		{ pthread_cond_wait(&o_cv, &ol); }
		oxygen -= 1;

		printf("\nEthanol consumer runs - consumes C2H6O; C=%d, H=%d, O=%d",carbon,hydrogen,oxygen);
		ethanol++;

		pthread_mutex_unlock(&ol);
		pthread_mutex_unlock(&hl);
		pthread_mutex_unlock(&cl);
		pthread_mutex_unlock(&consumer_lock);
		usleep(ethanol_rate);
		exec_time += ethanol_rate;
	}
	total_ethanol = ethanol;

	pthread_exit(NULL);
}

void print_result(void)
{
	printf("\n\n");
	printf("Carbon Atoms produced = %d\n", total_c);
	printf("Hydrogen Atoms produced = %d\n", total_h);
	printf("Oxygen Atoms produced = %d\n", total_o);
	printf("%d Ethanol molecules produced\n", total_ethanol);
	printf("%d Water molecules produced\n", total_water);
	printf("%d Ozone molecules produced\n", total_ozone);
	printf("\nTime to finish execution: %duSec\n", exec_time);
}

int main(void)
{
	srand(time(NULL));

	// Initiate the 4 locks
	pthread_mutex_init(&cl, NULL);
	pthread_mutex_init(&hl, NULL);
	pthread_mutex_init(&ol, NULL);
	pthread_mutex_init(&consumer_lock, NULL);
	
	quit = 0;

	// 6 threads go
	pthread_create(&cp, NULL, &carbon_p, NULL);
	pthread_create(&hp, NULL, &hydrogen_p, NULL);
	pthread_create(&op, NULL, &oxygen_p, NULL);
	pthread_create(&oc, NULL, &ozone_c, NULL);
	pthread_create(&wc, NULL, &water_c, NULL);
	pthread_create(&ec, NULL, &ethanol_c, NULL);

	// 3 pthread_join(consumers)
	pthread_join(oc, NULL);
	pthread_join(wc, NULL);
	pthread_join(ec, NULL);

	quit = 1;

	// 3 pthread_join(producers)
	pthread_join(cp, NULL);
	pthread_join(hp, NULL);
	pthread_join(op, NULL);

	/// print results
	print_result();

	return 0;
}
