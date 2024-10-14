library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RR is
generic (n: integer := 4);
	Port (d:		in		STD_LOGIC_VECTOR (2*n downto 1);
			l:		in		STD_LOGIC;
			ce:	in 	STD_LOGIC;
			clk:	in		STD_LOGIC;
			r:		in		STD_LOGIC;
			q:		out	STD_LOGIC_VECTOR (2*n downto 1));
end RR;

architecture Behavioral of RR is
signal state:	STD_LOGIC_VECTOR (2*n downto 1);

begin
process (clk)
begin
	if clk'event and clk='1' then
		if r='1' then
			state <= (others => '0');
		elsif ce='1' then
			if l='1' then
				state <= d;
			else
				state <= state(2*n-1 downto 1) & state (2*n);
			end if;
		end if;
	end if;
end process;

q <= state;
end Behavioral;