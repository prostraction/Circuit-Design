library ieee;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.NUMERIC_STD.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE  IEEE.math_real.all;

entity true_choice is
port(x :in std_logic_vector(1 downto 0) ;
	 S :in std_logic_vector(1 downto 0) ;
	 adr:out std_logic_vector(3 downto 0));
end true_choice;
architecture Behavioral of true_choice is
signal tmp: integer;
begin
 process (x,S)
begin  
    tmp <= CONV_INTEGER(S)*4 + (CONV_INTEGER(x));	
    adr(3 downto 0)<= CONV_STD_LOGIC_VECTOR(tmp,4);   
      
         
end process;
end Behavioral;