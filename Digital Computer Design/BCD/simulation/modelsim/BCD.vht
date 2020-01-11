-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/28/2019 16:03:05"
                                                            
-- Vhdl Test Bench template for design  :  BCD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_vhd_tst IS
END BCD_vhd_tst;
ARCHITECTURE BCD_arch OF BCD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL M : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL V : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BCD
	PORT (
	M : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	V : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCD
	PORT MAP (
-- list connections between master ports and signals
	M => M,
	V => V
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
		  V <= "0000";
		  wait for 10ns;	--Testing low numbers; expecting "0 0000"
		  
		  V <= "0001";
		  wait for 10ns;	--Testing low numbers; expecting "0 0001"
		  
		  V <= "0010";
		  wait for 10ns;	--Testing low numbers; expecting "0 0010"
		  
		  V <= "1001";
		  wait for 10ns;	--Testing mid numbers; expecting "0 1001"
		  
		  V <= "1010";
		  wait for 10ns;	--Testing mid numbers; expecting "1 0000"
		  
		  V <= "1011";
		  wait for 10ns;	--Testing high numbers; expecting "1 0001"
		  
		  V <= "1111";
		  wait for 10ns;	--Testing high numbers; expecting "0 0101"
WAIT;                                                        
END PROCESS always;                                          
END BCD_arch;
