LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY processor_board IS
	PORT( SW		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			KEY	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			LEDR	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END processor_board;

ARCHITECTURE structure OF processor_board IS
-- Structural architecture is used to map the board with the actual processor entity
COMPONENT processor
	GENERIC(	N: INTEGER := 16);

	PORT(	DIN					: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			CLK, RUN, RESETN	: IN STD_LOGIC;
			BUSS					: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			DONE					: OUT STD_LOGIC
	);
END COMPONENT;

--The mapping of the board is made for easy operation and usability
--Very similar to the board functionality of the fuel state machine from Lab 3
--Inputs will be controlled through the keys and switches
--Outputs will be displayed through the ledr lights
BEGIN
	board: processor
		GENERIC MAP(N => 8)
		PORT MAP(SW(7 DOWNTO 0),KEY(0),SW(9),KEY(3),LEDR(7 DOWNTO 0),LEDR(9));

END structure;