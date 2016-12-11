--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:31:50 10/24/2016
-- Design Name:   
-- Module Name:   C:/Users/margusr/AppData/two_entities/minute_tb.vhd
-- Project Name:  two_entities
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: minute
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
 
ENTITY minute_tb IS
END minute_tb;
 
ARCHITECTURE behavior OF minute_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT minute
    PORT(
         clk : IN  std_logic;
         second : IN  std_logic;
         minute2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal second : std_logic := '0';

 	--Outputs
   signal minute2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: minute PORT MAP (
          clk => clk,
          second => second,
          minute2 => minute2
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

      -- insert stimulus here 
		for i in 0 to 2550 loop
		second <= not second;
		wait for 10 ns;
		end loop;
		

      wait;
   end process;

END;
