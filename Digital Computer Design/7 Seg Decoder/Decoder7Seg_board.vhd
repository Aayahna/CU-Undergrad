LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Decoder7Seg_board is port(
	SW: IN std_logic_vector (9 downto 0);
	HEX0, HEX1: OUT std_logic_vector (6 downto 0)
);
end Decoder7Seg_board;

architecture structure of Decoder7Seg_board is

component Decoder7Seg
port(
	c: IN std_logic_vector (4 downto 0);
	o0, o1: OUT std_logic_vector (6 downto 0)
);
end component;

begin
dut : Decoder7Seg
	port map (
		c => sw(4 downto 0),
		o0 => hex0(6 downto 0),
		o1 => hex1(6 downto 0)
	);
	
end structure;