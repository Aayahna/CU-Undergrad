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
-- Generated on "04/09/2019 01:32:55"
                                                            
-- Vhdl Test Bench template for design  :  mux5
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux5_vhd_tst IS
END mux5_vhd_tst;
ARCHITECTURE mux5_arch OF mux5_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL mux_out : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL neg_one : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL neg_two : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pos_one : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pos_two : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL sel_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL zero : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT mux5
	PORT (
	mux_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	neg_one : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	neg_two : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	pos_one : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	pos_two : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	sel_ctrl : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	zero : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux5
	PORT MAP (
-- list connections between master ports and signals
	mux_out => mux_out,
	neg_one => neg_one,
	neg_two => neg_two,
	pos_one => pos_one,
	pos_two => pos_two,
	sel_ctrl => sel_ctrl,
	zero => zero
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
	neg_one <= "111100110";
	neg_two <= "111001100";
	pos_one <= "000011010";
	pos_two <= "000110100";
	wait for 20ns;
	
	sel_ctrl <= "000";
	wait for 20ns;
	
	sel_ctrl <= "111";
	wait for 20ns;
	
	sel_ctrl <= "001";
	wait for 20ns;
	
	sel_ctrl <= "110";
	wait for 20ns;
	
	sel_ctrl <= "010";
	wait for 20ns;
	
	sel_ctrl <= "101";
	wait for 20ns;
	
	sel_ctrl <= "011";
	wait for 20ns;
	
	sel_ctrl <= "100";
	wait for 20ns;
	
WAIT;                                                        
END PROCESS always;                                          
END mux5_arch;
