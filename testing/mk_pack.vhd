

-- сигнал control_y формируется управляющим автоматом для управления операционным автоматом
-- в разделе деклараций пакета содержится декларация типа управляющего сигнала control_y
-- и декларация типа для констант
-- тип control_y декларируется как перечислимый тип. Он определяет массив из 7 бит
-- полная декларация констант содержится в теле пакета

package mk_pack is -- декларация пакета
type control_y is array (6 downto 0)of bit;

constant nmk,mk1,mk2,mk3,mk4,mk5,mk6,mk7: control_y;

end package mk_pack;-- окончание пакета

package body mk_pack is -- тело пакета

constant nmk:control_y:="0000000";
constant mk1:control_y:="0000001";
constant mk2:control_y:="0000010";
constant mk3:control_y:="0000100";
constant mk4:control_y:="0001000";
constant mk5:control_y:="0010000";
constant mk6:control_y:="0100000";
constant mk7:control_y:="1000000";

end mk_pack;