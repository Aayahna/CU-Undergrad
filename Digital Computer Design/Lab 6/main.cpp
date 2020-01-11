#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include "dilation.h"
#include "CL/opencl.h"
#include "AOCL_Utils.h"

using namespace aocl_utils;

#define NUM_SHORTS 100000

// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
cl_device_id *device; 
cl_context context = NULL;
cl_command_queue queue; 
cl_program program = NULL;
cl_kernel dilation_kernel; 
cl_mem image_buf; 
cl_mem temp_buf;


// Problem data.
int N; // problem size
int height;
int width;
uchar3 *pic;
char *infile;
char *outfile;

// Function prototypes
bool init_opencl();
void init_problem();
void run();
void cleanup();

// Entry point.
int main(int argc, char *argv[]) {
	
	infile = argv[1];
	outfile = argv[2];
	N = width*height;

  	// Initialize the problem data.
  	init_problem();

  	// Initialize OpenCL.
  	if(!init_opencl()) {
    		return -1;
  	}

  	// Run the kernel.
  	run();

  	// Free the resources allocated
  	cleanup();

  	return 0;
}

/////// HELPER FUNCTIONS ///////

// Initializes the OpenCL objects.
bool init_opencl() {
  	cl_int status;

  	//printf("Initializing OpenCL\n");

  	if(!setCwdToExeDir()) {
    		return false;
  	}

  	// Get the OpenCL platform.
  	platform = findPlatform("Altera");
  	if(platform == NULL) {
    		printf("ERROR: Unable to find Altera OpenCL platform.\n");
    		return false;
  	}

  	// Query the available OpenCL device.
  	device = getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices);
  	//printf("Platform: %s\n", getPlatformName(platform).c_str());
  	//printf("Using %d device(s)\n", num_devices);
  	//printf("  %s\n", getDeviceName(*device).c_str());

  	// Create the context.
  	context = clCreateContext(NULL, num_devices, device, NULL, NULL, &status);
  	checkError(status, "Failed to create context");

  	// Create the program for all device. Use the first device as the
  	// representative device (assuming all device are of the same type).
  	std::string binary_file = getBoardBinaryFile("dilation", *device);
  	//printf("Using AOCX: %s\n", binary_file.c_str());
  	program = createProgramFromBinary(context, binary_file.c_str(), device, num_devices);

  	// Build the program that was just created.
  	status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
  	checkError(status, "Failed to build program");

  	// Command queue.
  	queue = clCreateCommandQueue(context, *device, CL_QUEUE_PROFILING_ENABLE, &status);
  	checkError(status, "Failed to create command queue");

  	// Kernel.
  	const char *kernel_name = "dilation_kernel";
  	dilation_kernel = clCreateKernel(program, kernel_name, &status);
  	checkError(status, "Failed to create kernel");

	//Input buffer.
	image_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, 
			width*height*sizeof(uchar3), NULL, &status);
	checkError(status, "Failed to create buffer for input");


  	// Output buffer.
  	temp_buf = clCreateBuffer(context, CL_MEM_WRITE_ONLY, 
        		width*height*sizeof(uchar3), NULL, &status);
  	checkError(status, "Failed to create buffer for output");

  	return true;
}

//Initialize data for the problem.
void init_problem() {
	
	pic = readPPMFile(infile,&width,&height);
		
	threshold(pic,width,height);

}

void run() {
	int i, num_errors;
  	cl_int status;
	


  	// Launch the problem for each device.
  	cl_event kernel_event;
  	cl_event finish_event;
	cl_event write_event;

	status = clEnqueueWriteBuffer(queue, image_buf, CL_FALSE,
			0, width*height*sizeof(uchar3), pic, 0, NULL, &write_event);
	checkError(status, "Failed to write input buffer");

		

	// Set kernel arguments.
  	unsigned argi = 0;
 	status = clSetKernelArg(dilation_kernel, argi++, sizeof(cl_mem), &image_buf);
  	checkError(status, "Failed to set argument %d", argi - 1);
 	status = clSetKernelArg(dilation_kernel, argi++, sizeof(cl_mem), 0);
  	checkError(status, "Failed to set argument %d", argi - 1);
  	status = clSetKernelArg(dilation_kernel, argi++, sizeof(int), &width);
	checkError(status, "Failed to set argument %d", argi - 1);
	status = clSetKernelArg(dilation_kernel, argi++, sizeof(int), &height);
	checkError(status, "Failed to set argument %d", argi - 1);
	
  	// Enqueue kernel.
	// Use a global work size corresponding to the number of elements to add
  	// for this device.
	// 
  	// We don't specify a local work size and let the runtime choose
	// (it'll choose to use one work-group with the same size as the global
 	// work-size).
	//
  	// Events are used to ensure that the kernel is not launched until
	// the writes to the input buffers have completed.
  	const size_t global_work_size[2] = {width,height};
	//printf("Launching for device %d (%d elements)\n", 0, global_work_size);


  	clock_t begin = clock();

  	status = clEnqueueNDRangeKernel(queue, dilation_kernel, 2, NULL,
       		global_work_size, NULL, 1, &write_event, &kernel_event);
  	checkError(status, "Failed to launch kernel");

	clWaitForEvents(num_devices, &kernel_event);
  
  	clock_t end = clock();

  	// Read the result. This the final operation.
	status = clEnqueueReadBuffer(queue, temp_buf, CL_FALSE,
       		0, width*height*sizeof(uchar3), pic, 1, &kernel_event, &finish_event);


  	// Wait for all devices to finish.
	clWaitForEvents(num_devices, &finish_event);


	// Wall-clock time taken.
	double time_spent = (double)(end - begin)/CLOCKS_PER_SEC;
 	printf("\nKernel Time: %0.3f ms\n", time_spent);


	num_errors = 0;
	
	// Measure host execution time	
	clock_t begin_host = clock();
		dilate(pic,width,height);
		clock_t end_host = clock();
		double time_spent_host = (double)(end_host - begin_host)/CLOCKS_PER_SEC;
	

	// Print if output is valid and runtime
	printf("\n\nC Time = %lf s\n",time_spent_host);

	// Release all events.
  	clReleaseEvent(kernel_event);
	clReleaseEvent(finish_event);

}

// Free the resources allocated during initialization
void cleanup() {
  	if(dilation_kernel) {
    		clReleaseKernel(dilation_kernel);
  	}
  	if(queue) {
      		clReleaseCommandQueue(queue);
  	}

  	if(temp_buf) {
      		clReleaseMemObject(temp_buf);
  	}
  

  	if(program) {
    		clReleaseProgram(program);
  	}
  	if(context) {
    		clReleaseContext(context);
  	}
}

