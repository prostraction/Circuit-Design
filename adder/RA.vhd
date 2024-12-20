library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RA is
generic (n:integer:= 4);
	Port ( a : 	in 	STD_LOGIC_VECTOR (n downto 1);
			 d : 	out STD_LOGIC_VECTOR (n downto 1);
			 ce: 	in STD_LOGIC;
			 clk:	in STD_LOGIC);
end RA;

architecture Behavioral of RA is

begin
	process (clk)
		begin
			if clk'event and clk = '1' then
				if ce = '1' then
					d <= a;
				end if;
			end if;
		end process;
end Behavioral;