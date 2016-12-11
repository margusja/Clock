library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity minute is
    Port ( clk : in std_logic;
			  second : in std_logic;
			  input : in std_logic_vector (11 downto 0);
			  min_sec : in std_logic; 
			  output : out std_logic_vector (11 downto 0)
			  );
end minute;

architecture Behavioral of minute is

signal int_output : std_logic_vector (11 downto 0) := (others => '0');
signal int_minute : std_logic_vector (5 downto 0) := (others => '0');
signal int2 : std_logic;
signal int4 : std_logic_vector (5 downto 0);
signal prev_sec : std_logic := '0';

begin

int2 <= second;

clk_proc: process(clk)

begin

	if rising_edge(clk) then
	
		if (int2 /= prev_sec) then
			if (int4 = "111100") then
				--int_output <= int_output+"101000";
				int_output <= int_output+"1";
				int4 <= "000000";
			else
				int4 <= int4+"1";
				--int_output <= int_output+"1";
				prev_sec <= int2;
			end if;
		 end if; 
		
	end if;

if min_sec = '1' then
	output <= int_output;
else
	output <= input;
end if;

end process;

end Behavioral;

