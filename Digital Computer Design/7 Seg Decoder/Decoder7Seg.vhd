LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Decoder7Seg is port(
	c: IN std_logic_vector (4 downto 0);
	o0, o1: OUT std_logic_vector (6 downto 0)
);
end Decoder7Seg;

architecture behavioral of Decoder7Seg is
begin
--Processes will be assigning the two 7-seg displays with values from c
--First process is displaying for Hex0 using output 0's values
--Second process is displaying for Hex1 using output 1's values
o0_value:	process(c)
	begin
		case c is
			when "00000" => o0 <= "1000000";	--Hex0 = 0 for 00
			when "00001" => o0 <= "1111001";	--Hex0 = 1 for 01
			when "00010" => o0 <= "0100100";	--Hex0 = 2 for 02
			when "00011" => o0 <= "0110000";	--Hex0 = 3 for 03
			when "00100" => o0 <= "0011001";	--Hex0 = 4 for 04
			when "00101" => o0 <= "0010010";	--Hex0 = 5 for 05
			when "00110" => o0 <= "0000010";	--Hex0 = 6 for 06
			when "00111" => o0 <= "1111000";	--Hex0 = 7 for 07
			when "01000" => o0 <= "0000000";	--Hex0 = 8 for 08
			when "01001" => o0 <= "0010000";	--Hex0 = 9 for 09
			when "10000" => o0 <= "1000000";	--Hex0 = 0 for 10
			when "10001" => o0 <= "1111001";	--Hex0 = 1 for 11
			when "10010" => o0 <= "0100100";	--Hex0 = 2 for 12
			when "10011" => o0 <= "0110000";	--Hex0 = 3 for 13
			when "10100" => o0 <= "0011001";	--Hex0 = 4 for 14
			when "10101" => o0 <= "0010010";	--Hex0 = 5 for 15
			when "10110" => o0 <= "0000010";	--Hex0 = 6 for 16
			when "10111" => o0 <= "1111000";	--Hex0 = 7 for 17
			when "11000" => o0 <= "0000000";	--Hex0 = 8 for 18
			when "11001" => o0 <= "0010000";	--Hex0 = 9 for 19
			when others => o0 <= "1111111";	--undefined to catch errors
		end case;
	end process o0_value;

o1_value: process(c)
	begin
		case c is
			when "00000" => o1 <= "1000000";	--Hex1 = 0 for 00
			when "00001" => o1 <= "1000000";	--Hex1 = 0 for 01
			when "00010" => o1 <= "1000000";	--Hex1 = 0 for 02
			when "00011" => o1 <= "1000000";	--Hex1 = 0 for 03
			when "00100" => o1 <= "1000000";	--Hex1 = 0 for 04
			when "00101" => o1 <= "1000000";	--Hex1 = 0 for 05
			when "00110" => o1 <= "1000000";	--Hex1 = 0 for 06
			when "00111" => o1 <= "1000000";	--Hex1 = 0 for 07
			when "01000" => o1 <= "1000000";	--Hex1 = 0 for 08
			when "01001" => o1 <= "1000000";	--Hex1 = 0 for 09
			when "10000" => o1 <= "1111001";	--Hex1 = 1 for 10
			when "10001" => o1 <= "1111001";	--Hex1 = 1 for 11
			when "10010" => o1 <= "1111001";	--Hex1 = 1 for 12
			when "10011" => o1 <= "1111001";	--Hex1 = 1 for 13
			when "10100" => o1 <= "1111001";	--Hex1 = 1 for 14
			when "10101" => o1 <= "1111001";	--Hex1 = 1 for 15
			when "10110" => o1 <= "1111001";	--Hex1 = 1 for 16
			when "10111" => o1 <= "1111001";	--Hex1 = 1 for 17
			when "11000" => o1 <= "1111001";	--Hex1 = 1 for 18
			when "11001" => o1 <= "1111001";	--Hex1 = 1 for 19
			when others => o1 <= "1111111";	--undefined to catch errors
		end case;
	end process o1_value;
end behavioral;
