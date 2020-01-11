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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/29/2019 15:40:28"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processor_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END processor_board;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor_board IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \board|ControlUnit|y.T2~q\ : std_logic;
SIGNAL \board|ControlUnit|y.T3~q\ : std_logic;
SIGNAL \board|ControlUnit|Selector0~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|y.T0~q\ : std_logic;
SIGNAL \board|ControlUnit|y~12_combout\ : std_logic;
SIGNAL \board|ControlUnit|y.T1~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \board|ControlUnit|Selector25~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|IRin~combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector21~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \board|ControlUnit|Selector6~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \board|ControlUnit|Selector6~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector6~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector13~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector13~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector13~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector10~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector12~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector10~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector8~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector8~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector9~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector9~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector9~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector11~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector11~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal1~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector7~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector7~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector5~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector12~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector12~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal0~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector14~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector15~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal6~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal0~3_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector17~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal2~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~3_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector20~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal0~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector3~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|Ain~combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_first|s~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Gin~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal2~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector19~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~4_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector16~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal0~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector3~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|WideNor0~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|WideNor0~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal7~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|WideNor0~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|bout~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector18~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector7~8_combout\ : std_logic;
SIGNAL \board|Register5|q[1]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|Equal3~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|addsub~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|addsub~combout\ : std_logic;
SIGNAL \board|AddsubMachine|intB[1]~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:0:FullAdder_body|s~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector6~7_combout\ : std_logic;
SIGNAL \board|AddsubMachine|intB[2]~1_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:1:FullAdder_body|s~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~4_combout\ : std_logic;
SIGNAL \board|Register5|q[2]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector5~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~3_combout\ : std_logic;
SIGNAL \board|Register2|q[3]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~combout\ : std_logic;
SIGNAL \board|Register1|q[3]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~2_combout\ : std_logic;
SIGNAL \board|Register7|q[3]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~1_combout\ : std_logic;
SIGNAL \board|Register5|q[3]~feeder_combout\ : std_logic;
SIGNAL \board|Register0|q[3]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector4~8_combout\ : std_logic;
SIGNAL \board|AddsubMachine|intB[3]~2_combout\ : std_logic;
SIGNAL \board|AddsubMachine|intB[4]~3_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:3:FullAdder_body|s~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector3~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~4_combout\ : std_logic;
SIGNAL \board|Register0|q[5]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector2~8_combout\ : std_logic;
SIGNAL \board|Register7|q[6]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~0_combout\ : std_logic;
SIGNAL \board|Register2|q[6]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~3_combout\ : std_logic;
SIGNAL \board|AddsubMachine|intB[5]~4_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|intB[6]~5_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:5:FullAdder_body|s~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~1_combout\ : std_logic;
SIGNAL \board|Register4|q[6]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector1~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~5_combout\ : std_logic;
SIGNAL \board|Register2|q[7]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~2_combout\ : std_logic;
SIGNAL \board|Register7|q[7]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~0_combout\ : std_logic;
SIGNAL \board|RegisterA|q[7]~feeder_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_last|s~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_last|s~1_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_last|s~combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~4_combout\ : std_logic;
SIGNAL \board|Register6|q[7]~feeder_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|Selector0~7_combout\ : std_logic;
SIGNAL \board|ControlUnit|Selector24~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|done~combout\ : std_logic;
SIGNAL \board|Register3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register7|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register6|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register4|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|RegisterG|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register5|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|RegisterIR|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|RegisterA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|ControlUnit|muxout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \board|ControlUnit|regin\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|ControlUnit|ALT_INV_regin\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|ControlUnit|ALT_INV_done~combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_muxout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \board|ControlUnit|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_addsub~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_y.T2~q\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_last|ALT_INV_s~1_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_last|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \board|RegisterA|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|AddsubMachine|ALT_INV_intB[6]~5_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:3:FullAdder_body|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|ALT_INV_intB[5]~4_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:4:FullAdder_body|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|ALT_INV_intB[4]~3_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:1:FullAdder_body|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|ALT_INV_intB[3]~2_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|G1:2:FullAdder_body|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|ALT_INV_intB[2]~1_combout\ : std_logic;
SIGNAL \board|AddsubMachine|addsub|FullAdder_first|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \board|AddsubMachine|ALT_INV_intB[1]~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector12~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_y.T0~q\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \board|RegisterIR|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|ControlUnit|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_y.T1~q\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_y.T3~q\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector0~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector0~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector0~5_combout\ : std_logic;
SIGNAL \board|Register0|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register5|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Multiplexers|ALT_INV_Selector0~4_combout\ : std_logic;
SIGNAL \board|Register1|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|RegisterG|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Multiplexers|ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \board|Register2|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Multiplexers|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \board|Register4|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Multiplexers|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \board|Register6|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Multiplexers|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \board|Register7|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Register3|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \board|Multiplexers|ALT_INV_Selector1~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~8_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~8_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~8_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~7_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~6_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~5_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~4_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_bout~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \board|Multiplexers|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Ain~combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_IRin~combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_addsub~combout\ : std_logic;
SIGNAL \board|ControlUnit|ALT_INV_Gin~combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\board|ControlUnit|ALT_INV_regin\(4) <= NOT \board|ControlUnit|regin\(4);
\board|ControlUnit|ALT_INV_regin\(6) <= NOT \board|ControlUnit|regin\(6);
\board|ControlUnit|ALT_INV_regin\(7) <= NOT \board|ControlUnit|regin\(7);
\board|ControlUnit|ALT_INV_regin\(3) <= NOT \board|ControlUnit|regin\(3);
\board|ControlUnit|ALT_INV_done~combout\ <= NOT \board|ControlUnit|done~combout\;
\board|ControlUnit|ALT_INV_muxout\(9) <= NOT \board|ControlUnit|muxout\(9);
\board|ControlUnit|ALT_INV_muxout\(1) <= NOT \board|ControlUnit|muxout\(1);
\board|ControlUnit|ALT_INV_muxout\(4) <= NOT \board|ControlUnit|muxout\(4);
\board|ControlUnit|ALT_INV_muxout\(3) <= NOT \board|ControlUnit|muxout\(3);
\board|ControlUnit|ALT_INV_muxout\(2) <= NOT \board|ControlUnit|muxout\(2);
\board|ControlUnit|ALT_INV_muxout\(5) <= NOT \board|ControlUnit|muxout\(5);
\board|ControlUnit|ALT_INV_muxout\(0) <= NOT \board|ControlUnit|muxout\(0);
\board|ControlUnit|ALT_INV_muxout\(6) <= NOT \board|ControlUnit|muxout\(6);
\board|ControlUnit|ALT_INV_muxout\(8) <= NOT \board|ControlUnit|muxout\(8);
\board|ControlUnit|ALT_INV_muxout\(7) <= NOT \board|ControlUnit|muxout\(7);
\board|ControlUnit|ALT_INV_Selector3~1_combout\ <= NOT \board|ControlUnit|Selector3~1_combout\;
\board|ControlUnit|ALT_INV_addsub~0_combout\ <= NOT \board|ControlUnit|addsub~0_combout\;
\board|ControlUnit|ALT_INV_Selector3~0_combout\ <= NOT \board|ControlUnit|Selector3~0_combout\;
\board|ControlUnit|ALT_INV_Selector16~0_combout\ <= NOT \board|ControlUnit|Selector16~0_combout\;
\board|ControlUnit|ALT_INV_Selector20~0_combout\ <= NOT \board|ControlUnit|Selector20~0_combout\;
\board|ControlUnit|ALT_INV_Selector19~0_combout\ <= NOT \board|ControlUnit|Selector19~0_combout\;
\board|ControlUnit|ALT_INV_Selector17~0_combout\ <= NOT \board|ControlUnit|Selector17~0_combout\;
\board|ControlUnit|ALT_INV_Selector15~0_combout\ <= NOT \board|ControlUnit|Selector15~0_combout\;
\board|ControlUnit|ALT_INV_Selector14~0_combout\ <= NOT \board|ControlUnit|Selector14~0_combout\;
\board|ControlUnit|ALT_INV_Selector18~0_combout\ <= NOT \board|ControlUnit|Selector18~0_combout\;
\board|ControlUnit|ALT_INV_y.T2~q\ <= NOT \board|ControlUnit|y.T2~q\;
\board|ControlUnit|ALT_INV_Selector25~0_combout\ <= NOT \board|ControlUnit|Selector25~0_combout\;
\board|ControlUnit|ALT_INV_Selector24~0_combout\ <= NOT \board|ControlUnit|Selector24~0_combout\;
\board|AddsubMachine|addsub|FullAdder_last|ALT_INV_s~1_combout\ <= NOT \board|AddsubMachine|addsub|FullAdder_last|s~1_combout\;
\board|AddsubMachine|addsub|FullAdder_last|ALT_INV_s~0_combout\ <= NOT \board|AddsubMachine|addsub|FullAdder_last|s~0_combout\;
\board|RegisterA|ALT_INV_q\(7) <= NOT \board|RegisterA|q\(7);
\board|AddsubMachine|ALT_INV_intB[6]~5_combout\ <= NOT \board|AddsubMachine|intB[6]~5_combout\;
\board|RegisterA|ALT_INV_q\(6) <= NOT \board|RegisterA|q\(6);
\board|AddsubMachine|addsub|G1:3:FullAdder_body|ALT_INV_co~0_combout\ <= NOT \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\;
\board|AddsubMachine|ALT_INV_intB[5]~4_combout\ <= NOT \board|AddsubMachine|intB[5]~4_combout\;
\board|AddsubMachine|addsub|G1:4:FullAdder_body|ALT_INV_s~0_combout\ <= NOT \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\;
\board|RegisterA|ALT_INV_q\(5) <= NOT \board|RegisterA|q\(5);
\board|AddsubMachine|ALT_INV_intB[4]~3_combout\ <= NOT \board|AddsubMachine|intB[4]~3_combout\;
\board|RegisterA|ALT_INV_q\(4) <= NOT \board|RegisterA|q\(4);
\board|AddsubMachine|addsub|G1:1:FullAdder_body|ALT_INV_co~0_combout\ <= NOT \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\;
\board|AddsubMachine|ALT_INV_intB[3]~2_combout\ <= NOT \board|AddsubMachine|intB[3]~2_combout\;
\board|AddsubMachine|addsub|G1:2:FullAdder_body|ALT_INV_s~0_combout\ <= NOT \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\;
\board|RegisterA|ALT_INV_q\(3) <= NOT \board|RegisterA|q\(3);
\board|AddsubMachine|ALT_INV_intB[2]~1_combout\ <= NOT \board|AddsubMachine|intB[2]~1_combout\;
\board|RegisterA|ALT_INV_q\(2) <= NOT \board|RegisterA|q\(2);
\board|AddsubMachine|addsub|FullAdder_first|ALT_INV_co~0_combout\ <= NOT \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\;
\board|AddsubMachine|ALT_INV_intB[1]~0_combout\ <= NOT \board|AddsubMachine|intB[1]~0_combout\;
\board|RegisterA|ALT_INV_q\(1) <= NOT \board|RegisterA|q\(1);
\board|RegisterA|ALT_INV_q\(0) <= NOT \board|RegisterA|q\(0);
\board|ControlUnit|ALT_INV_Selector12~2_combout\ <= NOT \board|ControlUnit|Selector12~2_combout\;
\board|ControlUnit|ALT_INV_Selector12~1_combout\ <= NOT \board|ControlUnit|Selector12~1_combout\;
\board|ControlUnit|ALT_INV_Selector9~2_combout\ <= NOT \board|ControlUnit|Selector9~2_combout\;
\board|ControlUnit|ALT_INV_Selector9~1_combout\ <= NOT \board|ControlUnit|Selector9~1_combout\;
\board|ControlUnit|ALT_INV_Selector10~1_combout\ <= NOT \board|ControlUnit|Selector10~1_combout\;
\board|ControlUnit|ALT_INV_Selector10~0_combout\ <= NOT \board|ControlUnit|Selector10~0_combout\;
\board|ControlUnit|ALT_INV_Selector12~0_combout\ <= NOT \board|ControlUnit|Selector12~0_combout\;
\board|ControlUnit|ALT_INV_Selector11~1_combout\ <= NOT \board|ControlUnit|Selector11~1_combout\;
\board|ControlUnit|ALT_INV_Selector11~0_combout\ <= NOT \board|ControlUnit|Selector11~0_combout\;
\board|ControlUnit|ALT_INV_Selector8~1_combout\ <= NOT \board|ControlUnit|Selector8~1_combout\;
\board|ControlUnit|ALT_INV_Selector8~0_combout\ <= NOT \board|ControlUnit|Selector8~0_combout\;
\board|ControlUnit|ALT_INV_Selector13~2_combout\ <= NOT \board|ControlUnit|Selector13~2_combout\;
\board|ControlUnit|ALT_INV_Selector13~1_combout\ <= NOT \board|ControlUnit|Selector13~1_combout\;
\board|ControlUnit|ALT_INV_Selector13~0_combout\ <= NOT \board|ControlUnit|Selector13~0_combout\;
\board|ControlUnit|ALT_INV_Selector7~1_combout\ <= NOT \board|ControlUnit|Selector7~1_combout\;
\board|ControlUnit|ALT_INV_Selector7~0_combout\ <= NOT \board|ControlUnit|Selector7~0_combout\;
\board|ControlUnit|ALT_INV_Selector9~0_combout\ <= NOT \board|ControlUnit|Selector9~0_combout\;
\board|ControlUnit|ALT_INV_Selector5~0_combout\ <= NOT \board|ControlUnit|Selector5~0_combout\;
\board|ControlUnit|ALT_INV_Selector21~0_combout\ <= NOT \board|ControlUnit|Selector21~0_combout\;
\board|ControlUnit|ALT_INV_y.T0~q\ <= NOT \board|ControlUnit|y.T0~q\;
\board|ControlUnit|ALT_INV_Selector6~2_combout\ <= NOT \board|ControlUnit|Selector6~2_combout\;
\board|ControlUnit|ALT_INV_Selector6~1_combout\ <= NOT \board|ControlUnit|Selector6~1_combout\;
\board|RegisterIR|ALT_INV_q\(5) <= NOT \board|RegisterIR|q\(5);
\board|RegisterIR|ALT_INV_q\(4) <= NOT \board|RegisterIR|q\(4);
\board|RegisterIR|ALT_INV_q\(3) <= NOT \board|RegisterIR|q\(3);
\board|ControlUnit|ALT_INV_Selector6~0_combout\ <= NOT \board|ControlUnit|Selector6~0_combout\;
\board|RegisterIR|ALT_INV_q\(2) <= NOT \board|RegisterIR|q\(2);
\board|RegisterIR|ALT_INV_q\(6) <= NOT \board|RegisterIR|q\(6);
\board|RegisterIR|ALT_INV_q\(0) <= NOT \board|RegisterIR|q\(0);
\board|ControlUnit|ALT_INV_y.T1~q\ <= NOT \board|ControlUnit|y.T1~q\;
\board|RegisterIR|ALT_INV_q\(7) <= NOT \board|RegisterIR|q\(7);
\board|RegisterIR|ALT_INV_q\(1) <= NOT \board|RegisterIR|q\(1);
\board|ControlUnit|ALT_INV_y.T3~q\ <= NOT \board|ControlUnit|y.T3~q\;
\board|Multiplexers|ALT_INV_Selector0~7_combout\ <= NOT \board|Multiplexers|Selector0~7_combout\;
\board|Multiplexers|ALT_INV_Selector0~6_combout\ <= NOT \board|Multiplexers|Selector0~6_combout\;
\board|Multiplexers|ALT_INV_Selector0~5_combout\ <= NOT \board|Multiplexers|Selector0~5_combout\;
\board|Register0|ALT_INV_q\(7) <= NOT \board|Register0|q\(7);
\board|Register5|ALT_INV_q\(7) <= NOT \board|Register5|q\(7);
\board|Multiplexers|ALT_INV_Selector0~4_combout\ <= NOT \board|Multiplexers|Selector0~4_combout\;
\board|Register1|ALT_INV_q\(7) <= NOT \board|Register1|q\(7);
\board|RegisterG|ALT_INV_q\(7) <= NOT \board|RegisterG|q\(7);
\board|Multiplexers|ALT_INV_Selector0~3_combout\ <= NOT \board|Multiplexers|Selector0~3_combout\;
\board|Register2|ALT_INV_q\(7) <= NOT \board|Register2|q\(7);
\board|Multiplexers|ALT_INV_Selector0~2_combout\ <= NOT \board|Multiplexers|Selector0~2_combout\;
\board|Register4|ALT_INV_q\(7) <= NOT \board|Register4|q\(7);
\board|Multiplexers|ALT_INV_Selector0~1_combout\ <= NOT \board|Multiplexers|Selector0~1_combout\;
\board|Register6|ALT_INV_q\(7) <= NOT \board|Register6|q\(7);
\board|Multiplexers|ALT_INV_Selector0~0_combout\ <= NOT \board|Multiplexers|Selector0~0_combout\;
\board|Register7|ALT_INV_q\(7) <= NOT \board|Register7|q\(7);
\board|Register3|ALT_INV_q\(7) <= NOT \board|Register3|q\(7);
\board|Multiplexers|ALT_INV_Selector1~7_combout\ <= NOT \board|Multiplexers|Selector1~7_combout\;
\board|Multiplexers|ALT_INV_Selector1~6_combout\ <= NOT \board|Multiplexers|Selector1~6_combout\;
\board|Multiplexers|ALT_INV_Selector1~5_combout\ <= NOT \board|Multiplexers|Selector1~5_combout\;
\board|Register0|ALT_INV_q\(6) <= NOT \board|Register0|q\(6);
\board|Register5|ALT_INV_q\(6) <= NOT \board|Register5|q\(6);
\board|Multiplexers|ALT_INV_Selector1~4_combout\ <= NOT \board|Multiplexers|Selector1~4_combout\;
\board|Register1|ALT_INV_q\(6) <= NOT \board|Register1|q\(6);
\board|RegisterG|ALT_INV_q\(6) <= NOT \board|RegisterG|q\(6);
\board|Multiplexers|ALT_INV_Selector1~3_combout\ <= NOT \board|Multiplexers|Selector1~3_combout\;
\board|Register2|ALT_INV_q\(6) <= NOT \board|Register2|q\(6);
\board|Multiplexers|ALT_INV_Selector1~2_combout\ <= NOT \board|Multiplexers|Selector1~2_combout\;
\board|Register4|ALT_INV_q\(6) <= NOT \board|Register4|q\(6);
\board|Multiplexers|ALT_INV_Selector1~1_combout\ <= NOT \board|Multiplexers|Selector1~1_combout\;
\board|Register6|ALT_INV_q\(6) <= NOT \board|Register6|q\(6);
\board|Multiplexers|ALT_INV_Selector1~0_combout\ <= NOT \board|Multiplexers|Selector1~0_combout\;
\board|Register7|ALT_INV_q\(6) <= NOT \board|Register7|q\(6);
\board|Register3|ALT_INV_q\(6) <= NOT \board|Register3|q\(6);
\board|Multiplexers|ALT_INV_Selector2~8_combout\ <= NOT \board|Multiplexers|Selector2~8_combout\;
\board|Multiplexers|ALT_INV_Selector2~7_combout\ <= NOT \board|Multiplexers|Selector2~7_combout\;
\board|Multiplexers|ALT_INV_Selector2~6_combout\ <= NOT \board|Multiplexers|Selector2~6_combout\;
\board|Register0|ALT_INV_q\(5) <= NOT \board|Register0|q\(5);
\board|Register5|ALT_INV_q\(5) <= NOT \board|Register5|q\(5);
\board|Multiplexers|ALT_INV_Selector2~5_combout\ <= NOT \board|Multiplexers|Selector2~5_combout\;
\board|Register1|ALT_INV_q\(5) <= NOT \board|Register1|q\(5);
\board|RegisterG|ALT_INV_q\(5) <= NOT \board|RegisterG|q\(5);
\board|Multiplexers|ALT_INV_Selector2~4_combout\ <= NOT \board|Multiplexers|Selector2~4_combout\;
\board|Register2|ALT_INV_q\(5) <= NOT \board|Register2|q\(5);
\board|Multiplexers|ALT_INV_Selector2~3_combout\ <= NOT \board|Multiplexers|Selector2~3_combout\;
\board|Register4|ALT_INV_q\(5) <= NOT \board|Register4|q\(5);
\board|Multiplexers|ALT_INV_Selector2~2_combout\ <= NOT \board|Multiplexers|Selector2~2_combout\;
\board|Register6|ALT_INV_q\(5) <= NOT \board|Register6|q\(5);
\board|Multiplexers|ALT_INV_Selector2~1_combout\ <= NOT \board|Multiplexers|Selector2~1_combout\;
\board|Register7|ALT_INV_q\(5) <= NOT \board|Register7|q\(5);
\board|Multiplexers|ALT_INV_Selector2~0_combout\ <= NOT \board|Multiplexers|Selector2~0_combout\;
\board|Register3|ALT_INV_q\(5) <= NOT \board|Register3|q\(5);
\board|Multiplexers|ALT_INV_Selector3~6_combout\ <= NOT \board|Multiplexers|Selector3~6_combout\;
\board|Multiplexers|ALT_INV_Selector3~5_combout\ <= NOT \board|Multiplexers|Selector3~5_combout\;
\board|Register0|ALT_INV_q\(4) <= NOT \board|Register0|q\(4);
\board|Register5|ALT_INV_q\(4) <= NOT \board|Register5|q\(4);
\board|Multiplexers|ALT_INV_Selector3~4_combout\ <= NOT \board|Multiplexers|Selector3~4_combout\;
\board|Register1|ALT_INV_q\(4) <= NOT \board|Register1|q\(4);
\board|RegisterG|ALT_INV_q\(4) <= NOT \board|RegisterG|q\(4);
\board|Multiplexers|ALT_INV_Selector3~3_combout\ <= NOT \board|Multiplexers|Selector3~3_combout\;
\board|Register2|ALT_INV_q\(4) <= NOT \board|Register2|q\(4);
\board|Multiplexers|ALT_INV_Selector3~2_combout\ <= NOT \board|Multiplexers|Selector3~2_combout\;
\board|Register4|ALT_INV_q\(4) <= NOT \board|Register4|q\(4);
\board|Multiplexers|ALT_INV_Selector3~1_combout\ <= NOT \board|Multiplexers|Selector3~1_combout\;
\board|Register6|ALT_INV_q\(4) <= NOT \board|Register6|q\(4);
\board|Multiplexers|ALT_INV_Selector3~0_combout\ <= NOT \board|Multiplexers|Selector3~0_combout\;
\board|Register7|ALT_INV_q\(4) <= NOT \board|Register7|q\(4);
\board|Register3|ALT_INV_q\(4) <= NOT \board|Register3|q\(4);
\board|Multiplexers|ALT_INV_Selector4~8_combout\ <= NOT \board|Multiplexers|Selector4~8_combout\;
\board|Multiplexers|ALT_INV_Selector4~7_combout\ <= NOT \board|Multiplexers|Selector4~7_combout\;
\board|Multiplexers|ALT_INV_Selector4~6_combout\ <= NOT \board|Multiplexers|Selector4~6_combout\;
\board|Register0|ALT_INV_q\(3) <= NOT \board|Register0|q\(3);
\board|Register5|ALT_INV_q\(3) <= NOT \board|Register5|q\(3);
\board|Multiplexers|ALT_INV_Selector4~5_combout\ <= NOT \board|Multiplexers|Selector4~5_combout\;
\board|Register1|ALT_INV_q\(3) <= NOT \board|Register1|q\(3);
\board|RegisterG|ALT_INV_q\(3) <= NOT \board|RegisterG|q\(3);
\board|Multiplexers|ALT_INV_Selector4~4_combout\ <= NOT \board|Multiplexers|Selector4~4_combout\;
\board|Register2|ALT_INV_q\(3) <= NOT \board|Register2|q\(3);
\board|Multiplexers|ALT_INV_Selector4~3_combout\ <= NOT \board|Multiplexers|Selector4~3_combout\;
\board|Register4|ALT_INV_q\(3) <= NOT \board|Register4|q\(3);
\board|Multiplexers|ALT_INV_Selector4~2_combout\ <= NOT \board|Multiplexers|Selector4~2_combout\;
\board|Register6|ALT_INV_q\(3) <= NOT \board|Register6|q\(3);
\board|Multiplexers|ALT_INV_Selector4~1_combout\ <= NOT \board|Multiplexers|Selector4~1_combout\;
\board|Register7|ALT_INV_q\(3) <= NOT \board|Register7|q\(3);
\board|Multiplexers|ALT_INV_Selector4~0_combout\ <= NOT \board|Multiplexers|Selector4~0_combout\;
\board|Register3|ALT_INV_q\(3) <= NOT \board|Register3|q\(3);
\board|Multiplexers|ALT_INV_Selector5~7_combout\ <= NOT \board|Multiplexers|Selector5~7_combout\;
\board|Multiplexers|ALT_INV_Selector5~6_combout\ <= NOT \board|Multiplexers|Selector5~6_combout\;
\board|Multiplexers|ALT_INV_Selector5~5_combout\ <= NOT \board|Multiplexers|Selector5~5_combout\;
\board|Register0|ALT_INV_q\(2) <= NOT \board|Register0|q\(2);
\board|Register5|ALT_INV_q\(2) <= NOT \board|Register5|q\(2);
\board|Multiplexers|ALT_INV_Selector5~4_combout\ <= NOT \board|Multiplexers|Selector5~4_combout\;
\board|Register1|ALT_INV_q\(2) <= NOT \board|Register1|q\(2);
\board|RegisterG|ALT_INV_q\(2) <= NOT \board|RegisterG|q\(2);
\board|Multiplexers|ALT_INV_Selector5~3_combout\ <= NOT \board|Multiplexers|Selector5~3_combout\;
\board|Register2|ALT_INV_q\(2) <= NOT \board|Register2|q\(2);
\board|Multiplexers|ALT_INV_Selector5~2_combout\ <= NOT \board|Multiplexers|Selector5~2_combout\;
\board|Register4|ALT_INV_q\(2) <= NOT \board|Register4|q\(2);
\board|Multiplexers|ALT_INV_Selector5~1_combout\ <= NOT \board|Multiplexers|Selector5~1_combout\;
\board|Register6|ALT_INV_q\(2) <= NOT \board|Register6|q\(2);
\board|Multiplexers|ALT_INV_Selector5~0_combout\ <= NOT \board|Multiplexers|Selector5~0_combout\;
\board|Register7|ALT_INV_q\(2) <= NOT \board|Register7|q\(2);
\board|Register3|ALT_INV_q\(2) <= NOT \board|Register3|q\(2);
\board|Multiplexers|ALT_INV_Selector6~7_combout\ <= NOT \board|Multiplexers|Selector6~7_combout\;
\board|Multiplexers|ALT_INV_Selector6~6_combout\ <= NOT \board|Multiplexers|Selector6~6_combout\;
\board|Multiplexers|ALT_INV_Selector6~5_combout\ <= NOT \board|Multiplexers|Selector6~5_combout\;
\board|Register0|ALT_INV_q\(1) <= NOT \board|Register0|q\(1);
\board|Register5|ALT_INV_q\(1) <= NOT \board|Register5|q\(1);
\board|Multiplexers|ALT_INV_Selector6~4_combout\ <= NOT \board|Multiplexers|Selector6~4_combout\;
\board|Register1|ALT_INV_q\(1) <= NOT \board|Register1|q\(1);
\board|RegisterG|ALT_INV_q\(1) <= NOT \board|RegisterG|q\(1);
\board|Multiplexers|ALT_INV_Selector6~3_combout\ <= NOT \board|Multiplexers|Selector6~3_combout\;
\board|Register2|ALT_INV_q\(1) <= NOT \board|Register2|q\(1);
\board|Multiplexers|ALT_INV_Selector6~2_combout\ <= NOT \board|Multiplexers|Selector6~2_combout\;
\board|Register4|ALT_INV_q\(1) <= NOT \board|Register4|q\(1);
\board|Multiplexers|ALT_INV_Selector6~1_combout\ <= NOT \board|Multiplexers|Selector6~1_combout\;
\board|Register6|ALT_INV_q\(1) <= NOT \board|Register6|q\(1);
\board|Multiplexers|ALT_INV_Selector6~0_combout\ <= NOT \board|Multiplexers|Selector6~0_combout\;
\board|Register7|ALT_INV_q\(1) <= NOT \board|Register7|q\(1);
\board|Register3|ALT_INV_q\(1) <= NOT \board|Register3|q\(1);
\board|Multiplexers|ALT_INV_Equal3~0_combout\ <= NOT \board|Multiplexers|Equal3~0_combout\;
\board|Multiplexers|ALT_INV_Selector7~8_combout\ <= NOT \board|Multiplexers|Selector7~8_combout\;
\board|Multiplexers|ALT_INV_Selector7~7_combout\ <= NOT \board|Multiplexers|Selector7~7_combout\;
\board|Multiplexers|ALT_INV_Selector7~6_combout\ <= NOT \board|Multiplexers|Selector7~6_combout\;
\board|Register0|ALT_INV_q\(0) <= NOT \board|Register0|q\(0);
\board|Register5|ALT_INV_q\(0) <= NOT \board|Register5|q\(0);
\board|Multiplexers|ALT_INV_Selector7~5_combout\ <= NOT \board|Multiplexers|Selector7~5_combout\;
\board|Register1|ALT_INV_q\(0) <= NOT \board|Register1|q\(0);
\board|RegisterG|ALT_INV_q\(0) <= NOT \board|RegisterG|q\(0);
\board|Multiplexers|ALT_INV_Selector7~4_combout\ <= NOT \board|Multiplexers|Selector7~4_combout\;
\board|Register2|ALT_INV_q\(0) <= NOT \board|Register2|q\(0);
\board|Multiplexers|ALT_INV_Selector7~3_combout\ <= NOT \board|Multiplexers|Selector7~3_combout\;
\board|Register4|ALT_INV_q\(0) <= NOT \board|Register4|q\(0);
\board|Multiplexers|ALT_INV_Selector7~2_combout\ <= NOT \board|Multiplexers|Selector7~2_combout\;
\board|Register6|ALT_INV_q\(0) <= NOT \board|Register6|q\(0);
\board|Multiplexers|ALT_INV_Selector7~1_combout\ <= NOT \board|Multiplexers|Selector7~1_combout\;
\board|Register7|ALT_INV_q\(0) <= NOT \board|Register7|q\(0);
\board|Multiplexers|ALT_INV_Selector7~0_combout\ <= NOT \board|Multiplexers|Selector7~0_combout\;
\board|Register3|ALT_INV_q\(0) <= NOT \board|Register3|q\(0);
\board|Multiplexers|ALT_INV_bout~0_combout\ <= NOT \board|Multiplexers|bout~0_combout\;
\board|Multiplexers|ALT_INV_WideNor0~2_combout\ <= NOT \board|Multiplexers|WideNor0~2_combout\;
\board|Multiplexers|ALT_INV_Equal2~1_combout\ <= NOT \board|Multiplexers|Equal2~1_combout\;
\board|Multiplexers|ALT_INV_Equal0~3_combout\ <= NOT \board|Multiplexers|Equal0~3_combout\;
\board|Multiplexers|ALT_INV_WideNor0~1_combout\ <= NOT \board|Multiplexers|WideNor0~1_combout\;
\board|Multiplexers|ALT_INV_Equal2~0_combout\ <= NOT \board|Multiplexers|Equal2~0_combout\;
\board|Multiplexers|ALT_INV_Equal0~2_combout\ <= NOT \board|Multiplexers|Equal0~2_combout\;
\board|Multiplexers|ALT_INV_WideNor0~0_combout\ <= NOT \board|Multiplexers|WideNor0~0_combout\;
\board|Multiplexers|ALT_INV_Equal6~0_combout\ <= NOT \board|Multiplexers|Equal6~0_combout\;
\board|Multiplexers|ALT_INV_Equal0~1_combout\ <= NOT \board|Multiplexers|Equal0~1_combout\;
\board|Multiplexers|ALT_INV_Equal7~0_combout\ <= NOT \board|Multiplexers|Equal7~0_combout\;
\board|Multiplexers|ALT_INV_Equal0~0_combout\ <= NOT \board|Multiplexers|Equal0~0_combout\;
\board|Multiplexers|ALT_INV_Equal1~0_combout\ <= NOT \board|Multiplexers|Equal1~0_combout\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\board|ControlUnit|ALT_INV_Ain~combout\ <= NOT \board|ControlUnit|Ain~combout\;
\board|ControlUnit|ALT_INV_IRin~combout\ <= NOT \board|ControlUnit|IRin~combout\;
\board|ControlUnit|ALT_INV_addsub~combout\ <= NOT \board|ControlUnit|addsub~combout\;
\board|ControlUnit|ALT_INV_regin\(0) <= NOT \board|ControlUnit|regin\(0);
\board|ControlUnit|ALT_INV_regin\(5) <= NOT \board|ControlUnit|regin\(5);
\board|ControlUnit|ALT_INV_regin\(1) <= NOT \board|ControlUnit|regin\(1);
\board|ControlUnit|ALT_INV_Gin~combout\ <= NOT \board|ControlUnit|Gin~combout\;
\board|ControlUnit|ALT_INV_regin\(2) <= NOT \board|ControlUnit|regin\(2);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector7~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector6~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector5~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector4~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector3~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector2~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector1~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|Multiplexers|Selector0~7_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \board|ControlUnit|done~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X12_Y2_N32
\board|ControlUnit|y.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|ControlUnit|y.T1~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|ControlUnit|y.T2~q\);

-- Location: FF_X11_Y2_N53
\board|ControlUnit|y.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|ControlUnit|y.T2~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|ControlUnit|y.T3~q\);

-- Location: LABCELL_X11_Y2_N0
\board|ControlUnit|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector0~0_combout\ = ( !\board|ControlUnit|y.T3~q\ & ( (\board|ControlUnit|y.T0~q\) # (\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \board|ControlUnit|ALT_INV_y.T0~q\,
	dataf => \board|ControlUnit|ALT_INV_y.T3~q\,
	combout => \board|ControlUnit|Selector0~0_combout\);

-- Location: FF_X11_Y2_N11
\board|ControlUnit|y.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|ControlUnit|Selector0~0_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|ControlUnit|y.T0~q\);

-- Location: LABCELL_X9_Y2_N24
\board|ControlUnit|y~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|y~12_combout\ = ( !\board|ControlUnit|y.T0~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \board|ControlUnit|ALT_INV_y.T0~q\,
	combout => \board|ControlUnit|y~12_combout\);

-- Location: FF_X11_Y2_N38
\board|ControlUnit|y.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|ControlUnit|y~12_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|ControlUnit|y.T1~q\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X11_Y2_N54
\board|ControlUnit|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector25~0_combout\ = ( \board|RegisterIR|q\(7) ) # ( !\board|RegisterIR|q\(7) & ( !\board|ControlUnit|y.T0~q\ $ (\board|ControlUnit|y.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_y.T0~q\,
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector25~0_combout\);

-- Location: LABCELL_X11_Y2_N9
\board|ControlUnit|IRin\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|IRin~combout\ = ( \board|ControlUnit|IRin~combout\ & ( (!\board|ControlUnit|Selector25~0_combout\) # (!\board|ControlUnit|y.T0~q\) ) ) # ( !\board|ControlUnit|IRin~combout\ & ( (\board|ControlUnit|Selector25~0_combout\ & 
-- !\board|ControlUnit|y.T0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_Selector25~0_combout\,
	datad => \board|ControlUnit|ALT_INV_y.T0~q\,
	dataf => \board|ControlUnit|ALT_INV_IRin~combout\,
	combout => \board|ControlUnit|IRin~combout\);

-- Location: FF_X10_Y2_N44
\board|RegisterIR|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(7));

-- Location: LABCELL_X11_Y2_N33
\board|ControlUnit|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector21~0_combout\ = ( \board|ControlUnit|y.T0~q\ & ( (\board|RegisterIR|q\(7)) # (\board|ControlUnit|y.T1~q\) ) ) # ( !\board|ControlUnit|y.T0~q\ & ( (\board|ControlUnit|y.T1~q\ & \board|RegisterIR|q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(7),
	dataf => \board|ControlUnit|ALT_INV_y.T0~q\,
	combout => \board|ControlUnit|Selector21~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X10_Y2_N5
\board|RegisterIR|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(2));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X10_Y2_N47
\board|RegisterIR|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(6));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X11_Y2_N35
\board|RegisterIR|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(0));

-- Location: LABCELL_X10_Y2_N33
\board|ControlUnit|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector6~0_combout\ = ( \board|RegisterIR|q\(0) & ( (\board|RegisterIR|q\(2) & ((!\board|ControlUnit|y.T1~q\) # ((!\board|RegisterIR|q\(6) & !\board|RegisterIR|q\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010000000101010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(2),
	datab => \board|RegisterIR|ALT_INV_q\(6),
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(0),
	combout => \board|ControlUnit|Selector6~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X11_Y2_N20
\board|RegisterIR|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(1));

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X11_Y2_N5
\board|RegisterIR|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(5));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X11_Y2_N47
\board|RegisterIR|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(4));

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X10_Y2_N8
\board|RegisterIR|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \board|ControlUnit|IRin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterIR|q\(3));

-- Location: LABCELL_X10_Y2_N6
\board|ControlUnit|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector6~1_combout\ = ( \board|RegisterIR|q\(7) & ( (\board|RegisterIR|q\(5) & (\board|ControlUnit|y.T1~q\ & (\board|RegisterIR|q\(4) & \board|RegisterIR|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(4),
	datad => \board|RegisterIR|ALT_INV_q\(3),
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector6~1_combout\);

-- Location: LABCELL_X10_Y2_N39
\board|ControlUnit|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector6~2_combout\ = ( \board|ControlUnit|Selector6~1_combout\ & ( !\board|ControlUnit|y.T3~q\ ) ) # ( !\board|ControlUnit|Selector6~1_combout\ & ( (\board|ControlUnit|Selector6~0_combout\ & (!\board|ControlUnit|y.T3~q\ & 
-- \board|RegisterIR|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_Selector6~0_combout\,
	datac => \board|ControlUnit|ALT_INV_y.T3~q\,
	datad => \board|RegisterIR|ALT_INV_q\(1),
	dataf => \board|ControlUnit|ALT_INV_Selector6~1_combout\,
	combout => \board|ControlUnit|Selector6~2_combout\);

-- Location: LABCELL_X10_Y2_N30
\board|ControlUnit|muxout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(7) = ( \board|ControlUnit|Selector6~2_combout\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|muxout\(7)) ) ) # ( !\board|ControlUnit|Selector6~2_combout\ & ( (\board|ControlUnit|muxout\(7) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(7),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector6~2_combout\,
	combout => \board|ControlUnit|muxout\(7));

-- Location: LABCELL_X10_Y2_N36
\board|ControlUnit|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector13~1_combout\ = ( !\board|RegisterIR|q\(0) & ( (!\board|ControlUnit|y.T1~q\) # ((!\board|RegisterIR|q\(6) & !\board|RegisterIR|q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|RegisterIR|ALT_INV_q\(6),
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(0),
	combout => \board|ControlUnit|Selector13~1_combout\);

-- Location: LABCELL_X11_Y2_N3
\board|ControlUnit|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector13~0_combout\ = ( \board|RegisterIR|q\(7) & ( (\board|ControlUnit|y.T1~q\ & (!\board|RegisterIR|q\(3) & (!\board|RegisterIR|q\(4) & !\board|RegisterIR|q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T1~q\,
	datab => \board|RegisterIR|ALT_INV_q\(3),
	datac => \board|RegisterIR|ALT_INV_q\(4),
	datad => \board|RegisterIR|ALT_INV_q\(5),
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector13~0_combout\);

-- Location: LABCELL_X10_Y2_N24
\board|ControlUnit|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector13~2_combout\ = ( \board|ControlUnit|Selector13~0_combout\ & ( !\board|ControlUnit|y.T3~q\ ) ) # ( !\board|ControlUnit|Selector13~0_combout\ & ( (!\board|RegisterIR|q\(2) & (!\board|ControlUnit|y.T3~q\ & 
-- (!\board|RegisterIR|q\(1) & \board|ControlUnit|Selector13~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(2),
	datab => \board|ControlUnit|ALT_INV_y.T3~q\,
	datac => \board|RegisterIR|ALT_INV_q\(1),
	datad => \board|ControlUnit|ALT_INV_Selector13~1_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector13~0_combout\,
	combout => \board|ControlUnit|Selector13~2_combout\);

-- Location: LABCELL_X9_Y2_N39
\board|ControlUnit|muxout[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(0) = ( \board|ControlUnit|Selector13~2_combout\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|muxout\(0)) ) ) # ( !\board|ControlUnit|Selector13~2_combout\ & ( (\board|ControlUnit|muxout\(0) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(0),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector13~2_combout\,
	combout => \board|ControlUnit|muxout\(0));

-- Location: LABCELL_X11_Y2_N6
\board|ControlUnit|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector10~0_combout\ = ( \board|RegisterIR|q\(7) & ( (!\board|RegisterIR|q\(5) & (\board|RegisterIR|q\(4) & (\board|ControlUnit|y.T1~q\ & \board|RegisterIR|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|RegisterIR|ALT_INV_q\(4),
	datac => \board|ControlUnit|ALT_INV_y.T1~q\,
	datad => \board|RegisterIR|ALT_INV_q\(3),
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector10~0_combout\);

-- Location: LABCELL_X11_Y2_N30
\board|ControlUnit|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector12~0_combout\ = ( \board|RegisterIR|q\(6) & ( (!\board|ControlUnit|y.T1~q\ & \board|RegisterIR|q\(0)) ) ) # ( !\board|RegisterIR|q\(6) & ( (\board|RegisterIR|q\(0) & ((!\board|ControlUnit|y.T1~q\) # (!\board|RegisterIR|q\(7)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(0),
	datad => \board|RegisterIR|ALT_INV_q\(7),
	dataf => \board|RegisterIR|ALT_INV_q\(6),
	combout => \board|ControlUnit|Selector12~0_combout\);

-- Location: LABCELL_X11_Y2_N18
\board|ControlUnit|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector10~1_combout\ = ( \board|ControlUnit|Selector12~0_combout\ & ( (!\board|ControlUnit|y.T3~q\ & (((!\board|RegisterIR|q\(2) & \board|RegisterIR|q\(1))) # (\board|ControlUnit|Selector10~0_combout\))) ) ) # ( 
-- !\board|ControlUnit|Selector12~0_combout\ & ( (!\board|ControlUnit|y.T3~q\ & \board|ControlUnit|Selector10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010101000100010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T3~q\,
	datab => \board|ControlUnit|ALT_INV_Selector10~0_combout\,
	datac => \board|RegisterIR|ALT_INV_q\(2),
	datad => \board|RegisterIR|ALT_INV_q\(1),
	dataf => \board|ControlUnit|ALT_INV_Selector12~0_combout\,
	combout => \board|ControlUnit|Selector10~1_combout\);

-- Location: LABCELL_X11_Y2_N57
\board|ControlUnit|muxout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(3) = ( \board|ControlUnit|Selector10~1_combout\ & ( (\board|ControlUnit|muxout\(3)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector10~1_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|muxout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(3),
	dataf => \board|ControlUnit|ALT_INV_Selector10~1_combout\,
	combout => \board|ControlUnit|muxout\(3));

-- Location: LABCELL_X11_Y2_N51
\board|ControlUnit|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector8~0_combout\ = ( \board|RegisterIR|q\(3) & ( (\board|ControlUnit|y.T1~q\ & (!\board|RegisterIR|q\(4) & (\board|RegisterIR|q\(7) & \board|RegisterIR|q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T1~q\,
	datab => \board|RegisterIR|ALT_INV_q\(4),
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|RegisterIR|ALT_INV_q\(5),
	dataf => \board|RegisterIR|ALT_INV_q\(3),
	combout => \board|ControlUnit|Selector8~0_combout\);

-- Location: LABCELL_X10_Y2_N15
\board|ControlUnit|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector8~1_combout\ = ( \board|ControlUnit|Selector8~0_combout\ & ( !\board|ControlUnit|y.T3~q\ ) ) # ( !\board|ControlUnit|Selector8~0_combout\ & ( (\board|ControlUnit|Selector6~0_combout\ & (!\board|RegisterIR|q\(1) & 
-- !\board|ControlUnit|y.T3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_Selector6~0_combout\,
	datab => \board|RegisterIR|ALT_INV_q\(1),
	datad => \board|ControlUnit|ALT_INV_y.T3~q\,
	dataf => \board|ControlUnit|ALT_INV_Selector8~0_combout\,
	combout => \board|ControlUnit|Selector8~1_combout\);

-- Location: LABCELL_X9_Y2_N51
\board|ControlUnit|muxout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(5) = ( \board|ControlUnit|muxout\(5) & ( (!\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|Selector8~1_combout\) ) ) # ( !\board|ControlUnit|muxout\(5) & ( (\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|Selector8~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_Selector8~1_combout\,
	dataf => \board|ControlUnit|ALT_INV_muxout\(5),
	combout => \board|ControlUnit|muxout\(5));

-- Location: LABCELL_X11_Y2_N24
\board|ControlUnit|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector9~0_combout\ = ( \board|RegisterIR|q\(2) & ( (!\board|RegisterIR|q\(0) & ((!\board|ControlUnit|y.T1~q\) # ((!\board|RegisterIR|q\(6) & !\board|RegisterIR|q\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000101000001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(0),
	datab => \board|RegisterIR|ALT_INV_q\(6),
	datac => \board|ControlUnit|ALT_INV_y.T1~q\,
	datad => \board|RegisterIR|ALT_INV_q\(7),
	dataf => \board|RegisterIR|ALT_INV_q\(2),
	combout => \board|ControlUnit|Selector9~0_combout\);

-- Location: LABCELL_X11_Y2_N15
\board|ControlUnit|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector9~1_combout\ = ( \board|RegisterIR|q\(7) & ( (\board|RegisterIR|q\(5) & (\board|ControlUnit|y.T1~q\ & (!\board|RegisterIR|q\(4) & !\board|RegisterIR|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(4),
	datad => \board|RegisterIR|ALT_INV_q\(3),
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector9~1_combout\);

-- Location: LABCELL_X11_Y2_N42
\board|ControlUnit|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector9~2_combout\ = ( \board|ControlUnit|Selector9~1_combout\ & ( !\board|ControlUnit|y.T3~q\ ) ) # ( !\board|ControlUnit|Selector9~1_combout\ & ( (!\board|ControlUnit|y.T3~q\ & (\board|ControlUnit|Selector9~0_combout\ & 
-- !\board|RegisterIR|q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T3~q\,
	datac => \board|ControlUnit|ALT_INV_Selector9~0_combout\,
	datad => \board|RegisterIR|ALT_INV_q\(1),
	dataf => \board|ControlUnit|ALT_INV_Selector9~1_combout\,
	combout => \board|ControlUnit|Selector9~2_combout\);

-- Location: LABCELL_X11_Y2_N21
\board|ControlUnit|muxout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(4) = ( \board|ControlUnit|Selector9~2_combout\ & ( (\board|ControlUnit|muxout\(4)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector9~2_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|muxout\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_Selector9~2_combout\,
	combout => \board|ControlUnit|muxout\(4));

-- Location: LABCELL_X10_Y2_N42
\board|ControlUnit|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector11~0_combout\ = ( !\board|RegisterIR|q\(3) & ( (!\board|RegisterIR|q\(5) & (\board|ControlUnit|y.T1~q\ & (\board|RegisterIR|q\(4) & \board|RegisterIR|q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(4),
	datad => \board|RegisterIR|ALT_INV_q\(7),
	dataf => \board|RegisterIR|ALT_INV_q\(3),
	combout => \board|ControlUnit|Selector11~0_combout\);

-- Location: LABCELL_X10_Y2_N57
\board|ControlUnit|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector11~1_combout\ = ( \board|ControlUnit|Selector11~0_combout\ & ( !\board|ControlUnit|y.T3~q\ ) ) # ( !\board|ControlUnit|Selector11~0_combout\ & ( (!\board|RegisterIR|q\(2) & (\board|RegisterIR|q\(1) & (!\board|ControlUnit|y.T3~q\ 
-- & \board|ControlUnit|Selector13~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(2),
	datab => \board|RegisterIR|ALT_INV_q\(1),
	datac => \board|ControlUnit|ALT_INV_y.T3~q\,
	datad => \board|ControlUnit|ALT_INV_Selector13~1_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector11~0_combout\,
	combout => \board|ControlUnit|Selector11~1_combout\);

-- Location: LABCELL_X9_Y2_N18
\board|ControlUnit|muxout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(2) = ( \board|ControlUnit|Selector11~1_combout\ & ( \board|ControlUnit|muxout\(2) ) ) # ( !\board|ControlUnit|Selector11~1_combout\ & ( \board|ControlUnit|muxout\(2) & ( !\board|ControlUnit|Selector21~0_combout\ ) ) ) # ( 
-- \board|ControlUnit|Selector11~1_combout\ & ( !\board|ControlUnit|muxout\(2) & ( \board|ControlUnit|Selector21~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datae => \board|ControlUnit|ALT_INV_Selector11~1_combout\,
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|ControlUnit|muxout\(2));

-- Location: LABCELL_X9_Y2_N30
\board|Multiplexers|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal1~0_combout\ = ( !\board|ControlUnit|muxout\(2) & ( (!\board|ControlUnit|muxout\(0) & (!\board|ControlUnit|muxout\(3) & (!\board|ControlUnit|muxout\(5) & !\board|ControlUnit|muxout\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(0),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|ControlUnit|ALT_INV_muxout\(5),
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Equal1~0_combout\);

-- Location: LABCELL_X10_Y2_N21
\board|ControlUnit|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector7~0_combout\ = ( !\board|RegisterIR|q\(3) & ( (\board|RegisterIR|q\(4) & (\board|ControlUnit|y.T1~q\ & (\board|RegisterIR|q\(7) & \board|RegisterIR|q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(4),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|RegisterIR|ALT_INV_q\(5),
	dataf => \board|RegisterIR|ALT_INV_q\(3),
	combout => \board|ControlUnit|Selector7~0_combout\);

-- Location: LABCELL_X10_Y2_N12
\board|ControlUnit|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector7~1_combout\ = ( \board|ControlUnit|Selector9~0_combout\ & ( (!\board|ControlUnit|y.T3~q\ & ((\board|ControlUnit|Selector7~0_combout\) # (\board|RegisterIR|q\(1)))) ) ) # ( !\board|ControlUnit|Selector9~0_combout\ & ( 
-- (!\board|ControlUnit|y.T3~q\ & \board|ControlUnit|Selector7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|RegisterIR|ALT_INV_q\(1),
	datac => \board|ControlUnit|ALT_INV_y.T3~q\,
	datad => \board|ControlUnit|ALT_INV_Selector7~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector9~0_combout\,
	combout => \board|ControlUnit|Selector7~1_combout\);

-- Location: LABCELL_X10_Y2_N9
\board|ControlUnit|muxout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(6) = ( \board|ControlUnit|Selector7~1_combout\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|muxout\(6)) ) ) # ( !\board|ControlUnit|Selector7~1_combout\ & ( (\board|ControlUnit|muxout\(6) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(6),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector7~1_combout\,
	combout => \board|ControlUnit|muxout\(6));

-- Location: LABCELL_X11_Y2_N36
\board|ControlUnit|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector5~0_combout\ = ( \board|RegisterIR|q\(6) & ( (!\board|RegisterIR|q\(7) & \board|ControlUnit|y.T1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(6),
	combout => \board|ControlUnit|Selector5~0_combout\);

-- Location: LABCELL_X10_Y2_N0
\board|ControlUnit|muxout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(8) = ( \board|ControlUnit|Selector5~0_combout\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|muxout\(8)) ) ) # ( !\board|ControlUnit|Selector5~0_combout\ & ( (\board|ControlUnit|muxout\(8) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(8),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector5~0_combout\,
	combout => \board|ControlUnit|muxout\(8));

-- Location: LABCELL_X10_Y2_N48
\board|ControlUnit|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector12~1_combout\ = ( \board|RegisterIR|q\(3) & ( (!\board|RegisterIR|q\(5) & (\board|RegisterIR|q\(7) & (!\board|RegisterIR|q\(4) & \board|ControlUnit|y.T1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|RegisterIR|ALT_INV_q\(7),
	datac => \board|RegisterIR|ALT_INV_q\(4),
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(3),
	combout => \board|ControlUnit|Selector12~1_combout\);

-- Location: LABCELL_X10_Y2_N27
\board|ControlUnit|Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector12~2_combout\ = ( \board|ControlUnit|Selector12~0_combout\ & ( (!\board|ControlUnit|y.T3~q\ & (((!\board|RegisterIR|q\(2) & !\board|RegisterIR|q\(1))) # (\board|ControlUnit|Selector12~1_combout\))) ) ) # ( 
-- !\board|ControlUnit|Selector12~0_combout\ & ( (!\board|ControlUnit|y.T3~q\ & \board|ControlUnit|Selector12~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110010000000110011001000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(2),
	datab => \board|ControlUnit|ALT_INV_y.T3~q\,
	datac => \board|RegisterIR|ALT_INV_q\(1),
	datad => \board|ControlUnit|ALT_INV_Selector12~1_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector12~0_combout\,
	combout => \board|ControlUnit|Selector12~2_combout\);

-- Location: LABCELL_X10_Y2_N54
\board|ControlUnit|muxout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(1) = ( \board|ControlUnit|Selector12~2_combout\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|muxout\(1)) ) ) # ( !\board|ControlUnit|Selector12~2_combout\ & ( (\board|ControlUnit|muxout\(1) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(1),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector12~2_combout\,
	combout => \board|ControlUnit|muxout\(1));

-- Location: LABCELL_X9_Y3_N54
\board|ControlUnit|muxout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|muxout\(9) = ( \board|ControlUnit|y.T3~q\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|muxout\(9)) ) ) # ( !\board|ControlUnit|y.T3~q\ & ( (\board|ControlUnit|muxout\(9) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(9),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_y.T3~q\,
	combout => \board|ControlUnit|muxout\(9));

-- Location: LABCELL_X9_Y3_N57
\board|Multiplexers|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal0~0_combout\ = ( !\board|ControlUnit|muxout\(9) & ( !\board|ControlUnit|muxout\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(1),
	dataf => \board|ControlUnit|ALT_INV_muxout\(9),
	combout => \board|Multiplexers|Equal0~0_combout\);

-- Location: LABCELL_X12_Y2_N33
\board|ControlUnit|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector14~0_combout\ = ( \board|RegisterIR|q\(3) & ( \board|ControlUnit|y.T1~q\ & ( (\board|RegisterIR|q\(5) & (\board|RegisterIR|q\(4) & (!\board|ControlUnit|y.T2~q\ $ (\board|RegisterIR|q\(7))))) ) ) ) # ( \board|RegisterIR|q\(3) & ( 
-- !\board|ControlUnit|y.T1~q\ & ( (\board|RegisterIR|q\(5) & (!\board|ControlUnit|y.T2~q\ & \board|RegisterIR|q\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T2~q\,
	datac => \board|RegisterIR|ALT_INV_q\(4),
	datad => \board|RegisterIR|ALT_INV_q\(7),
	datae => \board|RegisterIR|ALT_INV_q\(3),
	dataf => \board|ControlUnit|ALT_INV_y.T1~q\,
	combout => \board|ControlUnit|Selector14~0_combout\);

-- Location: LABCELL_X12_Y2_N24
\board|ControlUnit|regin[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(7) = ( \board|ControlUnit|Selector14~0_combout\ & ( (\board|ControlUnit|regin\(7)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector14~0_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|regin\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datac => \board|ControlUnit|ALT_INV_regin\(7),
	dataf => \board|ControlUnit|ALT_INV_Selector14~0_combout\,
	combout => \board|ControlUnit|regin\(7));

-- Location: FF_X10_Y3_N26
\board|Register7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(0));

-- Location: LABCELL_X10_Y3_N18
\board|Multiplexers|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~1_combout\ = ( \board|Multiplexers|Equal0~0_combout\ & ( \board|Register7|q\(0) & ( (\board|ControlUnit|muxout\(7) & (\board|Multiplexers|Equal1~0_combout\ & (!\board|ControlUnit|muxout\(6) & !\board|ControlUnit|muxout\(8)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(7),
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(6),
	datad => \board|ControlUnit|ALT_INV_muxout\(8),
	datae => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	dataf => \board|Register7|ALT_INV_q\(0),
	combout => \board|Multiplexers|Selector7~1_combout\);

-- Location: LABCELL_X12_Y2_N39
\board|ControlUnit|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector15~0_combout\ = ( \board|RegisterIR|q\(4) & ( !\board|RegisterIR|q\(3) & ( (\board|RegisterIR|q\(5) & (!\board|ControlUnit|y.T2~q\ $ (((\board|ControlUnit|y.T1~q\ & \board|RegisterIR|q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T2~q\,
	datac => \board|ControlUnit|ALT_INV_y.T1~q\,
	datad => \board|RegisterIR|ALT_INV_q\(7),
	datae => \board|RegisterIR|ALT_INV_q\(4),
	dataf => \board|RegisterIR|ALT_INV_q\(3),
	combout => \board|ControlUnit|Selector15~0_combout\);

-- Location: LABCELL_X12_Y2_N0
\board|ControlUnit|regin[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(6) = ( \board|ControlUnit|Selector15~0_combout\ & ( (\board|ControlUnit|regin\(6)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector15~0_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|regin\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_regin\(6),
	dataf => \board|ControlUnit|ALT_INV_Selector15~0_combout\,
	combout => \board|ControlUnit|regin\(6));

-- Location: FF_X10_Y3_N53
\board|Register6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(0));

-- Location: LABCELL_X9_Y2_N33
\board|Multiplexers|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal6~0_combout\ = ( !\board|ControlUnit|muxout\(7) & ( (!\board|ControlUnit|muxout\(8) & \board|ControlUnit|muxout\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(8),
	datad => \board|ControlUnit|ALT_INV_muxout\(6),
	dataf => \board|ControlUnit|ALT_INV_muxout\(7),
	combout => \board|Multiplexers|Equal6~0_combout\);

-- Location: LABCELL_X10_Y3_N30
\board|Multiplexers|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~2_combout\ = ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Register6|q\(0) & (\board|Multiplexers|Equal6~0_combout\ & \board|Multiplexers|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register6|ALT_INV_q\(0),
	datac => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datad => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector7~2_combout\);

-- Location: LABCELL_X10_Y2_N3
\board|Multiplexers|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal0~3_combout\ = ( !\board|ControlUnit|muxout\(5) & ( (!\board|ControlUnit|muxout\(8) & (!\board|ControlUnit|muxout\(7) & !\board|ControlUnit|muxout\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(8),
	datab => \board|ControlUnit|ALT_INV_muxout\(7),
	datac => \board|ControlUnit|ALT_INV_muxout\(6),
	dataf => \board|ControlUnit|ALT_INV_muxout\(5),
	combout => \board|Multiplexers|Equal0~3_combout\);

-- Location: LABCELL_X12_Y2_N18
\board|ControlUnit|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector17~0_combout\ = ( !\board|RegisterIR|q\(4) & ( \board|ControlUnit|y.T2~q\ & ( (!\board|RegisterIR|q\(3) & (\board|ControlUnit|y.T1~q\ & (\board|RegisterIR|q\(7) & \board|RegisterIR|q\(5)))) ) ) ) # ( !\board|RegisterIR|q\(4) & ( 
-- !\board|ControlUnit|y.T2~q\ & ( (!\board|RegisterIR|q\(3) & (\board|RegisterIR|q\(5) & ((!\board|ControlUnit|y.T1~q\) # (!\board|RegisterIR|q\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(3),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|RegisterIR|ALT_INV_q\(5),
	datae => \board|RegisterIR|ALT_INV_q\(4),
	dataf => \board|ControlUnit|ALT_INV_y.T2~q\,
	combout => \board|ControlUnit|Selector17~0_combout\);

-- Location: LABCELL_X12_Y2_N3
\board|ControlUnit|regin[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(4) = ( \board|ControlUnit|Selector17~0_combout\ & ( (\board|ControlUnit|regin\(4)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector17~0_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|regin\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_regin\(4),
	dataf => \board|ControlUnit|ALT_INV_Selector17~0_combout\,
	combout => \board|ControlUnit|regin\(4));

-- Location: FF_X9_Y1_N29
\board|Register4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(0));

-- Location: LABCELL_X9_Y3_N18
\board|Multiplexers|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal2~1_combout\ = ( !\board|ControlUnit|muxout\(1) & ( (!\board|ControlUnit|muxout\(0) & !\board|ControlUnit|muxout\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(0),
	datad => \board|ControlUnit|ALT_INV_muxout\(9),
	dataf => \board|ControlUnit|ALT_INV_muxout\(1),
	combout => \board|Multiplexers|Equal2~1_combout\);

-- Location: LABCELL_X9_Y1_N48
\board|Multiplexers|Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~3_combout\ = ( \board|ControlUnit|muxout\(4) & ( !\board|ControlUnit|muxout\(2) & ( (!\board|ControlUnit|muxout\(3) & (\board|Multiplexers|Equal0~3_combout\ & (\board|Register4|q\(0) & \board|Multiplexers|Equal2~1_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(3),
	datab => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datac => \board|Register4|ALT_INV_q\(0),
	datad => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Selector7~3_combout\);

-- Location: LABCELL_X12_Y2_N48
\board|ControlUnit|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector20~0_combout\ = ( \board|RegisterIR|q\(3) & ( !\board|RegisterIR|q\(4) & ( (!\board|RegisterIR|q\(5) & (!\board|ControlUnit|y.T2~q\ $ (((\board|ControlUnit|y.T1~q\ & \board|RegisterIR|q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|ControlUnit|ALT_INV_y.T2~q\,
	datae => \board|RegisterIR|ALT_INV_q\(3),
	dataf => \board|RegisterIR|ALT_INV_q\(4),
	combout => \board|ControlUnit|Selector20~0_combout\);

-- Location: LABCELL_X12_Y2_N6
\board|ControlUnit|regin[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(1) = ( \board|ControlUnit|regin\(1) & ( \board|ControlUnit|Selector20~0_combout\ ) ) # ( !\board|ControlUnit|regin\(1) & ( \board|ControlUnit|Selector20~0_combout\ & ( \board|ControlUnit|Selector21~0_combout\ ) ) ) # ( 
-- \board|ControlUnit|regin\(1) & ( !\board|ControlUnit|Selector20~0_combout\ & ( !\board|ControlUnit|Selector21~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datae => \board|ControlUnit|ALT_INV_regin\(1),
	dataf => \board|ControlUnit|ALT_INV_Selector20~0_combout\,
	combout => \board|ControlUnit|regin\(1));

-- Location: FF_X8_Y2_N29
\board|Register1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(0));

-- Location: LABCELL_X10_Y2_N18
\board|Multiplexers|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal0~1_combout\ = ( !\board|ControlUnit|muxout\(6) & ( (!\board|ControlUnit|muxout\(7) & !\board|ControlUnit|muxout\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(7),
	datad => \board|ControlUnit|ALT_INV_muxout\(8),
	dataf => \board|ControlUnit|ALT_INV_muxout\(6),
	combout => \board|Multiplexers|Equal0~1_combout\);

-- Location: LABCELL_X12_Y2_N54
\board|ControlUnit|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector3~1_combout\ = ( \board|RegisterIR|q\(7) & ( \board|ControlUnit|y.T1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector3~1_combout\);

-- Location: LABCELL_X11_Y2_N45
\board|ControlUnit|Ain\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Ain~combout\ = ( \board|ControlUnit|Selector3~1_combout\ & ( (\board|ControlUnit|Ain~combout\) # (\board|ControlUnit|Selector25~0_combout\) ) ) # ( !\board|ControlUnit|Selector3~1_combout\ & ( (!\board|ControlUnit|Selector25~0_combout\ 
-- & \board|ControlUnit|Ain~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_Selector25~0_combout\,
	datac => \board|ControlUnit|ALT_INV_Ain~combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector3~1_combout\,
	combout => \board|ControlUnit|Ain~combout\);

-- Location: FF_X9_Y1_N53
\board|RegisterA|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(0));

-- Location: LABCELL_X10_Y1_N3
\board|AddsubMachine|addsub|FullAdder_first|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|FullAdder_first|s~0_combout\ = ( !\board|RegisterA|q\(0) & ( \board|Multiplexers|Selector7~8_combout\ ) ) # ( \board|RegisterA|q\(0) & ( !\board|Multiplexers|Selector7~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \board|RegisterA|ALT_INV_q\(0),
	dataf => \board|Multiplexers|ALT_INV_Selector7~8_combout\,
	combout => \board|AddsubMachine|addsub|FullAdder_first|s~0_combout\);

-- Location: LABCELL_X11_Y2_N48
\board|ControlUnit|Gin\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Gin~combout\ = ( \board|ControlUnit|y.T2~q\ & ( (\board|ControlUnit|Selector25~0_combout\) # (\board|ControlUnit|Gin~combout\) ) ) # ( !\board|ControlUnit|y.T2~q\ & ( (\board|ControlUnit|Gin~combout\ & 
-- !\board|ControlUnit|Selector25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_Gin~combout\,
	datad => \board|ControlUnit|ALT_INV_Selector25~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_y.T2~q\,
	combout => \board|ControlUnit|Gin~combout\);

-- Location: FF_X10_Y1_N4
\board|RegisterG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|FullAdder_first|s~0_combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(0));

-- Location: MLABCELL_X8_Y2_N57
\board|Multiplexers|Selector7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~5_combout\ = ( \board|RegisterG|q\(0) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|Multiplexers|Equal0~1_combout\ & ((!\board|ControlUnit|muxout\(9) & (\board|Register1|q\(0) & \board|ControlUnit|muxout\(1))) # 
-- (\board|ControlUnit|muxout\(9) & ((!\board|ControlUnit|muxout\(1)))))) ) ) ) # ( !\board|RegisterG|q\(0) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|Register1|q\(0) & (\board|Multiplexers|Equal0~1_combout\ & (!\board|ControlUnit|muxout\(9) & 
-- \board|ControlUnit|muxout\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register1|ALT_INV_q\(0),
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(9),
	datad => \board|ControlUnit|ALT_INV_muxout\(1),
	datae => \board|RegisterG|ALT_INV_q\(0),
	dataf => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	combout => \board|Multiplexers|Selector7~5_combout\);

-- Location: LABCELL_X10_Y2_N51
\board|Multiplexers|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal2~0_combout\ = ( \board|ControlUnit|muxout\(2) & ( (!\board|ControlUnit|muxout\(3) & !\board|ControlUnit|muxout\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_muxout\(3),
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Equal2~0_combout\);

-- Location: LABCELL_X12_Y2_N51
\board|ControlUnit|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector19~0_combout\ = ( \board|RegisterIR|q\(4) & ( !\board|RegisterIR|q\(3) & ( (!\board|RegisterIR|q\(5) & (!\board|ControlUnit|y.T2~q\ $ (((\board|ControlUnit|y.T1~q\ & \board|RegisterIR|q\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T1~q\,
	datac => \board|ControlUnit|ALT_INV_y.T2~q\,
	datad => \board|RegisterIR|ALT_INV_q\(7),
	datae => \board|RegisterIR|ALT_INV_q\(4),
	dataf => \board|RegisterIR|ALT_INV_q\(3),
	combout => \board|ControlUnit|Selector19~0_combout\);

-- Location: LABCELL_X12_Y2_N27
\board|ControlUnit|regin[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(2) = ( \board|ControlUnit|Selector19~0_combout\ & ( (\board|ControlUnit|regin\(2)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector19~0_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|regin\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_regin\(2),
	dataf => \board|ControlUnit|ALT_INV_Selector19~0_combout\,
	combout => \board|ControlUnit|regin\(2));

-- Location: FF_X10_Y3_N38
\board|Register2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(0));

-- Location: LABCELL_X10_Y3_N33
\board|Multiplexers|Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~4_combout\ = ( \board|Multiplexers|Equal0~3_combout\ & ( (\board|Multiplexers|Equal2~1_combout\ & (\board|Multiplexers|Equal2~0_combout\ & \board|Register2|q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	datad => \board|Register2|ALT_INV_q\(0),
	dataf => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	combout => \board|Multiplexers|Selector7~4_combout\);

-- Location: LABCELL_X12_Y2_N36
\board|ControlUnit|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector16~0_combout\ = ( \board|RegisterIR|q\(3) & ( !\board|RegisterIR|q\(4) & ( (\board|RegisterIR|q\(5) & (!\board|ControlUnit|y.T2~q\ $ (((\board|RegisterIR|q\(7) & \board|ControlUnit|y.T1~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(5),
	datab => \board|ControlUnit|ALT_INV_y.T2~q\,
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|ControlUnit|ALT_INV_y.T1~q\,
	datae => \board|RegisterIR|ALT_INV_q\(3),
	dataf => \board|RegisterIR|ALT_INV_q\(4),
	combout => \board|ControlUnit|Selector16~0_combout\);

-- Location: LABCELL_X11_Y2_N27
\board|ControlUnit|regin[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(5) = ( \board|ControlUnit|Selector16~0_combout\ & ( (\board|ControlUnit|regin\(5)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector16~0_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|regin\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_regin\(5),
	dataf => \board|ControlUnit|ALT_INV_Selector16~0_combout\,
	combout => \board|ControlUnit|regin\(5));

-- Location: FF_X9_Y2_N23
\board|Register5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(0));

-- Location: LABCELL_X9_Y2_N48
\board|Multiplexers|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal0~2_combout\ = ( !\board|ControlUnit|muxout\(1) & ( (!\board|ControlUnit|muxout\(9) & (!\board|ControlUnit|muxout\(3) & (!\board|ControlUnit|muxout\(2) & !\board|ControlUnit|muxout\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(9),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|ControlUnit|ALT_INV_muxout\(2),
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(1),
	combout => \board|Multiplexers|Equal0~2_combout\);

-- Location: LABCELL_X12_Y2_N42
\board|ControlUnit|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector3~0_combout\ = ( \board|RegisterIR|q\(7) & ( \board|ControlUnit|y.T2~q\ & ( (\board|ControlUnit|y.T1~q\ & (!\board|RegisterIR|q\(5) & (!\board|RegisterIR|q\(3) & !\board|RegisterIR|q\(4)))) ) ) ) # ( \board|RegisterIR|q\(7) & ( 
-- !\board|ControlUnit|y.T2~q\ & ( (!\board|ControlUnit|y.T1~q\ & (!\board|RegisterIR|q\(5) & (!\board|RegisterIR|q\(3) & !\board|RegisterIR|q\(4)))) ) ) ) # ( !\board|RegisterIR|q\(7) & ( !\board|ControlUnit|y.T2~q\ & ( (!\board|RegisterIR|q\(5) & 
-- (!\board|RegisterIR|q\(3) & !\board|RegisterIR|q\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_y.T1~q\,
	datab => \board|RegisterIR|ALT_INV_q\(5),
	datac => \board|RegisterIR|ALT_INV_q\(3),
	datad => \board|RegisterIR|ALT_INV_q\(4),
	datae => \board|RegisterIR|ALT_INV_q\(7),
	dataf => \board|ControlUnit|ALT_INV_y.T2~q\,
	combout => \board|ControlUnit|Selector3~0_combout\);

-- Location: LABCELL_X11_Y2_N12
\board|ControlUnit|regin[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(0) = ( \board|ControlUnit|Selector3~0_combout\ & ( (\board|ControlUnit|Selector21~0_combout\) # (\board|ControlUnit|regin\(0)) ) ) # ( !\board|ControlUnit|Selector3~0_combout\ & ( (\board|ControlUnit|regin\(0) & 
-- !\board|ControlUnit|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_regin\(0),
	datad => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_Selector3~0_combout\,
	combout => \board|ControlUnit|regin\(0));

-- Location: FF_X9_Y2_N56
\board|Register0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(0));

-- Location: LABCELL_X9_Y2_N57
\board|Multiplexers|Selector7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~6_combout\ = ( \board|Multiplexers|Equal0~1_combout\ & ( \board|ControlUnit|muxout\(5) & ( (\board|Register5|q\(0) & (\board|Multiplexers|Equal0~2_combout\ & !\board|ControlUnit|muxout\(0))) ) ) ) # ( 
-- \board|Multiplexers|Equal0~1_combout\ & ( !\board|ControlUnit|muxout\(5) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|ControlUnit|muxout\(0) & \board|Register0|q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register5|ALT_INV_q\(0),
	datab => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(0),
	datad => \board|Register0|ALT_INV_q\(0),
	datae => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	dataf => \board|ControlUnit|ALT_INV_muxout\(5),
	combout => \board|Multiplexers|Selector7~6_combout\);

-- Location: LABCELL_X9_Y2_N6
\board|Multiplexers|Selector7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~7_combout\ = ( !\board|Multiplexers|Selector7~4_combout\ & ( !\board|Multiplexers|Selector7~6_combout\ & ( (!\board|Multiplexers|Selector7~1_combout\ & (!\board|Multiplexers|Selector7~2_combout\ & 
-- (!\board|Multiplexers|Selector7~3_combout\ & !\board|Multiplexers|Selector7~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector7~1_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector7~2_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector7~3_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector7~5_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector7~4_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector7~6_combout\,
	combout => \board|Multiplexers|Selector7~7_combout\);

-- Location: LABCELL_X9_Y3_N21
\board|Multiplexers|WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|WideNor0~2_combout\ = ( \board|Multiplexers|Equal2~1_combout\ & ( (\board|Multiplexers|Equal0~3_combout\ & (!\board|ControlUnit|muxout\(2) & (!\board|ControlUnit|muxout\(3) $ (!\board|ControlUnit|muxout\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datab => \board|ControlUnit|ALT_INV_muxout\(2),
	datac => \board|ControlUnit|ALT_INV_muxout\(3),
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|WideNor0~2_combout\);

-- Location: MLABCELL_X8_Y3_N0
\board|Multiplexers|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|WideNor0~1_combout\ = ( \board|ControlUnit|muxout\(0) & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & !\board|ControlUnit|muxout\(5))) ) ) ) # ( 
-- !\board|ControlUnit|muxout\(0) & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal0~1_combout\ & ((!\board|ControlUnit|muxout\(5) & ((\board|Multiplexers|Equal2~0_combout\))) # (\board|ControlUnit|muxout\(5) & 
-- (\board|Multiplexers|Equal0~2_combout\)))) ) ) ) # ( \board|ControlUnit|muxout\(0) & ( !\board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & !\board|ControlUnit|muxout\(5))) ) ) ) # ( 
-- !\board|ControlUnit|muxout\(0) & ( !\board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & \board|ControlUnit|muxout\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000100010000000000000011000100010001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(5),
	datae => \board|ControlUnit|ALT_INV_muxout\(0),
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|WideNor0~1_combout\);

-- Location: MLABCELL_X8_Y3_N57
\board|Multiplexers|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal7~0_combout\ = ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal1~0_combout\ & !\board|ControlUnit|muxout\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(6),
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Equal7~0_combout\);

-- Location: MLABCELL_X8_Y3_N30
\board|Multiplexers|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|WideNor0~0_combout\ = ( \board|Multiplexers|Equal0~1_combout\ & ( (\board|Multiplexers|Equal1~0_combout\ & ((!\board|ControlUnit|muxout\(1) & ((\board|ControlUnit|muxout\(9)) # (\board|Multiplexers|Equal6~0_combout\))) # 
-- (\board|ControlUnit|muxout\(1) & ((!\board|ControlUnit|muxout\(9)))))) ) ) # ( !\board|Multiplexers|Equal0~1_combout\ & ( (\board|Multiplexers|Equal6~0_combout\ & (\board|Multiplexers|Equal1~0_combout\ & (!\board|ControlUnit|muxout\(1) & 
-- !\board|ControlUnit|muxout\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010011001100000001001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(1),
	datad => \board|ControlUnit|ALT_INV_muxout\(9),
	dataf => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	combout => \board|Multiplexers|WideNor0~0_combout\);

-- Location: MLABCELL_X8_Y3_N18
\board|Multiplexers|bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|bout~0_combout\ = ( \board|Multiplexers|Equal7~0_combout\ & ( \board|Multiplexers|WideNor0~0_combout\ & ( (!\board|ControlUnit|muxout\(7) & \board|ControlUnit|muxout\(8)) ) ) ) # ( \board|Multiplexers|Equal7~0_combout\ & ( 
-- !\board|Multiplexers|WideNor0~0_combout\ & ( (!\board|ControlUnit|muxout\(7) & (((!\board|Multiplexers|WideNor0~2_combout\ & !\board|Multiplexers|WideNor0~1_combout\)) # (\board|ControlUnit|muxout\(8)))) # (\board|ControlUnit|muxout\(7) & 
-- (!\board|Multiplexers|WideNor0~2_combout\ & (!\board|Multiplexers|WideNor0~1_combout\ & \board|ControlUnit|muxout\(8)))) ) ) ) # ( !\board|Multiplexers|Equal7~0_combout\ & ( !\board|Multiplexers|WideNor0~0_combout\ & ( 
-- (!\board|Multiplexers|WideNor0~2_combout\ & !\board|Multiplexers|WideNor0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000100000001110101000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(7),
	datab => \board|Multiplexers|ALT_INV_WideNor0~2_combout\,
	datac => \board|Multiplexers|ALT_INV_WideNor0~1_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(8),
	datae => \board|Multiplexers|ALT_INV_Equal7~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_WideNor0~0_combout\,
	combout => \board|Multiplexers|bout~0_combout\);

-- Location: LABCELL_X12_Y2_N12
\board|ControlUnit|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector18~0_combout\ = ( \board|ControlUnit|y.T1~q\ & ( \board|ControlUnit|y.T2~q\ & ( (\board|RegisterIR|q\(3) & (!\board|RegisterIR|q\(5) & (\board|RegisterIR|q\(7) & \board|RegisterIR|q\(4)))) ) ) ) # ( \board|ControlUnit|y.T1~q\ & 
-- ( !\board|ControlUnit|y.T2~q\ & ( (\board|RegisterIR|q\(3) & (!\board|RegisterIR|q\(5) & (!\board|RegisterIR|q\(7) & \board|RegisterIR|q\(4)))) ) ) ) # ( !\board|ControlUnit|y.T1~q\ & ( !\board|ControlUnit|y.T2~q\ & ( (\board|RegisterIR|q\(3) & 
-- (!\board|RegisterIR|q\(5) & \board|RegisterIR|q\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterIR|ALT_INV_q\(3),
	datab => \board|RegisterIR|ALT_INV_q\(5),
	datac => \board|RegisterIR|ALT_INV_q\(7),
	datad => \board|RegisterIR|ALT_INV_q\(4),
	datae => \board|ControlUnit|ALT_INV_y.T1~q\,
	dataf => \board|ControlUnit|ALT_INV_y.T2~q\,
	combout => \board|ControlUnit|Selector18~0_combout\);

-- Location: LABCELL_X12_Y2_N57
\board|ControlUnit|regin[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|regin\(3) = ( \board|ControlUnit|Selector18~0_combout\ & ( (\board|ControlUnit|regin\(3)) # (\board|ControlUnit|Selector21~0_combout\) ) ) # ( !\board|ControlUnit|Selector18~0_combout\ & ( (!\board|ControlUnit|Selector21~0_combout\ & 
-- \board|ControlUnit|regin\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|ControlUnit|ALT_INV_Selector21~0_combout\,
	datad => \board|ControlUnit|ALT_INV_regin\(3),
	dataf => \board|ControlUnit|ALT_INV_Selector18~0_combout\,
	combout => \board|ControlUnit|regin\(3));

-- Location: FF_X9_Y1_N32
\board|Register3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector7~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(0));

-- Location: LABCELL_X9_Y1_N21
\board|Multiplexers|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~0_combout\ = ( !\board|ControlUnit|muxout\(4) & ( !\board|ControlUnit|muxout\(2) & ( (\board|Multiplexers|Equal2~1_combout\ & (\board|Register3|q\(0) & (\board|ControlUnit|muxout\(3) & \board|Multiplexers|Equal0~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datab => \board|Register3|ALT_INV_q\(0),
	datac => \board|ControlUnit|ALT_INV_muxout\(3),
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Selector7~0_combout\);

-- Location: LABCELL_X9_Y1_N15
\board|Multiplexers|Selector7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector7~8_combout\ = ( \board|Multiplexers|Selector7~0_combout\ ) # ( !\board|Multiplexers|Selector7~0_combout\ & ( (!\board|Multiplexers|Selector7~7_combout\) # ((\SW[0]~input_o\ & \board|Multiplexers|bout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector7~7_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \board|Multiplexers|ALT_INV_bout~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector7~0_combout\,
	combout => \board|Multiplexers|Selector7~8_combout\);

-- Location: LABCELL_X10_Y1_N9
\board|Register5|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register5|q[1]~feeder_combout\ = ( \board|Multiplexers|Selector6~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector6~7_combout\,
	combout => \board|Register5|q[1]~feeder_combout\);

-- Location: FF_X10_Y1_N11
\board|Register5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register5|q[1]~feeder_combout\,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(1));

-- Location: FF_X9_Y3_N41
\board|Register0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(1));

-- Location: LABCELL_X9_Y3_N51
\board|Multiplexers|Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~5_combout\ = ( \board|Register5|q\(1) & ( \board|Register0|q\(1) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (!\board|ControlUnit|muxout\(0) $ (!\board|ControlUnit|muxout\(5))))) ) ) 
-- ) # ( !\board|Register5|q\(1) & ( \board|Register0|q\(1) & ( (\board|ControlUnit|muxout\(0) & (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & !\board|ControlUnit|muxout\(5)))) ) ) ) # ( \board|Register5|q\(1) & ( 
-- !\board|Register0|q\(1) & ( (!\board|ControlUnit|muxout\(0) & (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & \board|ControlUnit|muxout\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000001000000000000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(0),
	datab => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(5),
	datae => \board|Register5|ALT_INV_q\(1),
	dataf => \board|Register0|ALT_INV_q\(1),
	combout => \board|Multiplexers|Selector6~5_combout\);

-- Location: FF_X10_Y3_N41
\board|Register2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(1));

-- Location: LABCELL_X10_Y3_N39
\board|Multiplexers|Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~3_combout\ = ( \board|Register2|q\(1) & ( (\board|Multiplexers|Equal2~1_combout\ & (\board|Multiplexers|Equal2~0_combout\ & \board|Multiplexers|Equal0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|Register2|ALT_INV_q\(1),
	combout => \board|Multiplexers|Selector6~3_combout\);

-- Location: FF_X9_Y3_N26
\board|Register1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(1));

-- Location: FF_X9_Y1_N56
\board|RegisterA|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(1));

-- Location: LABCELL_X9_Y1_N33
\board|Multiplexers|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Equal3~0_combout\ = ( !\board|ControlUnit|muxout\(4) & ( !\board|ControlUnit|muxout\(2) & ( (\board|Multiplexers|Equal2~1_combout\ & (\board|ControlUnit|muxout\(3) & \board|Multiplexers|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(3),
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Equal3~0_combout\);

-- Location: FF_X9_Y3_N8
\board|Register3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(1));

-- Location: LABCELL_X11_Y2_N39
\board|ControlUnit|addsub~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|addsub~0_combout\ = ( \board|ControlUnit|y.T2~q\ & ( \board|RegisterIR|q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \board|RegisterIR|ALT_INV_q\(7),
	dataf => \board|ControlUnit|ALT_INV_y.T2~q\,
	combout => \board|ControlUnit|addsub~0_combout\);

-- Location: LABCELL_X10_Y2_N45
\board|ControlUnit|addsub\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|addsub~combout\ = ( \board|ControlUnit|addsub~0_combout\ & ( \board|RegisterIR|q\(6) ) ) # ( !\board|ControlUnit|addsub~0_combout\ & ( \board|ControlUnit|addsub~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_addsub~combout\,
	datad => \board|RegisterIR|ALT_INV_q\(6),
	dataf => \board|ControlUnit|ALT_INV_addsub~0_combout\,
	combout => \board|ControlUnit|addsub~combout\);

-- Location: LABCELL_X9_Y3_N6
\board|AddsubMachine|intB[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|intB[1]~0_combout\ = ( \board|Register3|q\(1) & ( \board|ControlUnit|addsub~combout\ & ( (!\board|Multiplexers|Equal3~0_combout\ & (\board|Multiplexers|Selector6~6_combout\ & ((!\SW[1]~input_o\) # 
-- (!\board|Multiplexers|bout~0_combout\)))) ) ) ) # ( !\board|Register3|q\(1) & ( \board|ControlUnit|addsub~combout\ & ( (\board|Multiplexers|Selector6~6_combout\ & ((!\SW[1]~input_o\) # (!\board|Multiplexers|bout~0_combout\))) ) ) ) # ( 
-- \board|Register3|q\(1) & ( !\board|ControlUnit|addsub~combout\ & ( ((!\board|Multiplexers|Selector6~6_combout\) # ((\SW[1]~input_o\ & \board|Multiplexers|bout~0_combout\))) # (\board|Multiplexers|Equal3~0_combout\) ) ) ) # ( !\board|Register3|q\(1) & ( 
-- !\board|ControlUnit|addsub~combout\ & ( (!\board|Multiplexers|Selector6~6_combout\) # ((\SW[1]~input_o\ & \board|Multiplexers|bout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110111011101111100110011001100000010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector6~6_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datae => \board|Register3|ALT_INV_q\(1),
	dataf => \board|ControlUnit|ALT_INV_addsub~combout\,
	combout => \board|AddsubMachine|intB[1]~0_combout\);

-- Location: LABCELL_X9_Y2_N42
\board|AddsubMachine|addsub|FullAdder_first|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ = ( \board|Multiplexers|bout~0_combout\ & ( \board|Multiplexers|Selector7~0_combout\ & ( \board|RegisterA|q\(0) ) ) ) # ( !\board|Multiplexers|bout~0_combout\ & ( 
-- \board|Multiplexers|Selector7~0_combout\ & ( \board|RegisterA|q\(0) ) ) ) # ( \board|Multiplexers|bout~0_combout\ & ( !\board|Multiplexers|Selector7~0_combout\ & ( (!\board|Multiplexers|Selector7~7_combout\ & (\board|RegisterA|q\(0))) # 
-- (\board|Multiplexers|Selector7~7_combout\ & ((!\SW[0]~input_o\ & ((\board|ControlUnit|addsub~combout\))) # (\SW[0]~input_o\ & (\board|RegisterA|q\(0))))) ) ) ) # ( !\board|Multiplexers|bout~0_combout\ & ( !\board|Multiplexers|Selector7~0_combout\ & ( 
-- (!\board|Multiplexers|Selector7~7_combout\ & (\board|RegisterA|q\(0))) # (\board|Multiplexers|Selector7~7_combout\ & ((\board|ControlUnit|addsub~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector7~7_combout\,
	datab => \board|RegisterA|ALT_INV_q\(0),
	datac => \board|ControlUnit|ALT_INV_addsub~combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \board|Multiplexers|ALT_INV_bout~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector7~0_combout\,
	combout => \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\);

-- Location: LABCELL_X9_Y2_N15
\board|AddsubMachine|addsub|G1:0:FullAdder_body|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:0:FullAdder_body|s~combout\ = ( \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( !\board|RegisterA|q\(1) $ (\board|AddsubMachine|intB[1]~0_combout\) ) ) # ( 
-- !\board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( !\board|RegisterA|q\(1) $ (!\board|AddsubMachine|intB[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterA|ALT_INV_q\(1),
	datad => \board|AddsubMachine|ALT_INV_intB[1]~0_combout\,
	dataf => \board|AddsubMachine|addsub|FullAdder_first|ALT_INV_co~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:0:FullAdder_body|s~combout\);

-- Location: FF_X9_Y2_N17
\board|RegisterG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|G1:0:FullAdder_body|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(1));

-- Location: LABCELL_X9_Y3_N27
\board|Multiplexers|Selector6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~4_combout\ = ( !\board|ControlUnit|muxout\(9) & ( \board|ControlUnit|muxout\(1) & ( (\board|Register1|q\(1) & (\board|Multiplexers|Equal0~1_combout\ & \board|Multiplexers|Equal1~0_combout\)) ) ) ) # ( 
-- \board|ControlUnit|muxout\(9) & ( !\board|ControlUnit|muxout\(1) & ( (\board|Multiplexers|Equal0~1_combout\ & (\board|Multiplexers|Equal1~0_combout\ & \board|RegisterG|q\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register1|ALT_INV_q\(1),
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datad => \board|RegisterG|ALT_INV_q\(1),
	datae => \board|ControlUnit|ALT_INV_muxout\(9),
	dataf => \board|ControlUnit|ALT_INV_muxout\(1),
	combout => \board|Multiplexers|Selector6~4_combout\);

-- Location: FF_X9_Y1_N8
\board|Register4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(1));

-- Location: LABCELL_X9_Y1_N6
\board|Multiplexers|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~2_combout\ = ( \board|Register4|q\(1) & ( \board|Multiplexers|Equal2~1_combout\ & ( (!\board|ControlUnit|muxout\(2) & (!\board|ControlUnit|muxout\(3) & (\board|Multiplexers|Equal0~3_combout\ & \board|ControlUnit|muxout\(4)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(2),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	datae => \board|Register4|ALT_INV_q\(1),
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector6~2_combout\);

-- Location: FF_X10_Y3_N2
\board|Register6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(1));

-- Location: LABCELL_X10_Y3_N3
\board|Multiplexers|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~1_combout\ = ( \board|Register6|q\(1) & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal6~0_combout\ & \board|Multiplexers|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datae => \board|Register6|ALT_INV_q\(1),
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector6~1_combout\);

-- Location: FF_X10_Y3_N11
\board|Register7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector6~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(1));

-- Location: LABCELL_X10_Y3_N9
\board|Multiplexers|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~0_combout\ = ( \board|Register7|q\(1) & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|ControlUnit|muxout\(7) & (\board|Multiplexers|Equal1~0_combout\ & (!\board|ControlUnit|muxout\(8) & !\board|ControlUnit|muxout\(6)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(7),
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(8),
	datad => \board|ControlUnit|ALT_INV_muxout\(6),
	datae => \board|Register7|ALT_INV_q\(1),
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector6~0_combout\);

-- Location: LABCELL_X10_Y3_N54
\board|Multiplexers|Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~6_combout\ = ( !\board|Multiplexers|Selector6~1_combout\ & ( !\board|Multiplexers|Selector6~0_combout\ & ( (!\board|Multiplexers|Selector6~5_combout\ & (!\board|Multiplexers|Selector6~3_combout\ & 
-- (!\board|Multiplexers|Selector6~4_combout\ & !\board|Multiplexers|Selector6~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector6~5_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector6~3_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector6~4_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector6~2_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector6~1_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector6~0_combout\,
	combout => \board|Multiplexers|Selector6~6_combout\);

-- Location: LABCELL_X9_Y1_N24
\board|Multiplexers|Selector6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector6~7_combout\ = ( \board|Register3|q\(1) & ( \board|Multiplexers|Equal3~0_combout\ ) ) # ( !\board|Register3|q\(1) & ( \board|Multiplexers|Equal3~0_combout\ & ( (!\board|Multiplexers|Selector6~6_combout\) # ((\SW[1]~input_o\ & 
-- \board|Multiplexers|bout~0_combout\)) ) ) ) # ( \board|Register3|q\(1) & ( !\board|Multiplexers|Equal3~0_combout\ & ( (!\board|Multiplexers|Selector6~6_combout\) # ((\SW[1]~input_o\ & \board|Multiplexers|bout~0_combout\)) ) ) ) # ( !\board|Register3|q\(1) 
-- & ( !\board|Multiplexers|Equal3~0_combout\ & ( (!\board|Multiplexers|Selector6~6_combout\) # ((\SW[1]~input_o\ & \board|Multiplexers|bout~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110111001100110111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \board|Multiplexers|ALT_INV_Selector6~6_combout\,
	datad => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datae => \board|Register3|ALT_INV_q\(1),
	dataf => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	combout => \board|Multiplexers|Selector6~7_combout\);

-- Location: FF_X9_Y3_N44
\board|Register3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(2));

-- Location: FF_X9_Y1_N47
\board|RegisterA|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Multiplexers|Selector5~7_combout\,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(2));

-- Location: LABCELL_X9_Y3_N45
\board|AddsubMachine|intB[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|intB[2]~1_combout\ = ( \SW[2]~input_o\ & ( \board|ControlUnit|addsub~combout\ & ( (\board|Multiplexers|Selector5~6_combout\ & (!\board|Multiplexers|bout~0_combout\ & ((!\board|Register3|q\(2)) # 
-- (!\board|Multiplexers|Equal3~0_combout\)))) ) ) ) # ( !\SW[2]~input_o\ & ( \board|ControlUnit|addsub~combout\ & ( (\board|Multiplexers|Selector5~6_combout\ & ((!\board|Register3|q\(2)) # (!\board|Multiplexers|Equal3~0_combout\))) ) ) ) # ( \SW[2]~input_o\ 
-- & ( !\board|ControlUnit|addsub~combout\ & ( (!\board|Multiplexers|Selector5~6_combout\) # (((\board|Register3|q\(2) & \board|Multiplexers|Equal3~0_combout\)) # (\board|Multiplexers|bout~0_combout\)) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- !\board|ControlUnit|addsub~combout\ & ( (!\board|Multiplexers|Selector5~6_combout\) # ((\board|Register3|q\(2) & \board|Multiplexers|Equal3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111011101011111011111101010101010001000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector5~6_combout\,
	datab => \board|Register3|ALT_INV_q\(2),
	datac => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datad => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \board|ControlUnit|ALT_INV_addsub~combout\,
	combout => \board|AddsubMachine|intB[2]~1_combout\);

-- Location: LABCELL_X9_Y2_N27
\board|AddsubMachine|addsub|G1:1:FullAdder_body|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:1:FullAdder_body|s~combout\ = ( \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( !\board|RegisterA|q\(2) $ (!\board|AddsubMachine|intB[2]~1_combout\ $ (((\board|AddsubMachine|intB[1]~0_combout\) # 
-- (\board|RegisterA|q\(1))))) ) ) # ( !\board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( !\board|RegisterA|q\(2) $ (!\board|AddsubMachine|intB[2]~1_combout\ $ (((\board|RegisterA|q\(1) & \board|AddsubMachine|intB[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100101101100100100110110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterA|ALT_INV_q\(1),
	datab => \board|RegisterA|ALT_INV_q\(2),
	datac => \board|AddsubMachine|ALT_INV_intB[1]~0_combout\,
	datad => \board|AddsubMachine|ALT_INV_intB[2]~1_combout\,
	dataf => \board|AddsubMachine|addsub|FullAdder_first|ALT_INV_co~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:1:FullAdder_body|s~combout\);

-- Location: FF_X9_Y2_N29
\board|RegisterG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|G1:1:FullAdder_body|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(2));

-- Location: FF_X9_Y3_N2
\board|Register1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(2));

-- Location: LABCELL_X9_Y3_N3
\board|Multiplexers|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~4_combout\ = ( \board|Register1|q\(2) & ( \board|ControlUnit|muxout\(9) & ( (\board|Multiplexers|Equal1~0_combout\ & (!\board|ControlUnit|muxout\(1) & (\board|Multiplexers|Equal0~1_combout\ & \board|RegisterG|q\(2)))) ) ) ) # 
-- ( !\board|Register1|q\(2) & ( \board|ControlUnit|muxout\(9) & ( (\board|Multiplexers|Equal1~0_combout\ & (!\board|ControlUnit|muxout\(1) & (\board|Multiplexers|Equal0~1_combout\ & \board|RegisterG|q\(2)))) ) ) ) # ( \board|Register1|q\(2) & ( 
-- !\board|ControlUnit|muxout\(9) & ( (\board|Multiplexers|Equal1~0_combout\ & (\board|ControlUnit|muxout\(1) & \board|Multiplexers|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datab => \board|ControlUnit|ALT_INV_muxout\(1),
	datac => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datad => \board|RegisterG|ALT_INV_q\(2),
	datae => \board|Register1|ALT_INV_q\(2),
	dataf => \board|ControlUnit|ALT_INV_muxout\(9),
	combout => \board|Multiplexers|Selector5~4_combout\);

-- Location: LABCELL_X10_Y1_N45
\board|Register5|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register5|q[2]~feeder_combout\ = ( \board|Multiplexers|Selector5~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector5~7_combout\,
	combout => \board|Register5|q[2]~feeder_combout\);

-- Location: FF_X10_Y1_N47
\board|Register5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register5|q[2]~feeder_combout\,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(2));

-- Location: FF_X9_Y3_N35
\board|Register0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(2));

-- Location: LABCELL_X9_Y3_N48
\board|Multiplexers|Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~5_combout\ = ( \board|Register5|q\(2) & ( \board|Register0|q\(2) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (!\board|ControlUnit|muxout\(0) $ (!\board|ControlUnit|muxout\(5))))) ) ) 
-- ) # ( !\board|Register5|q\(2) & ( \board|Register0|q\(2) & ( (\board|ControlUnit|muxout\(0) & (\board|Multiplexers|Equal0~2_combout\ & (!\board|ControlUnit|muxout\(5) & \board|Multiplexers|Equal0~1_combout\))) ) ) ) # ( \board|Register5|q\(2) & ( 
-- !\board|Register0|q\(2) & ( (!\board|ControlUnit|muxout\(0) & (\board|Multiplexers|Equal0~2_combout\ & (\board|ControlUnit|muxout\(5) & \board|Multiplexers|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000100000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(0),
	datab => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(5),
	datad => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datae => \board|Register5|ALT_INV_q\(2),
	dataf => \board|Register0|ALT_INV_q\(2),
	combout => \board|Multiplexers|Selector5~5_combout\);

-- Location: FF_X10_Y3_N50
\board|Register6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(2));

-- Location: LABCELL_X10_Y3_N15
\board|Multiplexers|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~1_combout\ = ( \board|Register6|q\(2) & ( (\board|Multiplexers|Equal6~0_combout\ & (\board|Multiplexers|Equal1~0_combout\ & \board|Multiplexers|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datad => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	dataf => \board|Register6|ALT_INV_q\(2),
	combout => \board|Multiplexers|Selector5~1_combout\);

-- Location: FF_X9_Y1_N20
\board|Register4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(2));

-- Location: LABCELL_X9_Y1_N54
\board|Multiplexers|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~2_combout\ = ( \board|ControlUnit|muxout\(4) & ( !\board|ControlUnit|muxout\(2) & ( (\board|Register4|q\(2) & (\board|Multiplexers|Equal2~1_combout\ & (\board|Multiplexers|Equal0~3_combout\ & !\board|ControlUnit|muxout\(3)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register4|ALT_INV_q\(2),
	datab => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(3),
	datae => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Selector5~2_combout\);

-- Location: FF_X10_Y3_N47
\board|Register2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(2));

-- Location: LABCELL_X10_Y3_N42
\board|Multiplexers|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~3_combout\ = ( \board|Register2|q\(2) & ( \board|Multiplexers|Equal2~1_combout\ & ( (\board|Multiplexers|Equal2~0_combout\ & \board|Multiplexers|Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|Register2|ALT_INV_q\(2),
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector5~3_combout\);

-- Location: FF_X10_Y3_N8
\board|Register7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector5~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(2));

-- Location: LABCELL_X10_Y3_N27
\board|Multiplexers|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~0_combout\ = ( \board|ControlUnit|muxout\(7) & ( \board|Multiplexers|Equal1~0_combout\ & ( (!\board|ControlUnit|muxout\(8) & (\board|Register7|q\(2) & (\board|Multiplexers|Equal0~0_combout\ & !\board|ControlUnit|muxout\(6)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(8),
	datab => \board|Register7|ALT_INV_q\(2),
	datac => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(6),
	datae => \board|ControlUnit|ALT_INV_muxout\(7),
	dataf => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	combout => \board|Multiplexers|Selector5~0_combout\);

-- Location: LABCELL_X9_Y3_N36
\board|Multiplexers|Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~6_combout\ = ( !\board|Multiplexers|Selector5~3_combout\ & ( !\board|Multiplexers|Selector5~0_combout\ & ( (!\board|Multiplexers|Selector5~4_combout\ & (!\board|Multiplexers|Selector5~5_combout\ & 
-- (!\board|Multiplexers|Selector5~1_combout\ & !\board|Multiplexers|Selector5~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector5~4_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector5~5_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector5~1_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector5~2_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector5~3_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector5~0_combout\,
	combout => \board|Multiplexers|Selector5~6_combout\);

-- Location: LABCELL_X9_Y1_N45
\board|Multiplexers|Selector5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector5~7_combout\ = ( \board|Multiplexers|Selector5~6_combout\ & ( (!\board|Multiplexers|Equal3~0_combout\ & (\board|Multiplexers|bout~0_combout\ & ((\SW[2]~input_o\)))) # (\board|Multiplexers|Equal3~0_combout\ & 
-- (((\board|Multiplexers|bout~0_combout\ & \SW[2]~input_o\)) # (\board|Register3|q\(2)))) ) ) # ( !\board|Multiplexers|Selector5~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datab => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datac => \board|Register3|ALT_INV_q\(2),
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \board|Multiplexers|ALT_INV_Selector5~6_combout\,
	combout => \board|Multiplexers|Selector5~7_combout\);

-- Location: FF_X9_Y1_N41
\board|Register4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector4~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(3));

-- Location: LABCELL_X9_Y1_N39
\board|Multiplexers|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~3_combout\ = ( \board|Register4|q\(3) & ( \board|Multiplexers|Equal2~1_combout\ & ( (!\board|ControlUnit|muxout\(2) & (!\board|ControlUnit|muxout\(3) & (\board|ControlUnit|muxout\(4) & \board|Multiplexers|Equal0~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(2),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|ControlUnit|ALT_INV_muxout\(4),
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|Register4|ALT_INV_q\(3),
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector4~3_combout\);

-- Location: LABCELL_X9_Y4_N3
\board|Register2|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register2|q[3]~feeder_combout\ = ( \board|Multiplexers|Selector4~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector4~8_combout\,
	combout => \board|Register2|q[3]~feeder_combout\);

-- Location: FF_X9_Y4_N5
\board|Register2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register2|q[3]~feeder_combout\,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(3));

-- Location: LABCELL_X9_Y4_N9
\board|Multiplexers|Selector4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~4_combout\ = ( \board|Multiplexers|Equal2~0_combout\ & ( \board|Multiplexers|Equal2~1_combout\ & ( (\board|Multiplexers|Equal0~3_combout\ & \board|Register2|q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datad => \board|Register2|ALT_INV_q\(3),
	datae => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector4~4_combout\);

-- Location: FF_X9_Y1_N2
\board|Register3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector4~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(3));

-- Location: LABCELL_X9_Y1_N3
\board|Multiplexers|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~0_combout\ = ( !\board|ControlUnit|muxout\(4) & ( !\board|ControlUnit|muxout\(2) & ( (\board|Register3|q\(3) & (\board|ControlUnit|muxout\(3) & (\board|Multiplexers|Equal2~1_combout\ & \board|Multiplexers|Equal0~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register3|ALT_INV_q\(3),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(2),
	combout => \board|Multiplexers|Selector4~0_combout\);

-- Location: FF_X9_Y1_N14
\board|RegisterA|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Multiplexers|Selector4~8_combout\,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(3));

-- Location: LABCELL_X9_Y4_N18
\board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\ = ( \board|ControlUnit|addsub~combout\ & ( \board|Multiplexers|bout~0_combout\ & ( !\board|RegisterA|q\(3) $ (((!\board|Multiplexers|Selector4~7_combout\) # 
-- ((\board|Multiplexers|Selector4~0_combout\) # (\SW[3]~input_o\)))) ) ) ) # ( !\board|ControlUnit|addsub~combout\ & ( \board|Multiplexers|bout~0_combout\ & ( !\board|RegisterA|q\(3) $ (((\board|Multiplexers|Selector4~7_combout\ & (!\SW[3]~input_o\ & 
-- !\board|Multiplexers|Selector4~0_combout\)))) ) ) ) # ( \board|ControlUnit|addsub~combout\ & ( !\board|Multiplexers|bout~0_combout\ & ( !\board|RegisterA|q\(3) $ (((!\board|Multiplexers|Selector4~7_combout\) # (\board|Multiplexers|Selector4~0_combout\))) 
-- ) ) ) # ( !\board|ControlUnit|addsub~combout\ & ( !\board|Multiplexers|bout~0_combout\ & ( !\board|RegisterA|q\(3) $ (((\board|Multiplexers|Selector4~7_combout\ & !\board|Multiplexers|Selector4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111101010000010100001010111110111111010000000100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector4~7_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \board|Multiplexers|ALT_INV_Selector4~0_combout\,
	datad => \board|RegisterA|ALT_INV_q\(3),
	datae => \board|ControlUnit|ALT_INV_addsub~combout\,
	dataf => \board|Multiplexers|ALT_INV_bout~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\);

-- Location: LABCELL_X9_Y4_N48
\board|AddsubMachine|addsub|G1:2:FullAdder_body|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~combout\ = ( \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( \board|AddsubMachine|intB[1]~0_combout\ & ( !\board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\ $ 
-- (((!\board|AddsubMachine|intB[2]~1_combout\ & !\board|RegisterA|q\(2)))) ) ) ) # ( !\board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( \board|AddsubMachine|intB[1]~0_combout\ & ( !\board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\ $ 
-- (((!\board|RegisterA|q\(1) & ((!\board|AddsubMachine|intB[2]~1_combout\) # (!\board|RegisterA|q\(2)))) # (\board|RegisterA|q\(1) & (!\board|AddsubMachine|intB[2]~1_combout\ & !\board|RegisterA|q\(2))))) ) ) ) # ( 
-- \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( !\board|AddsubMachine|intB[1]~0_combout\ & ( !\board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\ $ (((!\board|RegisterA|q\(1) & ((!\board|AddsubMachine|intB[2]~1_combout\) # 
-- (!\board|RegisterA|q\(2)))) # (\board|RegisterA|q\(1) & (!\board|AddsubMachine|intB[2]~1_combout\ & !\board|RegisterA|q\(2))))) ) ) ) # ( !\board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( !\board|AddsubMachine|intB[1]~0_combout\ & ( 
-- !\board|AddsubMachine|addsub|G1:2:FullAdder_body|s~0_combout\ $ (((!\board|AddsubMachine|intB[2]~1_combout\) # (!\board|RegisterA|q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101100110101001010110011010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|AddsubMachine|addsub|G1:2:FullAdder_body|ALT_INV_s~0_combout\,
	datab => \board|RegisterA|ALT_INV_q\(1),
	datac => \board|AddsubMachine|ALT_INV_intB[2]~1_combout\,
	datad => \board|RegisterA|ALT_INV_q\(2),
	datae => \board|AddsubMachine|addsub|FullAdder_first|ALT_INV_co~0_combout\,
	dataf => \board|AddsubMachine|ALT_INV_intB[1]~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~combout\);

-- Location: FF_X9_Y4_N50
\board|RegisterG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|G1:2:FullAdder_body|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(3));

-- Location: LABCELL_X10_Y4_N48
\board|Register1|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register1|q[3]~feeder_combout\ = ( \board|Multiplexers|Selector4~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector4~8_combout\,
	combout => \board|Register1|q[3]~feeder_combout\);

-- Location: FF_X10_Y4_N50
\board|Register1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register1|q[3]~feeder_combout\,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(3));

-- Location: LABCELL_X9_Y4_N54
\board|Multiplexers|Selector4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~5_combout\ = ( \board|Register1|q\(3) & ( \board|ControlUnit|muxout\(9) & ( (\board|RegisterG|q\(3) & (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~1_combout\ & !\board|ControlUnit|muxout\(1)))) ) ) ) # 
-- ( !\board|Register1|q\(3) & ( \board|ControlUnit|muxout\(9) & ( (\board|RegisterG|q\(3) & (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~1_combout\ & !\board|ControlUnit|muxout\(1)))) ) ) ) # ( \board|Register1|q\(3) & ( 
-- !\board|ControlUnit|muxout\(9) & ( (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~1_combout\ & \board|ControlUnit|muxout\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterG|ALT_INV_q\(3),
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(1),
	datae => \board|Register1|ALT_INV_q\(3),
	dataf => \board|ControlUnit|ALT_INV_muxout\(9),
	combout => \board|Multiplexers|Selector4~5_combout\);

-- Location: FF_X10_Y3_N5
\board|Register6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector4~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(3));

-- Location: LABCELL_X9_Y4_N15
\board|Multiplexers|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~2_combout\ = ( \board|Multiplexers|Equal1~0_combout\ & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Register6|q\(3) & \board|Multiplexers|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register6|ALT_INV_q\(3),
	datad => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datae => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector4~2_combout\);

-- Location: LABCELL_X10_Y4_N0
\board|Register7|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register7|q[3]~feeder_combout\ = ( \board|Multiplexers|Selector4~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector4~8_combout\,
	combout => \board|Register7|q[3]~feeder_combout\);

-- Location: FF_X10_Y4_N2
\board|Register7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register7|q[3]~feeder_combout\,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(3));

-- Location: LABCELL_X10_Y4_N21
\board|Multiplexers|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~1_combout\ = ( !\board|ControlUnit|muxout\(6) & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Register7|q\(3) & (\board|Multiplexers|Equal1~0_combout\ & (\board|ControlUnit|muxout\(7) & !\board|ControlUnit|muxout\(8)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register7|ALT_INV_q\(3),
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(7),
	datad => \board|ControlUnit|ALT_INV_muxout\(8),
	datae => \board|ControlUnit|ALT_INV_muxout\(6),
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector4~1_combout\);

-- Location: LABCELL_X10_Y4_N9
\board|Register5|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register5|q[3]~feeder_combout\ = ( \board|Multiplexers|Selector4~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector4~8_combout\,
	combout => \board|Register5|q[3]~feeder_combout\);

-- Location: FF_X10_Y4_N11
\board|Register5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register5|q[3]~feeder_combout\,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(3));

-- Location: LABCELL_X9_Y4_N42
\board|Register0|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register0|q[3]~feeder_combout\ = ( \board|Multiplexers|Selector4~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector4~8_combout\,
	combout => \board|Register0|q[3]~feeder_combout\);

-- Location: FF_X9_Y4_N44
\board|Register0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register0|q[3]~feeder_combout\,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(3));

-- Location: LABCELL_X9_Y4_N30
\board|Multiplexers|Selector4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~6_combout\ = ( \board|Register5|q\(3) & ( \board|Register0|q\(3) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (!\board|ControlUnit|muxout\(5) $ (!\board|ControlUnit|muxout\(0))))) ) ) 
-- ) # ( !\board|Register5|q\(3) & ( \board|Register0|q\(3) & ( (\board|Multiplexers|Equal0~2_combout\ & (!\board|ControlUnit|muxout\(5) & (\board|ControlUnit|muxout\(0) & \board|Multiplexers|Equal0~1_combout\))) ) ) ) # ( \board|Register5|q\(3) & ( 
-- !\board|Register0|q\(3) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|ControlUnit|muxout\(5) & (!\board|ControlUnit|muxout\(0) & \board|Multiplexers|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000001000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datab => \board|ControlUnit|ALT_INV_muxout\(5),
	datac => \board|ControlUnit|ALT_INV_muxout\(0),
	datad => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datae => \board|Register5|ALT_INV_q\(3),
	dataf => \board|Register0|ALT_INV_q\(3),
	combout => \board|Multiplexers|Selector4~6_combout\);

-- Location: LABCELL_X9_Y4_N24
\board|Multiplexers|Selector4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~7_combout\ = ( !\board|Multiplexers|Selector4~1_combout\ & ( !\board|Multiplexers|Selector4~6_combout\ & ( (!\board|Multiplexers|Selector4~3_combout\ & (!\board|Multiplexers|Selector4~4_combout\ & 
-- (!\board|Multiplexers|Selector4~5_combout\ & !\board|Multiplexers|Selector4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector4~3_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector4~4_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector4~5_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector4~2_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector4~1_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector4~6_combout\,
	combout => \board|Multiplexers|Selector4~7_combout\);

-- Location: LABCELL_X9_Y1_N12
\board|Multiplexers|Selector4~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector4~8_combout\ = ( \board|Multiplexers|Selector4~0_combout\ ) # ( !\board|Multiplexers|Selector4~0_combout\ & ( (!\board|Multiplexers|Selector4~7_combout\) # ((\board|Multiplexers|bout~0_combout\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \board|Multiplexers|ALT_INV_Selector4~7_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector4~0_combout\,
	combout => \board|Multiplexers|Selector4~8_combout\);

-- Location: FF_X9_Y3_N13
\board|Register3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(4));

-- Location: LABCELL_X9_Y4_N39
\board|AddsubMachine|intB[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|intB[3]~2_combout\ = ( \board|ControlUnit|addsub~combout\ & ( \board|Multiplexers|bout~0_combout\ & ( (\board|Multiplexers|Selector4~7_combout\ & (!\SW[3]~input_o\ & !\board|Multiplexers|Selector4~0_combout\)) ) ) ) # ( 
-- !\board|ControlUnit|addsub~combout\ & ( \board|Multiplexers|bout~0_combout\ & ( (!\board|Multiplexers|Selector4~7_combout\) # ((\board|Multiplexers|Selector4~0_combout\) # (\SW[3]~input_o\)) ) ) ) # ( \board|ControlUnit|addsub~combout\ & ( 
-- !\board|Multiplexers|bout~0_combout\ & ( (\board|Multiplexers|Selector4~7_combout\ & !\board|Multiplexers|Selector4~0_combout\) ) ) ) # ( !\board|ControlUnit|addsub~combout\ & ( !\board|Multiplexers|bout~0_combout\ & ( 
-- (!\board|Multiplexers|Selector4~7_combout\) # (\board|Multiplexers|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111001100110000000011001111111111110011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Selector4~7_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \board|Multiplexers|ALT_INV_Selector4~0_combout\,
	datae => \board|ControlUnit|ALT_INV_addsub~combout\,
	dataf => \board|Multiplexers|ALT_INV_bout~0_combout\,
	combout => \board|AddsubMachine|intB[3]~2_combout\);

-- Location: FF_X9_Y1_N44
\board|RegisterA|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Multiplexers|Selector3~7_combout\,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(4));

-- Location: LABCELL_X9_Y3_N12
\board|AddsubMachine|intB[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|intB[4]~3_combout\ = ( \board|Register3|q\(4) & ( \board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((!\SW[4]~input_o\ & (\board|Multiplexers|Selector3~6_combout\ & 
-- !\board|Multiplexers|Equal3~0_combout\)))) ) ) ) # ( !\board|Register3|q\(4) & ( \board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((!\SW[4]~input_o\ & \board|Multiplexers|Selector3~6_combout\))) ) ) ) # ( 
-- \board|Register3|q\(4) & ( !\board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((\board|Multiplexers|Selector3~6_combout\ & !\board|Multiplexers|Equal3~0_combout\))) ) ) ) # ( !\board|Register3|q\(4) & ( 
-- !\board|Multiplexers|bout~0_combout\ & ( !\board|Multiplexers|Selector3~6_combout\ $ (\board|ControlUnit|addsub~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011110011000011011101001000101101111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \board|Multiplexers|ALT_INV_Selector3~6_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datad => \board|ControlUnit|ALT_INV_addsub~combout\,
	datae => \board|Register3|ALT_INV_q\(4),
	dataf => \board|Multiplexers|ALT_INV_bout~0_combout\,
	combout => \board|AddsubMachine|intB[4]~3_combout\);

-- Location: LABCELL_X9_Y2_N12
\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\ = ( \board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( (!\board|RegisterA|q\(2) & (\board|AddsubMachine|intB[2]~1_combout\ & ((\board|AddsubMachine|intB[1]~0_combout\) # 
-- (\board|RegisterA|q\(1))))) # (\board|RegisterA|q\(2) & (((\board|AddsubMachine|intB[2]~1_combout\) # (\board|AddsubMachine|intB[1]~0_combout\)) # (\board|RegisterA|q\(1)))) ) ) # ( !\board|AddsubMachine|addsub|FullAdder_first|co~0_combout\ & ( 
-- (!\board|RegisterA|q\(2) & (\board|RegisterA|q\(1) & (\board|AddsubMachine|intB[1]~0_combout\ & \board|AddsubMachine|intB[2]~1_combout\))) # (\board|RegisterA|q\(2) & (((\board|RegisterA|q\(1) & \board|AddsubMachine|intB[1]~0_combout\)) # 
-- (\board|AddsubMachine|intB[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterA|ALT_INV_q\(1),
	datab => \board|AddsubMachine|ALT_INV_intB[1]~0_combout\,
	datac => \board|RegisterA|ALT_INV_q\(2),
	datad => \board|AddsubMachine|ALT_INV_intB[2]~1_combout\,
	dataf => \board|AddsubMachine|addsub|FullAdder_first|ALT_INV_co~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\);

-- Location: LABCELL_X9_Y2_N36
\board|AddsubMachine|addsub|G1:3:FullAdder_body|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:3:FullAdder_body|s~combout\ = ( \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\ & ( !\board|RegisterA|q\(4) $ (!\board|AddsubMachine|intB[4]~3_combout\ $ (((\board|RegisterA|q\(3)) # 
-- (\board|AddsubMachine|intB[3]~2_combout\)))) ) ) # ( !\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\ & ( !\board|RegisterA|q\(4) $ (!\board|AddsubMachine|intB[4]~3_combout\ $ (((\board|AddsubMachine|intB[3]~2_combout\ & 
-- \board|RegisterA|q\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|AddsubMachine|ALT_INV_intB[3]~2_combout\,
	datab => \board|RegisterA|ALT_INV_q\(3),
	datac => \board|RegisterA|ALT_INV_q\(4),
	datad => \board|AddsubMachine|ALT_INV_intB[4]~3_combout\,
	dataf => \board|AddsubMachine|addsub|G1:1:FullAdder_body|ALT_INV_co~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:3:FullAdder_body|s~combout\);

-- Location: FF_X9_Y2_N38
\board|RegisterG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|G1:3:FullAdder_body|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(4));

-- Location: FF_X8_Y3_N50
\board|Register1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(4));

-- Location: MLABCELL_X8_Y3_N51
\board|Multiplexers|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~4_combout\ = ( \board|ControlUnit|muxout\(9) & ( \board|Multiplexers|Equal1~0_combout\ & ( (!\board|ControlUnit|muxout\(1) & (\board|Multiplexers|Equal0~1_combout\ & \board|RegisterG|q\(4))) ) ) ) # ( 
-- !\board|ControlUnit|muxout\(9) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|ControlUnit|muxout\(1) & (\board|Multiplexers|Equal0~1_combout\ & \board|Register1|q\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(1),
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|RegisterG|ALT_INV_q\(4),
	datad => \board|Register1|ALT_INV_q\(4),
	datae => \board|ControlUnit|ALT_INV_muxout\(9),
	dataf => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	combout => \board|Multiplexers|Selector3~4_combout\);

-- Location: FF_X10_Y1_N38
\board|Register0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(4));

-- Location: FF_X10_Y1_N17
\board|Register5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(4));

-- Location: LABCELL_X10_Y1_N27
\board|Multiplexers|Selector3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~5_combout\ = ( !\board|ControlUnit|muxout\(0) & ( \board|ControlUnit|muxout\(5) & ( (\board|Multiplexers|Equal0~1_combout\ & (\board|Register5|q\(4) & \board|Multiplexers|Equal0~2_combout\)) ) ) ) # ( 
-- \board|ControlUnit|muxout\(0) & ( !\board|ControlUnit|muxout\(5) & ( (\board|Register0|q\(4) & (\board|Multiplexers|Equal0~1_combout\ & \board|Multiplexers|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register0|ALT_INV_q\(4),
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|Register5|ALT_INV_q\(4),
	datad => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(0),
	dataf => \board|ControlUnit|ALT_INV_muxout\(5),
	combout => \board|Multiplexers|Selector3~5_combout\);

-- Location: FF_X9_Y1_N26
\board|Register4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(4));

-- Location: LABCELL_X9_Y1_N9
\board|Multiplexers|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~2_combout\ = ( \board|Multiplexers|Equal2~1_combout\ & ( \board|Register4|q\(4) & ( (!\board|ControlUnit|muxout\(2) & (!\board|ControlUnit|muxout\(3) & (\board|ControlUnit|muxout\(4) & \board|Multiplexers|Equal0~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(2),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|ControlUnit|ALT_INV_muxout\(4),
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	dataf => \board|Register4|ALT_INV_q\(4),
	combout => \board|Multiplexers|Selector3~2_combout\);

-- Location: FF_X10_Y3_N14
\board|Register2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(4));

-- Location: LABCELL_X10_Y3_N12
\board|Multiplexers|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~3_combout\ = ( \board|Multiplexers|Equal2~1_combout\ & ( (\board|Multiplexers|Equal0~3_combout\ & (\board|Multiplexers|Equal2~0_combout\ & \board|Register2|q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datac => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	datad => \board|Register2|ALT_INV_q\(4),
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector3~3_combout\);

-- Location: FF_X10_Y3_N23
\board|Register7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(4));

-- Location: LABCELL_X10_Y3_N21
\board|Multiplexers|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~0_combout\ = ( \board|Register7|q\(4) & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|ControlUnit|muxout\(7) & (\board|Multiplexers|Equal1~0_combout\ & (!\board|ControlUnit|muxout\(8) & !\board|ControlUnit|muxout\(6)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(7),
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(8),
	datad => \board|ControlUnit|ALT_INV_muxout\(6),
	datae => \board|Register7|ALT_INV_q\(4),
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector3~0_combout\);

-- Location: FF_X10_Y3_N59
\board|Register6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector3~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(4));

-- Location: LABCELL_X10_Y3_N51
\board|Multiplexers|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~1_combout\ = ( \board|Multiplexers|Equal6~0_combout\ & ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal1~0_combout\ & \board|Register6|q\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|Register6|ALT_INV_q\(4),
	datae => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector3~1_combout\);

-- Location: LABCELL_X9_Y3_N30
\board|Multiplexers|Selector3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~6_combout\ = ( !\board|Multiplexers|Selector3~0_combout\ & ( !\board|Multiplexers|Selector3~1_combout\ & ( (!\board|Multiplexers|Selector3~4_combout\ & (!\board|Multiplexers|Selector3~5_combout\ & 
-- (!\board|Multiplexers|Selector3~2_combout\ & !\board|Multiplexers|Selector3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector3~4_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector3~5_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector3~2_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector3~3_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector3~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector3~1_combout\,
	combout => \board|Multiplexers|Selector3~6_combout\);

-- Location: LABCELL_X9_Y1_N42
\board|Multiplexers|Selector3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector3~7_combout\ = ( \board|Multiplexers|Selector3~6_combout\ & ( (!\board|Multiplexers|Equal3~0_combout\ & (\board|Multiplexers|bout~0_combout\ & (\SW[4]~input_o\))) # (\board|Multiplexers|Equal3~0_combout\ & 
-- (((\board|Multiplexers|bout~0_combout\ & \SW[4]~input_o\)) # (\board|Register3|q\(4)))) ) ) # ( !\board|Multiplexers|Selector3~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datab => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \board|Register3|ALT_INV_q\(4),
	dataf => \board|Multiplexers|ALT_INV_Selector3~6_combout\,
	combout => \board|Multiplexers|Selector3~7_combout\);

-- Location: FF_X7_Y3_N2
\board|Register3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(5));

-- Location: LABCELL_X7_Y3_N9
\board|Multiplexers|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~0_combout\ = ( !\board|ControlUnit|muxout\(4) & ( \board|ControlUnit|muxout\(3) & ( (\board|Multiplexers|Equal0~3_combout\ & (\board|Multiplexers|Equal2~1_combout\ & (!\board|ControlUnit|muxout\(2) & \board|Register3|q\(5)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(2),
	datad => \board|Register3|ALT_INV_q\(5),
	datae => \board|ControlUnit|ALT_INV_muxout\(4),
	dataf => \board|ControlUnit|ALT_INV_muxout\(3),
	combout => \board|Multiplexers|Selector2~0_combout\);

-- Location: FF_X8_Y3_N44
\board|RegisterA|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Multiplexers|Selector2~8_combout\,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(5));

-- Location: MLABCELL_X8_Y3_N15
\board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\ = ( \SW[5]~input_o\ & ( \board|Multiplexers|bout~0_combout\ & ( !\board|RegisterA|q\(5) $ (\board|ControlUnit|addsub~combout\) ) ) ) # ( !\SW[5]~input_o\ & ( \board|Multiplexers|bout~0_combout\ 
-- & ( !\board|RegisterA|q\(5) $ (!\board|ControlUnit|addsub~combout\ $ (((!\board|Multiplexers|Selector2~7_combout\) # (\board|Multiplexers|Selector2~0_combout\)))) ) ) ) # ( \SW[5]~input_o\ & ( !\board|Multiplexers|bout~0_combout\ & ( 
-- !\board|RegisterA|q\(5) $ (!\board|ControlUnit|addsub~combout\ $ (((!\board|Multiplexers|Selector2~7_combout\) # (\board|Multiplexers|Selector2~0_combout\)))) ) ) ) # ( !\SW[5]~input_o\ & ( !\board|Multiplexers|bout~0_combout\ & ( !\board|RegisterA|q\(5) 
-- $ (!\board|ControlUnit|addsub~combout\ $ (((!\board|Multiplexers|Selector2~7_combout\) # (\board|Multiplexers|Selector2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010001001011101101000100101110110100010010111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector2~7_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector2~0_combout\,
	datac => \board|RegisterA|ALT_INV_q\(5),
	datad => \board|ControlUnit|ALT_INV_addsub~combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \board|Multiplexers|ALT_INV_bout~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\);

-- Location: LABCELL_X9_Y2_N3
\board|AddsubMachine|addsub|G1:4:FullAdder_body|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~combout\ = ( \board|AddsubMachine|intB[4]~3_combout\ & ( \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\ & ( (!\board|RegisterA|q\(4) & ((!\board|AddsubMachine|intB[3]~2_combout\ & 
-- ((!\board|RegisterA|q\(3)) # (!\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\))) # (\board|AddsubMachine|intB[3]~2_combout\ & (!\board|RegisterA|q\(3) & !\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\)))) ) ) ) # ( 
-- !\board|AddsubMachine|intB[4]~3_combout\ & ( \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\ & ( (!\board|RegisterA|q\(4)) # ((!\board|AddsubMachine|intB[3]~2_combout\ & ((!\board|RegisterA|q\(3)) # 
-- (!\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\))) # (\board|AddsubMachine|intB[3]~2_combout\ & (!\board|RegisterA|q\(3) & !\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\))) ) ) ) # ( \board|AddsubMachine|intB[4]~3_combout\ 
-- & ( !\board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\ & ( ((!\board|AddsubMachine|intB[3]~2_combout\ & (\board|RegisterA|q\(3) & \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\)) # (\board|AddsubMachine|intB[3]~2_combout\ & 
-- ((\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\) # (\board|RegisterA|q\(3))))) # (\board|RegisterA|q\(4)) ) ) ) # ( !\board|AddsubMachine|intB[4]~3_combout\ & ( !\board|AddsubMachine|addsub|G1:4:FullAdder_body|s~0_combout\ & ( 
-- (\board|RegisterA|q\(4) & ((!\board|AddsubMachine|intB[3]~2_combout\ & (\board|RegisterA|q\(3) & \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\)) # (\board|AddsubMachine|intB[3]~2_combout\ & 
-- ((\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\) # (\board|RegisterA|q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111111111111111010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|AddsubMachine|ALT_INV_intB[3]~2_combout\,
	datab => \board|RegisterA|ALT_INV_q\(3),
	datac => \board|AddsubMachine|addsub|G1:1:FullAdder_body|ALT_INV_co~0_combout\,
	datad => \board|RegisterA|ALT_INV_q\(4),
	datae => \board|AddsubMachine|ALT_INV_intB[4]~3_combout\,
	dataf => \board|AddsubMachine|addsub|G1:4:FullAdder_body|ALT_INV_s~0_combout\,
	combout => \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~combout\);

-- Location: FF_X9_Y2_N4
\board|RegisterG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|G1:4:FullAdder_body|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(5));

-- Location: FF_X8_Y3_N38
\board|Register1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(5));

-- Location: MLABCELL_X8_Y3_N27
\board|Multiplexers|Selector2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~5_combout\ = ( \board|ControlUnit|muxout\(9) & ( \board|Register1|q\(5) & ( (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (\board|RegisterG|q\(5) & !\board|ControlUnit|muxout\(1)))) ) ) ) # 
-- ( !\board|ControlUnit|muxout\(9) & ( \board|Register1|q\(5) & ( (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~1_combout\ & \board|ControlUnit|muxout\(1))) ) ) ) # ( \board|ControlUnit|muxout\(9) & ( !\board|Register1|q\(5) & ( 
-- (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (\board|RegisterG|q\(5) & !\board|ControlUnit|muxout\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|RegisterG|ALT_INV_q\(5),
	datad => \board|ControlUnit|ALT_INV_muxout\(1),
	datae => \board|ControlUnit|ALT_INV_muxout\(9),
	dataf => \board|Register1|ALT_INV_q\(5),
	combout => \board|Multiplexers|Selector2~5_combout\);

-- Location: FF_X7_Y3_N41
\board|Register4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(5));

-- Location: LABCELL_X7_Y3_N33
\board|Multiplexers|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~3_combout\ = ( !\board|ControlUnit|muxout\(3) & ( \board|ControlUnit|muxout\(4) & ( (\board|Multiplexers|Equal2~1_combout\ & (!\board|ControlUnit|muxout\(2) & (\board|Register4|q\(5) & \board|Multiplexers|Equal0~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datab => \board|ControlUnit|ALT_INV_muxout\(2),
	datac => \board|Register4|ALT_INV_q\(5),
	datad => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(3),
	dataf => \board|ControlUnit|ALT_INV_muxout\(4),
	combout => \board|Multiplexers|Selector2~3_combout\);

-- Location: FF_X8_Y3_N5
\board|Register6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(5));

-- Location: MLABCELL_X8_Y3_N54
\board|Multiplexers|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~2_combout\ = ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal1~0_combout\ & (\board|Register6|q\(5) & \board|Multiplexers|Equal6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datac => \board|Register6|ALT_INV_q\(5),
	datad => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector2~2_combout\);

-- Location: FF_X8_Y4_N49
\board|Register2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(5));

-- Location: LABCELL_X7_Y3_N24
\board|Multiplexers|Selector2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~4_combout\ = ( \board|Multiplexers|Equal2~0_combout\ & ( \board|Multiplexers|Equal2~1_combout\ & ( (\board|Register2|q\(5) & \board|Multiplexers|Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Register2|ALT_INV_q\(5),
	datac => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector2~4_combout\);

-- Location: FF_X8_Y4_N47
\board|Register5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(5));

-- Location: MLABCELL_X8_Y4_N27
\board|Register0|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register0|q[5]~feeder_combout\ = \board|Multiplexers|Selector2~8_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Selector2~8_combout\,
	combout => \board|Register0|q[5]~feeder_combout\);

-- Location: FF_X8_Y4_N29
\board|Register0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register0|q[5]~feeder_combout\,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(5));

-- Location: MLABCELL_X8_Y4_N12
\board|Multiplexers|Selector2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~6_combout\ = ( \board|Register0|q\(5) & ( \board|ControlUnit|muxout\(0) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & !\board|ControlUnit|muxout\(5))) ) ) ) # ( \board|Register0|q\(5) & 
-- ( !\board|ControlUnit|muxout\(0) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (\board|ControlUnit|muxout\(5) & \board|Register5|q\(5)))) ) ) ) # ( !\board|Register0|q\(5) & ( !\board|ControlUnit|muxout\(0) & ( 
-- (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (\board|ControlUnit|muxout\(5) & \board|Register5|q\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(5),
	datad => \board|Register5|ALT_INV_q\(5),
	datae => \board|Register0|ALT_INV_q\(5),
	dataf => \board|ControlUnit|ALT_INV_muxout\(0),
	combout => \board|Multiplexers|Selector2~6_combout\);

-- Location: FF_X7_Y3_N50
\board|Register7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector2~8_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(5));

-- Location: LABCELL_X7_Y3_N54
\board|Multiplexers|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~1_combout\ = ( !\board|ControlUnit|muxout\(6) & ( !\board|ControlUnit|muxout\(8) & ( (\board|Register7|q\(5) & (\board|Multiplexers|Equal0~0_combout\ & (\board|ControlUnit|muxout\(7) & \board|Multiplexers|Equal1~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Register7|ALT_INV_q\(5),
	datab => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(7),
	datad => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(6),
	dataf => \board|ControlUnit|ALT_INV_muxout\(8),
	combout => \board|Multiplexers|Selector2~1_combout\);

-- Location: MLABCELL_X8_Y3_N6
\board|Multiplexers|Selector2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~7_combout\ = ( !\board|Multiplexers|Selector2~6_combout\ & ( !\board|Multiplexers|Selector2~1_combout\ & ( (!\board|Multiplexers|Selector2~5_combout\ & (!\board|Multiplexers|Selector2~3_combout\ & 
-- (!\board|Multiplexers|Selector2~2_combout\ & !\board|Multiplexers|Selector2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector2~5_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector2~3_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector2~2_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector2~4_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector2~6_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector2~1_combout\,
	combout => \board|Multiplexers|Selector2~7_combout\);

-- Location: MLABCELL_X8_Y3_N42
\board|Multiplexers|Selector2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector2~8_combout\ = ( \board|Multiplexers|Selector2~0_combout\ ) # ( !\board|Multiplexers|Selector2~0_combout\ & ( (!\board|Multiplexers|Selector2~7_combout\) # ((\board|Multiplexers|bout~0_combout\ & \SW[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000101111111110000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \board|Multiplexers|ALT_INV_Selector2~7_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector2~0_combout\,
	combout => \board|Multiplexers|Selector2~8_combout\);

-- Location: FF_X8_Y2_N31
\board|Register3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector1~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(6));

-- Location: LABCELL_X7_Y2_N36
\board|Register7|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register7|q[6]~feeder_combout\ = \board|Multiplexers|Selector1~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|Multiplexers|ALT_INV_Selector1~7_combout\,
	combout => \board|Register7|q[6]~feeder_combout\);

-- Location: FF_X7_Y2_N38
\board|Register7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register7|q[6]~feeder_combout\,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(6));

-- Location: LABCELL_X7_Y2_N0
\board|Multiplexers|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~0_combout\ = ( \board|Multiplexers|Equal1~0_combout\ & ( !\board|ControlUnit|muxout\(6) & ( (\board|ControlUnit|muxout\(7) & (\board|Multiplexers|Equal0~0_combout\ & (\board|Register7|q\(6) & !\board|ControlUnit|muxout\(8)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(7),
	datab => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	datac => \board|Register7|ALT_INV_q\(6),
	datad => \board|ControlUnit|ALT_INV_muxout\(8),
	datae => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_muxout\(6),
	combout => \board|Multiplexers|Selector1~0_combout\);

-- Location: LABCELL_X7_Y2_N57
\board|Register2|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register2|q[6]~feeder_combout\ = \board|Multiplexers|Selector1~7_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector1~7_combout\,
	combout => \board|Register2|q[6]~feeder_combout\);

-- Location: FF_X7_Y2_N59
\board|Register2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register2|q[6]~feeder_combout\,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(6));

-- Location: LABCELL_X7_Y2_N6
\board|Multiplexers|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~3_combout\ = ( \board|Multiplexers|Equal2~0_combout\ & ( \board|Multiplexers|Equal0~3_combout\ & ( (\board|Multiplexers|Equal2~1_combout\ & \board|Register2|q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datad => \board|Register2|ALT_INV_q\(6),
	datae => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	combout => \board|Multiplexers|Selector1~3_combout\);

-- Location: MLABCELL_X8_Y3_N39
\board|AddsubMachine|intB[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|intB[5]~4_combout\ = ( \board|Multiplexers|Selector2~7_combout\ & ( \board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((!\SW[5]~input_o\ & !\board|Multiplexers|Selector2~0_combout\))) ) ) ) # ( 
-- !\board|Multiplexers|Selector2~7_combout\ & ( \board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ ) ) ) # ( \board|Multiplexers|Selector2~7_combout\ & ( !\board|Multiplexers|bout~0_combout\ & ( 
-- !\board|Multiplexers|Selector2~0_combout\ $ (!\board|ControlUnit|addsub~combout\) ) ) ) # ( !\board|Multiplexers|Selector2~7_combout\ & ( !\board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000011111111000011111111000000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \board|Multiplexers|ALT_INV_Selector2~0_combout\,
	datad => \board|ControlUnit|ALT_INV_addsub~combout\,
	datae => \board|Multiplexers|ALT_INV_Selector2~7_combout\,
	dataf => \board|Multiplexers|ALT_INV_bout~0_combout\,
	combout => \board|AddsubMachine|intB[5]~4_combout\);

-- Location: FF_X8_Y3_N47
\board|RegisterA|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Multiplexers|Selector1~7_combout\,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(6));

-- Location: MLABCELL_X8_Y2_N48
\board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ = ( \board|AddsubMachine|intB[3]~2_combout\ & ( (!\board|RegisterA|q\(4) & (\board|AddsubMachine|intB[4]~3_combout\ & ((\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\) # 
-- (\board|RegisterA|q\(3))))) # (\board|RegisterA|q\(4) & (((\board|AddsubMachine|intB[4]~3_combout\) # (\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\)) # (\board|RegisterA|q\(3)))) ) ) # ( !\board|AddsubMachine|intB[3]~2_combout\ & ( 
-- (!\board|RegisterA|q\(4) & (\board|RegisterA|q\(3) & (\board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\ & \board|AddsubMachine|intB[4]~3_combout\))) # (\board|RegisterA|q\(4) & (((\board|RegisterA|q\(3) & 
-- \board|AddsubMachine|addsub|G1:1:FullAdder_body|co~0_combout\)) # (\board|AddsubMachine|intB[4]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterA|ALT_INV_q\(4),
	datab => \board|RegisterA|ALT_INV_q\(3),
	datac => \board|AddsubMachine|addsub|G1:1:FullAdder_body|ALT_INV_co~0_combout\,
	datad => \board|AddsubMachine|ALT_INV_intB[4]~3_combout\,
	dataf => \board|AddsubMachine|ALT_INV_intB[3]~2_combout\,
	combout => \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\);

-- Location: MLABCELL_X8_Y2_N30
\board|AddsubMachine|intB[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|intB[6]~5_combout\ = ( \board|Register3|q\(6) & ( \board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((!\SW[6]~input_o\ & (\board|Multiplexers|Selector1~6_combout\ & 
-- !\board|Multiplexers|Equal3~0_combout\)))) ) ) ) # ( !\board|Register3|q\(6) & ( \board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((!\SW[6]~input_o\ & \board|Multiplexers|Selector1~6_combout\))) ) ) ) # ( 
-- \board|Register3|q\(6) & ( !\board|Multiplexers|bout~0_combout\ & ( !\board|ControlUnit|addsub~combout\ $ (((\board|Multiplexers|Selector1~6_combout\ & !\board|Multiplexers|Equal3~0_combout\))) ) ) ) # ( !\board|Register3|q\(6) & ( 
-- !\board|Multiplexers|bout~0_combout\ & ( !\board|Multiplexers|Selector1~6_combout\ $ (\board|ControlUnit|addsub~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111111000011010010110100101101001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \board|Multiplexers|ALT_INV_Selector1~6_combout\,
	datac => \board|ControlUnit|ALT_INV_addsub~combout\,
	datad => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datae => \board|Register3|ALT_INV_q\(6),
	dataf => \board|Multiplexers|ALT_INV_bout~0_combout\,
	combout => \board|AddsubMachine|intB[6]~5_combout\);

-- Location: MLABCELL_X8_Y2_N18
\board|AddsubMachine|addsub|G1:5:FullAdder_body|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|G1:5:FullAdder_body|s~combout\ = ( \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( \board|AddsubMachine|intB[6]~5_combout\ & ( !\board|RegisterA|q\(6) $ (((\board|RegisterA|q\(5)) # 
-- (\board|AddsubMachine|intB[5]~4_combout\))) ) ) ) # ( !\board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( \board|AddsubMachine|intB[6]~5_combout\ & ( !\board|RegisterA|q\(6) $ (((\board|AddsubMachine|intB[5]~4_combout\ & 
-- \board|RegisterA|q\(5)))) ) ) ) # ( \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( !\board|AddsubMachine|intB[6]~5_combout\ & ( !\board|RegisterA|q\(6) $ (((!\board|AddsubMachine|intB[5]~4_combout\ & !\board|RegisterA|q\(5)))) ) ) ) # ( 
-- !\board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( !\board|AddsubMachine|intB[6]~5_combout\ & ( !\board|RegisterA|q\(6) $ (((!\board|AddsubMachine|intB[5]~4_combout\) # (!\board|RegisterA|q\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100001111111100000011111100000000111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|AddsubMachine|ALT_INV_intB[5]~4_combout\,
	datac => \board|RegisterA|ALT_INV_q\(5),
	datad => \board|RegisterA|ALT_INV_q\(6),
	datae => \board|AddsubMachine|addsub|G1:3:FullAdder_body|ALT_INV_co~0_combout\,
	dataf => \board|AddsubMachine|ALT_INV_intB[6]~5_combout\,
	combout => \board|AddsubMachine|addsub|G1:5:FullAdder_body|s~combout\);

-- Location: FF_X8_Y2_N20
\board|RegisterG|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|G1:5:FullAdder_body|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(6));

-- Location: FF_X8_Y2_N8
\board|Register1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector1~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(6));

-- Location: MLABCELL_X8_Y2_N9
\board|Multiplexers|Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~4_combout\ = ( \board|ControlUnit|muxout\(1) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|Register1|q\(6) & (!\board|ControlUnit|muxout\(9) & \board|Multiplexers|Equal0~1_combout\)) ) ) ) # ( 
-- !\board|ControlUnit|muxout\(1) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|RegisterG|q\(6) & (\board|ControlUnit|muxout\(9) & \board|Multiplexers|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterG|ALT_INV_q\(6),
	datab => \board|Register1|ALT_INV_q\(6),
	datac => \board|ControlUnit|ALT_INV_muxout\(9),
	datad => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datae => \board|ControlUnit|ALT_INV_muxout\(1),
	dataf => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	combout => \board|Multiplexers|Selector1~4_combout\);

-- Location: FF_X8_Y3_N25
\board|Register6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector1~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(6));

-- Location: MLABCELL_X8_Y3_N33
\board|Multiplexers|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~1_combout\ = ( \board|Multiplexers|Equal0~0_combout\ & ( (\board|Multiplexers|Equal6~0_combout\ & (\board|Register6|q\(6) & \board|Multiplexers|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datac => \board|Register6|ALT_INV_q\(6),
	datad => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	combout => \board|Multiplexers|Selector1~1_combout\);

-- Location: LABCELL_X7_Y3_N18
\board|Register4|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register4|q[6]~feeder_combout\ = ( \board|Multiplexers|Selector1~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector1~7_combout\,
	combout => \board|Register4|q[6]~feeder_combout\);

-- Location: FF_X7_Y3_N20
\board|Register4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register4|q[6]~feeder_combout\,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(6));

-- Location: LABCELL_X7_Y3_N12
\board|Multiplexers|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~2_combout\ = ( !\board|ControlUnit|muxout\(2) & ( \board|Register4|q\(6) & ( (\board|Multiplexers|Equal0~3_combout\ & (!\board|ControlUnit|muxout\(3) & (\board|Multiplexers|Equal2~1_combout\ & \board|ControlUnit|muxout\(4)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	datae => \board|ControlUnit|ALT_INV_muxout\(2),
	dataf => \board|Register4|ALT_INV_q\(6),
	combout => \board|Multiplexers|Selector1~2_combout\);

-- Location: FF_X8_Y4_N56
\board|Register0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector1~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(6));

-- Location: FF_X8_Y4_N32
\board|Register5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector1~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(6));

-- Location: MLABCELL_X8_Y4_N42
\board|Multiplexers|Selector1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~5_combout\ = ( \board|Register0|q\(6) & ( \board|Register5|q\(6) & ( (\board|Multiplexers|Equal0~2_combout\ & (\board|Multiplexers|Equal0~1_combout\ & (!\board|ControlUnit|muxout\(5) $ (!\board|ControlUnit|muxout\(0))))) ) ) 
-- ) # ( !\board|Register0|q\(6) & ( \board|Register5|q\(6) & ( (\board|ControlUnit|muxout\(5) & (\board|Multiplexers|Equal0~2_combout\ & (!\board|ControlUnit|muxout\(0) & \board|Multiplexers|Equal0~1_combout\))) ) ) ) # ( \board|Register0|q\(6) & ( 
-- !\board|Register5|q\(6) & ( (!\board|ControlUnit|muxout\(5) & (\board|Multiplexers|Equal0~2_combout\ & (\board|ControlUnit|muxout\(0) & \board|Multiplexers|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000100000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(5),
	datab => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(0),
	datad => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datae => \board|Register0|ALT_INV_q\(6),
	dataf => \board|Register5|ALT_INV_q\(6),
	combout => \board|Multiplexers|Selector1~5_combout\);

-- Location: LABCELL_X7_Y2_N24
\board|Multiplexers|Selector1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~6_combout\ = ( !\board|Multiplexers|Selector1~2_combout\ & ( !\board|Multiplexers|Selector1~5_combout\ & ( (!\board|Multiplexers|Selector1~0_combout\ & (!\board|Multiplexers|Selector1~3_combout\ & 
-- (!\board|Multiplexers|Selector1~4_combout\ & !\board|Multiplexers|Selector1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector1~0_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector1~3_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector1~4_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector1~1_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector1~2_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector1~5_combout\,
	combout => \board|Multiplexers|Selector1~6_combout\);

-- Location: MLABCELL_X8_Y3_N45
\board|Multiplexers|Selector1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector1~7_combout\ = ( \board|Multiplexers|Selector1~6_combout\ & ( (!\board|Multiplexers|bout~0_combout\ & (((\board|Register3|q\(6) & \board|Multiplexers|Equal3~0_combout\)))) # (\board|Multiplexers|bout~0_combout\ & 
-- (((\board|Register3|q\(6) & \board|Multiplexers|Equal3~0_combout\)) # (\SW[6]~input_o\))) ) ) # ( !\board|Multiplexers|Selector1~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \board|Register3|ALT_INV_q\(6),
	datad => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector1~6_combout\,
	combout => \board|Multiplexers|Selector1~7_combout\);

-- Location: FF_X7_Y1_N59
\board|Register0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector0~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register0|q\(7));

-- Location: FF_X7_Y1_N17
\board|Register5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector0~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register5|q\(7));

-- Location: LABCELL_X7_Y1_N48
\board|Multiplexers|Selector0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~5_combout\ = ( \board|Register0|q\(7) & ( \board|Register5|q\(7) & ( (\board|Multiplexers|Equal0~1_combout\ & (\board|Multiplexers|Equal0~2_combout\ & (!\board|ControlUnit|muxout\(0) $ (!\board|ControlUnit|muxout\(5))))) ) ) 
-- ) # ( !\board|Register0|q\(7) & ( \board|Register5|q\(7) & ( (\board|Multiplexers|Equal0~1_combout\ & (\board|Multiplexers|Equal0~2_combout\ & (!\board|ControlUnit|muxout\(0) & \board|ControlUnit|muxout\(5)))) ) ) ) # ( \board|Register0|q\(7) & ( 
-- !\board|Register5|q\(7) & ( (\board|Multiplexers|Equal0~1_combout\ & (\board|Multiplexers|Equal0~2_combout\ & (\board|ControlUnit|muxout\(0) & !\board|ControlUnit|muxout\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal0~2_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(0),
	datad => \board|ControlUnit|ALT_INV_muxout\(5),
	datae => \board|Register0|ALT_INV_q\(7),
	dataf => \board|Register5|ALT_INV_q\(7),
	combout => \board|Multiplexers|Selector0~5_combout\);

-- Location: MLABCELL_X8_Y1_N24
\board|Register2|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register2|q[7]~feeder_combout\ = ( \board|Multiplexers|Selector0~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector0~7_combout\,
	combout => \board|Register2|q[7]~feeder_combout\);

-- Location: FF_X8_Y1_N26
\board|Register2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register2|q[7]~feeder_combout\,
	ena => \board|ControlUnit|regin\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register2|q\(7));

-- Location: MLABCELL_X8_Y1_N6
\board|Multiplexers|Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~3_combout\ = ( \board|Multiplexers|Equal2~0_combout\ & ( \board|Register2|q\(7) & ( (\board|Multiplexers|Equal2~1_combout\ & \board|Multiplexers|Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datae => \board|Multiplexers|ALT_INV_Equal2~0_combout\,
	dataf => \board|Register2|ALT_INV_q\(7),
	combout => \board|Multiplexers|Selector0~3_combout\);

-- Location: FF_X9_Y1_N23
\board|Register4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector0~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register4|q\(7));

-- Location: LABCELL_X9_Y1_N36
\board|Multiplexers|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~2_combout\ = ( \board|Register4|q\(7) & ( \board|Multiplexers|Equal2~1_combout\ & ( (!\board|ControlUnit|muxout\(2) & (!\board|ControlUnit|muxout\(3) & (\board|Multiplexers|Equal0~3_combout\ & \board|ControlUnit|muxout\(4)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|ControlUnit|ALT_INV_muxout\(2),
	datab => \board|ControlUnit|ALT_INV_muxout\(3),
	datac => \board|Multiplexers|ALT_INV_Equal0~3_combout\,
	datad => \board|ControlUnit|ALT_INV_muxout\(4),
	datae => \board|Register4|ALT_INV_q\(7),
	dataf => \board|Multiplexers|ALT_INV_Equal2~1_combout\,
	combout => \board|Multiplexers|Selector0~2_combout\);

-- Location: MLABCELL_X8_Y1_N39
\board|Register7|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register7|q[7]~feeder_combout\ = ( \board|Multiplexers|Selector0~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector0~7_combout\,
	combout => \board|Register7|q[7]~feeder_combout\);

-- Location: FF_X8_Y1_N41
\board|Register7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register7|q[7]~feeder_combout\,
	ena => \board|ControlUnit|regin\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register7|q\(7));

-- Location: MLABCELL_X8_Y1_N54
\board|Multiplexers|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~0_combout\ = ( \board|ControlUnit|muxout\(7) & ( \board|Register7|q\(7) & ( (\board|Multiplexers|Equal1~0_combout\ & (\board|Multiplexers|Equal0~0_combout\ & (!\board|ControlUnit|muxout\(6) & !\board|ControlUnit|muxout\(8)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	datab => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(6),
	datad => \board|ControlUnit|ALT_INV_muxout\(8),
	datae => \board|ControlUnit|ALT_INV_muxout\(7),
	dataf => \board|Register7|ALT_INV_q\(7),
	combout => \board|Multiplexers|Selector0~0_combout\);

-- Location: MLABCELL_X8_Y1_N18
\board|RegisterA|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|RegisterA|q[7]~feeder_combout\ = ( \board|Multiplexers|Selector0~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector0~7_combout\,
	combout => \board|RegisterA|q[7]~feeder_combout\);

-- Location: FF_X8_Y1_N19
\board|RegisterA|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|RegisterA|q[7]~feeder_combout\,
	ena => \board|ControlUnit|Ain~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterA|q\(7));

-- Location: MLABCELL_X8_Y2_N51
\board|AddsubMachine|addsub|FullAdder_last|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|FullAdder_last|s~0_combout\ = ( \board|ControlUnit|addsub~combout\ & ( !\board|RegisterA|q\(7) ) ) # ( !\board|ControlUnit|addsub~combout\ & ( \board|RegisterA|q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|RegisterA|ALT_INV_q\(7),
	dataf => \board|ControlUnit|ALT_INV_addsub~combout\,
	combout => \board|AddsubMachine|addsub|FullAdder_last|s~0_combout\);

-- Location: FF_X8_Y2_N17
\board|Register3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector0~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register3|q\(7));

-- Location: MLABCELL_X8_Y2_N15
\board|AddsubMachine|addsub|FullAdder_last|s~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|FullAdder_last|s~1_combout\ = ( \board|Register3|q\(7) & ( \board|Multiplexers|Selector0~6_combout\ & ( !\board|AddsubMachine|addsub|FullAdder_last|s~0_combout\ $ (((!\board|Multiplexers|Equal3~0_combout\ & ((!\SW[7]~input_o\) 
-- # (!\board|Multiplexers|bout~0_combout\))))) ) ) ) # ( !\board|Register3|q\(7) & ( \board|Multiplexers|Selector0~6_combout\ & ( !\board|AddsubMachine|addsub|FullAdder_last|s~0_combout\ $ (((!\SW[7]~input_o\) # (!\board|Multiplexers|bout~0_combout\))) ) ) 
-- ) # ( \board|Register3|q\(7) & ( !\board|Multiplexers|Selector0~6_combout\ & ( !\board|AddsubMachine|addsub|FullAdder_last|s~0_combout\ ) ) ) # ( !\board|Register3|q\(7) & ( !\board|Multiplexers|Selector0~6_combout\ & ( 
-- !\board|AddsubMachine|addsub|FullAdder_last|s~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101011001100101101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|AddsubMachine|addsub|FullAdder_last|ALT_INV_s~0_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	datad => \board|Multiplexers|ALT_INV_bout~0_combout\,
	datae => \board|Register3|ALT_INV_q\(7),
	dataf => \board|Multiplexers|ALT_INV_Selector0~6_combout\,
	combout => \board|AddsubMachine|addsub|FullAdder_last|s~1_combout\);

-- Location: MLABCELL_X8_Y2_N36
\board|AddsubMachine|addsub|FullAdder_last|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|AddsubMachine|addsub|FullAdder_last|s~combout\ = ( \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( \board|AddsubMachine|intB[6]~5_combout\ & ( !\board|AddsubMachine|addsub|FullAdder_last|s~1_combout\ $ 
-- (((!\board|AddsubMachine|intB[5]~4_combout\ & (!\board|RegisterA|q\(5) & !\board|RegisterA|q\(6))))) ) ) ) # ( !\board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( \board|AddsubMachine|intB[6]~5_combout\ & ( 
-- !\board|AddsubMachine|addsub|FullAdder_last|s~1_combout\ $ (((!\board|RegisterA|q\(6) & ((!\board|AddsubMachine|intB[5]~4_combout\) # (!\board|RegisterA|q\(5)))))) ) ) ) # ( \board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( 
-- !\board|AddsubMachine|intB[6]~5_combout\ & ( !\board|AddsubMachine|addsub|FullAdder_last|s~1_combout\ $ (((!\board|RegisterA|q\(6)) # ((!\board|AddsubMachine|intB[5]~4_combout\ & !\board|RegisterA|q\(5))))) ) ) ) # ( 
-- !\board|AddsubMachine|addsub|G1:3:FullAdder_body|co~0_combout\ & ( !\board|AddsubMachine|intB[6]~5_combout\ & ( !\board|AddsubMachine|addsub|FullAdder_last|s~1_combout\ $ (((!\board|AddsubMachine|intB[5]~4_combout\) # ((!\board|RegisterA|q\(5)) # 
-- (!\board|RegisterA|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010110101001010110101010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|AddsubMachine|addsub|FullAdder_last|ALT_INV_s~1_combout\,
	datab => \board|AddsubMachine|ALT_INV_intB[5]~4_combout\,
	datac => \board|RegisterA|ALT_INV_q\(5),
	datad => \board|RegisterA|ALT_INV_q\(6),
	datae => \board|AddsubMachine|addsub|G1:3:FullAdder_body|ALT_INV_co~0_combout\,
	dataf => \board|AddsubMachine|ALT_INV_intB[6]~5_combout\,
	combout => \board|AddsubMachine|addsub|FullAdder_last|s~combout\);

-- Location: FF_X8_Y2_N38
\board|RegisterG|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|AddsubMachine|addsub|FullAdder_last|s~combout\,
	ena => \board|ControlUnit|Gin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|RegisterG|q\(7));

-- Location: FF_X8_Y2_N2
\board|Register1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \board|Multiplexers|Selector0~7_combout\,
	sload => VCC,
	ena => \board|ControlUnit|regin\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register1|q\(7));

-- Location: MLABCELL_X8_Y2_N3
\board|Multiplexers|Selector0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~4_combout\ = ( \board|ControlUnit|muxout\(1) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|Multiplexers|Equal0~1_combout\ & (!\board|ControlUnit|muxout\(9) & \board|Register1|q\(7))) ) ) ) # ( 
-- !\board|ControlUnit|muxout\(1) & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|RegisterG|q\(7) & (\board|Multiplexers|Equal0~1_combout\ & \board|ControlUnit|muxout\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|RegisterG|ALT_INV_q\(7),
	datab => \board|Multiplexers|ALT_INV_Equal0~1_combout\,
	datac => \board|ControlUnit|ALT_INV_muxout\(9),
	datad => \board|Register1|ALT_INV_q\(7),
	datae => \board|ControlUnit|ALT_INV_muxout\(1),
	dataf => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	combout => \board|Multiplexers|Selector0~4_combout\);

-- Location: LABCELL_X7_Y2_N33
\board|Register6|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Register6|q[7]~feeder_combout\ = ( \board|Multiplexers|Selector0~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \board|Multiplexers|ALT_INV_Selector0~7_combout\,
	combout => \board|Register6|q[7]~feeder_combout\);

-- Location: FF_X7_Y2_N34
\board|Register6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \board|Register6|q[7]~feeder_combout\,
	ena => \board|ControlUnit|regin\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \board|Register6|q\(7));

-- Location: MLABCELL_X8_Y2_N24
\board|Multiplexers|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~1_combout\ = ( \board|Multiplexers|Equal0~0_combout\ & ( \board|Multiplexers|Equal1~0_combout\ & ( (\board|Register6|q\(7) & \board|Multiplexers|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \board|Register6|ALT_INV_q\(7),
	datac => \board|Multiplexers|ALT_INV_Equal6~0_combout\,
	datae => \board|Multiplexers|ALT_INV_Equal0~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal1~0_combout\,
	combout => \board|Multiplexers|Selector0~1_combout\);

-- Location: MLABCELL_X8_Y2_N42
\board|Multiplexers|Selector0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~6_combout\ = ( !\board|Multiplexers|Selector0~4_combout\ & ( !\board|Multiplexers|Selector0~1_combout\ & ( (!\board|Multiplexers|Selector0~5_combout\ & (!\board|Multiplexers|Selector0~3_combout\ & 
-- (!\board|Multiplexers|Selector0~2_combout\ & !\board|Multiplexers|Selector0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector0~5_combout\,
	datab => \board|Multiplexers|ALT_INV_Selector0~3_combout\,
	datac => \board|Multiplexers|ALT_INV_Selector0~2_combout\,
	datad => \board|Multiplexers|ALT_INV_Selector0~0_combout\,
	datae => \board|Multiplexers|ALT_INV_Selector0~4_combout\,
	dataf => \board|Multiplexers|ALT_INV_Selector0~1_combout\,
	combout => \board|Multiplexers|Selector0~6_combout\);

-- Location: MLABCELL_X8_Y1_N48
\board|Multiplexers|Selector0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|Multiplexers|Selector0~7_combout\ = ( \board|Multiplexers|bout~0_combout\ & ( \board|Multiplexers|Equal3~0_combout\ & ( (!\board|Multiplexers|Selector0~6_combout\) # ((\SW[7]~input_o\) # (\board|Register3|q\(7))) ) ) ) # ( 
-- !\board|Multiplexers|bout~0_combout\ & ( \board|Multiplexers|Equal3~0_combout\ & ( (!\board|Multiplexers|Selector0~6_combout\) # (\board|Register3|q\(7)) ) ) ) # ( \board|Multiplexers|bout~0_combout\ & ( !\board|Multiplexers|Equal3~0_combout\ & ( 
-- (!\board|Multiplexers|Selector0~6_combout\) # (\SW[7]~input_o\) ) ) ) # ( !\board|Multiplexers|bout~0_combout\ & ( !\board|Multiplexers|Equal3~0_combout\ & ( !\board|Multiplexers|Selector0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111110111011101110111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \board|Multiplexers|ALT_INV_Selector0~6_combout\,
	datab => \board|Register3|ALT_INV_q\(7),
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \board|Multiplexers|ALT_INV_bout~0_combout\,
	dataf => \board|Multiplexers|ALT_INV_Equal3~0_combout\,
	combout => \board|Multiplexers|Selector0~7_combout\);

-- Location: LABCELL_X12_Y3_N36
\board|ControlUnit|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|Selector24~0_combout\ = ( \board|ControlUnit|y.T3~q\ & ( \board|RegisterIR|q\(7) ) ) # ( \board|ControlUnit|y.T3~q\ & ( !\board|RegisterIR|q\(7) ) ) # ( !\board|ControlUnit|y.T3~q\ & ( !\board|RegisterIR|q\(7) & ( 
-- \board|ControlUnit|y.T1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \board|ControlUnit|ALT_INV_y.T1~q\,
	datae => \board|ControlUnit|ALT_INV_y.T3~q\,
	dataf => \board|RegisterIR|ALT_INV_q\(7),
	combout => \board|ControlUnit|Selector24~0_combout\);

-- Location: LABCELL_X12_Y3_N33
\board|ControlUnit|done\ : cyclonev_lcell_comb
-- Equation(s):
-- \board|ControlUnit|done~combout\ = ( \board|ControlUnit|Selector25~0_combout\ & ( \board|ControlUnit|done~combout\ & ( \board|ControlUnit|Selector24~0_combout\ ) ) ) # ( !\board|ControlUnit|Selector25~0_combout\ & ( \board|ControlUnit|done~combout\ ) ) # 
-- ( \board|ControlUnit|Selector25~0_combout\ & ( !\board|ControlUnit|done~combout\ & ( \board|ControlUnit|Selector24~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \board|ControlUnit|ALT_INV_Selector24~0_combout\,
	datae => \board|ControlUnit|ALT_INV_Selector25~0_combout\,
	dataf => \board|ControlUnit|ALT_INV_done~combout\,
	combout => \board|ControlUnit|done~combout\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: MLABCELL_X72_Y17_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


