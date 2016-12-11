library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_seg_displ is
    Port ( 
			  clk: in STD_LOGIC;
           ones : in  STD_LOGIC_VECTOR (3 downto 0);
           tens : in  STD_LOGIC_VECTOR (3 downto 0);
           hundreds : in  STD_LOGIC_VECTOR (3 downto 0);
           thousands : in  STD_LOGIC_VECTOR (3 downto 0);
			  an: out STD_LOGIC_VECTOR (3 downto 0);
           ca : out STD_LOGIC_VECTOR (7 downto 0)
			  );
end seven_seg_displ;

architecture Behavioral of seven_seg_displ is

signal s : std_logic_vector (1 downto 0);
signal clkdiv : std_logic_vector (8 downto 0); 

signal ca1 : std_logic_vector (7 downto 0);
signal ca2 : std_logic_vector (7 downto 0);
signal ca3 : std_logic_vector (7 downto 0);
signal ca4 : std_logic_vector (7 downto 0);

begin

s <= clkdiv(8 downto 7);

clk_proc: process(clk)

begin

if rising_edge(clk) then

clkdiv <= clkdiv+"1";

	-- display to digit0
	-- decoder
	-- yhelised			
	
	case ones is
		when "0000" => ca1 <= "11000000"; -- 0
 		when "0001" => ca1 <= "11111001"; -- 1
		when "0010" => ca1 <= "10100100"; -- 2
		when "0011" => ca1 <= "10110000"; -- 3
		when "0100" => ca1 <= "10011001"; -- 4
		when "0101" => ca1 <= "10010010"; -- 5
		when "0110" => ca1 <= "10000010"; -- 6
		when "0111" => ca1 <= "11111000"; -- 7
		when "1000" => ca1 <= "10000000"; -- 8
		when "1001" => ca1 <= "10010000"; -- 9
		
		when others => ca1 <= "11111111";
	end case;
	
	case tens is
		when "0000" => ca2 <= "11000000"; -- 0
 		when "0001" => ca2 <= "11111001"; -- 1
		when "0010" => ca2 <= "10100100"; -- 2
		when "0011" => ca2 <= "10110000"; -- 3
		when "0100" => ca2 <= "10011001"; -- 4
		when "0101" => ca2 <= "10010010"; -- 5
		-- when "0110" => ca2 <= "10000010"; -- 6
		when "0110" => ca2 <= "11000000"; -- 6
		when "0111" => ca2 <= "11111000"; -- 7
		when "1000" => ca2 <= "10000000"; -- 8
		when "1001" => ca2 <= "10010000"; -- 9
		
		when others => ca2 <= "11111111";
	end case;
	
	case hundreds is
		when "0000" => ca3 <= "11000000"; -- 0
 		when "0001" => ca3 <= "11111001"; -- 1
		when "0010" => ca3 <= "10100100"; -- 2
		when "0011" => ca3 <= "10110000"; -- 3
		when "0100" => ca3 <= "10011001"; -- 4
		when "0101" => ca3 <= "10010010"; -- 5
		when "0110" => ca3 <= "10000010"; -- 6
		when "0111" => ca3 <= "11111000"; -- 7
		when "1000" => ca3 <= "10000000"; -- 8
		when "1001" => ca3 <= "10010000"; -- 9
		
		when others => ca3 <= "11111111";
	end case;
	
	case thousands is
		when "0000" => ca4 <= "11000000"; -- 0
 		when "0001" => ca4 <= "11111001"; -- 1
		when "0010" => ca4 <= "10100100"; -- 2
		when "0011" => ca4 <= "10110000"; -- 3
		when "0100" => ca4 <= "10011001"; -- 4
		when "0101" => ca4 <= "10010010"; -- 5
		when "0110" => ca4 <= "10000010"; -- 6
		when "0111" => ca4 <= "11111000"; -- 7
		when "1000" => ca4 <= "10000000"; -- 8
		when "1001" => ca4 <= "10010000"; -- 9
		
		when others => ca4 <= "11111111";
	end case;

	case s is
		when "00" => an <= "0111";
		when "01" => an <= "1011";
		when "10" => an <= "1101";
		when "11" => an <= "1110";
		
		when others => an <= "1111";
	end case;
	
	case s is
		when "00" => ca <= ca1;
		when "01" => ca <= ca2;
		when "10" => ca <= ca3;
		when "11" => ca <= ca4;
		
		when others => ca <= "11111111";
	end case;

end if;

end process;

end Behavioral;

