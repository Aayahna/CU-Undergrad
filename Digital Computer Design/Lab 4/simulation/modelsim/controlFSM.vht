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
-- Generated on "03/27/2019 20:38:23"
                                                            
-- Vhdl Test Bench template for design  :  controlFSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controlFSM_vhd_tst IS
END controlFSM_vhd_tst;
ARCHITECTURE controlFSM_arch OF controlFSM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addsub : STD_LOGIC;
SIGNAL Ain : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL Gin : STD_LOGIC;
SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IRin : STD_LOGIC;
SIGNAL muxout : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL regin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL run : STD_LOGIC;
COMPONENT controlFSM
	PORT (
	addsub : OUT STD_LOGIC;
	Ain : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	done : OUT STD_LOGIC;
	Gin : OUT STD_LOGIC;
	IR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IRin : OUT STD_LOGIC;
	muxout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	regin : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	resetn : IN STD_LOGIC;
	run : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controlFSM
	PORT MAP (
-- list connections between master ports and signals
	addsub => addsub,
	Ain => Ain,
	clk => clk,
	done => done,
	Gin => Gin,
	IR => IR,
	IRin => IRin,
	muxout => muxout,
	regin => regin,
	resetn => resetn,
	run => run
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
	resetn <= '1';
	run <= '1';
	clk <= '0';
	IR <= "00000001";		--operation mv: R0 <- R1
	wait for 10ns;			--T0
	
	clk <= '1';				--operation mv done
	wait for 10ns;			--T1
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T2
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T3
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	IR <= "01010011";		--operation mvi: R2 <- Din
	wait for 10ns;			--T0
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';				
	wait for 10ns;			--T1
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T2
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';				--operation mvi done
	wait for 10ns;			--T3
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	IR <= "10100101";		--operation add: R4<-R4+R5
	wait for 10ns;			--T0
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns; 		--T1
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T2
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';				--operation add done
	wait for 10ns;			--T3
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	IR <= "11110111";		--operation sub: R6<-R6-R7
	wait for 10ns;			--T0
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns; 		--T1
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T2
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';				--operation sub done
	wait for 10ns;			--T3
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	resetn <= '0';			--State machine resetting
	wait for 10ns;			--T0
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns; 		--T0

	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T0
	
	clk <= '0';
	resetn <= '1';			--State machine done resetting
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns; 		--T1
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T2
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	run <= '0';				--State machine not running
	wait for 10ns;			--T3
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T0
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';
	wait for 10ns;			--T0
	
WAIT;                                                        
END PROCESS always;                                          
END controlFSM_arch;
