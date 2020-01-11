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
-- Generated on "01/29/2019 11:00:05"
                                                            
-- Vhdl Test Bench template for design  :  RCA4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RCA4_vhd_tst IS
END RCA4_vhd_tst;
ARCHITECTURE RCA4_arch OF RCA4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT RCA4
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RCA4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	cin => cin,
	cout => cout,
	s => s
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
		  
		  cin <= '0';		--No additional adding with a and b
		  a <= "0011";
		  b <= "0010";
		  wait for 10ns;	--3+2+0=5; answer should be "0 0101"
		  
		  a <= "0101";
		  b <= "0110";
		  wait for 10ns;	--5+6+0=11; answer should be "0 1011"
		  
		  a <= "1000";
		  b <= "0111";		--8+7+0=15; answer should be "0 1111"
		  wait for 10ns;
		  
		  a <= "1111";
		  b <= "1111";		--15+15+0=30; answer should be "1 1110"
		  wait for 10ns;
		  
WAIT;                                                        
END PROCESS always;                                          
END RCA4_arch;
