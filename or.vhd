library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_entity is
    Port ( clk : in STD_LOGIC;
			  a2 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           c2 : out  STD_LOGIC);
end or_entity;

architecture Behavioral of or_entity is

begin

clk_proc: process(clk)
	begin
	
	if rising_edge(clk) then
		c2 <= a2 or b2;
	end if;
end process;

end Behavioral;

