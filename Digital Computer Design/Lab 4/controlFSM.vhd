LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY controlFSM IS
	PORT(	clk, resetn, run	: IN STD_LOGIC;
			IR						: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			IRin					: OUT STD_LOGIC;
			done					: OUT STD_LOGIC;
			-- regin is an array version of the enable bit for the 8 registers (R0-R7)
				-- and is used to easily map the enable of the registers to cut down on
				-- coding lines; IR, A, and G's enables are separate since they are enabled
				-- for specific instructions and states
			regin					: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			Gin					: OUT STD_LOGIC;
			Ain					: OUT STD_LOGIC;
			addsub				: OUT STD_LOGIC;
			muxout				: OUT STD_LOGIC_VECTOR	(9 DOWNTO 0)
	);
END controlFSM;


ARCHITECTURE behavior OF controlFSM IS
-- Specifying the MEALY state machine and its signals
TYPE fsm_state IS (T0, T1, T2, T3);
SIGNAL y: fsm_state;

SIGNAL mux_x, mux_y: STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
	-- Assignments for the the Registers X and Y
	-- Converting the instruction's registers so the multiplexer can read them
	x_mux: PROCESS(IR)
	BEGIN
		CASE IR(5 DOWNTO 3) IS
			WHEN "000" => mux_x <= "00000001";
			WHEN "001" => mux_x <= "00000010";
			WHEN "010" => mux_x <= "00000100";
			WHEN "011" => mux_x <= "00001000";
			WHEN "100" => mux_x <= "00010000";
			WHEN "101" => mux_x <= "00100000";
			WHEN "110" => mux_x <= "01000000";
			WHEN "111" => mux_x <= "10000000";
			WHEN OTHERS => mux_x <= "00000000";
		END CASE;
	END PROCESS x_mux;
	
	y_mux: PROCESS(IR)
	BEGIN
		CASE IR(2 DOWNTO 0) IS
			WHEN "000" => mux_y <= "00000001";
			WHEN "001" => mux_y <= "00000010";
			WHEN "010" => mux_y <= "00000100";
			WHEN "011" => mux_y <= "00001000";
			WHEN "100" => mux_y <= "00010000";
			WHEN "101" => mux_y <= "00100000";
			WHEN "110" => mux_y <= "01000000";
			WHEN "111" => mux_y <= "10000000";
			WHEN OTHERS => mux_y <= "00000000";
		END CASE;
	END PROCESS y_mux;

	-- State assignments and output assignments made
	-- This first process is soley for switching the states on every rising edge
		-- of the clock as long as resetn is not on
	PROCESS(resetn, clk)
	BEGIN
		IF resetn='0' THEN
			y <= T0;
		ELSIF RISING_EDGE(clk) THEN
			CASE y IS
				WHEN T0 =>
					IF run='1' THEN
						y <= T1;
					END IF;
									
				WHEN T1 =>
					y <= T2;
					
				WHEN T2 =>
					y <= T3;
					
				WHEN T3 =>
					y <= T0;
					
				WHEN OTHERS =>
					y <= T0;
			END CASE;
		END IF;
		
	END PROCESS;
	
	--This process is for the actual actions that will take place in each state
		-- within each case, the state's actions are organized based off the four different 
		-- possibilities that could occur depending on the instruction the processor
		-- is dealing with at the moment
	PROCESS(y)
	BEGIN
		CASE y IS
			WHEN T0 =>
				IRin <= '1';
				done <= '0';
				Gin <= '0';
				Ain <= '0';
			
			WHEN T1 =>
				IF IR(7 DOWNTO 6) = "00" THEN
					muxout(7 DOWNTO 0) <= mux_y;
					muxout(9 DOWNTO 8) <= (OTHERS => '0');
					regin <= mux_x;
					done <= '1';
					Gin <= '0';
					Ain <= '0';
					IRin <= '0';
							
				ELSIF IR(7 DOWNTO 6) = "01" THEN
					muxout <= "0100000000";
					regin <= mux_x;
					done <= '1';
					Gin <= '0';
					Ain <= '0';
					IRin <= '0';
							
				ELSIF IR(7 DOWNTO 6) = "10" THEN
					muxout(7 DOWNTO 0) <= mux_x;
					muxout(9 DOWNTO 8) <= (OTHERS => '0');
					Ain <= '1';
					Gin <= '0';
					IRin <= '0';
					regin <= "00000000";
					done <= '0';
							
				ELSIF IR(7 DOWNTO 6) = "11" THEN
					muxout(7 DOWNTO 0) <= mux_x;
					muxout(9 DOWNTO 8) <= (OTHERS => '0');
					Ain <= '1';
					Gin <= '0';
					IRin <= '0';
					regin <= "00000000";
					done <= '0';
				END IF;
				
			WHEN T2 =>
				IF IR(7 DOWNTO 6) = "10" THEN
					muxout(7 DOWNTO 0) <= mux_y;
					muxout(9 DOWNTO 8) <= (OTHERS => '0');
					Gin <= '1';
					Ain <= '0';
					regin <= "00000000";
					addsub <= '0';
					IRin <= '0';
					done <= '0';
					
				ELSIF IR(7 DOWNTO 6) = "11" THEN
					muxout(7 DOWNTO 0) <= mux_y;
					muxout(9 DOWNTO 8) <= (OTHERS => '0');
					Gin <= '1';
					Ain <= '0';
					IRin <= '0';
					regin <= "00000000";
					addsub <= '1';
					done <= '0';
				END IF;
					
			WHEN T3 =>
				IF IR(7 DOWNTO 6) = "10" THEN
					muxout <= "1000000000";
					regin <= mux_x;
					done <= '1';
					Gin <= '0';
					Ain <= '0';
					IRin <= '0';
							
				ELSIF IR(7 DOWNTO 6) = "11" THEN
					muxout <= "1000000000";
					regin <= mux_x;
					done <= '1';
					Gin <= '0';
					Ain <= '0';
					IRin <= '0';
				END IF;
					
			WHEN OTHERS =>
				done <= '0';
				Gin <= '0';
				Ain <= '0';
				IRin <= '0';
				regin <= "00000000";
		END CASE;
	END PROCESS;
	
END behavior;
