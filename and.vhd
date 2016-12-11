library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_entity is
    Port ( clk : in STD_LOGIC;
			  a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           c1 : out  STD_LOGIC);
end and_entity;

architecture Behavioral of and_entity is

begin

clk_proc: process(clk)
	begin
	
	if rising_edge(clk) then
		c1 <= a1 and b1;
	end if;
end process;	

end Behavioral;

