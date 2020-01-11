LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regC IS
	GENERIC(	N	: INTEGER := 8);
	PORT(	shiftreg		: IN STD_LOGIC;
			loadreg		: IN STD_LOGIC;
			addreg		: IN STD_LOGIC;
			clk			: IN STD_LOGIC;
			cout_adder	: IN STD_LOGIC;
			value_mux2	: IN STD_LOGIC_VECTOR (N DOWNTO 0);
			sum_c			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);
			shift_c		: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
			product_c	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
	);
END regC;

ARCHITECTURE behavioral OF regC IS
--Temporary value holder for the outgoing values
SIGNAL int_valueC	: STD_LOGIC_VECTOR (N DOWNTO 0);

BEGIN
	--Process controls when and how register c will update
	--When it's loading or adding, c will read in the value
		--from the 2-to-1 multiplexer
	--When it's shifting, c will take the bottom two bits out
		--to give to register b, shift the remaining values in 
		--it down two, and then sign extend in the front
	--The carry out value from the adder will be ignored to
		--avoid errors and miscommunication
	PROCESS(clk)
	BEGIN
		IF RISING_EDGE(clk) THEN
			IF loadreg='1' OR addreg='1' THEN
				int_valueC <= value_mux2;
			
			ELSIF shiftreg='1' THEN
				int_valueC(N-2 DOWNTO 0) <= int_valueC(N DOWNTO 2);
				int_valueC(N DOWNTO N-1) <= int_valueC(N) & int_valueC(N);
			ELSE
				int_valueC <= int_valueC;
			END IF;
		END IF;
	END PROCESS;
	
	sum_c <= int_valueC;
	shift_c <= int_valueC (1 DOWNTO 0);
	product_c <= int_valueC (N-1 DOWNTO 0);
	
END behavioral;