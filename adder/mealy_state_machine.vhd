library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mealy_state_machine is
	port
	(
		clk	: in 		std_logic;
		set	: in 		std_logic;
		x		: in 		std_logic_vector (2 downto 0);
		cop	: in		std_logic;
		sno	: in		std_logic;
		sko	: out		std_logic;
		y		: out 	std_logic_vector(10 downto 1);
		
		incr_i:				buffer 	std_logic;
		s_out	:				out		integer range 0 to 3;
		next_state_out:	out		integer range 0 to 3
	);	
end entity;

architecture rt1	of mealy_state_machine is
	type state_type is (s0, s1, s2);
	signal next_state, state:	state_type;
	signal i : integer range 1 to 3;
	
begin

TS: process (clk, set)
	begin
		if set = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			state <= next_state;
		end if;
end process;

NS: process(state, sno, x, i)
	begin
		case state is
			when s0 =>
				if (sno ='1') then
					next_state <= s1; y <= "0111000111";
				else
					next_state <= s0; y <= "0000000000";
				end if;
			
			when s1 =>
				next_state <= s2;
				if x (1 downto 0) = "10" then
					y <= "0101101000"; -- +RA
				elsif x (1 downto 0) = "01" then
					y <= "0101110000"; -- -RA
				else
					y <= "0101100000"; -- + 0
				end if;
				
				when s2 =>
					if i=3 then
						next_state <= s0; y <= "0000000000";
					else 
						next_state <= s1; y <= "0001000100";
					end if;
			end case;
end process;

sko 		<= '1' when state=s2 and i=3 	else 	'0';
incr_i 	<= '1' when state=s2 and i/=3 else 	'0';

count_i: process (sno, clk)
begin
	if (sno='1') then i<=1;
	elsif clk'event and clk='1' then
		if (incr_i='1') then i<=i+1;
		end if;
	end if;
end process;

s_out	<=	0	when 	state=s0 else
			1	when	state=s1 else
			2	when	state=s2	else
			3;
			
next_state_out <= 0 	when 	next_state=s0 else
						1	when	next_state=s1 else
						2	when	next_state=s2 else
						3;
						
end rt1;
