LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fuel_machine_board IS
	PORT(	SW: IN std_logic_vector(9 DOWNTO 0);
			KEY:	IN std_logic_vector(3 DOWNTO 0);
			LEDR:	OUT std_logic_vector(9 DOWNTO 0)
	);
END fuel_machine_board;

ARCHITECTURE structure OF fuel_machine_board IS
	-- Create instance of original state machine component
	COMPONENT fuel_machine
		PORT(	clk, resetn, w, valid: IN std_logic;
				z: OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;
	
BEGIN
	-- Map the fuel_machine components to the board pins
	dut: fuel_machine
		PORT MAP(KEY(0), KEY(3), SW(0), SW(9), LEDR(3 DOWNTO 0));

END structure;
