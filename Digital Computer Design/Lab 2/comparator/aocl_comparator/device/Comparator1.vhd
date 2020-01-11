LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparator1 IS
	PORT(	A, B: IN std_logic;
			C: OUT std_logic
	);
END comparator1;

ARCHITECTURE dataflow OF comparator1 IS
BEGIN
	C <= (not A) xnor (not B);
END dataflow;