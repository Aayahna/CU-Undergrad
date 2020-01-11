LIBRARY ieee;
USE ieee.std_logic_1164.all;

--This register entity was made based off the register design
	--that can be found the class's lab manual's appendix
--Some modifications were made to make it more general for 
	--easier changes to the bus width if needed by use of 
	--generics
ENTITY regN IS
	GENERIC(N: INTEGER := 16);
	PORT(	d			: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			clk,en	: IN STD_LOGIC;
			q			: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END regN;

ARCHITECTURE behavior OF regN IS
BEGIN
	--This process will determine when the output will be loaded
		-- with data
	--The output will only get data loaded into it from its input
		-- and updated when its enable signal "en" is active HIGH
		-- and a rising edge is detected from the register's clock
	PROCESS(clk,en)
	BEGIN
		IF RISING_EDGE(clk) AND en='1' THEN 
			q <= d;
		END IF;
	END PROCESS;
END behavior;