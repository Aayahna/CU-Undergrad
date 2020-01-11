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
-- Generated on "04/09/2019 19:04:19"
                                                            
-- Vhdl Test Bench template for design  :  regC
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regC_vhd_tst IS
END regC_vhd_tst;
ARCHITECTURE regC_arch OF regC_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addreg : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cout_adder : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL product_c : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL shift_c : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL shiftreg : STD_LOGIC;
SIGNAL sum_c : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL value_mux2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT regC
	PORT (
	addreg : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	cout_adder : IN STD_LOGIC;
	loadreg : IN STD_LOGIC;
	product_c : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	shift_c : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	shiftreg : IN STD_LOGIC;
	sum_c : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	value_mux2 : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : regC
	PORT MAP (
-- list connections between master ports and signals
	addreg => addreg,
	clk => clk,
	cout_adder => cout_adder,
	loadreg => loadreg,
	product_c => product_c,
	shift_c => shift_c,
	shiftreg => shiftreg,
	sum_c => sum_c,
	value_mux2 => value_mux2
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
	cout_adder <= '0';
	loadreg <= '0';
	addreg <= '0';
	shiftreg <= '0';
	value_mux2 <= "000000000";
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
	addreg <= '1';
	value_mux2 <= "111111101";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '0';
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '1';
	shiftreg <= '0';
	value_mux2 <= "000000010";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '0';
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '1';
	shiftreg <= '0';
	value_mux2 <= "111111010";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '0';
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '1';
	shiftreg <= '0';
	value_mux2 <= "111111011";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	addreg <= '0';
	shiftreg <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	  
WAIT;                                                        
END PROCESS always;                                          
END regC_arch;
