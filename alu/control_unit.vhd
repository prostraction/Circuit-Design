-- этот файл содержит описание МУУ в виде автомата МИЛИ, предназначенного для выполнения умножения и сложения
-- sko формируется после получения произведения 
-- используются следующие микрокоманды
-- nmk неактивная мк, действия не выполняются
-- mk1 прием [A],[B], очистка RR, инициализация i
-- mk2  RR=RR+RA
-- mk3  RR=RR-RA
-- mk4  RR=RA+RB
-- mk5  сдвиг RR, сдвиг RB, i=i+1
-- mk6  RR=+[0]
-- mk7  запись признака результата
-- Если разряд множителя равен нулю, такт суммирования не пропускается. По этой причине в 78 строке кода используется неактивная микрокоманда

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.mk_pack.all;	-- подключаем пакет с описанием микрокоманд


entity control_unit is

	port
	(
		clk		 : in	std_logic; -- тактовый сигнал
		set 		 : in	std_logic; --  сигнал начальной установки
		
		--  код операции: 
		--			01 -- умножение
		--			10 -- перессылка и проверка
		--			11 -- условный переход
		cop		 : in	std_logic_vector(1 downto 0); 
		
		x	 		 : in	std_logic_vector(4 downto 0);-- логические условия(
						-- 0: i = n
						-- 1: rb(i)
						-- 2: y=mk7 конец перехода
						-- 3: i=n-1 коррекция умножения
						-- 4: конец перессылки и проверки)
		sno		 : in	std_logic; -- сигнал начала операции
		sko	 	 : out	std_logic; -- сигнал конца операции
		y	 		 : out control_y;   -- управляющие сигналы для блока операций
		-- следующие сигналы добавлены для отладки
--		incr_i	 : buffer std_logic; -- разрешение инкремента i
		s_out		 : out   integer range 0 to 3; --  отладочный выход для наблюдения состояний
		next_state_out : out   integer range 0 to 3 --  отладочный выход для наблюдения состояний
	);

end entity;

architecture behav of control_unit is

	type state_type is (s0, s1, s2, s3); -- определяем состояния МУУ
	signal next_state, state : state_type; -- следующее состояние, текущее состояние
--	signal i : integer range 1 to 3 ; -- счетчик анализируемых разрядов множителя

begin

TS: process (clk,set) -- этот процесс определяет текущее состояние МУУ
	 begin
		if set = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then -- по положительному фронту переключаются состояния
			state <= next_state;			
		end if;
	 end process;
	 
NS: process (state,sno,x,cop) -- этот процесс определяет следующее состояние МУУ, управляющие сигналы для БО
	 begin
			case state is
				when s0=> -- переходы из s0
				 
					if (sno = '1') then
						next_state <= s1; y<=mk1; -- если есть сигнал начала операции
					else
						next_state <= s0; y<=nmk; -- иначе состояние не меняется
					end if;
				when s1=>
				   --  умножение
					if (cop = "01") then
						next_state <= s2; -- из s1 всегда переходим в s2
						-- операция уже закончена
						if (x(0) = '1') then
							next_state <= s3;
							y<=nmk;
						-- последний разряд с коррекцией
						elsif x(3) = '1' and x(1) = '1' then
							next_state <= s3; 
							y<=mk3;
						-- последний разряд b_n = 0 не сдвигается
						elsif x(3) = '1' and x(1) = '0' then
							next_state <= s3; 
							y<=nmk;
						-- иначе сложение
						elsif x(1)='1' THEN 
							y<=mk2;
						-- rb(i) = '0' - ничего не делаем
						else
							y<=nmk;
						end if;
						
					-- перессылка и проверка
					elsif (cop = "10") then
						next_state <= s2;
						y<= mk5;
					--
					elsif (cop = "11") then
						next_state <= s2;
						y<= mk7;
					end if;
					
				when s2=>
					if (cop = "01") then
						if (x(0) = '1') then
						-- сдвиг при коррекции не выполняется
							next_state <= s3;
							y<=nmk;
						else
						-- сдвиг
							next_state <= s1; y<=mk4;
						end if;
					elsif (cop = "10") then
						next_state <= s0;
						y<=mk6;
					elsif (cop = "11") then
						next_state <= s0;
						y <= mk7;
					end if;
					
				when s3 =>
				if (cop = "01") then
						next_state <= s0; y<=mk6;  -- иначе запись признака в RPR
				end if;		
				
			end case;		
	end process;
	
	
	
	sko<='1' when ((x(3) = '1') ) or ((x(0) = '1') ) or ((x(4) = '1') ) else
			'0';

	s_out<=0 when state=s0 else
			 1 when state=s1 else					
			 2 when state=s2 else
			 3;
	next_state_out<=0 when next_state=s0 else
			 1 when next_state=s1 else					
			 2 when next_state=s2 else
			 3;

end behav;