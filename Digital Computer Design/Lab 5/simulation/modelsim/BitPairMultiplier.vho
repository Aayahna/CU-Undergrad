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

-- DATE "04/12/2019 10:57:11"

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

ENTITY 	bitpair_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END bitpair_board;

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
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bitpair_board IS
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
SIGNAL \BOARD|CONTROLFSM|Selector2~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|y.LOAD~q\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC~3_combout\ : std_logic;
SIGNAL \BOARD|REGISTERD|int_valueD~0_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|Selector1~0_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|y.ADD~q\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|y.SHIFT~q\ : std_logic;
SIGNAL \BOARD|REGISTERD|int_valueD~1_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|y~9_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|y.FINISH~q\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|Selector0~0_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|y.RESET~q\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|sel_ctrl~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \BOARD|REGISTERA|int_valueA[0]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \BOARD|FIVE2ONEMUX|Mux3~0_combout\ : std_logic;
SIGNAL \BOARD|THEADDER|FullAdder0|co~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \BOARD|REGISTERA|Add0~0_combout\ : std_logic;
SIGNAL \BOARD|FIVE2ONEMUX|Mux1~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERA|Add0~1_combout\ : std_logic;
SIGNAL \BOARD|THEADDER|FullAdderN|s~0_combout\ : std_logic;
SIGNAL \BOARD|FIVE2ONEMUX|Mux2~0_combout\ : std_logic;
SIGNAL \BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC~5_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC[0]~2_combout\ : std_logic;
SIGNAL \BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC[4]~7_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC[4]~9_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC[4]~6_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC~8_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC~4_combout\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB~4_combout\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB[1]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB~2_combout\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB~5_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|int_valueC~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERB|int_valueB\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BOARD|REGISTERC|int_valueC\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BOARD|REGISTERA|int_valueA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOARD|CONTROLFSM|sel_ctrl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \BOARD|REGISTERD|int_valueD\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \BOARD|THEADDER|FullAdderN|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERA|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \BOARD|REGISTERB|ALT_INV_int_valueB\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BOARD|CONTROLFSM|ALT_INV_sel_ctrl~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERD|ALT_INV_int_valueD\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \BOARD|FIVE2ONEMUX|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERA|ALT_INV_int_valueA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOARD|REGISTERA|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|ALT_INV_int_valueC[4]~7_combout\ : std_logic;
SIGNAL \BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|ALT_INV_int_valueC[4]~6_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|ALT_INV_int_valueC\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_s~combout\ : std_logic;
SIGNAL \BOARD|FIVE2ONEMUX|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \BOARD|FIVE2ONEMUX|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \BOARD|THEADDER|FullAdder0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \BOARD|REGISTERC|ALT_INV_int_valueC~3_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\ : std_logic;
SIGNAL \BOARD|REGISTERC|ALT_INV_int_valueC~0_combout\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|ALT_INV_y.FINISH~q\ : std_logic;
SIGNAL \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(2) <= NOT \BOARD|CONTROLFSM|sel_ctrl\(2);
\BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0) <= NOT \BOARD|CONTROLFSM|sel_ctrl\(0);
\BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1) <= NOT \BOARD|CONTROLFSM|sel_ctrl\(1);
\BOARD|THEADDER|FullAdderN|ALT_INV_s~0_combout\ <= NOT \BOARD|THEADDER|FullAdderN|s~0_combout\;
\BOARD|REGISTERA|ALT_INV_Add0~1_combout\ <= NOT \BOARD|REGISTERA|Add0~1_combout\;
\BOARD|REGISTERB|ALT_INV_int_valueB\(0) <= NOT \BOARD|REGISTERB|int_valueB\(0);
\BOARD|CONTROLFSM|ALT_INV_sel_ctrl~0_combout\ <= NOT \BOARD|CONTROLFSM|sel_ctrl~0_combout\;
\BOARD|REGISTERD|ALT_INV_int_valueD\(1) <= NOT \BOARD|REGISTERD|int_valueD\(1);
\BOARD|REGISTERD|ALT_INV_int_valueD\(0) <= NOT \BOARD|REGISTERD|int_valueD\(0);
\BOARD|FIVE2ONEMUX|ALT_INV_Mux1~0_combout\ <= NOT \BOARD|FIVE2ONEMUX|Mux1~0_combout\;
\BOARD|REGISTERA|ALT_INV_int_valueA\(3) <= NOT \BOARD|REGISTERA|int_valueA\(3);
\BOARD|REGISTERA|ALT_INV_Add0~0_combout\ <= NOT \BOARD|REGISTERA|Add0~0_combout\;
\BOARD|REGISTERC|ALT_INV_int_valueC[4]~7_combout\ <= NOT \BOARD|REGISTERC|int_valueC[4]~7_combout\;
\BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_co~0_combout\ <= NOT \BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\;
\BOARD|REGISTERC|ALT_INV_int_valueC[4]~6_combout\ <= NOT \BOARD|REGISTERC|int_valueC[4]~6_combout\;
\BOARD|REGISTERC|ALT_INV_int_valueC\(4) <= NOT \BOARD|REGISTERC|int_valueC\(4);
\BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_s~combout\ <= NOT \BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\;
\BOARD|FIVE2ONEMUX|ALT_INV_Mux2~0_combout\ <= NOT \BOARD|FIVE2ONEMUX|Mux2~0_combout\;
\BOARD|REGISTERA|ALT_INV_int_valueA\(2) <= NOT \BOARD|REGISTERA|int_valueA\(2);
\BOARD|FIVE2ONEMUX|ALT_INV_Mux3~0_combout\ <= NOT \BOARD|FIVE2ONEMUX|Mux3~0_combout\;
\BOARD|REGISTERA|ALT_INV_int_valueA\(1) <= NOT \BOARD|REGISTERA|int_valueA\(1);
\BOARD|THEADDER|FullAdder0|ALT_INV_co~0_combout\ <= NOT \BOARD|THEADDER|FullAdder0|co~0_combout\;
\BOARD|REGISTERC|ALT_INV_int_valueC~3_combout\ <= NOT \BOARD|REGISTERC|int_valueC~3_combout\;
\BOARD|CONTROLFSM|ALT_INV_y.ADD~q\ <= NOT \BOARD|CONTROLFSM|y.ADD~q\;
\BOARD|REGISTERC|ALT_INV_int_valueC~0_combout\ <= NOT \BOARD|REGISTERC|int_valueC~0_combout\;
\BOARD|REGISTERA|ALT_INV_int_valueA\(0) <= NOT \BOARD|REGISTERA|int_valueA\(0);
\BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\ <= NOT \BOARD|CONTROLFSM|y.SHIFT~q\;
\BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\ <= NOT \BOARD|CONTROLFSM|y.LOAD~q\;
\BOARD|CONTROLFSM|ALT_INV_y.FINISH~q\ <= NOT \BOARD|CONTROLFSM|y.FINISH~q\;
\BOARD|CONTROLFSM|ALT_INV_y.RESET~q\ <= NOT \BOARD|CONTROLFSM|y.RESET~q\;
\BOARD|REGISTERC|ALT_INV_int_valueC\(3) <= NOT \BOARD|REGISTERC|int_valueC\(3);
\BOARD|REGISTERC|ALT_INV_int_valueC\(2) <= NOT \BOARD|REGISTERC|int_valueC\(2);
\BOARD|REGISTERC|ALT_INV_int_valueC\(1) <= NOT \BOARD|REGISTERC|int_valueC\(1);
\BOARD|REGISTERC|ALT_INV_int_valueC\(0) <= NOT \BOARD|REGISTERC|int_valueC\(0);
\BOARD|REGISTERB|ALT_INV_int_valueB\(4) <= NOT \BOARD|REGISTERB|int_valueB\(4);
\BOARD|REGISTERB|ALT_INV_int_valueB\(3) <= NOT \BOARD|REGISTERB|int_valueB\(3);
\BOARD|REGISTERB|ALT_INV_int_valueB\(2) <= NOT \BOARD|REGISTERB|int_valueB\(2);
\BOARD|REGISTERB|ALT_INV_int_valueB\(1) <= NOT \BOARD|REGISTERB|int_valueB\(1);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BOARD|REGISTERB|int_valueB\(1),
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
	i => \BOARD|REGISTERB|int_valueB\(2),
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
	i => \BOARD|REGISTERB|int_valueB\(3),
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
	i => \BOARD|REGISTERB|int_valueB\(4),
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
	i => \BOARD|REGISTERC|int_valueC\(0),
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
	i => \BOARD|REGISTERC|int_valueC\(1),
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
	i => \BOARD|REGISTERC|int_valueC\(2),
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
	i => \BOARD|REGISTERC|int_valueC\(3),
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
	i => \BOARD|CONTROLFSM|y.RESET~q\,
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
	i => \BOARD|CONTROLFSM|y.FINISH~q\,
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

-- Location: CLKCTRL_G7
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

-- Location: MLABCELL_X52_Y4_N39
\BOARD|CONTROLFSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|Selector2~0_combout\ = (\SW[9]~input_o\ & !\BOARD|CONTROLFSM|y.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	combout => \BOARD|CONTROLFSM|Selector2~0_combout\);

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

-- Location: FF_X52_Y4_N41
\BOARD|CONTROLFSM|y.LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|CONTROLFSM|Selector2~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|CONTROLFSM|y.LOAD~q\);

-- Location: MLABCELL_X52_Y4_N36
\BOARD|REGISTERC|int_valueC~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC~3_combout\ = ( \BOARD|CONTROLFSM|y.LOAD~q\ ) # ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (\SW[9]~input_o\ & !\BOARD|CONTROLFSM|y.RESET~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERC|int_valueC~3_combout\);

-- Location: MLABCELL_X52_Y4_N9
\BOARD|REGISTERD|int_valueD~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERD|int_valueD~0_combout\ = ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (\BOARD|REGISTERD|int_valueD\(1) & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datad => \BOARD|REGISTERD|ALT_INV_int_valueD\(1),
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERD|int_valueD~0_combout\);

-- Location: FF_X52_Y4_N11
\BOARD|REGISTERD|int_valueD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERD|int_valueD~0_combout\,
	ena => \BOARD|REGISTERD|int_valueD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERD|int_valueD\(0));

-- Location: MLABCELL_X52_Y4_N48
\BOARD|CONTROLFSM|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|Selector1~0_combout\ = ( \BOARD|CONTROLFSM|y.LOAD~q\ ) # ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (\BOARD|CONTROLFSM|y.SHIFT~q\ & ((!\BOARD|REGISTERD|int_valueD\(0)) # (\BOARD|REGISTERD|int_valueD\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BOARD|REGISTERD|ALT_INV_int_valueD\(0),
	datac => \BOARD|REGISTERD|ALT_INV_int_valueD\(1),
	datad => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|CONTROLFSM|Selector1~0_combout\);

-- Location: FF_X51_Y4_N14
\BOARD|CONTROLFSM|y.ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \BOARD|CONTROLFSM|Selector1~0_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|CONTROLFSM|y.ADD~q\);

-- Location: FF_X52_Y4_N29
\BOARD|CONTROLFSM|y.SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \BOARD|CONTROLFSM|y.ADD~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|CONTROLFSM|y.SHIFT~q\);

-- Location: MLABCELL_X52_Y4_N24
\BOARD|REGISTERD|int_valueD~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERD|int_valueD~1_combout\ = ( \BOARD|CONTROLFSM|y.RESET~q\ & ( \BOARD|CONTROLFSM|y.LOAD~q\ ) ) # ( !\BOARD|CONTROLFSM|y.RESET~q\ & ( \BOARD|CONTROLFSM|y.LOAD~q\ ) ) # ( \BOARD|CONTROLFSM|y.RESET~q\ & ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( 
-- (\BOARD|CONTROLFSM|y.SHIFT~q\ & ((\BOARD|REGISTERD|int_valueD\(1)) # (\BOARD|REGISTERD|int_valueD\(0)))) ) ) ) # ( !\BOARD|CONTROLFSM|y.RESET~q\ & ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( ((\BOARD|CONTROLFSM|y.SHIFT~q\ & ((\BOARD|REGISTERD|int_valueD\(1)) # 
-- (\BOARD|REGISTERD|int_valueD\(0))))) # (\SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101010001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	datab => \BOARD|REGISTERD|ALT_INV_int_valueD\(0),
	datac => \BOARD|REGISTERD|ALT_INV_int_valueD\(1),
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERD|int_valueD~1_combout\);

-- Location: FF_X52_Y4_N2
\BOARD|REGISTERD|int_valueD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \BOARD|REGISTERC|int_valueC~3_combout\,
	sload => VCC,
	ena => \BOARD|REGISTERD|int_valueD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERD|int_valueD\(1));

-- Location: MLABCELL_X52_Y4_N54
\BOARD|CONTROLFSM|y~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|y~9_combout\ = ( \BOARD|REGISTERD|int_valueD\(0) & ( (!\BOARD|REGISTERD|int_valueD\(1) & \BOARD|CONTROLFSM|y.SHIFT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BOARD|REGISTERD|ALT_INV_int_valueD\(1),
	datad => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	dataf => \BOARD|REGISTERD|ALT_INV_int_valueD\(0),
	combout => \BOARD|CONTROLFSM|y~9_combout\);

-- Location: FF_X52_Y4_N55
\BOARD|CONTROLFSM|y.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|CONTROLFSM|y~9_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|CONTROLFSM|y.FINISH~q\);

-- Location: MLABCELL_X52_Y4_N18
\BOARD|CONTROLFSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|Selector0~0_combout\ = (!\BOARD|CONTROLFSM|y.FINISH~q\ & ((\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.FINISH~q\,
	combout => \BOARD|CONTROLFSM|Selector0~0_combout\);

-- Location: FF_X51_Y4_N56
\BOARD|CONTROLFSM|y.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \BOARD|CONTROLFSM|Selector0~0_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|CONTROLFSM|y.RESET~q\);

-- Location: MLABCELL_X52_Y4_N21
\BOARD|CONTROLFSM|sel_ctrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|sel_ctrl~0_combout\ = ( \BOARD|CONTROLFSM|y.LOAD~q\ ) # ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( \BOARD|CONTROLFSM|y.SHIFT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|CONTROLFSM|sel_ctrl~0_combout\);

-- Location: MLABCELL_X52_Y4_N3
\BOARD|CONTROLFSM|sel_ctrl[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|sel_ctrl\(1) = ( \BOARD|CONTROLFSM|sel_ctrl\(1) & ( \BOARD|REGISTERB|int_valueB\(1) ) ) # ( !\BOARD|CONTROLFSM|sel_ctrl\(1) & ( \BOARD|REGISTERB|int_valueB\(1) & ( \BOARD|CONTROLFSM|sel_ctrl~0_combout\ ) ) ) # ( 
-- \BOARD|CONTROLFSM|sel_ctrl\(1) & ( !\BOARD|REGISTERB|int_valueB\(1) & ( !\BOARD|CONTROLFSM|sel_ctrl~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl~0_combout\,
	datae => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	dataf => \BOARD|REGISTERB|ALT_INV_int_valueB\(1),
	combout => \BOARD|CONTROLFSM|sel_ctrl\(1));

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

-- Location: LABCELL_X50_Y4_N54
\BOARD|REGISTERA|int_valueA[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERA|int_valueA[0]~feeder_combout\ = ( \SW[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \BOARD|REGISTERA|int_valueA[0]~feeder_combout\);

-- Location: FF_X50_Y4_N56
\BOARD|REGISTERA|int_valueA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERA|int_valueA[0]~feeder_combout\,
	ena => \BOARD|REGISTERC|int_valueC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERA|int_valueA\(0));

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

-- Location: MLABCELL_X52_Y4_N51
\BOARD|CONTROLFSM|sel_ctrl[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|sel_ctrl\(2) = ( \BOARD|REGISTERB|int_valueB\(2) & ( (\BOARD|CONTROLFSM|sel_ctrl~0_combout\) # (\BOARD|CONTROLFSM|sel_ctrl\(2)) ) ) # ( !\BOARD|REGISTERB|int_valueB\(2) & ( (\BOARD|CONTROLFSM|sel_ctrl\(2) & 
-- !\BOARD|CONTROLFSM|sel_ctrl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(2),
	datad => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl~0_combout\,
	dataf => \BOARD|REGISTERB|ALT_INV_int_valueB\(2),
	combout => \BOARD|CONTROLFSM|sel_ctrl\(2));

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

-- Location: FF_X51_Y4_N44
\BOARD|REGISTERA|int_valueA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \BOARD|REGISTERC|int_valueC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERA|int_valueA\(1));

-- Location: LABCELL_X50_Y4_N15
\BOARD|FIVE2ONEMUX|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|FIVE2ONEMUX|Mux3~0_combout\ = ( \BOARD|REGISTERA|int_valueA\(1) & ( \BOARD|CONTROLFSM|sel_ctrl\(0) & ( (!\BOARD|REGISTERA|int_valueA\(0) & (!\BOARD|CONTROLFSM|sel_ctrl\(1))) # (\BOARD|REGISTERA|int_valueA\(0) & ((!\BOARD|CONTROLFSM|sel_ctrl\(2)))) 
-- ) ) ) # ( !\BOARD|REGISTERA|int_valueA\(1) & ( \BOARD|CONTROLFSM|sel_ctrl\(0) & ( (\BOARD|REGISTERA|int_valueA\(0) & (!\BOARD|CONTROLFSM|sel_ctrl\(1) $ (!\BOARD|CONTROLFSM|sel_ctrl\(2)))) ) ) ) # ( \BOARD|REGISTERA|int_valueA\(1) & ( 
-- !\BOARD|CONTROLFSM|sel_ctrl\(0) & ( !\BOARD|CONTROLFSM|sel_ctrl\(1) $ (((!\BOARD|CONTROLFSM|sel_ctrl\(2)) # (!\BOARD|REGISTERA|int_valueA\(0)))) ) ) ) # ( !\BOARD|REGISTERA|int_valueA\(1) & ( !\BOARD|CONTROLFSM|sel_ctrl\(0) & ( 
-- (\BOARD|CONTROLFSM|sel_ctrl\(2) & \BOARD|REGISTERA|int_valueA\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010110011000000000011001101010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	datab => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(2),
	datad => \BOARD|REGISTERA|ALT_INV_int_valueA\(0),
	datae => \BOARD|REGISTERA|ALT_INV_int_valueA\(1),
	dataf => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	combout => \BOARD|FIVE2ONEMUX|Mux3~0_combout\);

-- Location: LABCELL_X51_Y4_N27
\BOARD|THEADDER|FullAdder0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|THEADDER|FullAdder0|co~0_combout\ = ( \BOARD|CONTROLFSM|sel_ctrl\(1) & ( (!\BOARD|CONTROLFSM|sel_ctrl\(0) & (\BOARD|REGISTERC|int_valueC\(0) & \BOARD|REGISTERA|int_valueA\(0))) ) ) # ( !\BOARD|CONTROLFSM|sel_ctrl\(1) & ( 
-- (\BOARD|CONTROLFSM|sel_ctrl\(0) & (\BOARD|REGISTERC|int_valueC\(0) & \BOARD|REGISTERA|int_valueA\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	datac => \BOARD|REGISTERC|ALT_INV_int_valueC\(0),
	datad => \BOARD|REGISTERA|ALT_INV_int_valueA\(0),
	dataf => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	combout => \BOARD|THEADDER|FullAdder0|co~0_combout\);

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

-- Location: FF_X50_Y4_N11
\BOARD|REGISTERA|int_valueA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \BOARD|REGISTERC|int_valueC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERA|int_valueA\(3));

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

-- Location: FF_X51_Y4_N11
\BOARD|REGISTERA|int_valueA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \BOARD|REGISTERC|int_valueC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERA|int_valueA\(2));

-- Location: LABCELL_X50_Y4_N51
\BOARD|REGISTERA|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERA|Add0~0_combout\ = ( !\BOARD|REGISTERA|int_valueA\(1) & ( !\BOARD|REGISTERA|int_valueA\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BOARD|REGISTERA|ALT_INV_int_valueA\(0),
	dataf => \BOARD|REGISTERA|ALT_INV_int_valueA\(1),
	combout => \BOARD|REGISTERA|Add0~0_combout\);

-- Location: LABCELL_X50_Y4_N0
\BOARD|FIVE2ONEMUX|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|FIVE2ONEMUX|Mux1~0_combout\ = ( \BOARD|REGISTERA|int_valueA\(2) & ( \BOARD|REGISTERA|Add0~0_combout\ & ( !\BOARD|CONTROLFSM|sel_ctrl\(2) $ (((!\BOARD|CONTROLFSM|sel_ctrl\(1) & ((!\BOARD|CONTROLFSM|sel_ctrl\(0)) # 
-- (!\BOARD|REGISTERA|int_valueA\(3)))) # (\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|CONTROLFSM|sel_ctrl\(0) & !\BOARD|REGISTERA|int_valueA\(3))))) ) ) ) # ( !\BOARD|REGISTERA|int_valueA\(2) & ( \BOARD|REGISTERA|Add0~0_combout\ & ( 
-- (\BOARD|REGISTERA|int_valueA\(3) & (!\BOARD|CONTROLFSM|sel_ctrl\(1) $ (!\BOARD|CONTROLFSM|sel_ctrl\(0)))) ) ) ) # ( \BOARD|REGISTERA|int_valueA\(2) & ( !\BOARD|REGISTERA|Add0~0_combout\ & ( (!\BOARD|CONTROLFSM|sel_ctrl\(1) & 
-- (\BOARD|CONTROLFSM|sel_ctrl\(0) & (!\BOARD|CONTROLFSM|sel_ctrl\(2) $ (!\BOARD|REGISTERA|int_valueA\(3))))) # (\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|CONTROLFSM|sel_ctrl\(2) $ (((!\BOARD|CONTROLFSM|sel_ctrl\(0) & !\BOARD|REGISTERA|int_valueA\(3)))))) ) 
-- ) ) # ( !\BOARD|REGISTERA|int_valueA\(2) & ( !\BOARD|REGISTERA|Add0~0_combout\ & ( (!\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|CONTROLFSM|sel_ctrl\(2) $ (((!\BOARD|CONTROLFSM|sel_ctrl\(0)) # (!\BOARD|REGISTERA|int_valueA\(3)))))) # 
-- (\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|CONTROLFSM|sel_ctrl\(0) & (!\BOARD|CONTROLFSM|sel_ctrl\(2) $ (!\BOARD|REGISTERA|int_valueA\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111001101000000101100111000000000000011001100001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	datab => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	datac => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(2),
	datad => \BOARD|REGISTERA|ALT_INV_int_valueA\(3),
	datae => \BOARD|REGISTERA|ALT_INV_int_valueA\(2),
	dataf => \BOARD|REGISTERA|ALT_INV_Add0~0_combout\,
	combout => \BOARD|FIVE2ONEMUX|Mux1~0_combout\);

-- Location: LABCELL_X51_Y4_N0
\BOARD|REGISTERA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERA|Add0~1_combout\ = ( !\BOARD|REGISTERA|int_valueA\(2) & ( (!\BOARD|REGISTERA|int_valueA\(1) & !\BOARD|REGISTERA|int_valueA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BOARD|REGISTERA|ALT_INV_int_valueA\(1),
	datad => \BOARD|REGISTERA|ALT_INV_int_valueA\(0),
	dataf => \BOARD|REGISTERA|ALT_INV_int_valueA\(2),
	combout => \BOARD|REGISTERA|Add0~1_combout\);

-- Location: LABCELL_X51_Y4_N45
\BOARD|THEADDER|FullAdderN|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|THEADDER|FullAdderN|s~0_combout\ = ( \BOARD|REGISTERA|Add0~1_combout\ & ( \BOARD|CONTROLFSM|sel_ctrl\(1) & ( !\BOARD|REGISTERC|int_valueC\(4) $ (((!\BOARD|REGISTERA|int_valueA\(3)) # ((\BOARD|CONTROLFSM|sel_ctrl\(0) & 
-- \BOARD|CONTROLFSM|sel_ctrl\(2))))) ) ) ) # ( !\BOARD|REGISTERA|Add0~1_combout\ & ( \BOARD|CONTROLFSM|sel_ctrl\(1) & ( !\BOARD|REGISTERC|int_valueC\(4) $ (((!\BOARD|REGISTERA|int_valueA\(3) & ((!\BOARD|CONTROLFSM|sel_ctrl\(2)) # 
-- (\BOARD|CONTROLFSM|sel_ctrl\(0)))) # (\BOARD|REGISTERA|int_valueA\(3) & ((\BOARD|CONTROLFSM|sel_ctrl\(2)))))) ) ) ) # ( \BOARD|REGISTERA|Add0~1_combout\ & ( !\BOARD|CONTROLFSM|sel_ctrl\(1) & ( !\BOARD|REGISTERC|int_valueC\(4) $ 
-- (((!\BOARD|REGISTERA|int_valueA\(3)) # ((!\BOARD|CONTROLFSM|sel_ctrl\(0) & !\BOARD|CONTROLFSM|sel_ctrl\(2))))) ) ) ) # ( !\BOARD|REGISTERA|Add0~1_combout\ & ( !\BOARD|CONTROLFSM|sel_ctrl\(1) & ( !\BOARD|REGISTERC|int_valueC\(4) $ 
-- (((!\BOARD|REGISTERA|int_valueA\(3) & ((!\BOARD|CONTROLFSM|sel_ctrl\(2)))) # (\BOARD|REGISTERA|int_valueA\(3) & ((!\BOARD|CONTROLFSM|sel_ctrl\(0)) # (\BOARD|CONTROLFSM|sel_ctrl\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101011100101000101011110101001011000101001110101010010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|REGISTERA|ALT_INV_int_valueA\(3),
	datab => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	datac => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(2),
	datad => \BOARD|REGISTERC|ALT_INV_int_valueC\(4),
	datae => \BOARD|REGISTERA|ALT_INV_Add0~1_combout\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	combout => \BOARD|THEADDER|FullAdderN|s~0_combout\);

-- Location: LABCELL_X51_Y4_N15
\BOARD|FIVE2ONEMUX|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|FIVE2ONEMUX|Mux2~0_combout\ = ( \BOARD|REGISTERA|int_valueA\(0) & ( \BOARD|CONTROLFSM|sel_ctrl\(2) & ( (!\BOARD|CONTROLFSM|sel_ctrl\(1) & ((!\BOARD|CONTROLFSM|sel_ctrl\(0) & ((!\BOARD|REGISTERA|int_valueA\(1)))) # (\BOARD|CONTROLFSM|sel_ctrl\(0) & 
-- (!\BOARD|REGISTERA|int_valueA\(2))))) # (\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|REGISTERA|int_valueA\(2) & ((!\BOARD|CONTROLFSM|sel_ctrl\(0))))) ) ) ) # ( !\BOARD|REGISTERA|int_valueA\(0) & ( \BOARD|CONTROLFSM|sel_ctrl\(2) & ( 
-- (!\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|REGISTERA|int_valueA\(1) $ (((!\BOARD|REGISTERA|int_valueA\(2)) # (!\BOARD|CONTROLFSM|sel_ctrl\(0)))))) # (\BOARD|CONTROLFSM|sel_ctrl\(1) & (!\BOARD|CONTROLFSM|sel_ctrl\(0) & (!\BOARD|REGISTERA|int_valueA\(2) $ 
-- (!\BOARD|REGISTERA|int_valueA\(1))))) ) ) ) # ( \BOARD|REGISTERA|int_valueA\(0) & ( !\BOARD|CONTROLFSM|sel_ctrl\(2) & ( (!\BOARD|CONTROLFSM|sel_ctrl\(1) & (\BOARD|REGISTERA|int_valueA\(2) & ((\BOARD|CONTROLFSM|sel_ctrl\(0))))) # 
-- (\BOARD|CONTROLFSM|sel_ctrl\(1) & ((!\BOARD|CONTROLFSM|sel_ctrl\(0) & (\BOARD|REGISTERA|int_valueA\(2))) # (\BOARD|CONTROLFSM|sel_ctrl\(0) & ((\BOARD|REGISTERA|int_valueA\(1)))))) ) ) ) # ( !\BOARD|REGISTERA|int_valueA\(0) & ( 
-- !\BOARD|CONTROLFSM|sel_ctrl\(2) & ( (!\BOARD|CONTROLFSM|sel_ctrl\(1) & (\BOARD|REGISTERA|int_valueA\(2) & ((\BOARD|CONTROLFSM|sel_ctrl\(0))))) # (\BOARD|CONTROLFSM|sel_ctrl\(1) & ((!\BOARD|CONTROLFSM|sel_ctrl\(0) & (\BOARD|REGISTERA|int_valueA\(2))) # 
-- (\BOARD|CONTROLFSM|sel_ctrl\(0) & ((\BOARD|REGISTERA|int_valueA\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100111000100010010011100011110001010001110010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	datab => \BOARD|REGISTERA|ALT_INV_int_valueA\(2),
	datac => \BOARD|REGISTERA|ALT_INV_int_valueA\(1),
	datad => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	datae => \BOARD|REGISTERA|ALT_INV_int_valueA\(0),
	dataf => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(2),
	combout => \BOARD|FIVE2ONEMUX|Mux2~0_combout\);

-- Location: LABCELL_X51_Y4_N21
\BOARD|THEADDER|G_Adder:1:Adder_middle|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\ = ( \BOARD|FIVE2ONEMUX|Mux2~0_combout\ & ( \BOARD|THEADDER|FullAdder0|co~0_combout\ & ( !\BOARD|REGISTERC|int_valueC\(2) $ (((\BOARD|REGISTERC|int_valueC\(1)) # (\BOARD|FIVE2ONEMUX|Mux3~0_combout\))) ) ) ) 
-- # ( !\BOARD|FIVE2ONEMUX|Mux2~0_combout\ & ( \BOARD|THEADDER|FullAdder0|co~0_combout\ & ( !\BOARD|REGISTERC|int_valueC\(2) $ (((!\BOARD|FIVE2ONEMUX|Mux3~0_combout\ & !\BOARD|REGISTERC|int_valueC\(1)))) ) ) ) # ( \BOARD|FIVE2ONEMUX|Mux2~0_combout\ & ( 
-- !\BOARD|THEADDER|FullAdder0|co~0_combout\ & ( !\BOARD|REGISTERC|int_valueC\(2) $ (((\BOARD|FIVE2ONEMUX|Mux3~0_combout\ & \BOARD|REGISTERC|int_valueC\(1)))) ) ) ) # ( !\BOARD|FIVE2ONEMUX|Mux2~0_combout\ & ( !\BOARD|THEADDER|FullAdder0|co~0_combout\ & ( 
-- !\BOARD|REGISTERC|int_valueC\(2) $ (((!\BOARD|FIVE2ONEMUX|Mux3~0_combout\) # (!\BOARD|REGISTERC|int_valueC\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110101010101001100101100110101010101001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|REGISTERC|ALT_INV_int_valueC\(2),
	datab => \BOARD|FIVE2ONEMUX|ALT_INV_Mux3~0_combout\,
	datad => \BOARD|REGISTERC|ALT_INV_int_valueC\(1),
	datae => \BOARD|FIVE2ONEMUX|ALT_INV_Mux2~0_combout\,
	dataf => \BOARD|THEADDER|FullAdder0|ALT_INV_co~0_combout\,
	combout => \BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\);

-- Location: LABCELL_X51_Y4_N36
\BOARD|REGISTERC|int_valueC~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC~5_combout\ = ( \BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\ & ( \BOARD|REGISTERC|int_valueC\(4) & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\))) ) ) ) # ( 
-- !\BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\ & ( \BOARD|REGISTERC|int_valueC\(4) & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & (!\BOARD|CONTROLFSM|y.ADD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) ) ) ) # ( 
-- \BOARD|THEADDER|G_Adder:1:Adder_middle|s~combout\ & ( !\BOARD|REGISTERC|int_valueC\(4) & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & (\BOARD|CONTROLFSM|y.ADD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000110010001100000000001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datac => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\,
	datae => \BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_s~combout\,
	dataf => \BOARD|REGISTERC|ALT_INV_int_valueC\(4),
	combout => \BOARD|REGISTERC|int_valueC~5_combout\);

-- Location: LABCELL_X51_Y4_N57
\BOARD|REGISTERC|int_valueC[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC[0]~2_combout\ = ( \SW[9]~input_o\ & ( (((!\BOARD|CONTROLFSM|y.RESET~q\) # (\BOARD|CONTROLFSM|y.SHIFT~q\)) # (\BOARD|CONTROLFSM|y.ADD~q\)) # (\BOARD|CONTROLFSM|y.LOAD~q\) ) ) # ( !\SW[9]~input_o\ & ( 
-- ((\BOARD|CONTROLFSM|y.SHIFT~q\) # (\BOARD|CONTROLFSM|y.ADD~q\)) # (\BOARD|CONTROLFSM|y.LOAD~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\,
	datac => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \BOARD|REGISTERC|int_valueC[0]~2_combout\);

-- Location: FF_X51_Y4_N38
\BOARD|REGISTERC|int_valueC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERC|int_valueC~5_combout\,
	ena => \BOARD|REGISTERC|int_valueC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERC|int_valueC\(2));

-- Location: LABCELL_X51_Y4_N3
\BOARD|THEADDER|G_Adder:1:Adder_middle|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ = ( \BOARD|FIVE2ONEMUX|Mux2~0_combout\ & ( ((!\BOARD|THEADDER|FullAdder0|co~0_combout\ & (\BOARD|FIVE2ONEMUX|Mux3~0_combout\ & \BOARD|REGISTERC|int_valueC\(1))) # 
-- (\BOARD|THEADDER|FullAdder0|co~0_combout\ & ((\BOARD|REGISTERC|int_valueC\(1)) # (\BOARD|FIVE2ONEMUX|Mux3~0_combout\)))) # (\BOARD|REGISTERC|int_valueC\(2)) ) ) # ( !\BOARD|FIVE2ONEMUX|Mux2~0_combout\ & ( (\BOARD|REGISTERC|int_valueC\(2) & 
-- ((!\BOARD|THEADDER|FullAdder0|co~0_combout\ & (\BOARD|FIVE2ONEMUX|Mux3~0_combout\ & \BOARD|REGISTERC|int_valueC\(1))) # (\BOARD|THEADDER|FullAdder0|co~0_combout\ & ((\BOARD|REGISTERC|int_valueC\(1)) # (\BOARD|FIVE2ONEMUX|Mux3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|THEADDER|FullAdder0|ALT_INV_co~0_combout\,
	datab => \BOARD|FIVE2ONEMUX|ALT_INV_Mux3~0_combout\,
	datac => \BOARD|REGISTERC|ALT_INV_int_valueC\(1),
	datad => \BOARD|REGISTERC|ALT_INV_int_valueC\(2),
	dataf => \BOARD|FIVE2ONEMUX|ALT_INV_Mux2~0_combout\,
	combout => \BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\);

-- Location: LABCELL_X51_Y4_N6
\BOARD|REGISTERC|int_valueC[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC[4]~7_combout\ = (!\BOARD|CONTROLFSM|y.LOAD~q\ & (\BOARD|CONTROLFSM|y.ADD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010000000001000101000000000100010100000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\,
	combout => \BOARD|REGISTERC|int_valueC[4]~7_combout\);

-- Location: LABCELL_X51_Y4_N48
\BOARD|REGISTERC|int_valueC[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC[4]~9_combout\ = ( \BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ & ( \BOARD|REGISTERC|int_valueC[4]~7_combout\ & ( (!\BOARD|THEADDER|FullAdderN|s~0_combout\ $ (((!\BOARD|FIVE2ONEMUX|Mux1~0_combout\ & 
-- !\BOARD|REGISTERC|int_valueC\(3))))) # (\BOARD|REGISTERC|int_valueC[4]~6_combout\) ) ) ) # ( !\BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ & ( \BOARD|REGISTERC|int_valueC[4]~7_combout\ & ( (!\BOARD|THEADDER|FullAdderN|s~0_combout\ $ 
-- (((!\BOARD|FIVE2ONEMUX|Mux1~0_combout\) # (!\BOARD|REGISTERC|int_valueC\(3))))) # (\BOARD|REGISTERC|int_valueC[4]~6_combout\) ) ) ) # ( \BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ & ( !\BOARD|REGISTERC|int_valueC[4]~7_combout\ & ( 
-- \BOARD|REGISTERC|int_valueC[4]~6_combout\ ) ) ) # ( !\BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ & ( !\BOARD|REGISTERC|int_valueC[4]~7_combout\ & ( \BOARD|REGISTERC|int_valueC[4]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111111011110110111101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|FIVE2ONEMUX|ALT_INV_Mux1~0_combout\,
	datab => \BOARD|REGISTERC|ALT_INV_int_valueC[4]~6_combout\,
	datac => \BOARD|THEADDER|FullAdderN|ALT_INV_s~0_combout\,
	datad => \BOARD|REGISTERC|ALT_INV_int_valueC\(3),
	datae => \BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_co~0_combout\,
	dataf => \BOARD|REGISTERC|ALT_INV_int_valueC[4]~7_combout\,
	combout => \BOARD|REGISTERC|int_valueC[4]~9_combout\);

-- Location: FF_X51_Y4_N50
\BOARD|REGISTERC|int_valueC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERC|int_valueC[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERC|int_valueC\(4));

-- Location: LABCELL_X51_Y4_N54
\BOARD|REGISTERC|int_valueC[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC[4]~6_combout\ = ( \SW[9]~input_o\ & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & (!\BOARD|CONTROLFSM|y.ADD~q\ & (\BOARD|REGISTERC|int_valueC\(4) & \BOARD|CONTROLFSM|y.RESET~q\))) ) ) # ( !\SW[9]~input_o\ & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ 
-- & (!\BOARD|CONTROLFSM|y.ADD~q\ & \BOARD|REGISTERC|int_valueC\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\,
	datac => \BOARD|REGISTERC|ALT_INV_int_valueC\(4),
	datad => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \BOARD|REGISTERC|int_valueC[4]~6_combout\);

-- Location: LABCELL_X50_Y4_N48
\BOARD|REGISTERC|int_valueC~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC~8_combout\ = ( \BOARD|FIVE2ONEMUX|Mux1~0_combout\ & ( ((\BOARD|REGISTERC|int_valueC[4]~7_combout\ & (!\BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ $ (\BOARD|REGISTERC|int_valueC\(3))))) # 
-- (\BOARD|REGISTERC|int_valueC[4]~6_combout\) ) ) # ( !\BOARD|FIVE2ONEMUX|Mux1~0_combout\ & ( ((\BOARD|REGISTERC|int_valueC[4]~7_combout\ & (!\BOARD|THEADDER|G_Adder:1:Adder_middle|co~0_combout\ $ (!\BOARD|REGISTERC|int_valueC\(3))))) # 
-- (\BOARD|REGISTERC|int_valueC[4]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101110101010101110111010101110101010101110111010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|REGISTERC|ALT_INV_int_valueC[4]~6_combout\,
	datab => \BOARD|REGISTERC|ALT_INV_int_valueC[4]~7_combout\,
	datac => \BOARD|THEADDER|G_Adder:1:Adder_middle|ALT_INV_co~0_combout\,
	datad => \BOARD|REGISTERC|ALT_INV_int_valueC\(3),
	dataf => \BOARD|FIVE2ONEMUX|ALT_INV_Mux1~0_combout\,
	combout => \BOARD|REGISTERC|int_valueC~8_combout\);

-- Location: FF_X50_Y4_N50
\BOARD|REGISTERC|int_valueC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERC|int_valueC~8_combout\,
	ena => \BOARD|REGISTERC|int_valueC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERC|int_valueC\(3));

-- Location: LABCELL_X51_Y4_N30
\BOARD|REGISTERC|int_valueC~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC~4_combout\ = ( \BOARD|REGISTERC|int_valueC\(1) & ( !\BOARD|REGISTERC|int_valueC~3_combout\ & ( (!\BOARD|CONTROLFSM|y.ADD~q\ & (((\BOARD|REGISTERC|int_valueC\(3))))) # (\BOARD|CONTROLFSM|y.ADD~q\ & 
-- (!\BOARD|FIVE2ONEMUX|Mux3~0_combout\ $ ((\BOARD|THEADDER|FullAdder0|co~0_combout\)))) ) ) ) # ( !\BOARD|REGISTERC|int_valueC\(1) & ( !\BOARD|REGISTERC|int_valueC~3_combout\ & ( (!\BOARD|CONTROLFSM|y.ADD~q\ & (((\BOARD|REGISTERC|int_valueC\(3))))) # 
-- (\BOARD|CONTROLFSM|y.ADD~q\ & (!\BOARD|FIVE2ONEMUX|Mux3~0_combout\ $ ((!\BOARD|THEADDER|FullAdder0|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101100110000011111001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|FIVE2ONEMUX|ALT_INV_Mux3~0_combout\,
	datab => \BOARD|THEADDER|FullAdder0|ALT_INV_co~0_combout\,
	datac => \BOARD|REGISTERC|ALT_INV_int_valueC\(3),
	datad => \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\,
	datae => \BOARD|REGISTERC|ALT_INV_int_valueC\(1),
	dataf => \BOARD|REGISTERC|ALT_INV_int_valueC~3_combout\,
	combout => \BOARD|REGISTERC|int_valueC~4_combout\);

-- Location: FF_X51_Y4_N32
\BOARD|REGISTERC|int_valueC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERC|int_valueC~4_combout\,
	ena => \BOARD|REGISTERC|int_valueC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERC|int_valueC\(1));

-- Location: LABCELL_X51_Y4_N9
\BOARD|REGISTERB|int_valueB~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERB|int_valueB~4_combout\ = ( \BOARD|REGISTERC|int_valueC\(1) & ( ((!\BOARD|CONTROLFSM|y.LOAD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) # (\SW[3]~input_o\) ) ) # ( !\BOARD|REGISTERC|int_valueC\(1) & ( (\SW[3]~input_o\ & 
-- (((\SW[9]~input_o\ & !\BOARD|CONTROLFSM|y.RESET~q\)) # (\BOARD|CONTROLFSM|y.LOAD~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000101000001110000010110001111101011111000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	dataf => \BOARD|REGISTERC|ALT_INV_int_valueC\(1),
	combout => \BOARD|REGISTERB|int_valueB~4_combout\);

-- Location: MLABCELL_X52_Y4_N57
\BOARD|REGISTERB|int_valueB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERB|int_valueB[1]~1_combout\ = ( \SW[9]~input_o\ & ( ((!\BOARD|CONTROLFSM|y.RESET~q\) # (\BOARD|CONTROLFSM|y.LOAD~q\)) # (\BOARD|CONTROLFSM|y.SHIFT~q\) ) ) # ( !\SW[9]~input_o\ & ( (\BOARD|CONTROLFSM|y.LOAD~q\) # 
-- (\BOARD|CONTROLFSM|y.SHIFT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \BOARD|REGISTERB|int_valueB[1]~1_combout\);

-- Location: FF_X52_Y4_N23
\BOARD|REGISTERB|int_valueB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \BOARD|REGISTERB|int_valueB~4_combout\,
	sload => VCC,
	ena => \BOARD|REGISTERB|int_valueB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERB|int_valueB\(4));

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

-- Location: MLABCELL_X52_Y4_N42
\BOARD|REGISTERB|int_valueB~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERB|int_valueB~2_combout\ = ( \SW[1]~input_o\ & ( \BOARD|CONTROLFSM|y.LOAD~q\ ) ) # ( \SW[1]~input_o\ & ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( ((!\BOARD|CONTROLFSM|y.RESET~q\ & \SW[9]~input_o\)) # (\BOARD|REGISTERB|int_valueB\(4)) ) ) ) # ( 
-- !\SW[1]~input_o\ & ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (\BOARD|REGISTERB|int_valueB\(4) & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000011001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \BOARD|REGISTERB|ALT_INV_int_valueB\(4),
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERB|int_valueB~2_combout\);

-- Location: FF_X52_Y4_N44
\BOARD|REGISTERB|int_valueB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERB|int_valueB~2_combout\,
	ena => \BOARD|REGISTERB|int_valueB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERB|int_valueB\(2));

-- Location: MLABCELL_X52_Y4_N30
\BOARD|REGISTERB|int_valueB~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERB|int_valueB~5_combout\ = ( \BOARD|REGISTERB|int_valueB\(0) & ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (!\BOARD|CONTROLFSM|y.SHIFT~q\ & (((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) # (\BOARD|CONTROLFSM|y.SHIFT~q\ & 
-- (\BOARD|REGISTERB|int_valueB\(2) & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) ) ) ) # ( !\BOARD|REGISTERB|int_valueB\(0) & ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (\BOARD|CONTROLFSM|y.SHIFT~q\ & (\BOARD|REGISTERB|int_valueB\(2) & 
-- ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000001101110110000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BOARD|CONTROLFSM|ALT_INV_y.SHIFT~q\,
	datab => \BOARD|REGISTERB|ALT_INV_int_valueB\(2),
	datac => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \BOARD|REGISTERB|ALT_INV_int_valueB\(0),
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERB|int_valueB~5_combout\);

-- Location: FF_X52_Y4_N32
\BOARD|REGISTERB|int_valueB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERB|int_valueB~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERB|int_valueB\(0));

-- Location: MLABCELL_X52_Y4_N6
\BOARD|CONTROLFSM|sel_ctrl[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|CONTROLFSM|sel_ctrl\(0) = ( \BOARD|REGISTERB|int_valueB\(0) & ( (\BOARD|CONTROLFSM|sel_ctrl~0_combout\) # (\BOARD|CONTROLFSM|sel_ctrl\(0)) ) ) # ( !\BOARD|REGISTERB|int_valueB\(0) & ( (\BOARD|CONTROLFSM|sel_ctrl\(0) & 
-- !\BOARD|CONTROLFSM|sel_ctrl~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	datad => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl~0_combout\,
	dataf => \BOARD|REGISTERB|ALT_INV_int_valueB\(0),
	combout => \BOARD|CONTROLFSM|sel_ctrl\(0));

-- Location: LABCELL_X51_Y4_N24
\BOARD|REGISTERC|int_valueC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC~0_combout\ = ( \BOARD|CONTROLFSM|sel_ctrl\(0) & ( !\BOARD|REGISTERC|int_valueC\(0) $ (((!\BOARD|REGISTERA|int_valueA\(0)) # (\BOARD|CONTROLFSM|sel_ctrl\(1)))) ) ) # ( !\BOARD|CONTROLFSM|sel_ctrl\(0) & ( 
-- !\BOARD|REGISTERC|int_valueC\(0) $ (((!\BOARD|CONTROLFSM|sel_ctrl\(1)) # (!\BOARD|REGISTERA|int_valueA\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BOARD|REGISTERC|ALT_INV_int_valueC\(0),
	datac => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(1),
	datad => \BOARD|REGISTERA|ALT_INV_int_valueA\(0),
	dataf => \BOARD|CONTROLFSM|ALT_INV_sel_ctrl\(0),
	combout => \BOARD|REGISTERC|int_valueC~0_combout\);

-- Location: LABCELL_X51_Y4_N39
\BOARD|REGISTERC|int_valueC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERC|int_valueC~1_combout\ = ( \BOARD|REGISTERC|int_valueC~0_combout\ & ( \BOARD|REGISTERC|int_valueC\(2) & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\))) ) ) ) # ( 
-- !\BOARD|REGISTERC|int_valueC~0_combout\ & ( \BOARD|REGISTERC|int_valueC\(2) & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & (!\BOARD|CONTROLFSM|y.ADD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) ) ) ) # ( \BOARD|REGISTERC|int_valueC~0_combout\ & ( 
-- !\BOARD|REGISTERC|int_valueC\(2) & ( (!\BOARD|CONTROLFSM|y.LOAD~q\ & (\BOARD|CONTROLFSM|y.ADD~q\ & ((!\SW[9]~input_o\) # (\BOARD|CONTROLFSM|y.RESET~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000110010000000110000001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	datac => \BOARD|CONTROLFSM|ALT_INV_y.ADD~q\,
	datad => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datae => \BOARD|REGISTERC|ALT_INV_int_valueC~0_combout\,
	dataf => \BOARD|REGISTERC|ALT_INV_int_valueC\(2),
	combout => \BOARD|REGISTERC|int_valueC~1_combout\);

-- Location: FF_X51_Y4_N41
\BOARD|REGISTERC|int_valueC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERC|int_valueC~1_combout\,
	ena => \BOARD|REGISTERC|int_valueC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERC|int_valueC\(0));

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

-- Location: MLABCELL_X52_Y4_N12
\BOARD|REGISTERB|int_valueB~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERB|int_valueB~3_combout\ = ( \BOARD|CONTROLFSM|y.LOAD~q\ & ( \SW[2]~input_o\ ) ) # ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (!\SW[9]~input_o\ & (((\BOARD|REGISTERC|int_valueC\(0))))) # (\SW[9]~input_o\ & ((!\BOARD|CONTROLFSM|y.RESET~q\ & 
-- ((\SW[2]~input_o\))) # (\BOARD|CONTROLFSM|y.RESET~q\ & (\BOARD|REGISTERC|int_valueC\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001111000010110100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datac => \BOARD|REGISTERC|ALT_INV_int_valueC\(0),
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERB|int_valueB~3_combout\);

-- Location: FF_X52_Y4_N14
\BOARD|REGISTERB|int_valueB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERB|int_valueB~3_combout\,
	ena => \BOARD|REGISTERB|int_valueB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERB|int_valueB\(3));

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

-- Location: MLABCELL_X52_Y4_N15
\BOARD|REGISTERB|int_valueB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BOARD|REGISTERB|int_valueB~0_combout\ = ( \BOARD|CONTROLFSM|y.LOAD~q\ & ( \SW[0]~input_o\ ) ) # ( !\BOARD|CONTROLFSM|y.LOAD~q\ & ( (!\SW[9]~input_o\ & (((\BOARD|REGISTERB|int_valueB\(3))))) # (\SW[9]~input_o\ & ((!\BOARD|CONTROLFSM|y.RESET~q\ & 
-- ((\SW[0]~input_o\))) # (\BOARD|CONTROLFSM|y.RESET~q\ & (\BOARD|REGISTERB|int_valueB\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001111000010110100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \BOARD|CONTROLFSM|ALT_INV_y.RESET~q\,
	datac => \BOARD|REGISTERB|ALT_INV_int_valueB\(3),
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \BOARD|CONTROLFSM|ALT_INV_y.LOAD~q\,
	combout => \BOARD|REGISTERB|int_valueB~0_combout\);

-- Location: FF_X52_Y4_N17
\BOARD|REGISTERB|int_valueB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \BOARD|REGISTERB|int_valueB~0_combout\,
	ena => \BOARD|REGISTERB|int_valueB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOARD|REGISTERB|int_valueB\(1));

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

-- Location: LABCELL_X45_Y55_N3
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


