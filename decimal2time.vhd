library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decimal2time is
    Port ( 
           ones_in : in  STD_LOGIC_VECTOR (3 downto 0);
           tens_in : in  STD_LOGIC_VECTOR (3 downto 0);
           hundreds_in : in  STD_LOGIC_VECTOR (3 downto 0);
           thousands_in : in  STD_LOGIC_VECTOR (3 downto 0);
           ones_out : out  STD_LOGIC_VECTOR (3 downto 0);
           tens_out : out  STD_LOGIC_VECTOR (3 downto 0);
           hundreds_out : out  STD_LOGIC_VECTOR (3 downto 0);
           thousands_out : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end decimal2time;

architecture Behavioral of decimal2time is

begin


end Behavioral;

