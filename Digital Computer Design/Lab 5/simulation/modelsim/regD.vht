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
-- Generated on "04/09/2019 18:51:26"
                                                            
-- Vhdl Test Bench template for design  :  regD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY regD_vhd_tst IS
END regD_vhd_tst;
ARCHITECTURE regD_arch OF regD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL valueD : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT regD
	PORT (
	clk : IN STD_LOGIC;
	count : IN STD_LOGIC;
	loadreg : IN STD_LOGIC;
	valueD : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : regD
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	loadreg => loadreg,
	valueD => valueD
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
	loadreg <= '1';
	count <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	loadreg <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
	count <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;
	
WAIT;                                                        
END PROCESS always;                                          
END regD_arch;
