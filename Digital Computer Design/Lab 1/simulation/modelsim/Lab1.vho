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

-- DATE "02/07/2019 17:09:49"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDadder_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END BCDadder_board;

-- Design Ports Information
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCDadder_board IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \dut|RCApart|FullAdder1|s~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \dut|RCApart|FullAdder2|s~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \dut|RCApart|FullAdder2|co~0_combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder3|s~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \dut|RCApart|FullAdder4|s~combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder4|co~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|Mux2~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|Mux4~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|Mux1~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|Mux3~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux6~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux5~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux4~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux3~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux2~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux1~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux0~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux12~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|Mux11~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux6~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux5~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux4~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux3~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux2~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux1~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux0~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|Mux12~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux6~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux5~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux4~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux3~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux2~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux1~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux0~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \dut|Decoderpart2|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \dut|Decoderpart1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dut|BCDpart|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder4|ALT_INV_s~combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder3|ALT_INV_s~combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder2|ALT_INV_s~combout\ : std_logic;
SIGNAL \dut|RCApart|FullAdder1|ALT_INV_s~combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\dut|Decoderpart2|ALT_INV_Mux12~0_combout\ <= NOT \dut|Decoderpart2|Mux12~0_combout\;
\dut|Decoderpart2|ALT_INV_Mux0~0_combout\ <= NOT \dut|Decoderpart2|Mux0~0_combout\;
\dut|Decoderpart3|ALT_INV_Mux12~0_combout\ <= NOT \dut|Decoderpart3|Mux12~0_combout\;
\dut|Decoderpart3|ALT_INV_Mux0~0_combout\ <= NOT \dut|Decoderpart3|Mux0~0_combout\;
\dut|Decoderpart1|ALT_INV_Mux11~0_combout\ <= NOT \dut|Decoderpart1|Mux11~0_combout\;
\dut|Decoderpart1|ALT_INV_Mux0~0_combout\ <= NOT \dut|Decoderpart1|Mux0~0_combout\;
\dut|BCDpart|ALT_INV_Mux1~0_combout\ <= NOT \dut|BCDpart|Mux1~0_combout\;
\dut|BCDpart|ALT_INV_Mux2~0_combout\ <= NOT \dut|BCDpart|Mux2~0_combout\;
\dut|BCDpart|ALT_INV_Mux3~0_combout\ <= NOT \dut|BCDpart|Mux3~0_combout\;
\dut|BCDpart|ALT_INV_Mux4~0_combout\ <= NOT \dut|BCDpart|Mux4~0_combout\;
\dut|RCApart|FullAdder4|ALT_INV_co~0_combout\ <= NOT \dut|RCApart|FullAdder4|co~0_combout\;
\dut|RCApart|FullAdder4|ALT_INV_s~combout\ <= NOT \dut|RCApart|FullAdder4|s~combout\;
\dut|RCApart|FullAdder3|ALT_INV_s~combout\ <= NOT \dut|RCApart|FullAdder3|s~combout\;
\dut|RCApart|FullAdder2|ALT_INV_co~0_combout\ <= NOT \dut|RCApart|FullAdder2|co~0_combout\;
\dut|RCApart|FullAdder2|ALT_INV_s~combout\ <= NOT \dut|RCApart|FullAdder2|s~combout\;
\dut|RCApart|FullAdder1|ALT_INV_s~combout\ <= NOT \dut|RCApart|FullAdder1|s~combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|RCApart|FullAdder1|s~combout\,
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
	i => \dut|RCApart|FullAdder2|s~combout\,
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
	i => \dut|RCApart|FullAdder3|s~combout\,
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
	i => \dut|RCApart|FullAdder4|s~combout\,
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
	i => \dut|RCApart|FullAdder4|co~0_combout\,
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
	i => \dut|LessThan0~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart3|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|Decoderpart2|ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: LABCELL_X81_Y1_N30
\dut|RCApart|FullAdder1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|RCApart|FullAdder1|s~combout\ = ( \SW[8]~input_o\ & ( !\SW[0]~input_o\ $ (\SW[4]~input_o\) ) ) # ( !\SW[8]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	combout => \dut|RCApart|FullAdder1|s~combout\);

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

-- Location: LABCELL_X81_Y1_N39
\dut|RCApart|FullAdder2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|RCApart|FullAdder2|s~combout\ = ( \SW[8]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((\SW[0]~input_o\) # (\SW[4]~input_o\))) ) ) ) # ( !\SW[8]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\))) ) ) ) 
-- # ( \SW[8]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((!\SW[4]~input_o\ & !\SW[0]~input_o\))) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((!\SW[4]~input_o\) # (!\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010010110101111000011110000101001011010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|RCApart|FullAdder2|s~combout\);

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

-- Location: LABCELL_X85_Y7_N33
\dut|RCApart|FullAdder2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|RCApart|FullAdder2|co~0_combout\ = ( \SW[8]~input_o\ & ( \SW[5]~input_o\ & ( ((\SW[4]~input_o\) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( !\SW[8]~input_o\ & ( \SW[5]~input_o\ & ( ((\SW[0]~input_o\ & \SW[4]~input_o\)) # (\SW[1]~input_o\) ) ) 
-- ) # ( \SW[8]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[1]~input_o\ & ((\SW[4]~input_o\) # (\SW[0]~input_o\))) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010101010111010101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|RCApart|FullAdder2|co~0_combout\);

-- Location: LABCELL_X85_Y7_N6
\dut|RCApart|FullAdder3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|RCApart|FullAdder3|s~combout\ = ( \dut|RCApart|FullAdder2|co~0_combout\ & ( !\SW[2]~input_o\ $ (\SW[6]~input_o\) ) ) # ( !\dut|RCApart|FullAdder2|co~0_combout\ & ( !\SW[2]~input_o\ $ (!\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \dut|RCApart|FullAdder2|ALT_INV_co~0_combout\,
	combout => \dut|RCApart|FullAdder3|s~combout\);

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

-- Location: LABCELL_X85_Y7_N12
\dut|RCApart|FullAdder4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|RCApart|FullAdder4|s~combout\ = ( \SW[3]~input_o\ & ( !\SW[7]~input_o\ $ (((!\dut|RCApart|FullAdder2|co~0_combout\ & (\SW[6]~input_o\ & \SW[2]~input_o\)) # (\dut|RCApart|FullAdder2|co~0_combout\ & ((\SW[2]~input_o\) # (\SW[6]~input_o\))))) ) ) # ( 
-- !\SW[3]~input_o\ & ( !\SW[7]~input_o\ $ (((!\dut|RCApart|FullAdder2|co~0_combout\ & ((!\SW[6]~input_o\) # (!\SW[2]~input_o\))) # (\dut|RCApart|FullAdder2|co~0_combout\ & (!\SW[6]~input_o\ & !\SW[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RCApart|FullAdder2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \dut|RCApart|FullAdder4|s~combout\);

-- Location: LABCELL_X85_Y7_N9
\dut|RCApart|FullAdder4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|RCApart|FullAdder4|co~0_combout\ = ( \dut|RCApart|FullAdder2|co~0_combout\ & ( (!\SW[3]~input_o\ & (\SW[7]~input_o\ & ((\SW[6]~input_o\) # (\SW[2]~input_o\)))) # (\SW[3]~input_o\ & (((\SW[7]~input_o\) # (\SW[6]~input_o\)) # (\SW[2]~input_o\))) ) ) # 
-- ( !\dut|RCApart|FullAdder2|co~0_combout\ & ( (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[6]~input_o\ & \SW[7]~input_o\))) # (\SW[3]~input_o\ & (((\SW[2]~input_o\ & \SW[6]~input_o\)) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \dut|RCApart|FullAdder2|ALT_INV_co~0_combout\,
	combout => \dut|RCApart|FullAdder4|co~0_combout\);

-- Location: LABCELL_X85_Y7_N15
\dut|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[3]~input_o\ & (\dut|RCApart|FullAdder2|co~0_combout\ & (\SW[6]~input_o\ & \SW[7]~input_o\))) # (\SW[3]~input_o\ & (((\dut|RCApart|FullAdder2|co~0_combout\ & \SW[6]~input_o\)) # (\SW[7]~input_o\))) ) 
-- ) # ( !\SW[2]~input_o\ & ( (\SW[3]~input_o\ & (\SW[7]~input_o\ & ((\SW[6]~input_o\) # (\dut|RCApart|FullAdder2|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RCApart|FullAdder2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \dut|LessThan0~0_combout\);

-- Location: LABCELL_X85_Y7_N0
\dut|BCDpart|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|BCDpart|Mux2~0_combout\ = ( \dut|RCApart|FullAdder4|s~combout\ & ( (!\dut|RCApart|FullAdder4|co~0_combout\ & (\dut|RCApart|FullAdder3|s~combout\ & \dut|RCApart|FullAdder2|s~combout\)) ) ) # ( !\dut|RCApart|FullAdder4|s~combout\ & ( 
-- (!\dut|RCApart|FullAdder4|co~0_combout\ & (\dut|RCApart|FullAdder3|s~combout\)) # (\dut|RCApart|FullAdder4|co~0_combout\ & (!\dut|RCApart|FullAdder3|s~combout\ & !\dut|RCApart|FullAdder2|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RCApart|FullAdder4|ALT_INV_co~0_combout\,
	datab => \dut|RCApart|FullAdder3|ALT_INV_s~combout\,
	datac => \dut|RCApart|FullAdder2|ALT_INV_s~combout\,
	dataf => \dut|RCApart|FullAdder4|ALT_INV_s~combout\,
	combout => \dut|BCDpart|Mux2~0_combout\);

-- Location: LABCELL_X85_Y7_N48
\dut|BCDpart|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|BCDpart|Mux4~0_combout\ = ( \dut|RCApart|FullAdder4|s~combout\ & ( (\dut|RCApart|FullAdder1|s~combout\ & !\dut|RCApart|FullAdder4|co~0_combout\) ) ) # ( !\dut|RCApart|FullAdder4|s~combout\ & ( (\dut|RCApart|FullAdder1|s~combout\ & 
-- ((!\dut|RCApart|FullAdder3|s~combout\) # (!\dut|RCApart|FullAdder4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|RCApart|FullAdder3|ALT_INV_s~combout\,
	datac => \dut|RCApart|FullAdder1|ALT_INV_s~combout\,
	datad => \dut|RCApart|FullAdder4|ALT_INV_co~0_combout\,
	dataf => \dut|RCApart|FullAdder4|ALT_INV_s~combout\,
	combout => \dut|BCDpart|Mux4~0_combout\);

-- Location: LABCELL_X85_Y7_N3
\dut|BCDpart|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|BCDpart|Mux1~0_combout\ = ( \dut|RCApart|FullAdder4|s~combout\ & ( (!\dut|RCApart|FullAdder4|co~0_combout\ & (!\dut|RCApart|FullAdder3|s~combout\ & !\dut|RCApart|FullAdder2|s~combout\)) ) ) # ( !\dut|RCApart|FullAdder4|s~combout\ & ( 
-- (\dut|RCApart|FullAdder4|co~0_combout\ & (!\dut|RCApart|FullAdder3|s~combout\ & \dut|RCApart|FullAdder2|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RCApart|FullAdder4|ALT_INV_co~0_combout\,
	datab => \dut|RCApart|FullAdder3|ALT_INV_s~combout\,
	datad => \dut|RCApart|FullAdder2|ALT_INV_s~combout\,
	dataf => \dut|RCApart|FullAdder4|ALT_INV_s~combout\,
	combout => \dut|BCDpart|Mux1~0_combout\);

-- Location: LABCELL_X85_Y7_N27
\dut|BCDpart|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|BCDpart|Mux3~0_combout\ = ( \dut|RCApart|FullAdder4|s~combout\ & ( (!\dut|RCApart|FullAdder4|co~0_combout\ & (\dut|RCApart|FullAdder3|s~combout\ & !\dut|RCApart|FullAdder2|s~combout\)) ) ) # ( !\dut|RCApart|FullAdder4|s~combout\ & ( 
-- (!\dut|RCApart|FullAdder4|co~0_combout\ & ((\dut|RCApart|FullAdder2|s~combout\))) # (\dut|RCApart|FullAdder4|co~0_combout\ & (!\dut|RCApart|FullAdder3|s~combout\ & !\dut|RCApart|FullAdder2|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010101010010001001010101000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RCApart|FullAdder4|ALT_INV_co~0_combout\,
	datab => \dut|RCApart|FullAdder3|ALT_INV_s~combout\,
	datad => \dut|RCApart|FullAdder2|ALT_INV_s~combout\,
	dataf => \dut|RCApart|FullAdder4|ALT_INV_s~combout\,
	combout => \dut|BCDpart|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y9_N3
\dut|Decoderpart1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux6~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( \dut|BCDpart|Mux1~0_combout\ ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( !\dut|BCDpart|Mux2~0_combout\ $ (((!\dut|BCDpart|Mux4~0_combout\) # (\dut|BCDpart|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101000011110000111101100101011001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datab => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y9_N36
\dut|Decoderpart1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux5~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( ((\dut|BCDpart|Mux2~0_combout\ & !\dut|BCDpart|Mux4~0_combout\)) # (\dut|BCDpart|Mux1~0_combout\) ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( (\dut|BCDpart|Mux2~0_combout\ & 
-- ((\dut|BCDpart|Mux4~0_combout\) # (\dut|BCDpart|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111001111110011001100000011000011110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datad => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y9_N15
\dut|Decoderpart1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux4~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( ((!\dut|BCDpart|Mux2~0_combout\ & !\dut|BCDpart|Mux4~0_combout\)) # (\dut|BCDpart|Mux1~0_combout\) ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( (\dut|BCDpart|Mux2~0_combout\ & 
-- \dut|BCDpart|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101100011111000111100000101000001011000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datab => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y9_N48
\dut|Decoderpart1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux3~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( ((\dut|BCDpart|Mux2~0_combout\ & \dut|BCDpart|Mux4~0_combout\)) # (\dut|BCDpart|Mux1~0_combout\) ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( !\dut|BCDpart|Mux2~0_combout\ $ 
-- (((!\dut|BCDpart|Mux4~0_combout\) # (\dut|BCDpart|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011001100110011111100001111110000110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datad => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y9_N24
\dut|Decoderpart1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux2~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( (\dut|BCDpart|Mux4~0_combout\) # (\dut|BCDpart|Mux1~0_combout\) ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( (\dut|BCDpart|Mux4~0_combout\) # (\dut|BCDpart|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111001100111111111100001111111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datad => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y9_N33
\dut|Decoderpart1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux1~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( (!\dut|BCDpart|Mux2~0_combout\) # ((\dut|BCDpart|Mux1~0_combout\) # (\dut|BCDpart|Mux4~0_combout\)) ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( (!\dut|BCDpart|Mux2~0_combout\ & 
-- (\dut|BCDpart|Mux4~0_combout\ & !\dut|BCDpart|Mux1~0_combout\)) # (\dut|BCDpart|Mux2~0_combout\ & ((\dut|BCDpart|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101101111111011111100100101001001011011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datab => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y9_N6
\dut|Decoderpart1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux0~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( (!\dut|BCDpart|Mux1~0_combout\ & ((!\dut|BCDpart|Mux2~0_combout\) # (!\dut|BCDpart|Mux4~0_combout\))) ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( !\dut|BCDpart|Mux1~0_combout\ $ 
-- (!\dut|BCDpart|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110011001100000000111100001111001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datad => \dut|BCDpart|ALT_INV_Mux4~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux0~0_combout\);

-- Location: LABCELL_X85_Y7_N24
\dut|Decoderpart1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux12~0_combout\ = ( \dut|RCApart|FullAdder4|s~combout\ & ( (!\dut|RCApart|FullAdder4|co~0_combout\ & ((\dut|RCApart|FullAdder2|s~combout\) # (\dut|RCApart|FullAdder3|s~combout\))) ) ) # ( !\dut|RCApart|FullAdder4|s~combout\ & ( 
-- (\dut|RCApart|FullAdder4|co~0_combout\ & !\dut|RCApart|FullAdder3|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RCApart|FullAdder4|ALT_INV_co~0_combout\,
	datab => \dut|RCApart|FullAdder3|ALT_INV_s~combout\,
	datac => \dut|RCApart|FullAdder2|ALT_INV_s~combout\,
	dataf => \dut|RCApart|FullAdder4|ALT_INV_s~combout\,
	combout => \dut|Decoderpart1|Mux12~0_combout\);

-- Location: MLABCELL_X87_Y9_N45
\dut|Decoderpart1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart1|Mux11~0_combout\ = ( \dut|BCDpart|Mux3~0_combout\ & ( !\dut|BCDpart|Mux1~0_combout\ ) ) # ( !\dut|BCDpart|Mux3~0_combout\ & ( (!\dut|BCDpart|Mux2~0_combout\) # (!\dut|BCDpart|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111100001111000011111010111110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|BCDpart|ALT_INV_Mux2~0_combout\,
	datac => \dut|BCDpart|ALT_INV_Mux1~0_combout\,
	datae => \dut|BCDpart|ALT_INV_Mux3~0_combout\,
	combout => \dut|Decoderpart1|Mux11~0_combout\);

-- Location: LABCELL_X88_Y20_N0
\dut|Decoderpart3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux6~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (((!\SW[0]~input_o\) # (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux6~0_combout\);

-- Location: LABCELL_X88_Y20_N36
\dut|Decoderpart3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux5~0_combout\ = ( \SW[1]~input_o\ & ( ((\SW[2]~input_o\ & !\SW[0]~input_o\)) # (\SW[3]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & ((\SW[0]~input_o\) # (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux5~0_combout\);

-- Location: LABCELL_X88_Y20_N45
\dut|Decoderpart3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux4~0_combout\ = ( \SW[1]~input_o\ & ( ((!\SW[2]~input_o\ & !\SW[0]~input_o\)) # (\SW[3]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & \SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux4~0_combout\);

-- Location: LABCELL_X88_Y20_N21
\dut|Decoderpart3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux3~0_combout\ = ( \SW[1]~input_o\ & ( ((\SW[2]~input_o\ & \SW[0]~input_o\)) # (\SW[3]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (((!\SW[0]~input_o\) # (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux3~0_combout\);

-- Location: LABCELL_X88_Y20_N54
\dut|Decoderpart3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( (\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\) # (\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux2~0_combout\);

-- Location: LABCELL_X88_Y20_N33
\dut|Decoderpart3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux1~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\) # ((\SW[3]~input_o\) # (\SW[0]~input_o\)) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\)) # (\SW[2]~input_o\ & ((\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux1~0_combout\);

-- Location: LABCELL_X88_Y20_N6
\dut|Decoderpart3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux0~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\ & ((!\SW[2]~input_o\) # (!\SW[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ $ (!\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux0~0_combout\);

-- Location: LABCELL_X88_Y20_N15
\dut|Decoderpart3|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart3|Mux12~0_combout\ = ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\) # (!\SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \dut|Decoderpart3|Mux12~0_combout\);

-- Location: LABCELL_X85_Y7_N51
\dut|Decoderpart2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux6~0_combout\ = ( \SW[4]~input_o\ & ( !\SW[7]~input_o\ $ (((\SW[5]~input_o\) # (\SW[6]~input_o\))) ) ) # ( !\SW[4]~input_o\ & ( (!\SW[5]~input_o\ & ((\SW[6]~input_o\))) # (\SW[5]~input_o\ & (\SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010110100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \dut|Decoderpart2|Mux6~0_combout\);

-- Location: LABCELL_X85_Y7_N39
\dut|Decoderpart2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux5~0_combout\ = ( \SW[5]~input_o\ & ( ((\SW[6]~input_o\ & !\SW[4]~input_o\)) # (\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & ((\SW[4]~input_o\) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux5~0_combout\);

-- Location: LABCELL_X85_Y7_N42
\dut|Decoderpart2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux4~0_combout\ = ( \SW[5]~input_o\ & ( ((!\SW[6]~input_o\ & !\SW[4]~input_o\)) # (\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (\SW[7]~input_o\ & \SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111010101110101011101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux4~0_combout\);

-- Location: LABCELL_X85_Y7_N36
\dut|Decoderpart2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux3~0_combout\ = ( \SW[5]~input_o\ & ( ((\SW[6]~input_o\ & \SW[4]~input_o\)) # (\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (((!\SW[4]~input_o\) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux3~0_combout\);

-- Location: LABCELL_X85_Y7_N18
\dut|Decoderpart2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux2~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[4]~input_o\) # (\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\) # (\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux2~0_combout\);

-- Location: LABCELL_X85_Y7_N21
\dut|Decoderpart2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux1~0_combout\ = ( \SW[5]~input_o\ & ( ((!\SW[6]~input_o\) # (\SW[4]~input_o\)) # (\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & \SW[4]~input_o\)) # (\SW[7]~input_o\ & (\SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux1~0_combout\);

-- Location: LABCELL_X85_Y7_N45
\dut|Decoderpart2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux0~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & ((!\SW[6]~input_o\) # (!\SW[4]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( !\SW[7]~input_o\ $ (!\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux0~0_combout\);

-- Location: LABCELL_X85_Y7_N54
\dut|Decoderpart2|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Decoderpart2|Mux12~0_combout\ = ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \dut|Decoderpart2|Mux12~0_combout\);

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

-- Location: LABCELL_X19_Y78_N3
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


