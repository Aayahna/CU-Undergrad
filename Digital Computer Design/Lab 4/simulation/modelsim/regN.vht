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
-- Generated on "03/26/2019 17:06:58"
                                                            
-- Vhdl Test Bench template for design  :  regN
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regN_vhd_tst IS
END regN_vhd_tst;
ARCHITECTURE regN_arch OF regN_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT regN
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	en : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : regN
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	en => en,
	q => q
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
	clk <= '0';						--No rising edge yet
	en <= '1';						--Register enabled
	d <= "0000111010011001";
	wait for 10ns;					--q should be undefined still
	
	clk <= '1';						--Rising edge now available
	wait for 10ns;					--q should now have the same value as d
	
	clk <= '0';						--No rising edge yet
	en <= '0';						--Register disabled
	d <= "1111111100001010";
	wait for 10ns;					--q shouldn't update
	
	clk <= '1';						--Rising edge now available
	wait for 10ns;					--q still shouldn't update
	
	clk <= '0';						--No rising edge yet
	en <= '1';						--Register enabled again
	wait for 10ns;					--q still shouldn't update
	
	clk <= '1';						--Rising edge now available
	wait for 10ns;					--q should now update to the latest value of d
	
WAIT;                                                        
END PROCESS always;                                          
END regN_arch;
