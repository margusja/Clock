LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY and_or_tb IS
END and_or_tb;
 
ARCHITECTURE behavior OF and_or_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_or
    PORT(
         clk1 : IN  std_logic;
         seconds : OUT  std_logic_vector(5 downto 0);
         ca : OUT  std_logic_vector(7 downto 0);
         an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk1 : std_logic := '0';

 	--Outputs
   signal seconds : std_logic_vector(5 downto 0);
   signal ca : std_logic_vector(7 downto 0);
   signal an : std_logic_vector(3 downto 0);
	signal int_min_status: std_logic_vector (5 downto 0);
	signal int_sec : std_logic_vector (5 downto 0) := "000000";

   -- Clock period definitions
   constant clk1_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_or PORT MAP (
          clk1 => clk1,
          seconds => seconds,
          ca => ca,
          an => an
        );

   -- Clock process definitions
   clk1_process :process
   begin
		clk1 <= '0';
		wait for clk1_period/2;
		clk1 <= '1';
		wait for clk1_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk1_period*10;

      -- insert stimulus here 
		int_sec <= "000000";
		wait for clk1_period*10;
		int_sec <= "000001";
		wait for clk1_period*10;
				int_sec <= "000010";
		wait for clk1_period*10;
		
				int_sec <= "111011";
		wait for clk1_period*10;
		

      wait;
   end process;

END;
