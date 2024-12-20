-- Generated by Quartus II Version 9.0 (Build Build 132 02/25/2009)
-- Created on Sat Oct 02 20:19:30 2010

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
use ieee.NUMERIC_STD.all;
-- этот модуль формирует действительный результат умножения
ENTITY actual_result IS
generic( n:integer  range 4 downto 1 :=4;
			mode:integer range 0 to 5:= 4);

	PORT
	(	
		rez_true	: out std_logic_vector(2*n-1 downto 0);			-- действительный результат
		x 			: in  STD_LOGIC_VECTOR(n-1  downto 0);		-- множимое
		y 			: in  STD_LOGIC_VECTOR(n-1  downto 0)		-- множитель
		);
	
END actual_result;
-- Режим устанавливается сигналом "Mode":

--		0   Прямой код, целые числа.
--		1   Прямой код, дробные числа.
--		2  Обратный код, целые числа.
--		3   Обратный код, дробные числа.
--		4   Дополнительный код, целые числа.
--		5   Дополнительный код, дробные числа.

architecture test_architecture of actual_result is	

begin

process(x,y)
-- этот процесс формирует действительный результат умножения, для заданных операндов 
variable mkod : integer range 0 to 5;				-- код режима
variable mbin : std_logic_vector(2*n-1 downto 0);	-- для вычисления произведения
variable xbin,ybin,xp,yp : std_logic_vector(n-1 downto 0);
variable zero : std_logic_vector(2*n-1 downto 0);
-- хр,ур преобразованные множимое и множитель
begin

mkod:=mode;
xbin:=x;		-- множимое
ybin:=y;		-- множитель
zero:=(others => '0');
if xbin(n-1)='1' then case mkod is	-- если множимое отрицательное, то преобразум его в положительное
						 when 0|1 => xp:='0'& xbin(n-2 downto 0);	--  если прямой код
						 when 2|3 => xp:=not xbin(n-1 downto 0);		--  если обратный код
						 when 4|5 => xp:=not xbin(n-1 downto 0)+1;	--  если дополнительный код
				   	end case;
	else xp:=xbin; end if;												-- иначе, не меняем множимое

if ybin(n-1)='1' then case mkod is -- аналогичным образом преобразум множитель, если он отрицательный
						 when 0|1 => yp:='0'& ybin(n-2 downto 0);	-- если прямой код
					 	 when 2|3 => yp:=not ybin(n-1 downto 0);		-- если обратный код
						 when 4|5 => yp:=not ybin(n-1 downto 0)+1;	-- если дополнительный код
						end case;
	else yp:=ybin; end if;												-- иначе, не меняем множитель

mbin:=xp*yp;			-- вычисляем произведение для положительных операндов
if (ybin(n-1) xor xbin(n-1))='1' then case mkod is			-- если результат отрицательный, представляем его в заданном коде
									   when 0 => mbin(2*n-1):='1'; -- в знаковый разряд записываем '1', если прямой код и целые числа
									   when 1 => mbin:='1'& mbin((2*n-3) downto 0)&'0';					--, если прямой код и дробные числа
									   when 2 => mbin:=not mbin; mbin(2*n-1):='1';						--, если обратный код и целые числа
									   when 3 => mbin:=not mbin; mbin:='1'& mbin(2*n-3 downto 0)&'1';--,если обратный код и дробные числа 									   
									   when 4 => if mbin/=zero then 								--, если дополнительный код и целые числа
												 mbin:=not mbin+1; mbin(2*n-1):='1'; end if;
									   when 5 => if mbin/=zero then								--, если дополнительный код и дробные числа
												 mbin:=not mbin+1; mbin:='1'& mbin(2*n-3 downto 0)&'0'; end if;
								   end case;
else case mkod is				-- если результат положительный
		  when 0|2|4 => null;-- если числа целые
		  when 1|3|5 => mbin(2*n-2 downto 0):=mbin(2*n-3 downto 0)&'0';-- если числа дробные
	  end case;
end if;


rez_true <= mbin(2*n-1 downto 0);	--передаем на выход действительный результат


end process;

END test_architecture;
