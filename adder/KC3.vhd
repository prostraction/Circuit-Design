library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KC3 is
generic (n: integer := 4);
	Port (a:		in		integer range 0 to (2**(n+1))-1;
			clk:	in		STD_LOGIC;
			ce:	in		STD_LOGIC;
			f3:	out	bit;
			d:		out	STD_LOGIC_VECTOR (1 downto 0));
end KC3;

architecture Behavioral of KC3 is
signal pr:	STD_LOGIC_VECTOR (1 downto 0);
begin
	pr <= "00" 	when a = 0 else
		"01"		when a < 2**(n-1) else
		"11"		when a < (2**n) + 2**(n-1) else
		"10";
	f3 <= '1' 	when a = (2** (n+1))-1 else
		'0';
		
	process(clk)
	begin
		if clk'event and clk='1' then
			if ce='1' then
				d <= pr;
			end if;
		end if;
	end process;
end Behavioral;