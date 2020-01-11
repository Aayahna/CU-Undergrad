LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity BCDadder_board is port(
	SW: IN std_logic_vector (9 downto 0);
	LEDR: OUT std_logic_vector (9 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: OUT std_logic_vector (6 downto 0)
);
end BCDadder_board;

architecture structure of BCDadder_board is

	component BCDadder
		port(
			A4, B4: IN std_logic_vector (3 downto 0);
			CIN1: IN std_logic;
			ERROR: OUT std_logic;
			S_Cout: BUFFER std_logic_vector (4 downto 0);
			S0, S1: OUT std_logic_vector (6 downto 0);
			A0, A1, B0, B1: OUT std_logic_vector (6 downto 0)
		);
	end component;
	
	begin
		dut: BCDadder
			port map(
				A4 => sw(7 downto 4),
				B4 => sw(3 downto 0),
				CIN1 => sw(8),
				S_Cout => ledr(4 downto 0),
				ERROR => ledr(5),
				S0 => hex0(6 downto 0),
				S1 => hex1(6 downto 0),
				B0 =>	hex2(6 downto 0),
				B1 => hex3(6 downto 0),
				A0 => hex4(6 downto 0),
				A1 => hex5(6 downto 0)
			);
end structure;