LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity BCD_board is port(
	SW: IN std_logic_vector (9 downto 0);
	LEDR: OUT std_logic_vector (9 downto 0)
);
end BCD_board;

architecture structure of BCD_board is

component BCD 
port(
	V: IN std_logic_vector (3 downto 0);
	M: OUT std_logic_vector (4 downto 0)
);
end component;

begin
dut : BCD
	port map (
		V => sw(3 downto 0),
		M => ledr(4 downto 0)
	);

end structure;
