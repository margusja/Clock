library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fast_counter is
    Port ( clk1 : in  STD_LOGIC;
           clk : out  STD_LOGIC);
end fast_counter;

architecture Behavioral of fast_counter is
signal counter : STD_LOGIC_VECTOR (13 downto 0) := (others => '0');
signal int_led : STD_LOGIC := '0';

begin
clk <= int_led;

clk_proc: process(clk1)
	begin
		if rising_edge(clk1) then
			counter <= counter+"1";
			
			if counter = "11111111111111" then -- 1s
				int_led <= not int_led;
				counter <= "00000000000000";
			end if;
			
		end if;	
		
		
		
	end process;

end Behavioral;

