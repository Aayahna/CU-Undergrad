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
-- Generated on "04/09/2019 01:35:16"
                                                            
-- Vhdl Test Bench template for design  :  ctrl_fsm
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ctrl_fsm_vhd_tst IS
END ctrl_fsm_vhd_tst;
ARCHITECTURE ctrl_fsm_arch OF ctrl_fsm_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addreg : STD_LOGIC;
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL sel_b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sel_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL shiftreg : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL valueD : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ctrl_fsm
	PORT (
	addreg : OUT STD_LOGIC;
	busy : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC;
	done : OUT STD_LOGIC;
	loadreg : OUT STD_LOGIC;
	resetn : IN STD_LOGIC;
	sel_b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sel_ctrl : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	shiftreg : OUT STD_LOGIC;
	start : IN STD_LOGIC;
	valueD : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ctrl_fsm
	PORT MAP (
-- list connections between master ports and signals
	addreg => addreg,
	busy => busy,
	clk => clk,
	count => count,
	done => done,
	loadreg => loadreg,
	resetn => resetn,
	sel_b => sel_b,
	sel_ctrl => sel_ctrl,
	shiftreg => shiftreg,
	start => start,
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
	resetn <= '0';		
	start <= '0';
	sel_b <= "100";
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--resetn low; stay in RESET
	wait for 10ns;
	
	resetn <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--start low; stay in RESET
	wait for 10ns;
	
	start <= '1';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in LOAD; set valueD = 1000
	valueD <= "1000";
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in ADD; sel_ctrl <= sel_b
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in SHIFT; change sel_b and valueD = 0100
	valueD <= "0100";
	sel_b <= "001";
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in ADD; sel_ctrl <= sel_b
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in SHIFT; change sel_b and valueD = 0010
	valueD <= "0010";
	sel_b <= "010";
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in ADD; sel_ctrl <= sel_b
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in SHIFT; change sel_b and valueD = 0001
	valueD <= "0001";
	sel_b <= "110";
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in ADD; sel_ctrl <= sel_b
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in SHIFT; change valueD = 0000 and sel_b
	valueD <= "0000";
	sel_b <= "000";
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in FINISH
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--in RESET
	wait for 10ns;
	
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--start high; in LOAD
	wait for 10ns;
	
	resetn <= '0';
	clk <= '0';
	wait for 10ns;
	
	clk <= '1';			--resetn low; in RESET
	wait for 10ns;
	
	
WAIT;                                                        
END PROCESS always;                                          
END ctrl_fsm_arch;
