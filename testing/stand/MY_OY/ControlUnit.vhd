library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is

	port
	(
		y	 		 : out std_logic_vector(9 downto 0);
		x	 		 : in	std_logic_vector(4 downto 0); -- логические условия(i=n-1, отрицательный ноль, текущий разряд, знаковый
		clk		 : in	std_logic; -- тактовый сигнал
		set 		 : in	std_logic; -- сигнал начальной установки
		sno		 : in	std_logic; -- сигнал начала операции
		sko	 	 : out	std_logic; -- сигнал конца операции
		s_out		 : out   integer range 0 to 3; --  отладочный выход для наблюдения состояний
		next_state_out : out   integer range 0 to 3 --  отладочный выход для наблюдения состояний
	);

end entity;

architecture behav1 of ControlUnit is

	type state_type is (s0, s1, s2, s3, s4); -- определяем состояния МУУ
	signal next_state, state : state_type; -- следующее состояние, текущее состояние

begin

TS: process (clk,set) -- этот процесс определяет текущее состояние МУУ
	 begin
		if set = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then -- по положительному фронту переключаются состояния
			state <= next_state;			
		end if;
	 end process;
	 
	 
NS: process (state,sno,x) -- этот процесс определяет следующее состояние МУУ, управляющие сигналы для БО
	 begin
			case state is
				when s0=> -- переходы из s0
					if (sno = '1') then
						next_state <= s1; y<="0000000001"; -- если есть сигнал начала операции
					else
						next_state <= s0; y<="0000000000"; -- иначе состояние не меняется
					end if;
				when s1=>
					next_state <= s2; -- из s1 всегда переходим в s2
					if x(1) = '1' or x(4)='1'  then
						y<="0000000010"; -- RR=RR +RA  	
					else 
						y<="0010000000"; -- RR=RR+0 
					end if;
				when s2=>
					if x(3) = '1' then  -- формируем сигнал конца операции
						 next_state <= s3; 
						if x(0) = '1' and x(4)='0' then
							y<="0000000100"; next_state<=s1;
						else
							y<="0000000000";
						end if;
						next_state <= s1; y<="0000010000";  -- иначе сдвиг RC, сдвиг RB
					end if;
				when s3 =>
						next_state <= s4; y<="0000100000";  -- иначе запись признака
				when s4 =>
						next_state <= s0; y<="0000000000";
			end case;			
	end process;
	
	sko<='1' when state=s4 else--when (state=s3 and ((x(3)='1' and ((x(0)='1' and x(4)='1') or  x(0)='0'))	or (cop='0'and x(2)='0'))) or state =s4 else -- формирование sko
			'0';
	s_out<=0 when state=s0 else
			 1 when state=s1 else					
			 2 when state=s2 else
			 3 when state=s3 else
			 4; 
	next_state_out<=0 when next_state=s0 else
			 1 when next_state=s1 else					
			 2 when next_state=s2 else
			 3 when next_state=s3 else
			 4;

end behav1;