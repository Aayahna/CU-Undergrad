LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2 IS
	GENERIC(	N	: INTEGER := 8);
	PORT( in_value		: IN STD_LOGIC_VECTOR (N DOWNTO 0);
			loadreg		: IN STD_LOGIC;
			out_value	: OUT STD_LOGIC_VECTOR (N DOWNTO 0)
	);
END mux2;

ARCHITECTURE behavior OF mux2 IS
BEGIN
	--Simple process statment
	--If it's loading, send register c zeros
	--If it's doing something other than loading then send 
		--register c the actual value coming from the adder
	PROCESS(loadreg, in_value)
	BEGIN
		
		IF NOT(loadreg)='0' THEN
			out_value <= (OTHERS => '0');
		ELSE
			out_value <= in_value;
		END IF;
		
	END PROCESS;

END behavior;