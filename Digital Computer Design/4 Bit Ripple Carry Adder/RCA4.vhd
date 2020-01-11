LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity RCA4 is port(
	a, b: IN std_logic_vector (3 downto 0);
	cin: IN std_logic;
	s: OUT std_logic_vector (3 downto 0);
	cout: OUT std_logic
);
end RCA4;

architecture structure of RCA4 is
--Structure made based off the full adder
--Will make the 4bit adder by making four different full adders connecting them to their 
	--corresponding components in the RCA4 entity using the full adder port map
component FullAdder
port(
	ci, a, b: IN std_logic;
	s, co: OUT std_logic
);
end component;

signal c1, c2, c3: std_logic;

begin
	FullAdder1:	FullAdder port map(cin, a(0), b(0), s(0), c1);
	FullAdder2:	FullAdder port map(c1, a(1), b(1), s(1), c2);
	FullAdder3:	FullAdder port map(c2, a(2), b(2), s(2), c3);
	FullAdder4:	FullAdder port map(c3, a(3), b(3), s(3), cout);
	
end structure;