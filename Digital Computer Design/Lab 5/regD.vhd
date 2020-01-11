LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regD IS
	GENERIC(	N	: INTEGER := 8);
	PORT(	clk		: IN STD_LOGIC;
			loadreg	: IN STD_LOGIC;
			count		: IN STD_LOGIC;
			valueD	: OUT STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0)
	);
END regD;

ARCHITECTURE mixed OF regD IS

--Temporary value holder for the outgoing value of register D
SIGNAL int_valueD	: STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0);
--Value to compare when to stop changing the outgoing value
SIGNAL int_zero	: STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0) := (OTHERS => '0');

BEGIN
	--Process will go through and shift bits in valueD to keep track of 
		--the amount of times the problem has been multiplied and which
		--bit pair recoded value the machine is dealing with
	PROCESS(clk)
	BEGIN
		IF RISING_EDGE(clk) THEN
			IF loadreg='1' THEN
				int_valueD <= ((N/2)-1 => '1', OTHERS => '0');
				
			ELSIF count='1' AND int_valueD > int_zero THEN
				int_valueD((N/2)-2 DOWNTO 0) <= int_valueD((N/2)-1 DOWNTO 1);
				int_valueD((N/2)-1) <= '0';
			
			ELSE
				int_valueD <= int_valueD;
			END IF;
		END IF;
	END PROCESS;
	
	valueD <= int_valueD;

END mixed;