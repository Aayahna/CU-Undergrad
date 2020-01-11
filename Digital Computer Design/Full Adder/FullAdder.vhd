LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity FullAdder is port(
	ci, a, b: IN std_logic;
	s, co: OUT std_logic
);
end FullAdder;

architecture dataflow of FullAdder is
begin
--Architecture shows the SOP equation
--Equation based off the the full adder circuit (for s) and the truth table (for co)
	s <= (a xor b) xor ci;
	co <= (a and b) or (b and ci) or (a and ci);
end dataflow;