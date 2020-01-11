LIBRARY ieee;
USE ieee.std_logic_1164.all;

--This is a modification of the four-bit ripple carry adder made earlier in the semester
	-- for a previous; it was modified to make the ripple carry adder function for any
	-- number of bits by using generics
ENTITY RCAN IS 
	GENERIC(	N: INTEGER := 16);
	
	PORT(	a, b	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			cin	: IN STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			cout	: OUT STD_LOGIC
	);
END RCAN;

ARCHITECTURE structure OF RCAN IS

--Constant was used to make the mapping easier and friendlier to change if the RCA
	-- needs to be changed to a different amount of bits
CONSTANT W	: INTEGER := 7;

--Structure made based off the full adder
--Will make the Nbit adder by making N different full adders connecting them to their 
	--corresponding components in the RCAN entity using the full adder port map
COMPONENT FullAdder
	PORT(	ci, a, b: IN STD_LOGIC;
			s, co: OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL c: STD_LOGIC_VECTOR (W-1 DOWNTO 0);

BEGIN
	FullAdder_first:	FullAdder PORT MAP(cin, a(0), b(0), s(0), c(0));
	
	G1: FOR i IN 0 TO W-2 GENERATE
		FullAdder_body: FullAdder
			PORT MAP(c(i),a(i+1),b(i+1),s(i+1),c(i+1));
	END GENERATE;
	
	FullAdder_last:	FullAdder PORT MAP(c(W-1), a(W), b(W), s(W), cout);
	
END structure;