LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity BCDadder is port(
	A4, B4: IN std_logic_vector (3 downto 0);
	CIN1: IN std_logic;
	ERROR: OUT std_logic;
	S_Cout: BUFFER std_logic_vector (4 downto 0);
	S0, S1: OUT std_logic_vector (6 downto 0);
	A0, A1, B0, B1: OUT std_logic_vector (6 downto 0)
);
end BCDadder;

architecture structure of BCDadder is

	component RCA4	
		port(
			a, b: IN std_logic_vector (3 downto 0);
			cin: IN std_logic;
			s: OUT std_logic_vector (3 downto 0);
			cout: OUT std_logic
		);
	end component;
	
	--signal S_Cout: std_logic_vector (4 downto 0);
	
	component BCD
		port(
			V: IN std_logic_vector (4 downto 0);
			M: OUT std_logic_vector (4 downto 0)
		);
	end component;
	
	signal m_out: std_logic_vector (4 downto 0);
	
	component Decoder7Seg
		port(
			c: IN std_logic_vector (4 downto 0);
			o0, o1: OUT std_logic_vector (6 downto 0)
		);
	end component;
	
begin
	RCApart: RCA4 port map(A4, B4, CIN1, S_Cout(3 downto 0), S_Cout(4));
	BCDpart: BCD port map(S_Cout, m_out);
	Decoderpart1: Decoder7Seg port map(m_out, S0, S1);
	Decoderpart2: Decoder7Seg port map(
		c(3 downto 0) => A4,
		c(4) => '0',
		o0 => A0,
		o1 => A1
	);
	Decoderpart3: Decoder7Seg port map(
		c(3 downto 0) => B4,
		c(4) => '0',
		o0 => B0,
		o1 => B1
	);

	error_bit: process(S_Cout)
		begin
			if S_Cout > "10011" then ERROR <= '1';
				else ERROR <= '0';
			end if;
		end process error_bit;
end structure;