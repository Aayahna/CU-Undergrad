LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fuel_machine IS
	PORT(	clk, resetn, w, valid: IN std_logic;
			z: OUT std_logic_vector(3 DOWNTO 0)
	);
END fuel_machine;

ARCHITECTURE behavior OF fuel_machine IS
	-- Specifying the state machine
	TYPE fsm_state IS	(RESET, FULL, DRIVING1, TWO_THIRDS, DRIVING2,
								ONE_THIRD, DRIVING3, EMPTY, REFUELING,
								WALKING);
	SIGNAL y_present, y_next: fsm_state;

BEGIN
	-- State assignments and output assignments made
	PROCESS(w, y_present)
	BEGIN
		CASE y_present IS
			WHEN RESET =>
				z <= "0000";
				y_next <= FULL;
				
			WHEN FULL =>
				z <= "0001";
				IF w='0' THEN
					y_next <= DRIVING1;
				ELSE
					y_next <= REFUELING;
				END IF;
				
			WHEN DRIVING1 =>
				z <= "0011";
				y_next <= TWO_THIRDS;
				
			WHEN TWO_THIRDS =>
				z <= "0010";
				IF w='0' THEN
					y_next <= DRIVING2;
				ELSE
					y_next <= REFUELING;
				END IF;
				
			WHEN DRIVING2 =>
				z <= "0110";
				y_next <= ONE_THIRD;
			
			WHEN ONE_THIRD =>
				z <= "0111";
				IF w='0' THEN
					y_next <= DRIVING3;
				ELSE
					y_next <= REFUELING;
				END IF;
				
			WHEN DRIVING3 =>
				z <= "0101";
				y_next <= EMPTY;
			
			WHEN EMPTY =>
				z <= "0100";
				y_next <= WALKING;
			
			WHEN REFUELING =>
				z <= "1100";
				y_next <= FULL;
			
			WHEN WALKING =>
				z <= "1101";
				y_next <= ONE_THIRD;
			
			WHEN OTHERS =>
				z <= "1111";
				y_next <= RESET;
		END CASE;
	END PROCESS;
	
	-- State switching 
	-- Will switch to the next state when valid is HIGH and clk has a rising edge
	PROCESS(clk, resetn)
	BEGIN
		IF resetn='0' THEN
			y_present <= RESET;
		ELSIF RISING_EDGE(clk) AND valid='1' THEN
			y_present <= y_next;
		END IF;
	END PROCESS;	
END behavior;
