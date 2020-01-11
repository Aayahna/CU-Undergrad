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
-- Generated on "03/27/2019 09:25:47"
                                                            
-- Vhdl Test Bench template for design  :  multiplexer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplexer_vhd_tst IS
END multiplexer_vhd_tst;
ARCHITECTURE multiplexer_arch OF multiplexer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bout : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL din : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL g : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reg7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT multiplexer
	PORT (
	bout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	g : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reg7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : multiplexer
	PORT MAP (
-- list connections between master ports and signals
	bout => bout,
	din => din,
	g => g,
	reg0 => reg0,
	reg1 => reg1,
	reg2 => reg2,
	reg3 => reg3,
	reg4 => reg4,
	reg5 => reg5,
	reg6 => reg6,
	reg7 => reg7,
	sel => sel
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
	reg0 <= "0000000011111111";
	reg1 <= "0000000011110000";
	reg2 <= "0000000011001100";
	reg3 <= "0000000010101010";
	reg4 <= "1111111100000000";
	reg5 <= "1111000000000000";
	reg6 <= "1100110000000000";
	reg7 <= "1010101000000000";
	din <= "0101010101010101";
	g <= "1111111111111111";
	
	sel <= "0000000000";		--not a real selection; default din selected
	wait for 10ns;
	
	sel <= "0000000001";		--reg0 selected for bout
	wait for 10ns;	
	
	sel <= "0000000010";		--reg1 selected for bout
	wait for 10ns;	
	
	sel <= "0000000100";		--reg2 selected for bout
	wait for 10ns;	
	
	sel <= "0000001000";		--reg3 selected for bout
	wait for 10ns;	
	
	sel <= "0000010000";		--reg4 selected for bout
	wait for 10ns;	
	
	sel <= "0000100000";		--reg5 selected for bout
	wait for 10ns;	
	
	sel <= "0001000000";		--reg6 selected for bout
	wait for 10ns;	
	
	sel <= "0010000000";		--reg7 selected for bout
	wait for 10ns;	
	
	sel <= "0100000000";		--din selected for bout
	wait for 10ns;	
	
	sel <= "1000000000";		--g selected for bout
	wait for 10ns;	
	
	sel <= "1111111111";		--not a real selection; default din selected
	wait for 10ns;
	
WAIT;                                                        
END PROCESS always;                                          
END multiplexer_arch;
