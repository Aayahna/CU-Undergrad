LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY comparator_cl is
	generic (WIDTH: INTEGER := 16);
	
	PORT(clock, resetn, ivalid, iready: IN std_logic;
		  datain: IN std_logic_vector((WIDTH*2) - 1 downto 0);
		  oready, ovalid: OUT std_logic;
		  dataout: OUT std_logic_vector(WIDTH - 1 downto 0));
END comparator_cl;

ARCHITECTURE structure of comparator_cl is
	
	--Instantiate an instance of your comparator here
	COMPONENT comparator16
		PORT(	A16, B16: IN std_logic_vector (15 DOWNTO 0);
				O16: OUT std_logic
		);
	END COMPONENT;

BEGIN
	--Port map your component here
	opencl_comparator: comparator16
		PORT MAP(datain(15 DOWNTO 0), datain(31 DOWNTO 16), dataout(0));
	
	dataout(15 DOWNTO 1) <= "000000000000000";		

END structure;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
