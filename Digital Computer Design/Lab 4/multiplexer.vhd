LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplexer IS
	GENERIC(	N: INTEGER := 16);
	PORT(	sel	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			reg0	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg1	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg2	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg3 	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg4	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg5	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg6	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			reg7	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			din 	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			g		: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			bout	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
	);
END multiplexer;

ARCHITECTURE behavior OF multiplexer IS
--Architecture behavioral due to the process used to make selections from
	-- the multiplexer
BEGIN
	--The process chooses what the output of the MUX will be based of the
		-- selection's input; a one-hot approach is used since only one of 
		-- the registers can be active at a time - this approach makes it
		-- easier for the readers to understand
	--The case-when statement is used because it's easily comprehendable
		-- (and also the coder's favorite process statement to use)
	--The default selection for the MUX is DIN based off the design
		-- specifications laid out in this lab's pdf description
	mux: PROCESS (sel)
	BEGIN
		CASE sel IS
			WHEN "0000000001" => bout <= reg0;
			WHEN "0000000010" => bout <= reg1;
			WHEN "0000000100" => bout <= reg2;
			WHEN "0000001000" => bout <= reg3;
			WHEN "0000010000" => bout <= reg4;
			WHEN "0000100000" => bout <= reg5;
			WHEN "0001000000" => bout <= reg6;
			WHEN "0010000000" => bout <= reg7;
			WHEN "0100000000" => bout <= din;
			WHEN "1000000000" => bout <= g;
			WHEN OTHERS => bout <= din;
		END CASE;
	END PROCESS mux;
END behavior;