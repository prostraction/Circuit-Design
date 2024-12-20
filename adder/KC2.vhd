library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KC2 is
generic (n: integer := 4);
	Port ( 	b: in		STD_LOGIC_VECTOR (n downto 1);
				a: in		STD_LOGIC_VECTOR (2*n downto 1);
				q: out	STD_LOGIC_VECTOR (2*n downto 1);
				s:	in		STD_LOGIC);
end KC2;

architecture Behavioral of KC2 is
begin
	q(2*n downto n+1) <= a(2*n downto n+1) when s = '1'
	else (others=>b(n));
	
	q(n downto 1) <= a(n downto 1) when s = '1'
	else	b; -- b - 1?
end Behavioral;