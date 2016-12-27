library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity second is
    Port ( clk : in  STD_LOGIC;
           seconds : out  STD_LOGIC_VECTOR (5 downto 0)
			  );
end second;

architecture Behavioral of second is

signal int_second : STD_LOGIC_VECTOR (5 downto 0);

begin

seconds <= int_second;

process (clk)


begin

if rising_edge(clk) then

	if (int_second = "111011") then 
		int_second <= "000000";
	else
		int_second <= int_second+"1";
	end if;
	
end if;

end process;

end Behavioral;

