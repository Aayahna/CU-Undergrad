LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bitpair_board IS
	PORT(	SW		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			KEY	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			LEDR	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END bitpair_board;

ARCHITECTURE structure OF bitpair_board IS

COMPONENT bitpair
	GENERIC(	W	: INTEGER := 8);
	PORT(	start_bp				: IN STD_LOGIC;
			clk_bp				: IN STD_LOGIC;
			resetn_bp			: IN STD_LOGIC;
			multiplicand_bp	: IN STD_LOGIC_VECTOR (W-1 DOWNTO 0);
			multiplier_bp		: IN STD_LOGIC_VECTOR (W-1 DOWNTO 0);
			done_bp				: OUT STD_LOGIC;
			busy_bp				: OUT STD_LOGIC;
			product_bp			: OUT STD_LOGIC_VECTOR ((W*2)-1 DOWNTO 0)
	);
END COMPONENT;

BEGIN
	--Board will designed in the simple way
	--Switches will control the inputs START, MULTIPLICAND, and MULTIPLIER (in that order)
	--Keys will control the RESETN and CLOCK for easy switching since we only care about
		--these two when they are high active (in that order)
	--Ledr lights will display the outputs DONE, BUSY, and the PRODUCT (in that order)
	BOARD: bitpair
		GENERIC MAP(W => 4)
		PORT MAP(SW(9),KEY(0),KEY(3),SW(7 DOWNTO 4),SW(3 DOWNTO 0),LEDR(9),LEDR(8),LEDR(7 DOWNTO 0));

END structure;