library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    Port ( clk : in  STD_LOGIC;
			  second : out STD_LOGIC);
end counter;

architecture Behavioral of counter is
signal counter : STD_LOGIC_VECTOR (24 downto 0) := (others => '0');
signal int_led : STD_LOGIC := '0';

begin

second <= int_led;

clk_proc: process(clk)
	begin
		if rising_edge(clk) then
			counter <= counter+"1";
			
			if counter = "1011111010111100001000000" then -- 1s
				int_led <= not int_led;
				counter <= "0000000000000000000000000";
			end if;
			
		end if;	
		
		
		
	end process;

end Behavioral;

