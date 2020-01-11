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
-- Generated on "04/09/2019 17:36:19"
                                                            
-- Vhdl Test Bench template for design  :  regB
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regB_vhd_tst IS
END regB_vhd_tst;
ARCHITECTURE regB_arch OF regB_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL multiplier : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL product_b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sel_b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL shift_c : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL shiftreg : STD_LOGIC;
COMPONENT regB
	PORT (
	clk : IN STD_LOGIC;
	loadreg : IN STD_LOGIC;
	multiplier : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	product_b : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel_b : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	shift_c : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	shiftreg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : regB
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	loadreg => loadreg,
	multiplier => multiplier,
	product_b => product_b,
	sel_b => sel_b,
	shift_c => shift_c,
	shiftreg => shiftreg
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
	loadreg <= '0';
	shiftreg <= '0';
	multiplier <= "11100101";
	shift_c <= "01";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	loadreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	loadreg <= '0';
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	shiftreg <= '0';
	shift_c <= "11";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	shiftreg <= '0';
	shift_c <= "10";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	shiftreg <= '0';
	shift_c <= "00";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
WAIT;                                                        
END PROCESS always;                                          
END regB_arch;
