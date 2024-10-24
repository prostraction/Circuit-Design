library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity summator is
generic (n: integer := 4);
	Port (a: in		STD_LOGIC_VECTOR(2*n downto 1);
			b: in		STD_LOGIC_VECTOR(2*n downto 1);
			s: out	STD_LOGIC_VECTOR(2*n downto 1));
end summator;

architecture Behavioral of summator is
begin
	pr:				process(a, b)
	variable	sum:	STD_LOGIC_VECTOR(2*n downto 0);
	begin
		sum := ('0' & a) + ('0' & b);
		if (sum(2*n) = '1') then
			sum(2*n) := '0';
			sum 		:= sum + 1;
		end if;
	s <= sum(2*n-1 downto 0);
	end process pr;
end Behavioral;