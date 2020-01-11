Here you will find your entire assignment.

!!!!!!!!!!!!!!!DO NOT EDIT THE FOLDER STRUCTURE UNLESS OTHERWISE TOLD TO DO SO!!!!!!!!!!!!!!!!!

When finished editing, you need only type "make" in the device and aocl_comparator folders to compile the code.  Keep in mind YOU MUST BE ON A ULLAB COMPUTER for compilation to succeed (we will not help you install the AOCL utilities on your own computer, the process is very complicated).  This will generate the .aocx and executable files you need.

Refer to the Compilation and Usage Instructions document for information about setting up the FPGA for OpenCL and Copying files to your SD card.

You will need NOT need to edit the host code or the .cl file!!!

Below is a list of the files you WILL need to edit:
comparator_cl.vhd
comparator_cl_rtl.xml

For all files that you use outside of the two listed above, you will need to add them to the XML file!  You *should* have other files to make up the comparator.

The comparator_cl.vhd file has the OpenCL Libraries signals already defined for your use.  The only ones you need to use are the datain and dataout signals.  The first 16 bits of datain are input a, the second 16 bits of datain are input b.  You will write your result to the lowest bit of dataout.  Set the remaining bits to 0.

I left a generic NAND gate file in the device file for you to use if you see fit.  This WILL save you from tons of typing if you port map correctly.  If you choose to use this, look up what a GENERIC MAP is and how you use it!!!

When you run the executable, it will spit out errors IF AND ONLY IF your output has errors.  Else it just prints times.

Email wbgreen@g.clemson.edu for any questions.
