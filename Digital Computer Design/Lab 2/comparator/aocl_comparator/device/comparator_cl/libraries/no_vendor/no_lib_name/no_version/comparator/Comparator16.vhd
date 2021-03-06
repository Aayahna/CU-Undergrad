LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator16 IS
	PORT(	A16, B16: IN std_logic_vector (15 DOWNTO 0);
			O16: OUT std_logic
	);
END comparator16;

ARCHITECTURE structure OF comparator16 IS

	COMPONENT comparator1
		PORT(	A, B: IN std_logic;
				C: OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL C16: std_logic_vector (15 DOWNTO 0);
	
	COMPONENT generic_nand
		GENERIC (WIDTH: INTEGER := 16);
		PORT(	a: IN std_logic_vector (WIDTH -1 DOWNTO 0);
				output	: OUT std_logic
		);
	END COMPONENT;
	
BEGIN
	G1: FOR i IN 0 TO 15 GENERATE
		comparator_part1: comparator1 
			PORT MAP(A16(i), B16(i), C16(i));
	END GENERATE;
	
	comparator_part2: generic_nand
		GENERIC MAP(WIDTH => 16)
		PORT MAP(C16, O16);
END structure;