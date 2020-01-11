LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FullAdder IS
	PORT(	ci, a, b	: IN std_logic;
			s, co		: OUT std_logic
	);
END FullAdder;

ARCHITECTURE dataflow OF FullAdder IS
BEGIN
--Architecture shows the SOP equation
--Equation based off the the full adder circuit (for s) and the truth table (for co)
	s <= (a xor b) xor ci;
	co <= (a and b) or (b and ci) or (a and ci);
END dataflow;