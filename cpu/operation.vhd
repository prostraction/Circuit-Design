--В этом файле содержится описание блока операций, который выполняет две операции - умножение и сложение
--Используется 7 микрокоманд
--В пакете mk_pack описаны 7 микрокоманд

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.mk_pack.all;	-- подключаем пакет с описанием микрокоманд

entity operation is
generic(n:integer:=4); -- n параметр задает разрядность операндов
Port
(		y: in control_y;    										-- управляющие сигналы задают микрокоманды
		x: out std_logic_vector(4 downto 0);    			-- логические условия(i=n-1, отрицательный ноль, текущий разряд, знаковый
	   a: in std_logic_vector(n-1 downto 0);    			-- 1-ый операнд (множимое)
	   b: in std_logic_vector(n-1 downto 0);    			-- 2-ой операнд (множитель)
	   rc: buffer std_logic_vector(n*2-1 downto 0); 	-- результат (произведение)
		priznak: buffer std_logic_vector (1 downto 0); 	-- признак результата
		cx:	buffer std_logic_vector(n-1 downto 0) :=(others =>'0');	-- счетчик команд
	   clk: in std_logic											-- синхросигнал 
);
end operation;

architecture behav of operation is

shared variable ra: 	std_logic_vector(n-1 downto 0); 	-- регистр множимого
shared variable rb: 	std_logic_vector(n-1 downto 0); 	-- регистр множителя
shared variable i: 	integer range 0  to n; 				-- счетчик анализируемых разрядов
shared variable j: 	integer range 0  to 1; 				-- счетчик четырехразрядного когда
shared variable pr_saved:	std_logic_vector(1 downto 0); -- сохранен признак результата для корректной модификации
	
begin

   MK:process(clk) --этот процесс описывает выполняемые в БО микрокоманды
  
	variable a_sum, b_sum: std_logic_vector(2*n-1 downto 0);
	variable res_sum		: std_logic_vector(2*n downto 0);
	constant pos_zero		: std_logic_vector(2*n-1 downto 0):=(others =>'0');
	constant neg_zero		: std_logic_vector(2*n-1 downto 0):=(others =>'1');
	
	begin
	a_sum		:=(others=>'0');	-- для сложения (первое слагаемое)
	b_sum		:=(others=>'0');	-- для сложения (второе слагаемое)
	res_sum	:=(others=>'0');	-- для сложения (буфер результата)

	if (rising_edge(clk)) then
		-- прием для умножения
		if (y=mk1) then 
			ra(n-1 downto 0):=a;
			rb(n-1 downto 0):=b;
			rc<=(others =>'0');
			i := 0;
			j := 0;
			priznak<= (others =>'0');
			pr_saved := priznak;
		end if;
		
		-- сложение
		if (y=mk2) then 
				-- rc = rc + a (с коррекцией переполнения обратного кода)
				a_sum := rc(2*n-1 downto 0);
				b_sum(2*n-1 downto 2*n-3) := (others => (ra(n-1)));
				b_sum(2*n-3 downto n-1) := ra(n-2 downto 0);
				b_sum(n-2 downto 0) := (others => (ra(n-1)));
				res_sum := ('0'&a_sum) + ('0'&b_sum);		
				if (res_sum(2*n) = '1') then 
					res_sum(2*n) := '0'; res_sum := res_sum+1; 
				end if;
				rc(2*n-1 downto 0) <= res_sum (2*n-1 downto 0);
		end if;
		
		-- коррекция
		if (y=mk3) then 
				-- rc = rc + not ra
				b_sum(2*n-1 downto 2*n-3) := (others => (ra(n-1)));
				b_sum(2*n-3 downto n-1) := ra(n-2 downto 0);
				b_sum(n-2 downto 0) := (others => (ra(n-1)));--rb(n-1) or );
				res_sum := ('0'&rc) + ('0' & not (b_sum));
				if (res_sum(2*n) = '1') then res_sum(2*n) := '0'; res_sum := res_sum + 1; end if;
				
				-- ra >> 1 (n-1 раз)
				-- rc + ra
				b_sum (n-1 downto 0) := ra(n-1 downto 0);
				b_sum (2*n-1 downto n) := (others =>ra(n-1));
				res_sum := (res_sum) + ('0' & (b_sum));
				if (res_sum(2*n) = '1') then res_sum(2*n) := '0'; res_sum := res_sum+1; end if;
				
				-- запись результата
				rc <= res_sum(2*n-1 downto 0);
		end if;
		
		-- сдвиг вправо, инкремент анализируемого разряда
		if (y=mk4) then 
			 rc (n*2-2 downto 0) <= rc (n*2-1 downto 1);
			 i := i+1;
		end if;
		
		-- второй операнд должен быть подан в АЛУ и там сформирован признак результата.
		if (y=mk5) then 
			if rb = "0000" or rb = "1111" then priznak<= "00"; 	-- результат равен нулю
			elsif rb(n-1 downto n-2)="00" then priznak<= "01"; 	-- результат больше нуля
			elsif rb(n-1 downto n-2)="11" then priznak<= "10"; 	-- результат меньше нуля
			elsif rb(n-1 downto n-2)="10" then priznak<= "11";	-- переполнение
		end if;

		end if;
		
		-- проверка
		if (y=mk6) then 
			if rc = pos_zero or rc = neg_zero then priznak<= "00"; 						-- результат равен нулю
			elsif rc(2*n-1 downto 2*n-2)="00" then priznak<= "01"; 						-- результат больше нуля
			elsif rc(2*n-1 downto 2*n-2)="11" then priznak<= "10"; 						-- результат меньше нуля
			elsif rc(2*n-1 downto 2*n-2)="10" then priznak<= "11";						-- переполнение
			end if;
		end if;
		
		-- признак результата условный переход
		if (y=mk7) then 
			if (j = 0) then
			-- сохранили старое значение признака чтобы не потерять его
				pr_saved := priznak(1 downto 0);
			end if;
			-- 43 && 21
			if (ra(n-1-j-j)&ra(n-2-j-j) = pr_saved(1 downto 0)) then
				rc((2*n-1 - 4*j) downto (n - 4*j)) <= rb;
				priznak(1-j) <= '1';
			else
				priznak(1-j) <= '0';
			end if;
			j := j + 1;
			end if;
		end if;
		
		--Формируемые БО логические условия 
		if (i = n) then
			x(0)<='1';
		else
			x(0)<='0';					-- знаковый разряд множителя
		end if;
			
		x(1)<=rb(i);		-- анализируемый разряд множителя
		
		if (i=n-1) then
			x(3)<= '1';
		else
			x(3)<='0';
			
		if (j = 1) then
				x(2) <= '1';
				
		if (y=mk6) THEN
				x(4) <= '1';
		else
				x(4) <= '0';
		end if;

		end if;
	end if;

	end process;

end behav;