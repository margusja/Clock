library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity minute is
    Port ( clk : in std_logic;
				second : in std_logic_vector (5 downto 0);
			  minute : out std_logic_vector (5 downto 0)
			  );
end minute;

architecture Behavioral of minute is

signal int_minute : STD_LOGIC_VECTOR (5 downto 0);

begin

minute <= int_minute;

process (clk)

begin

if rising_edge(clk) then

	int_minute <= int_minute+"1";
	
end if;

end process;

end Behavioral;