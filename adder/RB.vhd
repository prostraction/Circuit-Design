library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RB is 
generic (n: integer := 4);
    port(
        b :  in  STD_LOGIC_VECTOR(n downto 1);
        q :  out STD_LOGIC_VECTOR(n downto 1);
        l :  in  STD_LOGIC;
        ce:  in  STD_LOGIC;
        f1:  out STD_LOGIC;
        f2:  out STD_LOGIC;
        clk: in  STD_LOGIC);
end RB;

architecture Behavioral of RB is 

signal state : STD_LOGIC_VECTOR(n downto 1);

begin
process (clk)
    begin
        if clk'event and clk='1' then
            if ce='1' then
                if l='1' then
                    ELSE state<=state(n) & state(n-2 downto 1) & '0';
                END IF;
            END IF;
        END IF;
    END process;

q<=state;
f1<=state(n);
f2<=state(n-1);

END Behavioral;