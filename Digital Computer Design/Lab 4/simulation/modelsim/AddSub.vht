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
-- Generated on "03/28/2019 15:47:48"
                                                            
-- Vhdl Test Bench template for design  :  AddSub
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AddSub_vhd_tst IS
END AddSub_vhd_tst;
ARCHITECTURE AddSub_arch OF AddSub_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ANSWER : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL AorS : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL COUT : STD_LOGIC;
COMPONENT AddSub
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ANSWER : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	AorS : IN STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	COUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AddSub
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	ANSWER => ANSWER,
	AorS => AorS,
	B => B,
	COUT => COUT
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
		  
	A <= "0000000011010001";
	B <= "0000000000010001";
	AorS <= '0';					--Adding
	wait for 10ns;					--Answer = 0000000011100010
	
	AorS <= '1';					--Subtracting
	wait for 10ns;					--Answer = 0000000011000000
	
	A <= "0000000000001101";
	B <= "0000000000000111";
	AorS <= '0';					--Adding
	wait for 10ns;					--Answer = 0000000000010100
	
	AorS <= '1';					--Subtracting
	wait for 10ns;					--Answer = 0000000000000110
	
	A <= "0000000000000111";
	B <= "0000000000001100";
	AorS <= '0';					--Adding
	wait for 10ns;					--Answer = 0000000000010011
	
	AorS <= '1';					--Subtracting
	wait for 10ns;					--Answer = 1111111111111011
	
	A <= "0000000000000000";
	B <= "0000000000000101";
	AorS <= '0';					--Adding
	wait for 10ns;					--Answer = 0000000000000101
	
	AorS <= '1';					--Subtracting
	wait for 10ns;					--Answer = 1111111111111011
WAIT;                                                        
END PROCESS always;                                          
END AddSub_arch;
