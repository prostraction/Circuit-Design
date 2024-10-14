LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY work;
configuration Operation_Device_for_stand of TEST_OY is
for bdf_type
	for uut : Operation_device
		use entity work.OY(struct);	--Вот здесь подключать свою ОУ
		end for;
end for;
end Operation_Device_for_stand;