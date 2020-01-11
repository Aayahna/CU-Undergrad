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
-- Generated on "03/05/2019 12:43:38"
                                                            
-- Vhdl Test Bench template for design  :  fuel_machine
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fuel_machine_vhd_tst IS
END fuel_machine_vhd_tst;
ARCHITECTURE fuel_machine_arch OF fuel_machine_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL valid : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL z : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT fuel_machine
	PORT (
	clk : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	valid : IN STD_LOGIC;
	w : IN STD_LOGIC;
	z : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fuel_machine
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	resetn => resetn,
	valid => valid,
	w => w,
	z => z
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
		  
		resetn <= '0';		-- Resetting the machine
		clk <= '0';			-- Clock is off for now
		w <= '0';			-- w set to low
		valid <= '1';		-- All data will be considered valid
		wait for 10ns;
		
		clk <= '1';			-- Clock is on; won't anything since resetn is still active
		wait for 1ns;
		resetn <= '1';		-- Reset off now; clock can now detect from now on
		w <= '1';			-- w set to high; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; RESET->FULL
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;

		clk <= '1';			-- Clock on; detects w=1; FULL->REFUELING
		wait for 1ns;
		w <= '0';			-- w set to low; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;
	
		clk <= '1';			-- Clock on; detects w=0; REFUELING->FULL
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; FULL->DRIVING1
		wait for 1ns;
		w <= '1';			-- w set to high; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; DRIVING1-> TWO_THIRDS
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; TWO_THIRDS->REFUELING
		wait for 1ns;
		w <= '0';			-- w set to low; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; REFUELING->FULL
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; FULL->DRIVING1
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; DRIVING1->TWO_THIRDS
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; TWO_THIRDS->DRIVING2
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; DRIVING2->ONE_THIRD
		wait for 1ns;
		w <= '1';			-- w set to high; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; ONE_THIRD->REFUELING
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;
	
		clk <= '1';			-- Clock on; detects w=1; REFUELING->FULL
		wait for 1ns;
		w <= '0';			-- w set to low; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; FULL-> DRIVING1
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		
		clk <= '1';			-- Clock on; detects w=0; DRIVING1->TWO_THIRDS
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;
		
		clk <= '1';			-- Clock on; detects w=0; TWO_THIRDS->DRIVING2
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; DRIVING2->ONE_THIRD
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; ONE_THIRD->DRIVING3
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=0; DRIVING3->EMPTY
		wait for 1ns;
		w <= '1';			-- w set to high; won't be read until next rising edge
		wait for 9ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; EMPTY->WALKING
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;
		
		clk <= '1';			-- Clock on; detects w=1; WALKING->ONE_THIRD
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; ONE_THIRD->REFUELING
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';			-- Clock on; detects w=1; REFUELING->FULL
		wait for 1ns;
		resetn <= '0';		-- resetn set to low; clock will no longer detect w; FULL->RESET
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
		
		clk <= '1';
		wait for 10ns;
		
		clk <= '0';
		wait for 10ns;	
WAIT;                                                        
END PROCESS always;                                          
END fuel_machine_arch;
