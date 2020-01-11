Here you will find your entire assignment.

!!!!!!!!!!!!!!!DO NOT EDIT THE FOLDER STRUCTURE UNLESS OTHERWISE TOLD TO DO SO!!!!!!!!!!!!!!!!!

You will only edit files in aocl_fuel/device.

You will need to make a minor modification to your state machine code.  
Your state should ONLY update when there is VALID data on the input pins!!
This means that you will need to watch the 'ivalid' pin to determine if the data is valid!!!!
Note, ivalid should NOT be on your sensitivity list. You still only update on valid clock cycles or a reset.
However, your state machine should ONLY move to the next state whenever 'ivalid' is high.

After making this very small modification, you will need to create an instance of your component
inside of the fuel_cl.vhd file.  Map the resetn, clock, and ivalid pins to their respective pin
in the component.  Note that for OpenCL, the reset is LOW ACTIVE.

Your input data will come in on the 0th bit of DATAIN.
Your output data will be written to the 3 DOWNTO 0 bits of DATAOUT.  The rest should be 0.

DO NOT FORGET TO EDIT THE .xml FILE!
