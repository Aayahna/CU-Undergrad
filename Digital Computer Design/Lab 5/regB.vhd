LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regB IS
	GENERIC(	N	: INTEGER := 8);
	PORT(	multiplier	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			loadreg		: IN STD_LOGIC;
			shiftreg		: IN STD_LOGIC;
			clk			: IN STD_LOGIC;
			shift_c		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			sel_b			: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
			product_b	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
	);
END regB;
	
ARCHITECTURE mixed OF regB IS
--Temporary value holder for the outgoing value and to handle the multiplier
--Made as 9 bits to include the dummy bit for recoding
SIGNAL int_valueB	: STD_LOGIC_VECTOR (N DOWNTO 0);

BEGIN
	--Process controls when and how register b will update
	--When it's loading, register b will read in the multiplier's value
	--When it's shifting, register will shift all of its value down two
		--to make room for the incoming 2-bits from register c that will
		--become the lower half value of the product
	PROCESS(clk)
	BEGIN
		IF RISING_EDGE(clk) THEN
			IF loadreg='1' THEN
				int_valueB(N DOWNTO 1) <= multiplier;
				int_valueB(0) <= '0';
			
			ELSIF shiftreg='1' THEN
				int_valueB(N-2 DOWNTO 0) <= int_valueB(N DOWNTO 2);
				int_valueB(N DOWNTO N-1) <= shift_c;
			END IF;
		END IF;
	END PROCESS;
	
	sel_b <= int_valueB (2 DOWNTO 0);
	product_b <= int_valueB (N DOWNTO 1);

END mixed;