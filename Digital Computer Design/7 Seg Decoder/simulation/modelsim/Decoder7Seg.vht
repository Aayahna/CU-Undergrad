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
-- Generated on "01/28/2019 23:32:58"
                                                            
-- Vhdl Test Bench template for design  :  Decoder7Seg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder7Seg_vhd_tst IS
END Decoder7Seg_vhd_tst;
ARCHITECTURE Decoder7Seg_arch OF Decoder7Seg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL o0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL o1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Decoder7Seg
	PORT (
	c : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	o0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	o1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder7Seg
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	o0 => o0,
	o1 => o1
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
		c <= "00000";
		wait for 10ns;	--Gives 00; expecting o1="1000000" and o0="1000000"
		
		c <= "00001";
		wait for 10ns;	--Gives 01; expecting o1="1000000" and o0="1111001"
		
		c <= "01001";
		wait for 10ns;	--Gives 09; expecting o1="1000000" and o0="0010000"
		
		c <= "10000";
		wait for 10ns;	--Gives 10; expecting o1="1111001" and o0="1000000"
		
		c <= "10001";
		wait for 10ns;	--Gives 11; expecting o1="1111001" and o0="1111001"
		
		c <= "10101";
		wait for 10ns;	--Gives 15; expecting o1="1111001" and o0="0010010"
		
		c <= "01011";
		wait for 10ns;	--Gives 011; expecting o1="1111111" and o0="1111111" (ERROR)
		
		c <= "10110";
		wait for 10ns;	--Gives 16; expecting o1="1111111" and o0="1111111" (ERROR)
WAIT;                                                        
END PROCESS always;                                          
END Decoder7Seg_arch;
