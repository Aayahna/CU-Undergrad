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
-- Generated on "02/13/2019 17:43:53"
                                                            
-- Vhdl Test Bench template for design  :  comparator16
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comparator16_vhd_tst IS
END comparator16_vhd_tst;
ARCHITECTURE comparator16_arch OF comparator16_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B16 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL O16 : STD_LOGIC;
COMPONENT comparator16
	PORT (
	A16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	O16 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : comparator16
	PORT MAP (
-- list connections between master ports and signals
	A16 => A16,
	B16 => B16,
	O16 => O16
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
	A16 <= "1111000011110000";
	B16 <= "1111000011110000";
	WAIT FOR 10ns;							--A16 AND B16 exactly the same; expecting "not 1" or '0'
	
	A16 <= "1010001111100101";
	B16 <= "1010001011100101";
	WAIT FOR 10ns;							--A16 AND B16 slightly different; expecting "not 0" or '1'
	
	A16 <= "1101011010110001";
	B16 <= "0010100101001111";
	WAIT FOR 10ns;							--A16 AND B16 two's complement of each other; expecting "not 0" or '1'
	
WAIT;                                                        
END PROCESS always;                                          
END comparator16_arch;
