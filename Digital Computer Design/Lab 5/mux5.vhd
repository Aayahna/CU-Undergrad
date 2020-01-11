LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux5 IS
	GENERIC(	N	: INTEGER := 8);
	PORT(	sel_ctrl	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			pos_one	: IN STD_LOGIC_VECTOR (N DOWNTO 0);
			neg_one	: IN STD_LOGIC_VECTOR (N DOWNTO 0);
			pos_two	: IN STD_LOGIC_VECTOR (N DOWNTO 0);
			neg_two	: IN STD_LOGIC_VECTOR (N DOWNTO 0);
			zero		: BUFFER STD_LOGIC_VECTOR (N DOWNTO 0);
			mux_out	: OUT STD_LOGIC_VECTOR (N DOWNTO 0)
	);
END mux5;

ARCHITECTURE behavior OF mux5 IS

--Signal will be used as a temp holder for the output
	--to avoid error and make sure output displayed 
	--at the very end
SIGNAL temp_out	: STD_LOGIC_VECTOR (N DOWNTO 0);


BEGIN
	
	zero <= (OTHERS => '0');
	
	PROCESS(sel_ctrl, zero, pos_one, neg_one, pos_two, neg_two)
	BEGIN
		--Output based off selection by case-when process statement
		--Done using notes from lecture L06P3, slide 10
		CASE sel_ctrl IS
			WHEN "000" => temp_out <= zero;
			WHEN "001" => temp_out <= pos_one;
			WHEN "010" => temp_out <= pos_one;
			WHEN "011" => temp_out <= pos_two;
			WHEN "100" => temp_out <= neg_two;
			WHEN "101" => temp_out <= neg_one;
			WHEN "110" => temp_out <= neg_one;
			WHEN "111" => temp_out <= zero;
			WHEN OTHERS => temp_out <= zero;
		END CASE;
	END PROCESS;
	
	--After process is done, outputwill get the final answer from temp_out
	mux_out <= temp_out; 

END behavior;