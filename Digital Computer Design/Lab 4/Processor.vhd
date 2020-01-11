LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY processor IS
	GENERIC(	N: INTEGER := 16);

	PORT(	DIN					: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			CLK, RUN, RESETN	: IN STD_LOGIC;
			BUSS					: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			DONE					: OUT STD_LOGIC
	);
END processor;

ARCHITECTURE structure OF processor IS
--Architecture is structural to include all of the entities needed for the processor, create
	-- signals for every connection that isn't an essential input or output for the processor, 
	-- and then map everything for functionality
--The constant is used to easily convert the entities from 16 to 8 and not worry about 
	-- dealing with a bunch of numbers and avoid confusion
CONSTANT W	: INTEGER := 8;
	
COMPONENT regN
	GENERIC(N: INTEGER := 16);
	
	PORT(	d			: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			clk,en	: IN STD_LOGIC;
			q			: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL intR0q,intR1q,intR2q,intR3q,intR4q,intR5q,intR6q,intR7q,intAq,intGq								: STD_LOGIC_VECTOR(W-1 DOWNTO 0);
SIGNAL intIRq																												: STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT multiplexer
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
END COMPONENT;

COMPONENT AddSub
	GENERIC (N	: INTEGER := 16);
	PORT(	A			: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			B			: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			AorS		: IN STD_LOGIC;
			ANSWER	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			COUT		: OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL intANSWERaddsub	: STD_LOGIC_VECTOR(W-1 DOWNTO 0);
SIGNAL intCOUTaddsub		: STD_LOGIC;

COMPONENT controlFSM
	PORT(	clk, resetn, run	: IN STD_LOGIC;
			IR						: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			IRin					: OUT STD_LOGIC;
			done					: OUT STD_LOGIC;
			regin					: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			Gin					: OUT STD_LOGIC;
			Ain					: OUT STD_LOGIC;
			addsub				: OUT STD_LOGIC;
			muxout				: OUT STD_LOGIC_VECTOR	(9 DOWNTO 0)
	);
END COMPONENT;

SIGNAL intIRINfsm,intGINfsm,intAINfsm	: STD_LOGIC;
SIGNAL intREGINfsm							: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL intADDSUBfsm							: STD_LOGIC;
SIGNAL intMUXOUTfsm							: STD_LOGIC_VECTOR(9 DOWNTO 0);	

SIGNAL intBUS									: STD_LOGIC_VECTOR(W-1 DOWNTO 0);
	
BEGIN
	Register0: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(0),intR0q);
	Register1: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(1),intR1q);
	Register2: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(2),intR2q);
	Register3: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(3),intR3q);
	Register4: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(4),intR4q);
	Register5: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(5),intR5q);
	Register6: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(6),intR6q);
	Register7: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intREGINfsm(7),intR7q);
	RegisterA: regN
		GENERIC MAP(N => W)
		PORT MAP(intBUS,CLK,intAINfsm,intAq);
	RegisterG: regN
		GENERIC MAP(N => W)
		PORT MAP(intANSWERaddsub,CLK,intGINfsm,intGq);
	RegisterIR: regN
		GENERIC MAP(N => 8)
		PORT MAP(DIN(7 DOWNTO 0),CLK,intIRINfsm,intIRq);
		
	Multiplexers: multiplexer
		GENERIC MAP(N => W)
		PORT MAP(intMUXOUTfsm,intR0q,intR1q,intR2q,intR3q,intR4q,intR5q,intR6q,intR7q,DIN,intGq,intBUS);
		
	AddsubMachine: AddSub
		GENERIC MAP(N => W)
		PORT MAP(intAq,intBUS,intADDSUBfsm,intANSWERaddsub,intCOUTaddsub);
	
	ControlUnit: controlFSM
		PORT MAP(CLK,RESETN,RUN,intIRq,intIRINfsm,DONE,intREGINfsm,intGINfsm,intAINfsm,intADDSUBfsm,intMUXOUTfsm);
	
	-- intBUS is used as the temp holder for BUSS so it can be used soley as an output and not a buffer or inout
			-- and intBUS is used to take the value from MUX and load data into registers and the real BUSS
	BUSS <= intBUS;

END structure;