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

-- DATE "02/21/2019 12:10:23"

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

ENTITY 	comparator16 IS
    PORT (
	A16 : IN std_logic_vector(15 DOWNTO 0);
	B16 : IN std_logic_vector(15 DOWNTO 0);
	O16 : BUFFER std_logic
	);
END comparator16;

-- Design Ports Information
-- O16	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[15]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[1]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[4]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[5]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[7]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[7]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[8]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[8]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[9]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[9]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[10]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[10]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[11]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[11]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[12]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[12]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[13]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[13]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A16[14]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B16[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparator16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A16 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B16 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_O16 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B16[7]~input_o\ : std_logic;
SIGNAL \B16[8]~input_o\ : std_logic;
SIGNAL \A16[6]~input_o\ : std_logic;
SIGNAL \A16[8]~input_o\ : std_logic;
SIGNAL \A16[7]~input_o\ : std_logic;
SIGNAL \B16[6]~input_o\ : std_logic;
SIGNAL \comparator_part2|result~2_combout\ : std_logic;
SIGNAL \A16[15]~input_o\ : std_logic;
SIGNAL \B16[15]~input_o\ : std_logic;
SIGNAL \G1:15:comparator_part1|C~0_combout\ : std_logic;
SIGNAL \A16[3]~input_o\ : std_logic;
SIGNAL \A16[4]~input_o\ : std_logic;
SIGNAL \B16[3]~input_o\ : std_logic;
SIGNAL \A16[5]~input_o\ : std_logic;
SIGNAL \B16[4]~input_o\ : std_logic;
SIGNAL \B16[5]~input_o\ : std_logic;
SIGNAL \comparator_part2|result~1_combout\ : std_logic;
SIGNAL \A16[1]~input_o\ : std_logic;
SIGNAL \A16[2]~input_o\ : std_logic;
SIGNAL \B16[0]~input_o\ : std_logic;
SIGNAL \A16[0]~input_o\ : std_logic;
SIGNAL \B16[1]~input_o\ : std_logic;
SIGNAL \B16[2]~input_o\ : std_logic;
SIGNAL \comparator_part2|result~0_combout\ : std_logic;
SIGNAL \A16[9]~input_o\ : std_logic;
SIGNAL \A16[11]~input_o\ : std_logic;
SIGNAL \B16[11]~input_o\ : std_logic;
SIGNAL \A16[10]~input_o\ : std_logic;
SIGNAL \B16[9]~input_o\ : std_logic;
SIGNAL \B16[10]~input_o\ : std_logic;
SIGNAL \comparator_part2|result~3_combout\ : std_logic;
SIGNAL \A16[14]~input_o\ : std_logic;
SIGNAL \B16[13]~input_o\ : std_logic;
SIGNAL \B16[12]~input_o\ : std_logic;
SIGNAL \B16[14]~input_o\ : std_logic;
SIGNAL \A16[12]~input_o\ : std_logic;
SIGNAL \A16[13]~input_o\ : std_logic;
SIGNAL \comparator_part2|result~4_combout\ : std_logic;
SIGNAL \comparator_part2|result~combout\ : std_logic;
SIGNAL \ALT_INV_B16[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B16[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A16[15]~input_o\ : std_logic;
SIGNAL \comparator_part2|ALT_INV_result~4_combout\ : std_logic;
SIGNAL \comparator_part2|ALT_INV_result~3_combout\ : std_logic;
SIGNAL \comparator_part2|ALT_INV_result~2_combout\ : std_logic;
SIGNAL \comparator_part2|ALT_INV_result~1_combout\ : std_logic;
SIGNAL \comparator_part2|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \G1:15:comparator_part1|ALT_INV_C~0_combout\ : std_logic;

BEGIN

ww_A16 <= A16;
ww_B16 <= B16;
O16 <= ww_O16;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B16[14]~input_o\ <= NOT \B16[14]~input_o\;
\ALT_INV_A16[14]~input_o\ <= NOT \A16[14]~input_o\;
\ALT_INV_B16[13]~input_o\ <= NOT \B16[13]~input_o\;
\ALT_INV_A16[13]~input_o\ <= NOT \A16[13]~input_o\;
\ALT_INV_B16[12]~input_o\ <= NOT \B16[12]~input_o\;
\ALT_INV_A16[12]~input_o\ <= NOT \A16[12]~input_o\;
\ALT_INV_B16[11]~input_o\ <= NOT \B16[11]~input_o\;
\ALT_INV_A16[11]~input_o\ <= NOT \A16[11]~input_o\;
\ALT_INV_B16[10]~input_o\ <= NOT \B16[10]~input_o\;
\ALT_INV_A16[10]~input_o\ <= NOT \A16[10]~input_o\;
\ALT_INV_B16[9]~input_o\ <= NOT \B16[9]~input_o\;
\ALT_INV_A16[9]~input_o\ <= NOT \A16[9]~input_o\;
\ALT_INV_B16[8]~input_o\ <= NOT \B16[8]~input_o\;
\ALT_INV_A16[8]~input_o\ <= NOT \A16[8]~input_o\;
\ALT_INV_B16[7]~input_o\ <= NOT \B16[7]~input_o\;
\ALT_INV_A16[7]~input_o\ <= NOT \A16[7]~input_o\;
\ALT_INV_B16[6]~input_o\ <= NOT \B16[6]~input_o\;
\ALT_INV_A16[6]~input_o\ <= NOT \A16[6]~input_o\;
\ALT_INV_B16[5]~input_o\ <= NOT \B16[5]~input_o\;
\ALT_INV_A16[5]~input_o\ <= NOT \A16[5]~input_o\;
\ALT_INV_B16[4]~input_o\ <= NOT \B16[4]~input_o\;
\ALT_INV_A16[4]~input_o\ <= NOT \A16[4]~input_o\;
\ALT_INV_B16[3]~input_o\ <= NOT \B16[3]~input_o\;
\ALT_INV_A16[3]~input_o\ <= NOT \A16[3]~input_o\;
\ALT_INV_B16[2]~input_o\ <= NOT \B16[2]~input_o\;
\ALT_INV_A16[2]~input_o\ <= NOT \A16[2]~input_o\;
\ALT_INV_B16[1]~input_o\ <= NOT \B16[1]~input_o\;
\ALT_INV_A16[1]~input_o\ <= NOT \A16[1]~input_o\;
\ALT_INV_B16[0]~input_o\ <= NOT \B16[0]~input_o\;
\ALT_INV_A16[0]~input_o\ <= NOT \A16[0]~input_o\;
\ALT_INV_B16[15]~input_o\ <= NOT \B16[15]~input_o\;
\ALT_INV_A16[15]~input_o\ <= NOT \A16[15]~input_o\;
\comparator_part2|ALT_INV_result~4_combout\ <= NOT \comparator_part2|result~4_combout\;
\comparator_part2|ALT_INV_result~3_combout\ <= NOT \comparator_part2|result~3_combout\;
\comparator_part2|ALT_INV_result~2_combout\ <= NOT \comparator_part2|result~2_combout\;
\comparator_part2|ALT_INV_result~1_combout\ <= NOT \comparator_part2|result~1_combout\;
\comparator_part2|ALT_INV_result~0_combout\ <= NOT \comparator_part2|result~0_combout\;
\G1:15:comparator_part1|ALT_INV_C~0_combout\ <= NOT \G1:15:comparator_part1|C~0_combout\;

-- Location: IOOBUF_X66_Y0_N42
\O16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comparator_part2|result~combout\,
	devoe => ww_devoe,
	o => ww_O16);

-- Location: IOIBUF_X64_Y0_N18
\B16[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(7),
	o => \B16[7]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\B16[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(8),
	o => \B16[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\A16[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(6),
	o => \A16[6]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\A16[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(8),
	o => \A16[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\A16[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(7),
	o => \A16[7]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\B16[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(6),
	o => \B16[6]~input_o\);

-- Location: LABCELL_X61_Y1_N33
\comparator_part2|result~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comparator_part2|result~2_combout\ = ( \A16[7]~input_o\ & ( \B16[6]~input_o\ & ( (\B16[7]~input_o\ & (\A16[6]~input_o\ & (!\B16[8]~input_o\ $ (\A16[8]~input_o\)))) ) ) ) # ( !\A16[7]~input_o\ & ( \B16[6]~input_o\ & ( (!\B16[7]~input_o\ & 
-- (\A16[6]~input_o\ & (!\B16[8]~input_o\ $ (\A16[8]~input_o\)))) ) ) ) # ( \A16[7]~input_o\ & ( !\B16[6]~input_o\ & ( (\B16[7]~input_o\ & (!\A16[6]~input_o\ & (!\B16[8]~input_o\ $ (\A16[8]~input_o\)))) ) ) ) # ( !\A16[7]~input_o\ & ( !\B16[6]~input_o\ & ( 
-- (!\B16[7]~input_o\ & (!\A16[6]~input_o\ & (!\B16[8]~input_o\ $ (\A16[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B16[7]~input_o\,
	datab => \ALT_INV_B16[8]~input_o\,
	datac => \ALT_INV_A16[6]~input_o\,
	datad => \ALT_INV_A16[8]~input_o\,
	datae => \ALT_INV_A16[7]~input_o\,
	dataf => \ALT_INV_B16[6]~input_o\,
	combout => \comparator_part2|result~2_combout\);

-- Location: IOIBUF_X58_Y0_N75
\A16[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(15),
	o => \A16[15]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\B16[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(15),
	o => \B16[15]~input_o\);

-- Location: LABCELL_X60_Y1_N30
\G1:15:comparator_part1|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1:15:comparator_part1|C~0_combout\ = ( !\A16[15]~input_o\ & ( \B16[15]~input_o\ ) ) # ( \A16[15]~input_o\ & ( !\B16[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A16[15]~input_o\,
	dataf => \ALT_INV_B16[15]~input_o\,
	combout => \G1:15:comparator_part1|C~0_combout\);

-- Location: IOIBUF_X52_Y0_N35
\A16[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(3),
	o => \A16[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\A16[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(4),
	o => \A16[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B16[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(3),
	o => \B16[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\A16[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(5),
	o => \A16[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\B16[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(4),
	o => \B16[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B16[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(5),
	o => \B16[5]~input_o\);

-- Location: LABCELL_X55_Y1_N33
\comparator_part2|result~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comparator_part2|result~1_combout\ = ( \B16[4]~input_o\ & ( \B16[5]~input_o\ & ( (\A16[4]~input_o\ & (\A16[5]~input_o\ & (!\A16[3]~input_o\ $ (\B16[3]~input_o\)))) ) ) ) # ( !\B16[4]~input_o\ & ( \B16[5]~input_o\ & ( (!\A16[4]~input_o\ & 
-- (\A16[5]~input_o\ & (!\A16[3]~input_o\ $ (\B16[3]~input_o\)))) ) ) ) # ( \B16[4]~input_o\ & ( !\B16[5]~input_o\ & ( (\A16[4]~input_o\ & (!\A16[5]~input_o\ & (!\A16[3]~input_o\ $ (\B16[3]~input_o\)))) ) ) ) # ( !\B16[4]~input_o\ & ( !\B16[5]~input_o\ & ( 
-- (!\A16[4]~input_o\ & (!\A16[5]~input_o\ & (!\A16[3]~input_o\ $ (\B16[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A16[3]~input_o\,
	datab => \ALT_INV_A16[4]~input_o\,
	datac => \ALT_INV_B16[3]~input_o\,
	datad => \ALT_INV_A16[5]~input_o\,
	datae => \ALT_INV_B16[4]~input_o\,
	dataf => \ALT_INV_B16[5]~input_o\,
	combout => \comparator_part2|result~1_combout\);

-- Location: IOIBUF_X60_Y0_N52
\A16[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(1),
	o => \A16[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\A16[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(2),
	o => \A16[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B16[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(0),
	o => \B16[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\A16[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(0),
	o => \A16[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\B16[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(1),
	o => \B16[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\B16[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(2),
	o => \B16[2]~input_o\);

-- Location: LABCELL_X60_Y1_N6
\comparator_part2|result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comparator_part2|result~0_combout\ = ( \B16[1]~input_o\ & ( \B16[2]~input_o\ & ( (\A16[1]~input_o\ & (\A16[2]~input_o\ & (!\B16[0]~input_o\ $ (\A16[0]~input_o\)))) ) ) ) # ( !\B16[1]~input_o\ & ( \B16[2]~input_o\ & ( (!\A16[1]~input_o\ & 
-- (\A16[2]~input_o\ & (!\B16[0]~input_o\ $ (\A16[0]~input_o\)))) ) ) ) # ( \B16[1]~input_o\ & ( !\B16[2]~input_o\ & ( (\A16[1]~input_o\ & (!\A16[2]~input_o\ & (!\B16[0]~input_o\ $ (\A16[0]~input_o\)))) ) ) ) # ( !\B16[1]~input_o\ & ( !\B16[2]~input_o\ & ( 
-- (!\A16[1]~input_o\ & (!\A16[2]~input_o\ & (!\B16[0]~input_o\ $ (\A16[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A16[1]~input_o\,
	datab => \ALT_INV_A16[2]~input_o\,
	datac => \ALT_INV_B16[0]~input_o\,
	datad => \ALT_INV_A16[0]~input_o\,
	datae => \ALT_INV_B16[1]~input_o\,
	dataf => \ALT_INV_B16[2]~input_o\,
	combout => \comparator_part2|result~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\A16[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(9),
	o => \A16[9]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\A16[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(11),
	o => \A16[11]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\B16[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(11),
	o => \B16[11]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\A16[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(10),
	o => \A16[10]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\B16[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(9),
	o => \B16[9]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\B16[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(10),
	o => \B16[10]~input_o\);

-- Location: LABCELL_X62_Y1_N0
\comparator_part2|result~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comparator_part2|result~3_combout\ = ( \B16[9]~input_o\ & ( \B16[10]~input_o\ & ( (\A16[9]~input_o\ & (\A16[10]~input_o\ & (!\A16[11]~input_o\ $ (\B16[11]~input_o\)))) ) ) ) # ( !\B16[9]~input_o\ & ( \B16[10]~input_o\ & ( (!\A16[9]~input_o\ & 
-- (\A16[10]~input_o\ & (!\A16[11]~input_o\ $ (\B16[11]~input_o\)))) ) ) ) # ( \B16[9]~input_o\ & ( !\B16[10]~input_o\ & ( (\A16[9]~input_o\ & (!\A16[10]~input_o\ & (!\A16[11]~input_o\ $ (\B16[11]~input_o\)))) ) ) ) # ( !\B16[9]~input_o\ & ( 
-- !\B16[10]~input_o\ & ( (!\A16[9]~input_o\ & (!\A16[10]~input_o\ & (!\A16[11]~input_o\ $ (\B16[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A16[9]~input_o\,
	datab => \ALT_INV_A16[11]~input_o\,
	datac => \ALT_INV_B16[11]~input_o\,
	datad => \ALT_INV_A16[10]~input_o\,
	datae => \ALT_INV_B16[9]~input_o\,
	dataf => \ALT_INV_B16[10]~input_o\,
	combout => \comparator_part2|result~3_combout\);

-- Location: IOIBUF_X62_Y0_N35
\A16[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(14),
	o => \A16[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\B16[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(13),
	o => \B16[13]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\B16[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(12),
	o => \B16[12]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\B16[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B16(14),
	o => \B16[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\A16[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(12),
	o => \A16[12]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\A16[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A16(13),
	o => \A16[13]~input_o\);

-- Location: LABCELL_X60_Y1_N42
\comparator_part2|result~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comparator_part2|result~4_combout\ = ( \A16[12]~input_o\ & ( \A16[13]~input_o\ & ( (\B16[13]~input_o\ & (\B16[12]~input_o\ & (!\A16[14]~input_o\ $ (\B16[14]~input_o\)))) ) ) ) # ( !\A16[12]~input_o\ & ( \A16[13]~input_o\ & ( (\B16[13]~input_o\ & 
-- (!\B16[12]~input_o\ & (!\A16[14]~input_o\ $ (\B16[14]~input_o\)))) ) ) ) # ( \A16[12]~input_o\ & ( !\A16[13]~input_o\ & ( (!\B16[13]~input_o\ & (\B16[12]~input_o\ & (!\A16[14]~input_o\ $ (\B16[14]~input_o\)))) ) ) ) # ( !\A16[12]~input_o\ & ( 
-- !\A16[13]~input_o\ & ( (!\B16[13]~input_o\ & (!\B16[12]~input_o\ & (!\A16[14]~input_o\ $ (\B16[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A16[14]~input_o\,
	datab => \ALT_INV_B16[13]~input_o\,
	datac => \ALT_INV_B16[12]~input_o\,
	datad => \ALT_INV_B16[14]~input_o\,
	datae => \ALT_INV_A16[12]~input_o\,
	dataf => \ALT_INV_A16[13]~input_o\,
	combout => \comparator_part2|result~4_combout\);

-- Location: LABCELL_X60_Y1_N48
\comparator_part2|result\ : cyclonev_lcell_comb
-- Equation(s):
-- \comparator_part2|result~combout\ = ( \comparator_part2|result~3_combout\ & ( \comparator_part2|result~4_combout\ & ( (!\comparator_part2|result~2_combout\) # (((!\comparator_part2|result~1_combout\) # (!\comparator_part2|result~0_combout\)) # 
-- (\G1:15:comparator_part1|C~0_combout\)) ) ) ) # ( !\comparator_part2|result~3_combout\ & ( \comparator_part2|result~4_combout\ ) ) # ( \comparator_part2|result~3_combout\ & ( !\comparator_part2|result~4_combout\ ) ) # ( 
-- !\comparator_part2|result~3_combout\ & ( !\comparator_part2|result~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comparator_part2|ALT_INV_result~2_combout\,
	datab => \G1:15:comparator_part1|ALT_INV_C~0_combout\,
	datac => \comparator_part2|ALT_INV_result~1_combout\,
	datad => \comparator_part2|ALT_INV_result~0_combout\,
	datae => \comparator_part2|ALT_INV_result~3_combout\,
	dataf => \comparator_part2|ALT_INV_result~4_combout\,
	combout => \comparator_part2|result~combout\);

-- Location: LABCELL_X53_Y25_N0
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


