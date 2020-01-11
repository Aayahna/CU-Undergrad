LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY AddSub IS
	GENERIC (N	: INTEGER := 16);
	
	PORT(	A			: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			B			: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			AorS		: IN STD_LOGIC;
			ANSWER	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			COUT		: OUT STD_LOGIC
	);
END AddSub;

ARCHITECTURE mixed OF AddSub IS
--Mixed architecture used to get the structure from the ripple carry adder entity while also making a process
	-- so knows what to do depending if it needs to add or subtract the values
--A constant was used to make declaring the bus width of items in the architecture easier to go back and change
	-- if necessary
CONSTANT W	: INTEGER := 8;

COMPONENT RCAN
	GENERIC(	N: INTEGER := 16);
	
	PORT(	a, b	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			cin	: IN STD_LOGIC;
			s		: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			cout	: OUT STD_LOGIC
	);
END COMPONENT;

--Signal is used as a middle man for input B so the entity has time to figure what to make B
	-- depending on if the entity is add or not
--When adding, the entity will go about as normal
--When subtracting, the entity will invert B and make the carry-in a 1 to portray 2's complement
	-- and then then add as it usually would
SIGNAL intB	: STD_LOGIC_VECTOR (W-1 DOWNTO 0);

BEGIN
	PROCESS(AorS)
	BEGIN
		IF AorS='1' THEN
			intB <= NOT(B);
		ELSE
			intB <= B;
		END IF;
	END PROCESS;

	addsub: RCAN
		GENERIC MAP(N => W)
		PORT MAP(A,intB,AorS,ANSWER,COUT);

END mixed;