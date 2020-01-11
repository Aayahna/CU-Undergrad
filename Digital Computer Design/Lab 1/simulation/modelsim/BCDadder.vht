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
-- Generated on "02/07/2019 16:58:41"
                                                            
-- Vhdl Test Bench template for design  :  BCDadder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCDadder_vhd_tst IS
END BCDadder_vhd_tst;
ARCHITECTURE BCDadder_arch OF BCDadder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL A1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL A4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL B1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL B4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CIN1 : STD_LOGIC;
SIGNAL ERROR : STD_LOGIC;
SIGNAL S0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S_Cout : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT BCDadder
	PORT (
	A0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	A1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	A4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	B1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	B4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CIN1 : IN STD_LOGIC;
	ERROR : OUT STD_LOGIC;
	S0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S_Cout : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCDadder
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A4 => A4,
	B0 => B0,
	B1 => B1,
	B4 => B4,
	CIN1 => CIN1,
	ERROR => ERROR,
	S0 => S0,
	S1 => S1,
	S_Cout => S_Cout
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
		CIN1 <= '1';
		
		A4 <= "0001";
		B4 <= "0011";
		wait for 10ns;		--1+3+1=5; expecting "0 0101"
		
		A4 <= "0110";
		B4 <= "0010";
		wait for 10ns;		--6+2+1=9; expecting "0 1001"
		
		A4 <= "1011";
		B4 <= "0111";
		wait for 10ns;		--11+7+1=19; expecting "1 1001"
		
		A4 <= "1010";
		B4 <= "1010";
		wait for 10ns;		--10+10+1=21; expecting the error light to turn on
WAIT;                                                        
END PROCESS always;                                          
END BCDadder_arch;
