library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity and_or is
    Port ( clk1 : in STD_LOGIC;
			  min_hour : in STD_LOGIC;
			  forward : in STD_LOGIC;
			  seconds : out std_logic_vector (5 downto 0);
			  ca : out  STD_LOGIC_VECTOR (7 downto 0);
			  an: out STD_LOGIC_VECTOR (3 downto 0)
			  );
end and_or;

architecture Behavioral of and_or is
signal count : integer :=1;
signal clk : std_logic :='0';
signal int_clk : std_logic := '0';
signal fast_clk : std_logic := '0';
signal int_sec : std_logic_vector (5 downto 0);
signal int_min : std_logic_vector (5 downto 0);
signal int_hour : std_logic_vector (5 downto 0);
signal int_switch_pos_one : std_logic_vector (5 downto 0);
signal int_switch_pos_two : std_logic_vector (5 downto 0);
signal int_min_status : std_logic := '0';
signal int_hour_status : std_logic := '0';
signal ones : STD_LOGIC_VECTOR (3 downto 0);
signal tens : STD_LOGIC_VECTOR (3 downto 0);
signal hundreds : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal thousands : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

component counter
	port (clk1: in std_logic;
			clk: out std_logic);
end component;

component second
	port (clk: in std_logic;
			seconds: out std_logic_vector (5 downto 0)
			);
end component;

component minute
	port (clk : in std_logic;
			second: in std_logic_vector (5 downto 0);
			minute: out std_logic_vector (5 downto 0)
			);
end component;

component bin2bcd_12bit
    port ( binIN : in  STD_LOGIC_VECTOR (5 downto 0);
           ones : out  STD_LOGIC_VECTOR (3 downto 0);
           tens : out  STD_LOGIC_VECTOR (3 downto 0)
          );
end component;			 

component seven_seg_displ is
    Port ( 
			  clk1: in STD_LOGIC;
			  clk: in STD_LOGIC;
           ones : in  STD_LOGIC_VECTOR (3 downto 0);
           tens : in  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : in  STD_LOGIC_VECTOR (3 downto 0);
           thousands : in  STD_LOGIC_VECTOR (3 downto 0);
			  an: out STD_LOGIC_VECTOR (3 downto 0);
           ca : out STD_LOGIC_VECTOR (7 downto 0)
			  );
end component seven_seg_displ;

component hour is
    Port ( clk : in  STD_LOGIC;
           hour : out  STD_LOGIC_VECTOR (5 downto 0) );
end component;

component fast_counter is
    Port ( clk1 : in  STD_LOGIC;
           clk : out  STD_LOGIC);
end component;

begin


seconds <=  int_min;

C1:counter port map (clk1, clk);
C8:fast_counter port map (clk1, fast_clk);

int_clk <= fast_clk when forward = '1' else clk;

C2:second port map (int_clk, int_sec);

C5:second port map (int_min_status, int_min);
C7:hour port map (int_hour_status, int_hour);

-- sec_min switch 
int_switch_pos_one <= int_min when min_hour = '1' else int_sec;
int_switch_pos_two <= int_hour when min_hour = '1' else int_min;

C3:bin2bcd_12bit port map (int_switch_pos_one, ones, tens);
C6:bin2bcd_12bit port map (int_switch_pos_two, hundreds, thousands);

C4:seven_seg_displ port map (clk1, clk, ones, tens, hundreds, thousands, an, ca);

-- hetkel lylitab 59 seci peal ringi
int_min_status <=  int_sec(5) AND int_sec(4) AND int_sec(3) AND int_sec(1) AND int_sec(0);
-- int_hour_status <= (int_min(5) AND int_min(4) AND int_min(3) AND int_min(1) AND int_min(0));
int_hour_status <= (not int_min(5) AND not int_min(4) AND not int_min(3) AND not int_min(2) AND not int_min(1) AND not int_min(0));


end Behavioral;