LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY fuel_cl is
	PORT(clock, resetn, ivalid, iready: IN std_logic;
		  datain: IN std_logic_vector(7 downto 0);
		  oready, ovalid: OUT std_logic;
		  dataout: OUT std_logic_vector(7 downto 0));
END fuel_cl;

ARCHITECTURE structure of fuel_cl is
	-- Create an instance of original state machine component
	COMPONENT fuel_machine
		PORT(	clk, resetn, w, valid: IN std_logic;
				z: OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;

	BEGIN
		-- Map the pins from fuel_machine to the designated pins for OpenCL
		fsm_cl: fuel_machine
			PORT MAP(clock, resetn, datain(0), ivalid, dataout(3 DOWNTO 0));
		
		-- Setting others pins in DATAOUT to 0
		dataout(7 DOWNTO 4) <= (others => '0');

END structure;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
