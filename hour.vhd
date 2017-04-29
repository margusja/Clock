library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity hour is
    Port ( clk : in  STD_LOGIC;
           hour : out  STD_LOGIC_VECTOR (5 downto 0) );
end hour;

architecture Behavioral of hour is

signal int_hour : std_logic_vector (5 downto 0) := (others => '0');

begin

hour <= int_hour;

process (clk)

begin

if rising_edge(clk) then

	if (int_hour = "010111") then 
		int_hour <= "000000";
	else 
		int_hour <= int_hour+"1";
	end if;
	
end if;
end process; 

end Behavioral;

