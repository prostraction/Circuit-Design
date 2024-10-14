library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity OperationAutomat is
generic(n:integer); -- n параметр задает разрядность операндов
Port
(		y: in std_logic_vector(9 downto 0);    										-- управляющие сигналы задают микрокоманды
		x: out std_logic_vector(4 downto 0);    			-- логические условия(i=n-1, отрицательный ноль, текущий разряд, знаковый
	   a: in std_logic_vector(n-1 downto 0);    			-- 1-ый операнд (множимое)
	   b: in std_logic_vector(n-1 downto 0);    			-- 2-ой операнд (множитель)
	   rc: buffer std_logic_vector(n*2-1 downto 0); 	-- результат (произведение)
		priznak: out integer range 0  to 3; 	-- признака результата
		cx:	buffer std_logic_vector(n-1 downto 0) :=(others =>'0');	-- счетчик команд
	   clk: in std_logic											-- синхросигнал 
);
end OperationAutomat;

architecture behav1 of OperationAutomat is

--shared variable copp: std_logic;

-- функция выполняет суммирование чисел в обратном коде
function sum_obr_kod (XX,YY: std_logic_vector(2*n-1 downto 0))

		return std_logic_vector is
		variable sum: std_logic_vector(2*n downto 0):=(others =>'0');

	begin
	sum:=('0'&XX)+('0'&YY);
	if (sum(2*n)='1') then sum(2*n):='0';sum:= sum+1; -- корректирующий шаг
	end if;
	return sum(2*n-1 downto 0);
	end sum_obr_kod;

-- функция вычисляет признак результата
function priznak_rez (ZZ: std_logic_vector(2*n-1 downto 0); raa: std_logic_vector(n-1 downto 0))
			return  integer is
			variable pr:integer range 0 to 3;
			constant zero: std_logic_vector(n downto 0):=(others =>'0'); -- положительный ноль
	begin
		--if copp = '1' then 
			if ZZ = "00000000" then pr:= 0; 			-- результат равен нулю
			elsif ZZ(2*n - 1) = '0' then pr:= 1; 	-- результат больше нуля
			elsif ZZ(2*n - 1) = '1' then pr:= 2; 	-- результат меньше нуля
			else pr:= 3; 									-- переполнение
			end if;
		--else 
			--if ZZ(n downto 0) = zero and (ZZ(n-1 downto n-2) = raa(n-1 downto n-2) OR ZZ(n-1 downto n-2) = not(raa(n-1 downto n-2)))   then pr:= 0; 				-- результат равен 0, нет переноса
			--elsif ZZ(n downto 0) /= zero and (ZZ(n-1 downto n-2) = raa(n-1 downto n-2) OR ZZ(n-1 downto n-2) = not(raa(n-1 downto n-2))) then pr:= 1;				-- результат не равен 0, нет переноса
			--elsif ZZ(n downto 0) = zero and (ZZ(n-1 downto n-2) /= raa(n-1 downto n-2) OR ZZ(n-1 downto n-2) /= not(raa(n-1 downto n-2))) then pr:= 2;			-- результат равен 0, есть перенос
			--elsif ZZ(n downto 0) /= zero and (ZZ(n-1 downto n-2) /= raa(n-1 downto n-2) OR ZZ(n-1 downto n-2) /= not(raa(n-1 downto n-2))) then pr:= 3;			-- результат не равен 0, есть перенос
			--end if;
		--end if;
		return pr;
		end priznak_rez;

	constant neg_zero: std_logic_vector(n downto 0):=(others =>'1'); -- отрицательный ноль	

   signal ra: std_logic_vector(n-1 downto 0); 	--регистр множимого
   signal rb: std_logic_vector(n-1 downto 0); 	--регистр множителя
   signal i: integer range 1  to n-1; 				--счетчик анализируемых разрядов
	signal i_kor: integer;
	
begin

   MK:process(clk) --этот процесс описывает выполняемые в БО микрокоманды
	variable zn_a,zn_b: std_logic_vector(n-1 downto 0);
	 begin
	zn_a:=(others=>ra(n-1));
	zn_b:=(others=>rb(n-1));
	--copp:=cop;
   if clk' event and clk='1' then --по положительному фронту clk
	if (y="0000000001") then 
	ra(n-1 downto 0)<=a;
	rb(n-1 downto 0)<=b;
	rc<=(others =>'0'); i<=1; i_kor<=0; -- если mk1, то
	--прием  в ra множимого, прием в rb множителя, обнуление rc, инициализация i
	end if;
	if (y="0000000010") then rc<=sum_obr_kod(rc,zn_a&ra); 	-- если mk2, то к rc прибавляем множимое +RA
	end if;
 
	if (y="0000000100") then rc<=sum_obr_kod(rc, not ra(n-1) & not ra(n-1 downto 0) & not ra(n-1) &not ra(n-1)&not ra(n-1));
		i_kor<=1;					
	end if;
	if (y="0000001000") then 
	rc <=sum_obr_kod(zn_a & ra,not zn_b & not(rb)); -- если mk4, то из RA вычитается RB;    
	end if;
	if (y="0000010000") then 
		rc<=rc(n*2-2 downto 0)&rc (2*n-1); rb(n-2 downto 1)<=rb(n-3 downto 0); i<=i+1; -- если mk5, то
	-- сдвиг влево rc, сдвиг влево rb, инкремент i
	end if;
	if (y="0000100000") 
	then rc<=(others =>'0'); 	-- если mk6, то обнуляем RC
	end if;
	if (y="0001000000") then 
		priznak<= priznak_rez(rc, ra); -- если mk7, то запись признака в регистр признака
		rc<=rc(n*2-2 downto 0)&rc (2*n-1);
	end if;
	if (y="0010000000") then 
		 rc <= rc + 0;
	end if;
	end if;
	end process;
	--Формируемые БО логические условия 
	x(0)<=rb(n-1);						-- знаковый разряд множителя
	x(1)<=rb(n-2);						-- анализируемый разряд множителя
	x(2)<='1' when rc(n downto 0 )= neg_zero else '0';	-- признак отрицательного нуля
	x(3)<='1' when i=n-1 else '0';	-- признак анализа младшего цифрового разряда множителя
	x(4)<='1' when i_kor=1 else '0'; --счётчик коррекции
end behav1;