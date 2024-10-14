library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity cp is
generic(n:integer:=4); -- n параметр задает разрядность операндов
Port
(
		a: 	out std_logic_vector(n-1 downto 0);    			-- 1-ый операнд (множимое)
	   b: 	buffer std_logic_vector(n-1 downto 0);    		-- 2-ой операнд (множитель)
		set:	buffer	std_logic; 					--  сигнал начальной установки
		cop: 	buffer	std_logic_vector(1 downto 0); 
		sno:	out	std_logic;
		
		rc: 		in std_logic_vector(n*2-1 downto 0); 	-- результат (произведение)
		priznak: in std_logic_vector (1 downto 0); 	-- признак результата										
		sko:		in std_logic;
		clk: 		in std_logic;		-- синхросигнал 
		
		a_test:		in std_logic_vector(n-1 downto 0);
		b_test:		in std_logic_vector(n-1 downto 0);
		cop_test: 	in	std_logic_vector(1 downto 0);
		cx_test:		buffer std_logic_vector(n-1 downto 0)
);
end cp;

architecture behav of cp is

type state_type is (s0, s1, s2, s3); -- определяем состояния ЦУУ
signal next_state, state : state_type;

shared variable cx: std_logic_vector(n-1 downto 0) :=(others =>'0');
shared variable i: integer := 0;

begin
TS: process (clk) -- этот процесс определяет текущее состояние ЦУУ
	 begin
		if i = 0 then
			state <= s0;
		elsif (rising_edge(clk)) then -- по положительному фронту переключаются состояния
			state <= next_state;			
		end if;
	 end process;
	 
CP:process(clk) 
	begin
	if (rising_edge(clk)) then
		case state is
					-- умножение 1/3 задать множимое множитель
					when s0 =>
							a <= a_test;
							b <= b_test;
							set <= '1';
							cop <= cop_test;
							sno <= '0';
							next_state  <= s1;
							i := i + 1;
					-- умножение 2/3 начать умножение
					when s1 =>
							a <= a_test;
							b <= b_test;
							set <= '0';
							sno <= '1';
							next_state  <= s2;
					-- умножение 3/3 ожидание конца умножения
					when s2 =>
						sno <= '0';
						next_state <= s3;
					when s3 =>
							if (sko = '0') then
								next_state <= s3;
							else
								if (cop = "10") then
									a(n-1 downto 1) <= (others => '0');
									a(1 downto 0) <= priznak;
								elsif (cop = "11") then
									if (priznak(1) = '1') then
									-- Если значение ПР соответствует КМ (пpимеp:ПР =2 и КМ=ХХ1Х, где Х pавно 0 или 1)
										cx := b;
										cx_test <= cx;
									else
									-- В пpотивном случае (пpимеp: ПР=2 и КМ =ХХ0Х) (СК)=(СК)+2. 
										cx := cx + 2;
										cx_test <= cx;
									end if;
									
									if (priznak(0) = '1') then
									-- Если значение ПР соответствует КМ (пpимеp:ПР =2 и КМ=ХХ1Х, где Х pавно 0 или 1)
										cx := b;
										cx_test <= cx;
									else
									-- В пpотивном случае (пpимеp: ПР=2 и КМ =ХХ0Х) (СК)=(СК)+2. 
										cx := cx + 2;
										cx_test <= cx;
									end if;
									
								end if;
								next_state <= s0;
							end if;
					end case;
		end if;
	end process;
end behav;