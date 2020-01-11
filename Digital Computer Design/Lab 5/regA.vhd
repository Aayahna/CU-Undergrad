LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; --Found this from one of the book's code examples; should let me do adding with binaries

ENTITY regA IS
	GENERIC(	N	: INTEGER := 8);
	PORT(	multiplicand	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			loadreg			: IN STD_LOGIC;
			clk				: IN STD_LOGIC;
			pos_one			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);
			neg_one			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);
			pos_two			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);
			neg_two			: OUT STD_LOGIC_VECTOR (N DOWNTO 0)
	);
END regA;

ARCHITECTURE mixed OF regA IS
--Temporary value holder for the incoming value and it will be
	--used to determine the different versions of the multiplicand
	--that might be needed when multiplying with the recoded values
SIGNAL int_valueA	: STD_LOGIC_VECTOR (N-1 DOWNTO 0);
--This will hold the negated version of the multiplicand value for
	--changes in the different versions that are negative as well
SIGNAL int_neg		: STD_LOGIC_VECTOR (N-1 DOWNTO 0);

BEGIN
	--Process controls when and how register a will update
	--When it's loading, register a will simply read in the
		--multiplicands value and store it in the temp holder
	PROCESS(clk)
	BEGIN
		IF RISING_EDGE(clk) THEN
			IF loadreg='1' THEN
				int_valueA(N-1 DOWNTO 0) <= multiplicand;
			END IF;
		END IF;
	END PROCESS;
	
	--The different versions of the multiplicand are then made and
		--stored in appropriately named outgoing values for the 
		--5-to-1 multiplexer
	int_neg <= NOT(int_valueA) + 1;							
	
	pos_one(N-1 DOWNTO 0) <= int_valueA;
	pos_one(N) <= int_valueA (N-1);
	
	neg_one(N-1 DOWNTO 0) <= int_neg;
	neg_one(N) <= int_neg(N-1);

	pos_two(N DOWNTO 1) <= int_valueA(N-1 DOWNTO 0);
	pos_two(0) <= '0';

	neg_two(N DOWNTO 1) <= int_neg;
	neg_two(0) <= '0';
	
END mixed;