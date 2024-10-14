library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library work;
use work.moore_pack.all;			-- Подключение пакетов														
use work.pack.all;

entity Moore is
Port
(
   x: in in_x;		-- Вход автомата
   y: out out_y;	-- Выход автомата
   clk: in bit;	-- Сигнал синхронизации
   set: in bit		-- Сигнал установки
);
end Moore;

architecture ArchMoore of Moore is
signal NEXT_s,s:state_s;	-- Следующее и текущее состояния
begin
	N_state: process(s,x)-- Процесс формирования следующего состояния
	begin	
		case s is
			when a1=> 
				if   x=x2 then NEXT_s<=a2;
				end if;
			when a2=>
				if x=x1 then NEXT_s<=a1;
				elsif x=x2 then NEXT_s<=a3;
				elsif x=x3 then NEXT_s<=a4;
				end if; 
			when a3=>
				if x=x1 then NEXT_s<=a5;
				elsif x=x2 then NEXT_s<=a1;
				elsif x=x3 then NEXT_s<=a4;
				elsif x=x4 then NEXT_s<=a2;
				end if; 
			when a4 | a5 | a6 =>
				if x=x1 then NEXT_s<=a3;
				elsif x=x2 then NEXT_s<=a2;
				elsif x=x3 then NEXT_s<=a1;
				elsif x=x4 then NEXT_s<=a6;
				end if; 
		end case;
	end process N_state;
-- Формирование выходных сигналов
y<= y5 when s=a1 else
	 y4 when s=a2 else
	 y3 when s=a3 else
	 y6 when s=a4 else
	 y2 when s=a5 else
	 y1; 
-- Формирование текущего состояния--
s<=	a1 when set='1' else -- Если сигнал установки равен 1
		NEXT_s when (clk'event and clk='1'); -- По положительному фронту clk
end ArchMoore;	