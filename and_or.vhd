library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity and_or is
    Port ( clk : in STD_LOGIC;
			  second : out STD_LOGIC;
			  reset : in STD_LOGIC;
			  min_sec : in STD_LOGIC;
			  ca : out  STD_LOGIC_VECTOR (7 downto 0);
			  an: out STD_LOGIC_VECTOR (3 downto 0)
			  );
end and_or;

architecture Behavioral of and_or is

signal int2 : std_logic;
signal int_demo_led_in : std_logic_vector (11 downto 0) := (others => '0');
signal int_demo_led_out : std_logic_vector (11 downto 0) := (others => '0');
signal prev_sec : std_logic := '0';
signal int4 : std_logic_vector (5 downto 0);
signal int_minute : std_logic;

signal ones2 : std_logic_vector (3 downto 0);
signal tens2 : std_logic_vector (3 downto 0);
signal hundreds2 : std_logic_vector (3 downto 0);
signal thousands2 : std_logic_vector (3 downto 0);


component counter
	port (clk: in std_logic;
			second: out std_logic);
end component;

component bin2bcd_12bit
    port ( binIN : in  STD_LOGIC_VECTOR (11 downto 0);
           ones : out  STD_LOGIC_VECTOR (3 downto 0);
           tens : out  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
           thousands : out  STD_LOGIC_VECTOR (3 downto 0)
          );
end component;

component seven_seg_displ
    port ( clk: in STD_LOGIC;
           ones : in  STD_LOGIC_VECTOR (3 downto 0);
           tens : in  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : in  STD_LOGIC_VECTOR (3 downto 0);
           thousands : in  STD_LOGIC_VECTOR (3 downto 0);
			  an: out STD_LOGIC_VECTOR;
           ca : out  STD_LOGIC_VECTOR
			  );
end component;

component minute
    port ( clk: in std_logic;
			  second: in std_logic; 
			  input: in STD_LOGIC_VECTOR (11 downto 0);
			  min_sec: in std_logic;
			  output: out STD_LOGIC_VECTOR (11 downto 0)
			  );
end component;

begin  

second <= int2;


C4:counter port map (clk, int2);
C1:minute port map (clk, int2, int_demo_led_in, min_sec, int_demo_led_out);
C6:bin2bcd_12bit port map (int_demo_led_out, ones2, tens2, hundreds2, thousands2);
C7:seven_seg_displ port map (clk, ones2, tens2, hundreds2, thousands2, an, ca);

-- see osa tuleks t6sta ka eraldi moodulisse
led_process : process(clk)
begin

	if rising_edge(clk) then
		-- reset
		if (reset = '1') then
			int_demo_led_in <= "000000000000";
			int4 <= "000000";
		end if;
	
		if (int2 /= prev_sec) then
			if (int4 = "111100") then
				int_demo_led_in <= int_demo_led_in+"101000";
				int4 <= "000000";
			else
				int4 <= int4+"1";
				int_demo_led_in <= int_demo_led_in+"1";
				prev_sec <= int2;
			end if;
		 end if; 
		
	end if;
end process;

end Behavioral;

