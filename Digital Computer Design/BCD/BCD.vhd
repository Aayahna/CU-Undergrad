LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity BCD is port(
	V: IN std_logic_vector (4 downto 0);
	M: OUT std_logic_vector (4 downto 0)
);
end BCD;

architecture behavioral of BCD is
begin
--Process is assigning M to be certain values depending on what V is
--This will allow M to turn turn values of V into double digit numbers for LEDR
M_value: process(V)
	begin
		case V is
			when "00000" => M <= "00000"; --D = 0
			when "00001" => M <= "00001";	--D = 1
			when "00010" => M <= "00010";	--D = 2
			when "00011" => M <= "00011";	--D = 3
			when "00100" => M <= "00100";	--D = 4
			when "00101" => M <= "00101";	--D = 5
			when "00110" => M <= "00110";	--D = 6
			when "00111" => M <= "00111";	--D = 7
			when "01000" => M <= "01000";	--D = 8
			when "01001" => M <= "01001";	--D = 9
			when "01010" => M <= "10000";	--D = 10
			when "01011" => M <= "10001";	--D = 11
			when "01100" => M <= "10010";	--D = 12
			when "01101" => M <= "10011";	--D = 13
			when "01110" => M <= "10100";	--D = 14
			when "01111" => M <= "10101";	--D = 15
			when "10000" => M <= "10110";	--D = 16
			when "10001" => M <= "10111";	--D = 17
			when "10010" => M <= "11000";	--D = 18
			when "10011" => M <= "11001";	--D = 19
			when others => M <= "00000";	--To catch errors
		end case;
	end process M_value;
end behavioral;
