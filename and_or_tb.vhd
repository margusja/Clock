--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:15:04 10/24/2016
-- Design Name:   
-- Module Name:   C:/Users/margusr/AppData/two_entities/and_or_tb.vhd
-- Project Name:  two_entities
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and_or
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY and_or_tb IS
END and_or_tb;
 
ARCHITECTURE behavior OF and_or_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_or
    PORT(
         clk : IN  std_logic;
         second : OUT  std_logic;
         reset : IN  std_logic;
         ca : OUT  std_logic_vector(7 downto 0);
         an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal second : std_logic;
   signal ca : std_logic_vector(7 downto 0);
   signal an : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_or PORT MAP (
          clk => clk,
          second => second,
          reset => reset,
          ca => ca,
          an => an
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
