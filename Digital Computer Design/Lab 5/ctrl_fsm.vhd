LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ctrl_fsm IS
	GENERIC(	N	: INTEGER := 8);
	PORT(	resetn	: IN STD_LOGIC;
			clk		: IN STD_LOGIC;
			start		: IN STD_LOGIC;
			valueD	: IN STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0);
			sel_b		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			sel_ctrl	: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
			loadreg	: OUT STD_LOGIC;
			addreg	: OUT STD_LOGIC;
			shiftreg	: OUT STD_LOGIC;
			count		: OUT STD_LOGIC;	
			busy		: OUT STD_LOGIC;
			done		: OUT STD_LOGIC
	);
END ctrl_fsm;

ARCHITECTURE behavior OF ctrl_fsm IS
	--The Moore state machine will be specified
	TYPE ctrl_fsm IS (RESET, LOAD, ADD, SHIFT, FINISH);
	SIGNAL y	: ctrl_fsm;
	
	SIGNAL zero_D	: STD_LOGIC_VECTOR ((N/2)-1 DOWNTO 0);
	
BEGIN
	--Set values for the zero_D signal to compare later on
	zero_D((N/2)-1 DOWNTO 1) <= (OTHERS => '0');
	zero_D(0) <= '1';

	--State and output assignments made
	PROCESS(resetn, clk)
	BEGIN
		IF resetn='0' THEN
			y <= RESET;
		ELSIF RISING_EDGE(clk) THEN
			CASE y IS
				WHEN RESET =>
					IF start='1' THEN 
						y <= LOAD;
					ELSE
						y <= RESET;
					END IF;
				
				WHEN LOAD =>					
					y <= ADD;
				
				WHEN ADD =>
					y <= SHIFT;
				
				WHEN SHIFT =>
					--If the machine isn't done shifting then y <= ADD
					--If the machine is done adding then y <= FINISH
					IF valueD = zero_D THEN
						y <= FINISH;
					ELSE
						y <= ADD;
					END IF;
				
				WHEN FINISH =>
					y <= RESET;
					
				WHEN OTHERS =>
					y <= RESET;
			END CASE;
		END IF;
	END PROCESS;
	
	--This process tells the machine what actions are done in each state
		--Actions were determined from the design specifications
	PROCESS(y)
	BEGIN
		CASE y IS
			WHEN RESET =>
				loadreg <= '0';
				addreg <= '0';
				shiftreg <= '0';
				count <= '0';
				busy <= '0';
				done <= '0';
				
				IF start='1' THEN
					loadreg <= '1';
				END IF;
			
			WHEN LOAD =>
				loadreg <= '1';
				addreg <= '0';
				shiftreg <= '0';
				count <= '0';
				busy <= '1';
				done <= '0';
				sel_ctrl <= sel_b;
				
			WHEN ADD =>			
				loadreg <= '0';
				addreg <= '1';
				shiftreg <= '0';
				count <= '0';
				busy <= '1';
				done <= '0';
				
			WHEN SHIFT =>
				loadreg <= '0';
				addreg <= '0';
				shiftreg <= '1';
				count <= '1';
				busy <= '1';
				done <= '0';
				sel_ctrl <= sel_b;
			
			WHEN FINISH =>
				loadreg <= '0';
				addreg <= '0';
				shiftreg <= '0';
				count <= '0';
				busy <= '1';
				done <= '1';					
		END CASE;	
	END PROCESS;
	
END behavior;		