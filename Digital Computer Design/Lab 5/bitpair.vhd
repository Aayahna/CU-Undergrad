LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bitpair IS
	GENERIC(	W	: INTEGER := 8);
	PORT(	start_bp				: IN STD_LOGIC;
			clk_bp				: IN STD_LOGIC;
			resetn_bp			: IN STD_LOGIC;
			multiplicand_bp	: IN STD_LOGIC_VECTOR (W-1 DOWNTO 0);
			multiplier_bp		: IN STD_LOGIC_VECTOR (W-1 DOWNTO 0);
			done_bp				: OUT STD_LOGIC;
			busy_bp				: OUT STD_LOGIC;
			product_bp			: OUT STD_LOGIC_VECTOR ((W*2)-1 DOWNTO 0)
	);
END bitpair;

ARCHITECTURE structure OF bitpair IS

COMPONENT regA
	GENERIC(	N	: INTEGER := 8);
	PORT(	multiplicand	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);	--Mapped FROM bitpair multiplicand_bp
			loadreg			: IN STD_LOGIC;								--Mapped FROM ctrl_fsm loadreg
			clk				: IN STD_LOGIC;								--Mapped FROM bitpair clk_bp
			pos_one			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);	--Mapped to mux5 pos_one
			neg_one			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);	--Mapped to mux5 neg_one
			pos_two			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);	--Mapped to mux5 pos_two
			neg_two			: OUT STD_LOGIC_VECTOR (N DOWNTO 0)		--Mapped to mux5 neg_two
	);
END COMPONENT;

SIGNAL pos_oneA	: STD_LOGIC_VECTOR (W DOWNTO 0);
SIGNAL neg_oneA	: STD_LOGIC_VECTOR (W DOWNTO 0);
SIGNAL pos_twoA	: STD_LOGIC_VECTOR (W DOWNTO 0);
SIGNAL neg_twoA	: STD_LOGIC_VECTOR (W DOWNTO 0);

COMPONENT regB
	GENERIC(	N	: INTEGER := 8);
	PORT(	multiplier	: IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);		--Mapped FROM bitpair multiplier_bp
			loadreg		: IN STD_LOGIC;									--Mapped FROM ctrl_fsm loadreg
			shiftreg		: IN STD_LOGIC;									--Mapped FROM ctrl_fsm shiftreg
			clk			: IN STD_LOGIC;									--Mapped FROM bitpair clk_bp
			shift_c		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);			--Mapped FROM regC shift_c 
			sel_b			: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);		--Mapped to ctrl_fsm sel_b
			product_b	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)		--Mapped to bitpair product_bp (lower)
	);
END COMPONENT;

SIGNAL sel_bB		: STD_LOGIC_VECTOR (2 DOWNTO 0);

COMPONENT regC
	GENERIC(	N	: INTEGER := 8);
	PORT(	shiftreg		: IN STD_LOGIC;									--Mapped FROM ctrl_fsm shiftreg
			loadreg		: IN STD_LOGIC;									--Mapped FROM ctrl_fsm loadreg
			addreg		: IN STD_LOGIC;									--Mapped FROM ctrl_fsm addreg
			clk			: IN STD_LOGIC;									--Mapped FROM bitpair clk_bp
			cout_adder	: IN STD_LOGIC;									--Mapped FROM adder cout
			value_mux2	: IN STD_LOGIC_VECTOR (N DOWNTO 0);			--Mapped FROM mux2 out_value
			sum_c			: OUT STD_LOGIC_VECTOR (N DOWNTO 0);		--Mapped to adder b
			shift_c		: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);		--Mapped to regB shift_c
			product_c	: OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)		--Mapped to bitpair product_bp (higher)
	);
END COMPONENT;

SIGNAL sum_cC			: STD_LOGIC_VECTOR (W DOWNTO 0);
SIGNAL shift_cC		: STD_LOGIC_VECTOR (1 DOWNTO 0);

COMPONENT regD
	GENERIC(	N	: INTEGER := 8);
	PORT(	clk		: IN STD_LOGIC;										--Mapped FROM bitpair clk_bp
			loadreg	: IN STD_LOGIC;										--Mapped FROM ctrl_fsm loadreg
			count		: IN STD_LOGIC;										--Mapped FROM crtl_fsm count
			valueD	: OUT STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0)		--Mapped to ctrl_fsm valueD
	);
END COMPONENT;

SIGNAL valueDD		: STD_LOGIC_VECTOR ((W/2)-1 DOWNTO 0);

COMPONENT adder
	GENERIC(	N	: INTEGER := 8);
	PORT(	a, b	: IN STD_LOGIC_VECTOR (N DOWNTO 0);					--Mapped FROM mux5 mux_out and regC sum_c
			cin	: IN STD_LOGIC;											--SET AS ZERO ('0')
			cout	: OUT STD_LOGIC;											--Mapped to regC cout_adder
			s		: OUT STD_LOGIC_VECTOR (N DOWNTO 0)					--Mapped to regC sum_c
	);
END COMPONENT;

SIGNAL coutADDER	: STD_LOGIC;
SIGNAL sADDER		: STD_LOGIC_VECTOR (W DOWNTO 0);

COMPONENT mux2
	GENERIC(	N	: INTEGER := 8);
	PORT( in_value		: IN STD_LOGIC_VECTOR (N DOWNTO 0);			--Mapped FROM adder s
			loadreg		: IN STD_LOGIC;									--Mapped FROM ctrl_fsm loadreg
			out_value	: OUT STD_LOGIC_VECTOR (N DOWNTO 0)			--Mapped to regC value_mux2
	);
END COMPONENT;

SIGNAL out_valueM2	: STD_LOGIC_VECTOR (W DOWNTO 0);

COMPONENT mux5
	GENERIC(	N	: INTEGER := 8);
	PORT(	sel_ctrl	: IN STD_LOGIC_VECTOR (2 DOWNTO 0);				--Mapped FROM ctrl_fsm sel_ctrl
			pos_one	: IN STD_LOGIC_VECTOR (N DOWNTO 0);				--Mapped FROM regA pos_one
			neg_one	: IN STD_LOGIC_VECTOR (N DOWNTO 0);				--Mapped FROM regA neg_one
			pos_two	: IN STD_LOGIC_VECTOR (N DOWNTO 0);				--Mapped FROM regA pos_two
			neg_two	: IN STD_LOGIC_VECTOR (N DOWNTO 0);				--Mapped FROM regA neg_two
			zero		: BUFFER STD_LOGIC_VECTOR (N DOWNTO 0);		--Mapped to itself
			mux_out	: OUT STD_LOGIC_VECTOR (N DOWNTO 0)				--Mapped to adder a
	);
END COMPONENT;

SIGNAL zeroM5		: STD_LOGIC_VECTOR (W DOWNTO 0);
SIGNAL mux_outM5	: STD_LOGIC_VECTOR (W DOWNTO 0);

COMPONENT ctrl_fsm
	GENERIC(	N	: INTEGER := 8);
	PORT(	resetn	: IN STD_LOGIC;										--Mapped FROM bitpair resetn_bp
			clk		: IN STD_LOGIC;										--Mapped FROM bitpair clk_bp
			start		: IN STD_LOGIC;										--Mapped FROM bitpair start_bp
			valueD	: IN STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0);		--Mapped FROM regD valueD
			sel_b		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);				--Mapped FROM regB sel_b
			sel_ctrl	: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);			--Mapped to itself
			loadreg	: OUT STD_LOGIC;										--Mapped to itself
			addreg	: OUT STD_LOGIC;										--Mapped to itself
			shiftreg	: OUT STD_LOGIC;										--Mapped to itself
			count		: OUT STD_LOGIC;										--Mapped to itself
			busy		: OUT STD_LOGIC;										--Mapped to bitpair busy_bp
			done		: OUT STD_LOGIC										--Mapped to bitpair done_bp
	);
END COMPONENT;

SIGNAL sel_ctrlFSM	: STD_LOGIC_VECTOR (2 DOWNTO 0);
SIGNAL loadregFSM		: STD_LOGIC;
SIGNAL addregFSM		: STD_LOGIC;
SIGNAL shiftregFSM	: STD_LOGIC;
SIGNAL countFSM		: STD_LOGIC;

BEGIN
	
	REGISTERA: regA
		GENERIC MAP(N => W)
		PORT MAP(multiplicand_bp,loadregFSM,clk_bp,pos_oneA,neg_oneA,pos_twoA,neg_twoA);
	
	REGISTERB: regB
		GENERIC MAP(N => W)
		PORT MAP(multiplier_bp,loadregFSM,shiftregFSM,clk_bp,shift_cC,sel_bB,product_bp(W-1 DOWNTO 0));
	
	REGISTERC: regC
		GENERIC MAP(N => W)
		PORT MAP(shiftregFSM,loadregFSM,addregFSM,clk_bp,coutADDER,out_valueM2,sum_cC,shift_cC,product_bp((W*2)-1 DOWNTO W));
	
	REGISTERD: regD
		GENERIC MAP(N => W)
		PORT MAP(clk_bp,loadregFSM,countFSM,valueDD);
	
	THEADDER: adder
		GENERIC MAP(N => W)
		PORT MAP(mux_outM5,sum_cC,'0',coutADDER,sADDER);
	
	FIVE2ONEMUX: mux5
		GENERIC MAP(N => W)
		PORT MAP(sel_ctrlFSM,pos_oneA,neg_oneA,pos_twoA,neg_twoA,zeroM5,mux_outM5);
		
	TWO2ONEMUX: mux2
		GENERIC MAP(N => W)
		PORT MAP(sADDER,loadregFSM,out_valueM2);
		
	CONTROLFSM: ctrl_fsm
		GENERIC MAP(N => W)
		PORT MAP(resetn_bp,clk_bp,start_bp,valueDD,sel_bB,sel_ctrlFSM,loadregFSM,addregFSM,shiftregFSM,countFSM,busy_bp,done_bp);

END structure;