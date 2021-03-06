LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity RCA4_board is port(
	SW: IN std_logic_vector (9 downto 0);
	LEDR: OUT std_logic_vector (9 downto 0)
);
end RCA4_board;

architecture structure of RCA4_board is

component RCA4
port(
	a, b: IN std_logic_vector (3 downto 0);
	cin: IN std_logic;
	s: OUT std_logic_vector (3 downto 0);
	cout: OUT std_logic
);
end component;

begin
dut: RCA4
	port map (
		a => sw(7 downto 4),
		b => sw(3 downto 0),
		cin => sw(8),
		s => ledr(3 downto 0),
		cout => ledr(4)
	);
end structure;