library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Multiply is
generic (n:integer:=4);     -- n параметр, задает разрядность операндов
Port(a:in std_logic_vector(n-1 downto 0);      -- множимое
     b: in std_logic_vector(n-1 downto 0);     -- множитель
     c: out std_logic_vector(2*n-1 downto 0)); -- произведение
end Multiply;
architecture Behavioral of Multiply is 
begin process(a,b)
variable rb: std_logic_vector (n-1 downto 0); 	-- для хранения множителя
variable ra: std_logic_vector (2*n-1 downto 0);	-- для хранения множимого
variable rc: std_logic_vector(2*n downto 0); 	-- для формирования суммы ЧП
begin

ra(2*n-1 downto n):=a; 					 -- присваиваем ra значение множимого
ra(n-1 downto 0):=(others =>a(n-1)); -- заполняем старшие разряды ra знаковым
rb:=b; 										 -- присваиваем rb значение множителя
rc:=(others=>'0');   					 -- обнуляем сумму ЧП

for i in n-2 downto 0 loop -- выполняем в цикле n-2 раз
	if (rb(i)='1') then   	-- корректирующий шаг
		rc:=rc+ra;		 	 	-- прибавляем множимое 
	else rc:=rc+0;			 	-- иначе пропускаем такт суммирования
	end if;
	if (rc(2*n)='1') then
		rc(2*n):='0';
		rc:=rc+1;
	end if;
	if i=n-1 then exit; 	 -- если последний шаг, то выходим из цикла
	end if;
	rc(2*n-1 downto 0):=rc(2*n-2 downto 0)&rc(2*n-2); -- сдвиг суммы ЧП влево
end loop;


if (rb(n-1)='1') then 	 -- коррекция результата при знаковом разряде равным 1
	rc:= rc+not(ra);
	if (rc(2*n)='1') then rc(2*n):='0'; rc:=rc+1;
	end if;
	
	for i in 1 to n-1 loop
	ra(2*n-2 downto 0):=ra(2*n-1 downto 1);
	end loop;
	rc:=rc+ra;
	if (rc(2*n)='1') then rc(2*n):='0'; rc:=rc+1;
	end if;
end if;

c<=rc(2*n-1 downto 0); -- передача результата на выход устройства
end process;
end Behavioral;