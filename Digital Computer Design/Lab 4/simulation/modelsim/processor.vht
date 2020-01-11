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
-- Generated on "03/28/2019 17:07:03"
                                                            
-- Vhdl Test Bench template for design  :  processor
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processor_vhd_tst IS
END processor_vhd_tst;
ARCHITECTURE processor_arch OF processor_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BUSS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DONE : STD_LOGIC;
SIGNAL RESETN : STD_LOGIC;
SIGNAL RUN : STD_LOGIC;
COMPONENT processor
	PORT (
	BUSS : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DONE : OUT STD_LOGIC;
	RESETN : IN STD_LOGIC;
	RUN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : processor
	PORT MAP (
-- list connections between master ports and signals
	BUSS => BUSS,
	CLK => CLK,
	DIN => DIN,
	DONE => DONE,
	RESETN => RESETN,
	RUN => RUN
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
	resetn <= '0';						--Processor resetting
	wait for 10ns;
	
	resetn <= '1';						--Processor done resetting
	run <= '0';							--Processor not running yet
	clk <= '0';	
	DIN <= "0000000001000001";		--operation mvi: R0 <- DIN
	wait for 10ns;						--T0
	
	clk <= '1';
	wait for 10ns;
	clk <= '0';
	run <= '1';							--operation can now be asserted
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T1; mvi done
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T2
	clk <= '0';
	wait for 10ns;						
	clk <= '1';
	wait for 10ns;						--T3
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	run <= '0';							--Processor not running yet
	DIN <= "0000000000111000";		--operation mv: R7 <- R0
	wait for 10ns;						--T0
	
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;
	clk <= '0';
	run <= '1';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T1; mv done
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T2
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T3
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	run <= '0';							--Processor not running yet
	DIN <= "0000000010111000";		--operation add: R7 <- R7+R0
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;
	clk <= '0';
	run <= '1';							--operation can now be asserted
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T1
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T2
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T3; add done
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	run <= '0';							--Processor not running yet
	DIN <= "0000000001010111";		--operation mvi: R2 <- DIN
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;
	clk <= '0';
	run <= '1';							--operation can now be asserted
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T1; mvi done
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T2
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T3
	clk <= '0';
	wait for 10ns;
	
	
	clk <= '1';
	run <= '0';							--Processor not running yet
	DIN <= "0000000001001001";		--operation mvi: R1 <- DIN
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;
	clk <= '0';
	run <= '1';							--operation can now be asserted
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T1; mvi done
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T2
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T3
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	run <= '0';							--Processor not running yet
	DIN <= "0000000011010001";		--operation sub: R2 <- R2-R1
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;
	clk <= '0';
	run <= '1';							--operation can now be asserted
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T1
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T2
	clk <= '0';
	wait for 10ns;
	clk <= '1';
	wait for 10ns;						--T3; sub done
	clk <= '0';
	wait for 10ns;
	
WAIT;                                                        
END PROCESS always;                                          
END processor_arch;
