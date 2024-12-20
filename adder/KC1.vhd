library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KC1 is
generic (n: integer := 4);
	Port ( a : in 	STD_LOGIC_VECTOR (n downto 1);
			 y : in 	STD_LOGIC_VECTOR (1 downto 0);
			 d : out STD_LOGIC_VECTOR (2*n downto 1));
end KC1;

architecture Behavioral of KC1 is

begin
with y select
	d(2*n downto n+1) <= (others => a(n)) when "10",
		(others => not a(n)) when "01",
		(others => '0') when others;

with y select
	d(n downto 1) <= a when "10",
		not a when "01",
		(others => '0') when others;
	
end Behavioral;