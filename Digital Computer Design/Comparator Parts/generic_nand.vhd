library ieee;
use ieee.std_logic_1164.all;

entity generic_nand is
	generic(WIDTH: INTEGER := 16);
	port(a		: in std_logic_vector(WIDTH -1 downto 0);
	     output	: out std_logic);
end generic_nand;


architecture behavior of generic_nand is

begin
	process(a)
		variable result: std_logic;

		begin
		
		result := a(0);
		for i in WIDTH - 1 downto 1 loop
			result := result and a(i);
		end loop;

		output <= NOT result;
	end process;
end behavior;					
