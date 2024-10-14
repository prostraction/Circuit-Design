-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/21/2022 23:05:18"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	sko : OUT std_logic;
	clk : IN std_logic;
	a_t : IN std_logic_vector(3 DOWNTO 0);
	b_t : IN std_logic_vector(3 DOWNTO 0);
	cop_t : IN std_logic_vector(1 DOWNTO 0);
	cx_test : OUT std_logic_vector(3 DOWNTO 0);
	pr : OUT std_logic_vector(1 DOWNTO 0);
	pr_rc : OUT std_logic_vector(7 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- sko	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cx_test[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cx_test[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cx_test[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cx_test[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr_rc[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_t[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_t[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_t[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cop_t[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cop_t[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_t[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_t[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_t[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_t[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_t[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sko : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_a_t : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b_t : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cop_t : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cx_test : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pr_rc : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|Selector11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \cx_test[3]~output_o\ : std_logic;
SIGNAL \cx_test[2]~output_o\ : std_logic;
SIGNAL \cx_test[1]~output_o\ : std_logic;
SIGNAL \cx_test[0]~output_o\ : std_logic;
SIGNAL \pr[1]~output_o\ : std_logic;
SIGNAL \pr[0]~output_o\ : std_logic;
SIGNAL \pr_rc[7]~output_o\ : std_logic;
SIGNAL \pr_rc[6]~output_o\ : std_logic;
SIGNAL \pr_rc[5]~output_o\ : std_logic;
SIGNAL \pr_rc[4]~output_o\ : std_logic;
SIGNAL \pr_rc[3]~output_o\ : std_logic;
SIGNAL \pr_rc[2]~output_o\ : std_logic;
SIGNAL \pr_rc[1]~output_o\ : std_logic;
SIGNAL \pr_rc[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cop_t[1]~input_o\ : std_logic;
SIGNAL \inst14|next_state.s1~0_combout\ : std_logic;
SIGNAL \inst14|next_state.s1~q\ : std_logic;
SIGNAL \inst14|state.s1~feeder_combout\ : std_logic;
SIGNAL \inst14|i[0]~93_combout\ : std_logic;
SIGNAL \inst14|i[1]~31_combout\ : std_logic;
SIGNAL \inst14|i[1]~32\ : std_logic;
SIGNAL \inst14|i[2]~33_combout\ : std_logic;
SIGNAL \inst14|i[2]~34\ : std_logic;
SIGNAL \inst14|i[3]~35_combout\ : std_logic;
SIGNAL \inst14|i[3]~36\ : std_logic;
SIGNAL \inst14|i[4]~37_combout\ : std_logic;
SIGNAL \inst14|i[4]~38\ : std_logic;
SIGNAL \inst14|i[5]~39_combout\ : std_logic;
SIGNAL \inst14|i[5]~40\ : std_logic;
SIGNAL \inst14|i[6]~41_combout\ : std_logic;
SIGNAL \inst14|i[6]~42\ : std_logic;
SIGNAL \inst14|i[7]~43_combout\ : std_logic;
SIGNAL \inst14|i[7]~44\ : std_logic;
SIGNAL \inst14|i[8]~45_combout\ : std_logic;
SIGNAL \inst14|i[8]~46\ : std_logic;
SIGNAL \inst14|i[9]~47_combout\ : std_logic;
SIGNAL \inst14|i[9]~48\ : std_logic;
SIGNAL \inst14|i[10]~49_combout\ : std_logic;
SIGNAL \inst14|i[10]~50\ : std_logic;
SIGNAL \inst14|i[11]~51_combout\ : std_logic;
SIGNAL \inst14|i[11]~52\ : std_logic;
SIGNAL \inst14|i[12]~53_combout\ : std_logic;
SIGNAL \inst14|i[12]~54\ : std_logic;
SIGNAL \inst14|i[13]~55_combout\ : std_logic;
SIGNAL \inst14|i[13]~56\ : std_logic;
SIGNAL \inst14|i[14]~57_combout\ : std_logic;
SIGNAL \inst14|i[14]~58\ : std_logic;
SIGNAL \inst14|i[15]~59_combout\ : std_logic;
SIGNAL \inst14|i[15]~60\ : std_logic;
SIGNAL \inst14|i[16]~61_combout\ : std_logic;
SIGNAL \inst14|i[16]~62\ : std_logic;
SIGNAL \inst14|i[17]~63_combout\ : std_logic;
SIGNAL \inst14|i[17]~64\ : std_logic;
SIGNAL \inst14|i[18]~65_combout\ : std_logic;
SIGNAL \inst14|i[18]~66\ : std_logic;
SIGNAL \inst14|i[19]~67_combout\ : std_logic;
SIGNAL \inst14|i[19]~68\ : std_logic;
SIGNAL \inst14|i[20]~69_combout\ : std_logic;
SIGNAL \inst14|i[20]~70\ : std_logic;
SIGNAL \inst14|i[21]~71_combout\ : std_logic;
SIGNAL \inst14|i[21]~72\ : std_logic;
SIGNAL \inst14|i[22]~73_combout\ : std_logic;
SIGNAL \inst14|i[22]~74\ : std_logic;
SIGNAL \inst14|i[23]~75_combout\ : std_logic;
SIGNAL \inst14|i[23]~76\ : std_logic;
SIGNAL \inst14|i[24]~77_combout\ : std_logic;
SIGNAL \inst14|i[24]~78\ : std_logic;
SIGNAL \inst14|i[25]~79_combout\ : std_logic;
SIGNAL \inst14|i[25]~80\ : std_logic;
SIGNAL \inst14|i[26]~81_combout\ : std_logic;
SIGNAL \inst14|i[26]~82\ : std_logic;
SIGNAL \inst14|i[27]~83_combout\ : std_logic;
SIGNAL \inst14|i[27]~84\ : std_logic;
SIGNAL \inst14|i[28]~85_combout\ : std_logic;
SIGNAL \inst14|i[28]~feeder_combout\ : std_logic;
SIGNAL \inst14|i[28]~86\ : std_logic;
SIGNAL \inst14|i[29]~87_combout\ : std_logic;
SIGNAL \inst14|i[29]~feeder_combout\ : std_logic;
SIGNAL \inst14|i[29]~88\ : std_logic;
SIGNAL \inst14|i[30]~89_combout\ : std_logic;
SIGNAL \inst14|i[30]~feeder_combout\ : std_logic;
SIGNAL \inst14|i[30]~90\ : std_logic;
SIGNAL \inst14|i[31]~91_combout\ : std_logic;
SIGNAL \inst14|i[31]~feeder_combout\ : std_logic;
SIGNAL \inst14|Equal0~9_combout\ : std_logic;
SIGNAL \inst14|Equal0~8_combout\ : std_logic;
SIGNAL \inst14|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|Equal0~3_combout\ : std_logic;
SIGNAL \inst14|Equal0~4_combout\ : std_logic;
SIGNAL \inst14|Equal0~5_combout\ : std_logic;
SIGNAL \inst14|Equal0~6_combout\ : std_logic;
SIGNAL \inst14|Equal0~7_combout\ : std_logic;
SIGNAL \inst14|Equal0~10_combout\ : std_logic;
SIGNAL \inst14|state.s1~q\ : std_logic;
SIGNAL \inst14|next_state.s2~feeder_combout\ : std_logic;
SIGNAL \inst14|next_state.s2~q\ : std_logic;
SIGNAL \inst14|state.s2~feeder_combout\ : std_logic;
SIGNAL \inst14|state.s2~q\ : std_logic;
SIGNAL \inst14|Selector6~0_combout\ : std_logic;
SIGNAL \inst14|next_state.s3~q\ : std_logic;
SIGNAL \inst14|state.s3~q\ : std_logic;
SIGNAL \inst14|cx_test[3]~7_combout\ : std_logic;
SIGNAL \inst14|next_state.s0~q\ : std_logic;
SIGNAL \inst14|state.s0~feeder_combout\ : std_logic;
SIGNAL \inst14|state.s0~q\ : std_logic;
SIGNAL \cop_t[0]~input_o\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|Selector5~0_combout\ : std_logic;
SIGNAL \inst14|sno~q\ : std_logic;
SIGNAL \inst|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector11~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|next_state.s0_466~combout\ : std_logic;
SIGNAL \inst|inst|state.s0~0_combout\ : std_logic;
SIGNAL \inst14|Selector4~0_combout\ : std_logic;
SIGNAL \inst14|set~q\ : std_logic;
SIGNAL \inst|inst|state.s0~q\ : std_logic;
SIGNAL \inst|inst|Selector2~5_combout\ : std_logic;
SIGNAL \inst|inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|inst2|i~2_combout\ : std_logic;
SIGNAL \inst|inst2|Equal18~0_combout\ : std_logic;
SIGNAL \b_t[3]~input_o\ : std_logic;
SIGNAL \inst14|a~2_combout\ : std_logic;
SIGNAL \inst|inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst|inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst2|rb~1_combout\ : std_logic;
SIGNAL \b_t[2]~input_o\ : std_logic;
SIGNAL \inst|inst2|rb~0_combout\ : std_logic;
SIGNAL \b_t[0]~input_o\ : std_logic;
SIGNAL \inst14|b[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|rb~3_combout\ : std_logic;
SIGNAL \b_t[1]~input_o\ : std_logic;
SIGNAL \inst|inst2|rb~2_combout\ : std_logic;
SIGNAL \inst|inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst|inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst|inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal3~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add6~0_combout\ : std_logic;
SIGNAL \inst|inst2|i~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal17~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector2~4_combout\ : std_logic;
SIGNAL \inst|inst|next_state.s1_443~combout\ : std_logic;
SIGNAL \inst|inst|state.s1~q\ : std_logic;
SIGNAL \inst|inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst|next_state.s2_420~combout\ : std_logic;
SIGNAL \inst|inst|state.s2~q\ : std_logic;
SIGNAL \inst|inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst2|i~1_combout\ : std_logic;
SIGNAL \inst|inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|inst|next_state.s3_397~combout\ : std_logic;
SIGNAL \inst|inst|state.s3~q\ : std_logic;
SIGNAL \inst|inst2|Equal15~0_combout\ : std_logic;
SIGNAL \inst|inst2|j~1_combout\ : std_logic;
SIGNAL \inst|inst2|j~q\ : std_logic;
SIGNAL \inst|inst2|j~0_combout\ : std_logic;
SIGNAL \a_t[3]~input_o\ : std_logic;
SIGNAL \inst14|Selector0~0_combout\ : std_logic;
SIGNAL \inst14|a[3]~3_combout\ : std_logic;
SIGNAL \inst|inst2|ra~2_combout\ : std_logic;
SIGNAL \a_t[2]~input_o\ : std_logic;
SIGNAL \inst14|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst2|ra~0_combout\ : std_logic;
SIGNAL \a_t[0]~input_o\ : std_logic;
SIGNAL \inst14|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst2|ra~1_combout\ : std_logic;
SIGNAL \inst|inst2|pr_saved~2_combout\ : std_logic;
SIGNAL \inst|inst2|pr_saved~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal16~0_combout\ : std_logic;
SIGNAL \inst|inst2|rc~12_combout\ : std_logic;
SIGNAL \inst|inst2|Equal19~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal2~1_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst|inst2|rc[5]~26_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~30_combout\ : std_logic;
SIGNAL \inst|inst2|rc~16_combout\ : std_logic;
SIGNAL \inst|inst2|rc~31_combout\ : std_logic;
SIGNAL \inst|inst2|rc~46_combout\ : std_logic;
SIGNAL \inst|inst2|rc~47_combout\ : std_logic;
SIGNAL \inst|inst2|rc~48_combout\ : std_logic;
SIGNAL \inst|inst2|rc~49_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~23\ : std_logic;
SIGNAL \inst|inst2|Add2~24_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst|inst2|rc~43_combout\ : std_logic;
SIGNAL \inst|inst2|rc~44_combout\ : std_logic;
SIGNAL \inst|inst2|rc~45_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~21_combout\ : std_logic;
SIGNAL \inst|inst2|rc[3]~36_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~1\ : std_logic;
SIGNAL \inst|inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~1\ : std_logic;
SIGNAL \inst|inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~9\ : std_logic;
SIGNAL \inst|inst2|Add2~10_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~25\ : std_logic;
SIGNAL \inst|inst2|Add2~26_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~1\ : std_logic;
SIGNAL \inst|inst2|Add4~2_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~1\ : std_logic;
SIGNAL \inst|inst2|Add5~2_combout\ : std_logic;
SIGNAL \inst|inst2|rc~40_combout\ : std_logic;
SIGNAL \inst|inst2|rc~41_combout\ : std_logic;
SIGNAL \inst|inst2|rc~42_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~11\ : std_logic;
SIGNAL \inst|inst2|Add2~12_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~27\ : std_logic;
SIGNAL \inst|inst2|Add2~28_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~3\ : std_logic;
SIGNAL \inst|inst2|Add4~4_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~3\ : std_logic;
SIGNAL \inst|inst2|Add5~4_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~3\ : std_logic;
SIGNAL \inst|inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~3\ : std_logic;
SIGNAL \inst|inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst|inst2|rc~37_combout\ : std_logic;
SIGNAL \inst|inst2|rc~38_combout\ : std_logic;
SIGNAL \inst|inst2|rc~39_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~13\ : std_logic;
SIGNAL \inst|inst2|Add2~15\ : std_logic;
SIGNAL \inst|inst2|Add2~17\ : std_logic;
SIGNAL \inst|inst2|Add2~19\ : std_logic;
SIGNAL \inst|inst2|Add2~21\ : std_logic;
SIGNAL \inst|inst2|Add2~22_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~20_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~18_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~16_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~14_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~29\ : std_logic;
SIGNAL \inst|inst2|Add2~31\ : std_logic;
SIGNAL \inst|inst2|Add2~33\ : std_logic;
SIGNAL \inst|inst2|Add2~35\ : std_logic;
SIGNAL \inst|inst2|Add2~37\ : std_logic;
SIGNAL \inst|inst2|Add2~39\ : std_logic;
SIGNAL \inst|inst2|Add2~40_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~38_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~36_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~34_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~32_combout\ : std_logic;
SIGNAL \inst|inst2|Add2~30_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~5\ : std_logic;
SIGNAL \inst|inst2|Add4~7\ : std_logic;
SIGNAL \inst|inst2|Add4~9\ : std_logic;
SIGNAL \inst|inst2|Add4~11\ : std_logic;
SIGNAL \inst|inst2|Add4~13\ : std_logic;
SIGNAL \inst|inst2|Add4~15\ : std_logic;
SIGNAL \inst|inst2|Add4~16_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~32_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~5\ : std_logic;
SIGNAL \inst|inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~5\ : std_logic;
SIGNAL \inst|inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~6_combout\ : std_logic;
SIGNAL \inst|inst2|rc~33_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~5\ : std_logic;
SIGNAL \inst|inst2|Add5~6_combout\ : std_logic;
SIGNAL \inst|inst2|rc~34_combout\ : std_logic;
SIGNAL \inst|inst2|rc~35_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~7\ : std_logic;
SIGNAL \inst|inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~7\ : std_logic;
SIGNAL \inst|inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~28_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~8_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~7\ : std_logic;
SIGNAL \inst|inst2|Add5~8_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~27_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~29_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~3_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|rc[4]~22_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~9\ : std_logic;
SIGNAL \inst|inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~9\ : std_logic;
SIGNAL \inst|inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst|inst2|rc[5]~24_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~10_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~9\ : std_logic;
SIGNAL \inst|inst2|Add5~10_combout\ : std_logic;
SIGNAL \inst|inst2|rc[5]~23_combout\ : std_logic;
SIGNAL \inst|inst2|rc[5]~25_combout\ : std_logic;
SIGNAL \inst|inst2|rc[5]~2_combout\ : std_logic;
SIGNAL \inst|inst2|rc[5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~11\ : std_logic;
SIGNAL \inst|inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~11\ : std_logic;
SIGNAL \inst|inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst|inst2|rc[6]~20_combout\ : std_logic;
SIGNAL \inst|inst2|rc[6]~18_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~12_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~11\ : std_logic;
SIGNAL \inst|inst2|Add5~12_combout\ : std_logic;
SIGNAL \inst|inst2|rc[6]~17_combout\ : std_logic;
SIGNAL \inst|inst2|rc[6]~19_combout\ : std_logic;
SIGNAL \inst|inst2|rc[6]~1_combout\ : std_logic;
SIGNAL \inst|inst2|rc[6]~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~13\ : std_logic;
SIGNAL \inst|inst2|Add0~15\ : std_logic;
SIGNAL \inst|inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst2|Add1~13\ : std_logic;
SIGNAL \inst|inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst|inst2|rc~14_combout\ : std_logic;
SIGNAL \inst|inst2|rc~15_combout\ : std_logic;
SIGNAL \inst|inst2|Add4~14_combout\ : std_logic;
SIGNAL \inst|inst2|Add5~13\ : std_logic;
SIGNAL \inst|inst2|Add5~14_combout\ : std_logic;
SIGNAL \inst|inst2|res_sum~0_combout\ : std_logic;
SIGNAL \inst|inst2|rc[7]~0_combout\ : std_logic;
SIGNAL \inst|inst2|MK~1_combout\ : std_logic;
SIGNAL \inst|inst2|MK~2_combout\ : std_logic;
SIGNAL \inst|inst2|MK~3_combout\ : std_logic;
SIGNAL \inst|inst2|Equal4~0_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~0_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~1_combout\ : std_logic;
SIGNAL \inst|inst2|MK~0_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~2_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~3_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~4_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~5_combout\ : std_logic;
SIGNAL \a_t[1]~input_o\ : std_logic;
SIGNAL \inst14|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst2|ra~3_combout\ : std_logic;
SIGNAL \inst|inst2|pr_saved~1_combout\ : std_logic;
SIGNAL \inst|inst2|Equal16~1_combout\ : std_logic;
SIGNAL \inst|inst2|rc~13_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~6_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~7_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~8_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~9_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~10_combout\ : std_logic;
SIGNAL \inst|inst2|priznak~11_combout\ : std_logic;
SIGNAL \inst14|cx_test~5_combout\ : std_logic;
SIGNAL \inst14|cx_test[3]~3_combout\ : std_logic;
SIGNAL \inst14|cx~0_combout\ : std_logic;
SIGNAL \inst14|cx~1_combout\ : std_logic;
SIGNAL \inst14|cx_test~4_combout\ : std_logic;
SIGNAL \inst14|cx_test~0_combout\ : std_logic;
SIGNAL \inst14|cx_test~1_combout\ : std_logic;
SIGNAL \inst14|cx_test~2_combout\ : std_logic;
SIGNAL \inst14|cx_test[2]~feeder_combout\ : std_logic;
SIGNAL \inst14|cx_test[1]~feeder_combout\ : std_logic;
SIGNAL \inst14|cx_test~6_combout\ : std_logic;
SIGNAL \inst14|cx_test[0]~feeder_combout\ : std_logic;
SIGNAL \inst14|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|rc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst14|cx_test\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|priznak\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|cx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|cop\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|ra\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|pr_saved\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|inst2|rb\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst|y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst14|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_state.s0~q\ : std_logic;
SIGNAL \inst14|ALT_INV_set~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sko <= ww_sko;
ww_clk <= clk;
ww_a_t <= a_t;
ww_b_t <= b_t;
ww_cop_t <= cop_t;
cx_test <= ww_cx_test;
pr <= ww_pr;
pr_rc <= ww_pr_rc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst|Selector11~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst|Selector11~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst14|ALT_INV_Equal0~10_combout\ <= NOT \inst14|Equal0~10_combout\;
\inst14|ALT_INV_state.s0~q\ <= NOT \inst14|state.s0~q\;
\inst14|ALT_INV_set~q\ <= NOT \inst14|set~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\sko~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|state.s3~q\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\cx_test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|cx_test\(3),
	devoe => ww_devoe,
	o => \cx_test[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\cx_test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|cx_test\(2),
	devoe => ww_devoe,
	o => \cx_test[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\cx_test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|cx_test\(1),
	devoe => ww_devoe,
	o => \cx_test[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\cx_test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|cx_test\(0),
	devoe => ww_devoe,
	o => \cx_test[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\pr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|priznak\(1),
	devoe => ww_devoe,
	o => \pr[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\pr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|priznak\(0),
	devoe => ww_devoe,
	o => \pr[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\pr_rc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(7),
	devoe => ww_devoe,
	o => \pr_rc[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\pr_rc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(6),
	devoe => ww_devoe,
	o => \pr_rc[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\pr_rc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(5),
	devoe => ww_devoe,
	o => \pr_rc[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\pr_rc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(4),
	devoe => ww_devoe,
	o => \pr_rc[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\pr_rc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(3),
	devoe => ww_devoe,
	o => \pr_rc[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\pr_rc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(2),
	devoe => ww_devoe,
	o => \pr_rc[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\pr_rc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(1),
	devoe => ww_devoe,
	o => \pr_rc[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\pr_rc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|rc\(0),
	devoe => ww_devoe,
	o => \pr_rc[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y24_N22
\cop_t[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cop_t(1),
	o => \cop_t[1]~input_o\);

-- Location: LCCOMB_X17_Y17_N24
\inst14|next_state.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|next_state.s1~0_combout\ = !\inst14|state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|state.s0~q\,
	combout => \inst14|next_state.s1~0_combout\);

-- Location: FF_X17_Y17_N25
\inst14|next_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|next_state.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|next_state.s1~q\);

-- Location: LCCOMB_X17_Y17_N0
\inst14|state.s1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|state.s1~feeder_combout\ = \inst14|next_state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|next_state.s1~q\,
	combout => \inst14|state.s1~feeder_combout\);

-- Location: LCCOMB_X17_Y17_N10
\inst14|i[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[0]~93_combout\ = !\inst14|i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(0),
	combout => \inst14|i[0]~93_combout\);

-- Location: FF_X17_Y17_N31
\inst14|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|i[0]~93_combout\,
	sload => VCC,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(0));

-- Location: LCCOMB_X16_Y17_N2
\inst14|i[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[1]~31_combout\ = (\inst14|i\(0) & (\inst14|i\(1) $ (VCC))) # (!\inst14|i\(0) & (\inst14|i\(1) & VCC))
-- \inst14|i[1]~32\ = CARRY((\inst14|i\(0) & \inst14|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(0),
	datab => \inst14|i\(1),
	datad => VCC,
	combout => \inst14|i[1]~31_combout\,
	cout => \inst14|i[1]~32\);

-- Location: FF_X17_Y17_N11
\inst14|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|i[1]~31_combout\,
	sload => VCC,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(1));

-- Location: LCCOMB_X16_Y17_N4
\inst14|i[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[2]~33_combout\ = (\inst14|i\(2) & (!\inst14|i[1]~32\)) # (!\inst14|i\(2) & ((\inst14|i[1]~32\) # (GND)))
-- \inst14|i[2]~34\ = CARRY((!\inst14|i[1]~32\) # (!\inst14|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(2),
	datad => VCC,
	cin => \inst14|i[1]~32\,
	combout => \inst14|i[2]~33_combout\,
	cout => \inst14|i[2]~34\);

-- Location: FF_X16_Y17_N5
\inst14|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[2]~33_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(2));

-- Location: LCCOMB_X16_Y17_N6
\inst14|i[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[3]~35_combout\ = (\inst14|i\(3) & (\inst14|i[2]~34\ $ (GND))) # (!\inst14|i\(3) & (!\inst14|i[2]~34\ & VCC))
-- \inst14|i[3]~36\ = CARRY((\inst14|i\(3) & !\inst14|i[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(3),
	datad => VCC,
	cin => \inst14|i[2]~34\,
	combout => \inst14|i[3]~35_combout\,
	cout => \inst14|i[3]~36\);

-- Location: FF_X16_Y17_N7
\inst14|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[3]~35_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(3));

-- Location: LCCOMB_X16_Y17_N8
\inst14|i[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[4]~37_combout\ = (\inst14|i\(4) & (!\inst14|i[3]~36\)) # (!\inst14|i\(4) & ((\inst14|i[3]~36\) # (GND)))
-- \inst14|i[4]~38\ = CARRY((!\inst14|i[3]~36\) # (!\inst14|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(4),
	datad => VCC,
	cin => \inst14|i[3]~36\,
	combout => \inst14|i[4]~37_combout\,
	cout => \inst14|i[4]~38\);

-- Location: FF_X16_Y17_N9
\inst14|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[4]~37_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(4));

-- Location: LCCOMB_X16_Y17_N10
\inst14|i[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[5]~39_combout\ = (\inst14|i\(5) & (\inst14|i[4]~38\ $ (GND))) # (!\inst14|i\(5) & (!\inst14|i[4]~38\ & VCC))
-- \inst14|i[5]~40\ = CARRY((\inst14|i\(5) & !\inst14|i[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(5),
	datad => VCC,
	cin => \inst14|i[4]~38\,
	combout => \inst14|i[5]~39_combout\,
	cout => \inst14|i[5]~40\);

-- Location: FF_X16_Y17_N11
\inst14|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[5]~39_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(5));

-- Location: LCCOMB_X16_Y17_N12
\inst14|i[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[6]~41_combout\ = (\inst14|i\(6) & (!\inst14|i[5]~40\)) # (!\inst14|i\(6) & ((\inst14|i[5]~40\) # (GND)))
-- \inst14|i[6]~42\ = CARRY((!\inst14|i[5]~40\) # (!\inst14|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(6),
	datad => VCC,
	cin => \inst14|i[5]~40\,
	combout => \inst14|i[6]~41_combout\,
	cout => \inst14|i[6]~42\);

-- Location: FF_X16_Y17_N13
\inst14|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[6]~41_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(6));

-- Location: LCCOMB_X16_Y17_N14
\inst14|i[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[7]~43_combout\ = (\inst14|i\(7) & (\inst14|i[6]~42\ $ (GND))) # (!\inst14|i\(7) & (!\inst14|i[6]~42\ & VCC))
-- \inst14|i[7]~44\ = CARRY((\inst14|i\(7) & !\inst14|i[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(7),
	datad => VCC,
	cin => \inst14|i[6]~42\,
	combout => \inst14|i[7]~43_combout\,
	cout => \inst14|i[7]~44\);

-- Location: FF_X16_Y17_N15
\inst14|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[7]~43_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(7));

-- Location: LCCOMB_X16_Y17_N16
\inst14|i[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[8]~45_combout\ = (\inst14|i\(8) & (!\inst14|i[7]~44\)) # (!\inst14|i\(8) & ((\inst14|i[7]~44\) # (GND)))
-- \inst14|i[8]~46\ = CARRY((!\inst14|i[7]~44\) # (!\inst14|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(8),
	datad => VCC,
	cin => \inst14|i[7]~44\,
	combout => \inst14|i[8]~45_combout\,
	cout => \inst14|i[8]~46\);

-- Location: FF_X16_Y17_N17
\inst14|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[8]~45_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(8));

-- Location: LCCOMB_X16_Y17_N18
\inst14|i[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[9]~47_combout\ = (\inst14|i\(9) & (\inst14|i[8]~46\ $ (GND))) # (!\inst14|i\(9) & (!\inst14|i[8]~46\ & VCC))
-- \inst14|i[9]~48\ = CARRY((\inst14|i\(9) & !\inst14|i[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(9),
	datad => VCC,
	cin => \inst14|i[8]~46\,
	combout => \inst14|i[9]~47_combout\,
	cout => \inst14|i[9]~48\);

-- Location: FF_X16_Y17_N19
\inst14|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[9]~47_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(9));

-- Location: LCCOMB_X16_Y17_N20
\inst14|i[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[10]~49_combout\ = (\inst14|i\(10) & (!\inst14|i[9]~48\)) # (!\inst14|i\(10) & ((\inst14|i[9]~48\) # (GND)))
-- \inst14|i[10]~50\ = CARRY((!\inst14|i[9]~48\) # (!\inst14|i\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(10),
	datad => VCC,
	cin => \inst14|i[9]~48\,
	combout => \inst14|i[10]~49_combout\,
	cout => \inst14|i[10]~50\);

-- Location: FF_X16_Y17_N21
\inst14|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[10]~49_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(10));

-- Location: LCCOMB_X16_Y17_N22
\inst14|i[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[11]~51_combout\ = (\inst14|i\(11) & (\inst14|i[10]~50\ $ (GND))) # (!\inst14|i\(11) & (!\inst14|i[10]~50\ & VCC))
-- \inst14|i[11]~52\ = CARRY((\inst14|i\(11) & !\inst14|i[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(11),
	datad => VCC,
	cin => \inst14|i[10]~50\,
	combout => \inst14|i[11]~51_combout\,
	cout => \inst14|i[11]~52\);

-- Location: FF_X16_Y17_N23
\inst14|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[11]~51_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(11));

-- Location: LCCOMB_X16_Y17_N24
\inst14|i[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[12]~53_combout\ = (\inst14|i\(12) & (!\inst14|i[11]~52\)) # (!\inst14|i\(12) & ((\inst14|i[11]~52\) # (GND)))
-- \inst14|i[12]~54\ = CARRY((!\inst14|i[11]~52\) # (!\inst14|i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(12),
	datad => VCC,
	cin => \inst14|i[11]~52\,
	combout => \inst14|i[12]~53_combout\,
	cout => \inst14|i[12]~54\);

-- Location: FF_X16_Y17_N25
\inst14|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[12]~53_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(12));

-- Location: LCCOMB_X16_Y17_N26
\inst14|i[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[13]~55_combout\ = (\inst14|i\(13) & (\inst14|i[12]~54\ $ (GND))) # (!\inst14|i\(13) & (!\inst14|i[12]~54\ & VCC))
-- \inst14|i[13]~56\ = CARRY((\inst14|i\(13) & !\inst14|i[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(13),
	datad => VCC,
	cin => \inst14|i[12]~54\,
	combout => \inst14|i[13]~55_combout\,
	cout => \inst14|i[13]~56\);

-- Location: FF_X16_Y17_N27
\inst14|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[13]~55_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(13));

-- Location: LCCOMB_X16_Y17_N28
\inst14|i[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[14]~57_combout\ = (\inst14|i\(14) & (!\inst14|i[13]~56\)) # (!\inst14|i\(14) & ((\inst14|i[13]~56\) # (GND)))
-- \inst14|i[14]~58\ = CARRY((!\inst14|i[13]~56\) # (!\inst14|i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(14),
	datad => VCC,
	cin => \inst14|i[13]~56\,
	combout => \inst14|i[14]~57_combout\,
	cout => \inst14|i[14]~58\);

-- Location: FF_X16_Y17_N29
\inst14|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[14]~57_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(14));

-- Location: LCCOMB_X16_Y17_N30
\inst14|i[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[15]~59_combout\ = (\inst14|i\(15) & (\inst14|i[14]~58\ $ (GND))) # (!\inst14|i\(15) & (!\inst14|i[14]~58\ & VCC))
-- \inst14|i[15]~60\ = CARRY((\inst14|i\(15) & !\inst14|i[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(15),
	datad => VCC,
	cin => \inst14|i[14]~58\,
	combout => \inst14|i[15]~59_combout\,
	cout => \inst14|i[15]~60\);

-- Location: FF_X16_Y17_N31
\inst14|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[15]~59_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(15));

-- Location: LCCOMB_X16_Y16_N0
\inst14|i[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[16]~61_combout\ = (\inst14|i\(16) & (!\inst14|i[15]~60\)) # (!\inst14|i\(16) & ((\inst14|i[15]~60\) # (GND)))
-- \inst14|i[16]~62\ = CARRY((!\inst14|i[15]~60\) # (!\inst14|i\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(16),
	datad => VCC,
	cin => \inst14|i[15]~60\,
	combout => \inst14|i[16]~61_combout\,
	cout => \inst14|i[16]~62\);

-- Location: FF_X16_Y17_N3
\inst14|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|i[16]~61_combout\,
	sload => VCC,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(16));

-- Location: LCCOMB_X16_Y16_N2
\inst14|i[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[17]~63_combout\ = (\inst14|i\(17) & (\inst14|i[16]~62\ $ (GND))) # (!\inst14|i\(17) & (!\inst14|i[16]~62\ & VCC))
-- \inst14|i[17]~64\ = CARRY((\inst14|i\(17) & !\inst14|i[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(17),
	datad => VCC,
	cin => \inst14|i[16]~62\,
	combout => \inst14|i[17]~63_combout\,
	cout => \inst14|i[17]~64\);

-- Location: FF_X16_Y16_N3
\inst14|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[17]~63_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(17));

-- Location: LCCOMB_X16_Y16_N4
\inst14|i[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[18]~65_combout\ = (\inst14|i\(18) & (!\inst14|i[17]~64\)) # (!\inst14|i\(18) & ((\inst14|i[17]~64\) # (GND)))
-- \inst14|i[18]~66\ = CARRY((!\inst14|i[17]~64\) # (!\inst14|i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(18),
	datad => VCC,
	cin => \inst14|i[17]~64\,
	combout => \inst14|i[18]~65_combout\,
	cout => \inst14|i[18]~66\);

-- Location: FF_X17_Y17_N7
\inst14|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|i[18]~65_combout\,
	sload => VCC,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(18));

-- Location: LCCOMB_X16_Y16_N6
\inst14|i[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[19]~67_combout\ = (\inst14|i\(19) & (\inst14|i[18]~66\ $ (GND))) # (!\inst14|i\(19) & (!\inst14|i[18]~66\ & VCC))
-- \inst14|i[19]~68\ = CARRY((\inst14|i\(19) & !\inst14|i[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(19),
	datad => VCC,
	cin => \inst14|i[18]~66\,
	combout => \inst14|i[19]~67_combout\,
	cout => \inst14|i[19]~68\);

-- Location: FF_X16_Y16_N7
\inst14|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[19]~67_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(19));

-- Location: LCCOMB_X16_Y16_N8
\inst14|i[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[20]~69_combout\ = (\inst14|i\(20) & (!\inst14|i[19]~68\)) # (!\inst14|i\(20) & ((\inst14|i[19]~68\) # (GND)))
-- \inst14|i[20]~70\ = CARRY((!\inst14|i[19]~68\) # (!\inst14|i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(20),
	datad => VCC,
	cin => \inst14|i[19]~68\,
	combout => \inst14|i[20]~69_combout\,
	cout => \inst14|i[20]~70\);

-- Location: FF_X16_Y16_N9
\inst14|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[20]~69_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(20));

-- Location: LCCOMB_X16_Y16_N10
\inst14|i[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[21]~71_combout\ = (\inst14|i\(21) & (\inst14|i[20]~70\ $ (GND))) # (!\inst14|i\(21) & (!\inst14|i[20]~70\ & VCC))
-- \inst14|i[21]~72\ = CARRY((\inst14|i\(21) & !\inst14|i[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(21),
	datad => VCC,
	cin => \inst14|i[20]~70\,
	combout => \inst14|i[21]~71_combout\,
	cout => \inst14|i[21]~72\);

-- Location: FF_X16_Y16_N11
\inst14|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[21]~71_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(21));

-- Location: LCCOMB_X16_Y16_N12
\inst14|i[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[22]~73_combout\ = (\inst14|i\(22) & (!\inst14|i[21]~72\)) # (!\inst14|i\(22) & ((\inst14|i[21]~72\) # (GND)))
-- \inst14|i[22]~74\ = CARRY((!\inst14|i[21]~72\) # (!\inst14|i\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(22),
	datad => VCC,
	cin => \inst14|i[21]~72\,
	combout => \inst14|i[22]~73_combout\,
	cout => \inst14|i[22]~74\);

-- Location: FF_X16_Y16_N13
\inst14|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[22]~73_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(22));

-- Location: LCCOMB_X16_Y16_N14
\inst14|i[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[23]~75_combout\ = (\inst14|i\(23) & (\inst14|i[22]~74\ $ (GND))) # (!\inst14|i\(23) & (!\inst14|i[22]~74\ & VCC))
-- \inst14|i[23]~76\ = CARRY((\inst14|i\(23) & !\inst14|i[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(23),
	datad => VCC,
	cin => \inst14|i[22]~74\,
	combout => \inst14|i[23]~75_combout\,
	cout => \inst14|i[23]~76\);

-- Location: FF_X16_Y16_N15
\inst14|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[23]~75_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(23));

-- Location: LCCOMB_X16_Y16_N16
\inst14|i[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[24]~77_combout\ = (\inst14|i\(24) & (!\inst14|i[23]~76\)) # (!\inst14|i\(24) & ((\inst14|i[23]~76\) # (GND)))
-- \inst14|i[24]~78\ = CARRY((!\inst14|i[23]~76\) # (!\inst14|i\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(24),
	datad => VCC,
	cin => \inst14|i[23]~76\,
	combout => \inst14|i[24]~77_combout\,
	cout => \inst14|i[24]~78\);

-- Location: FF_X16_Y16_N17
\inst14|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[24]~77_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(24));

-- Location: LCCOMB_X16_Y16_N18
\inst14|i[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[25]~79_combout\ = (\inst14|i\(25) & (\inst14|i[24]~78\ $ (GND))) # (!\inst14|i\(25) & (!\inst14|i[24]~78\ & VCC))
-- \inst14|i[25]~80\ = CARRY((\inst14|i\(25) & !\inst14|i[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(25),
	datad => VCC,
	cin => \inst14|i[24]~78\,
	combout => \inst14|i[25]~79_combout\,
	cout => \inst14|i[25]~80\);

-- Location: FF_X16_Y16_N19
\inst14|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[25]~79_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(25));

-- Location: LCCOMB_X16_Y16_N20
\inst14|i[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[26]~81_combout\ = (\inst14|i\(26) & (!\inst14|i[25]~80\)) # (!\inst14|i\(26) & ((\inst14|i[25]~80\) # (GND)))
-- \inst14|i[26]~82\ = CARRY((!\inst14|i[25]~80\) # (!\inst14|i\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(26),
	datad => VCC,
	cin => \inst14|i[25]~80\,
	combout => \inst14|i[26]~81_combout\,
	cout => \inst14|i[26]~82\);

-- Location: FF_X16_Y16_N21
\inst14|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[26]~81_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(26));

-- Location: LCCOMB_X16_Y16_N22
\inst14|i[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[27]~83_combout\ = (\inst14|i\(27) & (\inst14|i[26]~82\ $ (GND))) # (!\inst14|i\(27) & (!\inst14|i[26]~82\ & VCC))
-- \inst14|i[27]~84\ = CARRY((\inst14|i\(27) & !\inst14|i[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(27),
	datad => VCC,
	cin => \inst14|i[26]~82\,
	combout => \inst14|i[27]~83_combout\,
	cout => \inst14|i[27]~84\);

-- Location: FF_X16_Y16_N23
\inst14|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[27]~83_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(27));

-- Location: LCCOMB_X16_Y16_N24
\inst14|i[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[28]~85_combout\ = (\inst14|i\(28) & (!\inst14|i[27]~84\)) # (!\inst14|i\(28) & ((\inst14|i[27]~84\) # (GND)))
-- \inst14|i[28]~86\ = CARRY((!\inst14|i[27]~84\) # (!\inst14|i\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(28),
	datad => VCC,
	cin => \inst14|i[27]~84\,
	combout => \inst14|i[28]~85_combout\,
	cout => \inst14|i[28]~86\);

-- Location: LCCOMB_X17_Y16_N4
\inst14|i[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[28]~feeder_combout\ = \inst14|i[28]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|i[28]~85_combout\,
	combout => \inst14|i[28]~feeder_combout\);

-- Location: FF_X17_Y16_N5
\inst14|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[28]~feeder_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(28));

-- Location: LCCOMB_X16_Y16_N26
\inst14|i[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[29]~87_combout\ = (\inst14|i\(29) & (\inst14|i[28]~86\ $ (GND))) # (!\inst14|i\(29) & (!\inst14|i[28]~86\ & VCC))
-- \inst14|i[29]~88\ = CARRY((\inst14|i\(29) & !\inst14|i[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(29),
	datad => VCC,
	cin => \inst14|i[28]~86\,
	combout => \inst14|i[29]~87_combout\,
	cout => \inst14|i[29]~88\);

-- Location: LCCOMB_X17_Y16_N2
\inst14|i[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[29]~feeder_combout\ = \inst14|i[29]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|i[29]~87_combout\,
	combout => \inst14|i[29]~feeder_combout\);

-- Location: FF_X17_Y16_N3
\inst14|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[29]~feeder_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(29));

-- Location: LCCOMB_X16_Y16_N28
\inst14|i[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[30]~89_combout\ = (\inst14|i\(30) & (!\inst14|i[29]~88\)) # (!\inst14|i\(30) & ((\inst14|i[29]~88\) # (GND)))
-- \inst14|i[30]~90\ = CARRY((!\inst14|i[29]~88\) # (!\inst14|i\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i\(30),
	datad => VCC,
	cin => \inst14|i[29]~88\,
	combout => \inst14|i[30]~89_combout\,
	cout => \inst14|i[30]~90\);

-- Location: LCCOMB_X17_Y16_N12
\inst14|i[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[30]~feeder_combout\ = \inst14|i[30]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|i[30]~89_combout\,
	combout => \inst14|i[30]~feeder_combout\);

-- Location: FF_X17_Y16_N13
\inst14|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[30]~feeder_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(30));

-- Location: LCCOMB_X16_Y16_N30
\inst14|i[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[31]~91_combout\ = \inst14|i[30]~90\ $ (!\inst14|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|i\(31),
	cin => \inst14|i[30]~90\,
	combout => \inst14|i[31]~91_combout\);

-- Location: LCCOMB_X17_Y16_N22
\inst14|i[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|i[31]~feeder_combout\ = \inst14|i[31]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|i[31]~91_combout\,
	combout => \inst14|i[31]~feeder_combout\);

-- Location: FF_X17_Y16_N23
\inst14|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|i[31]~feeder_combout\,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|i\(31));

-- Location: LCCOMB_X17_Y16_N0
\inst14|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~9_combout\ = (!\inst14|i\(30) & (!\inst14|i\(28) & (!\inst14|i\(31) & !\inst14|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(30),
	datab => \inst14|i\(28),
	datac => \inst14|i\(31),
	datad => \inst14|i\(29),
	combout => \inst14|Equal0~9_combout\);

-- Location: LCCOMB_X17_Y17_N4
\inst14|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~8_combout\ = (!\inst14|i\(27) & (!\inst14|i\(25) & (!\inst14|i\(26) & !\inst14|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(27),
	datab => \inst14|i\(25),
	datac => \inst14|i\(26),
	datad => \inst14|i\(24),
	combout => \inst14|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y17_N0
\inst14|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~2_combout\ = (!\inst14|i\(11) & (!\inst14|i\(8) & (!\inst14|i\(10) & !\inst14|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(11),
	datab => \inst14|i\(8),
	datac => \inst14|i\(10),
	datad => \inst14|i\(9),
	combout => \inst14|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y17_N20
\inst14|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~1_combout\ = (!\inst14|i\(7) & (!\inst14|i\(5) & (!\inst14|i\(4) & !\inst14|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(7),
	datab => \inst14|i\(5),
	datac => \inst14|i\(4),
	datad => \inst14|i\(6),
	combout => \inst14|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y17_N30
\inst14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = (!\inst14|i\(1) & (!\inst14|i\(2) & (!\inst14|i\(0) & !\inst14|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(1),
	datab => \inst14|i\(2),
	datac => \inst14|i\(0),
	datad => \inst14|i\(3),
	combout => \inst14|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y17_N16
\inst14|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~3_combout\ = (!\inst14|i\(13) & (!\inst14|i\(15) & (!\inst14|i\(14) & !\inst14|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(13),
	datab => \inst14|i\(15),
	datac => \inst14|i\(14),
	datad => \inst14|i\(12),
	combout => \inst14|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y17_N8
\inst14|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~4_combout\ = (\inst14|Equal0~2_combout\ & (\inst14|Equal0~1_combout\ & (\inst14|Equal0~0_combout\ & \inst14|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~2_combout\,
	datab => \inst14|Equal0~1_combout\,
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|Equal0~3_combout\,
	combout => \inst14|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y17_N6
\inst14|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~5_combout\ = (!\inst14|i\(19) & (!\inst14|i\(16) & (!\inst14|i\(18) & !\inst14|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(19),
	datab => \inst14|i\(16),
	datac => \inst14|i\(18),
	datad => \inst14|i\(17),
	combout => \inst14|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y17_N12
\inst14|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~6_combout\ = (!\inst14|i\(22) & (!\inst14|i\(20) & (!\inst14|i\(21) & !\inst14|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i\(22),
	datab => \inst14|i\(20),
	datac => \inst14|i\(21),
	datad => \inst14|i\(23),
	combout => \inst14|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y17_N28
\inst14|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~7_combout\ = (\inst14|Equal0~5_combout\ & \inst14|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~5_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y17_N18
\inst14|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~10_combout\ = (\inst14|Equal0~9_combout\ & (\inst14|Equal0~8_combout\ & (\inst14|Equal0~4_combout\ & \inst14|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~9_combout\,
	datab => \inst14|Equal0~8_combout\,
	datac => \inst14|Equal0~4_combout\,
	datad => \inst14|Equal0~7_combout\,
	combout => \inst14|Equal0~10_combout\);

-- Location: FF_X17_Y17_N1
\inst14|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|state.s1~feeder_combout\,
	clrn => \inst14|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|state.s1~q\);

-- Location: LCCOMB_X17_Y17_N2
\inst14|next_state.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|next_state.s2~feeder_combout\ = \inst14|state.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|state.s1~q\,
	combout => \inst14|next_state.s2~feeder_combout\);

-- Location: FF_X17_Y17_N3
\inst14|next_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|next_state.s2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|next_state.s2~q\);

-- Location: LCCOMB_X17_Y17_N26
\inst14|state.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|state.s2~feeder_combout\ = \inst14|next_state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|next_state.s2~q\,
	combout => \inst14|state.s2~feeder_combout\);

-- Location: FF_X17_Y17_N27
\inst14|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|state.s2~feeder_combout\,
	clrn => \inst14|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|state.s2~q\);

-- Location: LCCOMB_X17_Y17_N22
\inst14|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector6~0_combout\ = (\inst14|state.s2~q\) # ((\inst14|state.s3~q\ & !\inst|inst|state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|state.s2~q\,
	datac => \inst14|state.s3~q\,
	datad => \inst|inst|state.s3~q\,
	combout => \inst14|Selector6~0_combout\);

-- Location: FF_X17_Y17_N23
\inst14|next_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|next_state.s3~q\);

-- Location: FF_X17_Y17_N29
\inst14|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|next_state.s3~q\,
	clrn => \inst14|ALT_INV_Equal0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|state.s3~q\);

-- Location: LCCOMB_X16_Y20_N22
\inst14|cx_test[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test[3]~7_combout\ = (!\inst14|state.s3~q\) # (!\inst|inst|state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.s3~q\,
	datad => \inst14|state.s3~q\,
	combout => \inst14|cx_test[3]~7_combout\);

-- Location: FF_X16_Y20_N23
\inst14|next_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|next_state.s0~q\);

-- Location: LCCOMB_X17_Y17_N14
\inst14|state.s0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|state.s0~feeder_combout\ = \inst14|next_state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|next_state.s0~q\,
	combout => \inst14|state.s0~feeder_combout\);

-- Location: FF_X17_Y17_N15
\inst14|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|state.s0~feeder_combout\,
	clrn => \inst14|ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|state.s0~q\);

-- Location: FF_X13_Y22_N7
\inst14|cop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cop_t[1]~input_o\,
	sload => VCC,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cop\(1));

-- Location: IOIBUF_X13_Y24_N15
\cop_t[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cop_t(0),
	o => \cop_t[0]~input_o\);

-- Location: FF_X13_Y22_N17
\inst14|cop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cop_t[0]~input_o\,
	sload => VCC,
	ena => \inst14|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cop\(0));

-- Location: LCCOMB_X13_Y22_N14
\inst|inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (!\inst14|cop\(1) & \inst14|cop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cop\(1),
	datab => \inst14|cop\(0),
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y21_N22
\inst14|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector5~0_combout\ = (\inst14|state.s1~q\) # ((\inst14|state.s3~q\ & \inst14|sno~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|state.s3~q\,
	datac => \inst14|sno~q\,
	datad => \inst14|state.s1~q\,
	combout => \inst14|Selector5~0_combout\);

-- Location: FF_X16_Y21_N23
\inst14|sno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|sno~q\);

-- Location: LCCOMB_X13_Y22_N30
\inst|inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector1~0_combout\ = (\inst|inst|state.s3~q\) # ((!\inst14|sno~q\ & !\inst|inst|state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sno~q\,
	datab => \inst|inst|state.s3~q\,
	datad => \inst|inst|state.s0~q\,
	combout => \inst|inst|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y22_N26
\inst|inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector11~0_combout\ = ((\inst14|cop\(1)) # (\inst14|cop\(0))) # (!\inst|inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.s0~q\,
	datab => \inst14|cop\(1),
	datad => \inst14|cop\(0),
	combout => \inst|inst|Selector11~0_combout\);

-- Location: CLKCTRL_G3
\inst|inst|Selector11~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst|Selector11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst|Selector11~0clkctrl_outclk\);

-- Location: LCCOMB_X13_Y22_N24
\inst|inst|next_state.s0_466\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|next_state.s0_466~combout\ = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector1~0_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|next_state.s0_466~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|next_state.s0_466~combout\,
	datac => \inst|inst|Selector1~0_combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|next_state.s0_466~combout\);

-- Location: LCCOMB_X13_Y22_N12
\inst|inst|state.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|state.s0~0_combout\ = !\inst|inst|next_state.s0_466~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|next_state.s0_466~combout\,
	combout => \inst|inst|state.s0~0_combout\);

-- Location: LCCOMB_X13_Y22_N0
\inst14|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector4~0_combout\ = ((\inst14|set~q\ & ((\inst14|state.s3~q\) # (\inst14|state.s2~q\)))) # (!\inst14|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|state.s0~q\,
	datab => \inst14|state.s3~q\,
	datac => \inst14|set~q\,
	datad => \inst14|state.s2~q\,
	combout => \inst14|Selector4~0_combout\);

-- Location: FF_X13_Y22_N1
\inst14|set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|set~q\);

-- Location: FF_X13_Y22_N13
\inst|inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst|state.s0~0_combout\,
	clrn => \inst14|ALT_INV_set~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.s0~q\);

-- Location: LCCOMB_X13_Y22_N6
\inst|inst|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector2~5_combout\ = (\inst|inst|state.s2~q\ & (\inst14|cop\(0) & !\inst14|cop\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.s2~q\,
	datab => \inst14|cop\(0),
	datac => \inst14|cop\(1),
	combout => \inst|inst|Selector2~5_combout\);

-- Location: LCCOMB_X14_Y22_N2
\inst|inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector7~0_combout\ = (\inst|inst|state.s1~q\ & (!\inst14|cop\(0) & \inst14|cop\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.s1~q\,
	datac => \inst14|cop\(0),
	datad => \inst14|cop\(1),
	combout => \inst|inst|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y22_N22
\inst|inst|y[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(4) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector7~0_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(4),
	datac => \inst|inst|Selector7~0_combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|y\(4));

-- Location: LCCOMB_X12_Y22_N8
\inst|inst2|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|i~2_combout\ = (!\inst|inst2|Equal0~2_combout\ & (\inst|inst2|i\(1) $ (((\inst|inst2|Equal3~0_combout\ & \inst|inst2|i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~2_combout\,
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|i\(1),
	datad => \inst|inst2|i\(0),
	combout => \inst|inst2|i~2_combout\);

-- Location: FF_X12_Y22_N9
\inst|inst2|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|i\(1));

-- Location: LCCOMB_X12_Y22_N24
\inst|inst2|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal18~0_combout\ = (!\inst|inst2|i\(2) & (\inst|inst2|i\(0) & \inst|inst2|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|i\(2),
	datac => \inst|inst2|i\(0),
	datad => \inst|inst2|i\(1),
	combout => \inst|inst2|Equal18~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\b_t[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_t(3),
	o => \b_t[3]~input_o\);

-- Location: LCCOMB_X16_Y20_N8
\inst14|a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|a~2_combout\ = (\inst14|state.s1~q\) # (!\inst14|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|state.s0~q\,
	datad => \inst14|state.s1~q\,
	combout => \inst14|a~2_combout\);

-- Location: FF_X12_Y20_N5
\inst14|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_t[3]~input_o\,
	sload => VCC,
	ena => \inst14|a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|b\(3));

-- Location: LCCOMB_X14_Y22_N8
\inst|inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector10~1_combout\ = (\inst|inst|Equal0~0_combout\ & (\inst|inst|Selector10~0_combout\ & (\inst|inst2|Mux2~1_combout\ & \inst|inst|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal0~0_combout\,
	datab => \inst|inst|Selector10~0_combout\,
	datac => \inst|inst2|Mux2~1_combout\,
	datad => \inst|inst|state.s1~q\,
	combout => \inst|inst|Selector10~1_combout\);

-- Location: LCCOMB_X14_Y22_N0
\inst|inst|y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(1) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector10~1_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|y\(1),
	datac => \inst|inst|Selector10~1_combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|y\(1));

-- Location: LCCOMB_X12_Y22_N22
\inst|inst|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector2~2_combout\ = (!\inst|inst2|Equal17~0_combout\ & (!\inst14|cop\(1) & (\inst|inst|state.s2~q\ & \inst14|cop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal17~0_combout\,
	datab => \inst14|cop\(1),
	datac => \inst|inst|state.s2~q\,
	datad => \inst14|cop\(0),
	combout => \inst|inst|Selector2~2_combout\);

-- Location: LCCOMB_X12_Y22_N16
\inst|inst|y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(3) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector2~2_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|y\(3),
	datac => \inst|inst|Selector2~2_combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|y\(3));

-- Location: LCCOMB_X16_Y22_N12
\inst|inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~0_combout\ = (!\inst|inst|y\(2) & (!\inst|inst|y\(4) & (!\inst|inst|y\(1) & !\inst|inst|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(2),
	datab => \inst|inst|y\(4),
	datac => \inst|inst|y\(1),
	datad => \inst|inst|y\(3),
	combout => \inst|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y22_N16
\inst|inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector5~0_combout\ = (\inst|inst|state.s2~q\ & (\inst14|cop\(0) $ (((!\inst14|cop\(1)))))) # (!\inst|inst|state.s2~q\ & (\inst|inst|state.s1~q\ & (\inst14|cop\(0) $ (!\inst14|cop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cop\(0),
	datab => \inst|inst|state.s2~q\,
	datac => \inst|inst|state.s1~q\,
	datad => \inst14|cop\(1),
	combout => \inst|inst|Selector5~0_combout\);

-- Location: LCCOMB_X14_Y22_N20
\inst|inst|y[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(6) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|Selector5~0_combout\)) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Selector5~0_combout\,
	datab => \inst|inst|y\(6),
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|y\(6));

-- Location: LCCOMB_X12_Y22_N12
\inst|inst|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector2~3_combout\ = (\inst14|sno~q\ & !\inst|inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|sno~q\,
	datad => \inst|inst|state.s0~q\,
	combout => \inst|inst|Selector2~3_combout\);

-- Location: LCCOMB_X12_Y22_N14
\inst|inst|y[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(0) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector2~3_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|y\(0),
	datac => \inst|inst|Selector2~3_combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|y\(0));

-- Location: LCCOMB_X16_Y22_N10
\inst|inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~1_combout\ = (!\inst|inst|y\(6) & (!\inst|inst|y\(5) & \inst|inst|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(6),
	datab => \inst|inst|y\(5),
	datad => \inst|inst|y\(0),
	combout => \inst|inst2|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y22_N18
\inst|inst2|rb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rb~1_combout\ = (\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|Equal0~1_combout\ & ((\inst14|b\(3)))) # (!\inst|inst2|Equal0~1_combout\ & (\inst|inst2|rb\(3))))) # (!\inst|inst2|Equal0~0_combout\ & (\inst|inst2|rb\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rb\(3),
	datab => \inst14|b\(3),
	datac => \inst|inst2|Equal0~0_combout\,
	datad => \inst|inst2|Equal0~1_combout\,
	combout => \inst|inst2|rb~1_combout\);

-- Location: FF_X12_Y22_N27
\inst|inst2|rb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|rb~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rb\(3));

-- Location: IOIBUF_X9_Y24_N8
\b_t[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_t(2),
	o => \b_t[2]~input_o\);

-- Location: FF_X12_Y20_N27
\inst14|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_t[2]~input_o\,
	sload => VCC,
	ena => \inst14|a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|b\(2));

-- Location: LCCOMB_X12_Y22_N20
\inst|inst2|rb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rb~0_combout\ = (\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|Equal0~0_combout\ & (\inst14|b\(2))) # (!\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|rb\(2)))))) # (!\inst|inst2|Equal0~1_combout\ & (((\inst|inst2|rb\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|b\(2),
	datab => \inst|inst2|Equal0~1_combout\,
	datac => \inst|inst2|rb\(2),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|rb~0_combout\);

-- Location: FF_X12_Y22_N21
\inst|inst2|rb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rb\(2));

-- Location: IOIBUF_X11_Y24_N15
\b_t[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_t(0),
	o => \b_t[0]~input_o\);

-- Location: LCCOMB_X12_Y20_N22
\inst14|b[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|b[0]~feeder_combout\ = \b_t[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_t[0]~input_o\,
	combout => \inst14|b[0]~feeder_combout\);

-- Location: FF_X12_Y20_N23
\inst14|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|b[0]~feeder_combout\,
	ena => \inst14|a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|b\(0));

-- Location: LCCOMB_X12_Y22_N6
\inst|inst2|rb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rb~3_combout\ = (\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|Equal0~0_combout\ & (\inst14|b\(0))) # (!\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|rb\(0)))))) # (!\inst|inst2|Equal0~1_combout\ & (((\inst|inst2|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|b\(0),
	datab => \inst|inst2|Equal0~1_combout\,
	datac => \inst|inst2|rb\(0),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|rb~3_combout\);

-- Location: FF_X12_Y22_N7
\inst|inst2|rb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rb\(0));

-- Location: IOIBUF_X3_Y24_N22
\b_t[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_t(1),
	o => \b_t[1]~input_o\);

-- Location: FF_X12_Y20_N17
\inst14|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_t[1]~input_o\,
	sload => VCC,
	ena => \inst14|a~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|b\(1));

-- Location: LCCOMB_X12_Y22_N4
\inst|inst2|rb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rb~2_combout\ = (\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|Equal0~0_combout\ & (\inst14|b\(1))) # (!\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|rb\(1)))))) # (!\inst|inst2|Equal0~1_combout\ & (((\inst|inst2|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|b\(1),
	datab => \inst|inst2|Equal0~1_combout\,
	datac => \inst|inst2|rb\(1),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|rb~2_combout\);

-- Location: FF_X12_Y22_N5
\inst|inst2|rb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rb\(1));

-- Location: LCCOMB_X12_Y22_N18
\inst|inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Mux2~0_combout\ = (\inst|inst2|i\(1) & (((\inst|inst2|i\(0))))) # (!\inst|inst2|i\(1) & ((\inst|inst2|i\(0) & ((\inst|inst2|rb\(1)))) # (!\inst|inst2|i\(0) & (\inst|inst2|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rb\(0),
	datab => \inst|inst2|rb\(1),
	datac => \inst|inst2|i\(1),
	datad => \inst|inst2|i\(0),
	combout => \inst|inst2|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y22_N0
\inst|inst2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Mux2~1_combout\ = (\inst|inst2|i\(1) & ((\inst|inst2|Mux2~0_combout\ & (\inst|inst2|rb\(3))) # (!\inst|inst2|Mux2~0_combout\ & ((\inst|inst2|rb\(2)))))) # (!\inst|inst2|i\(1) & (((\inst|inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|i\(1),
	datab => \inst|inst2|rb\(3),
	datac => \inst|inst2|rb\(2),
	datad => \inst|inst2|Mux2~0_combout\,
	combout => \inst|inst2|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y22_N14
\inst|inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector9~0_combout\ = (\inst|inst2|Equal18~0_combout\ & (\inst|inst|state.s1~q\ & (\inst|inst|Equal0~0_combout\ & \inst|inst2|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal18~0_combout\,
	datab => \inst|inst|state.s1~q\,
	datac => \inst|inst|Equal0~0_combout\,
	datad => \inst|inst2|Mux2~1_combout\,
	combout => \inst|inst|Selector9~0_combout\);

-- Location: LCCOMB_X16_Y22_N8
\inst|inst|y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(2) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector9~0_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(2),
	datab => \inst|inst|Selector11~0clkctrl_outclk\,
	datad => \inst|inst|Selector9~0_combout\,
	combout => \inst|inst|y\(2));

-- Location: LCCOMB_X14_Y22_N28
\inst|inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~0_combout\ = (!\inst|inst|y\(2) & (!\inst|inst|y\(0) & (!\inst|inst|y\(5) & !\inst|inst|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(2),
	datab => \inst|inst|y\(0),
	datac => \inst|inst|y\(5),
	datad => \inst|inst|y\(6),
	combout => \inst|inst2|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y22_N26
\inst|inst2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal3~0_combout\ = (!\inst|inst|y\(4) & (\inst|inst2|Equal1~0_combout\ & (\inst|inst|y\(3) & !\inst|inst|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(4),
	datab => \inst|inst2|Equal1~0_combout\,
	datac => \inst|inst|y\(3),
	datad => \inst|inst|y\(1),
	combout => \inst|inst2|Equal3~0_combout\);

-- Location: LCCOMB_X12_Y22_N10
\inst|inst2|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add6~0_combout\ = (\inst|inst2|Equal0~2_combout\) # (\inst|inst2|i\(2) $ (((!\inst|inst2|i\(1)) # (!\inst|inst2|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~2_combout\,
	datab => \inst|inst2|i\(0),
	datac => \inst|inst2|i\(1),
	datad => \inst|inst2|i\(2),
	combout => \inst|inst2|Add6~0_combout\);

-- Location: LCCOMB_X12_Y22_N28
\inst|inst2|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|i~0_combout\ = (\inst|inst2|Equal3~0_combout\ & (((!\inst|inst2|Add6~0_combout\)))) # (!\inst|inst2|Equal3~0_combout\ & (!\inst|inst2|Equal0~2_combout\ & (\inst|inst2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~2_combout\,
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|i\(2),
	datad => \inst|inst2|Add6~0_combout\,
	combout => \inst|inst2|i~0_combout\);

-- Location: FF_X12_Y22_N29
\inst|inst2|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|i\(2));

-- Location: LCCOMB_X12_Y22_N26
\inst|inst2|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal17~0_combout\ = (!\inst|inst2|i\(0) & (\inst|inst2|i\(2) & !\inst|inst2|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|i\(0),
	datab => \inst|inst2|i\(2),
	datad => \inst|inst2|i\(1),
	combout => \inst|inst2|Equal17~0_combout\);

-- Location: LCCOMB_X13_Y22_N10
\inst|inst|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector2~4_combout\ = (\inst14|sno~q\ & (((\inst|inst|Selector2~5_combout\ & !\inst|inst2|Equal17~0_combout\)) # (!\inst|inst|state.s0~q\))) # (!\inst14|sno~q\ & (((\inst|inst|Selector2~5_combout\ & !\inst|inst2|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|sno~q\,
	datab => \inst|inst|state.s0~q\,
	datac => \inst|inst|Selector2~5_combout\,
	datad => \inst|inst2|Equal17~0_combout\,
	combout => \inst|inst|Selector2~4_combout\);

-- Location: LCCOMB_X13_Y22_N8
\inst|inst|next_state.s1_443\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|next_state.s1_443~combout\ = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|Selector2~4_combout\))) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|next_state.s1_443~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|next_state.s1_443~combout\,
	datac => \inst|inst|Selector2~4_combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|next_state.s1_443~combout\);

-- Location: FF_X13_Y22_N27
\inst|inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|next_state.s1_443~combout\,
	clrn => \inst14|ALT_INV_set~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.s1~q\);

-- Location: LCCOMB_X13_Y22_N16
\inst|inst|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector7~1_combout\ = (\inst14|cop\(1) & !\inst14|cop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cop\(1),
	datac => \inst14|cop\(0),
	combout => \inst|inst|Selector7~1_combout\);

-- Location: LCCOMB_X13_Y22_N20
\inst|inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector3~0_combout\ = (\inst|inst|state.s1~q\ & (!\inst|inst|Selector7~1_combout\ & ((\inst|inst|Selector10~0_combout\) # (!\inst|inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal0~0_combout\,
	datab => \inst|inst|state.s1~q\,
	datac => \inst|inst|Selector7~1_combout\,
	datad => \inst|inst|Selector10~0_combout\,
	combout => \inst|inst|Selector3~0_combout\);

-- Location: LCCOMB_X13_Y22_N22
\inst|inst|next_state.s2_420\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|next_state.s2_420~combout\ = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|Selector3~0_combout\)) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|next_state.s2_420~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Selector3~0_combout\,
	datac => \inst|inst|next_state.s2_420~combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|next_state.s2_420~combout\);

-- Location: FF_X13_Y22_N31
\inst|inst|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|next_state.s2_420~combout\,
	clrn => \inst14|ALT_INV_set~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.s2~q\);

-- Location: LCCOMB_X14_Y22_N18
\inst|inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector6~0_combout\ = (\inst14|cop\(0) & (\inst|inst|state.s3~q\ & ((!\inst14|cop\(1))))) # (!\inst14|cop\(0) & (((\inst|inst|state.s2~q\ & \inst14|cop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cop\(0),
	datab => \inst|inst|state.s3~q\,
	datac => \inst|inst|state.s2~q\,
	datad => \inst14|cop\(1),
	combout => \inst|inst|Selector6~0_combout\);

-- Location: LCCOMB_X14_Y22_N6
\inst|inst|y[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|y\(5) = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|Selector6~0_combout\)) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Selector6~0_combout\,
	datac => \inst|inst|y\(5),
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|y\(5));

-- Location: LCCOMB_X14_Y22_N30
\inst|inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~2_combout\ = (!\inst|inst|y\(5) & (!\inst|inst|y\(6) & (\inst|inst|y\(0) & \inst|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(5),
	datab => \inst|inst|y\(6),
	datac => \inst|inst|y\(0),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y22_N2
\inst|inst2|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|i~1_combout\ = \inst|inst2|Equal3~0_combout\ $ (((!\inst|inst2|Equal0~2_combout\ & \inst|inst2|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~2_combout\,
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|i\(0),
	combout => \inst|inst2|i~1_combout\);

-- Location: FF_X12_Y22_N3
\inst|inst2|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|i\(0));

-- Location: LCCOMB_X12_Y22_N30
\inst|inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector10~0_combout\ = (\inst|inst2|i\(0) & ((\inst|inst2|i\(2)) # (!\inst|inst2|i\(1)))) # (!\inst|inst2|i\(0) & ((\inst|inst2|i\(1)) # (!\inst|inst2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|i\(0),
	datac => \inst|inst2|i\(1),
	datad => \inst|inst2|i\(2),
	combout => \inst|inst|Selector10~0_combout\);

-- Location: LCCOMB_X13_Y22_N2
\inst|inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector4~0_combout\ = (\inst|inst|state.s1~q\ & ((\inst14|cop\(1) & ((!\inst14|cop\(0)))) # (!\inst14|cop\(1) & (!\inst|inst|Selector10~0_combout\ & \inst14|cop\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cop\(1),
	datab => \inst|inst|Selector10~0_combout\,
	datac => \inst14|cop\(0),
	datad => \inst|inst|state.s1~q\,
	combout => \inst|inst|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y22_N28
\inst|inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector4~1_combout\ = (\inst|inst|Selector4~0_combout\) # ((\inst|inst|state.s2~q\ & ((\inst|inst2|Equal17~0_combout\) # (!\inst|inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal0~0_combout\,
	datab => \inst|inst|Selector4~0_combout\,
	datac => \inst|inst|state.s2~q\,
	datad => \inst|inst2|Equal17~0_combout\,
	combout => \inst|inst|Selector4~1_combout\);

-- Location: LCCOMB_X13_Y22_N4
\inst|inst|next_state.s3_397\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|next_state.s3_397~combout\ = (GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & (\inst|inst|Selector4~1_combout\)) # (!GLOBAL(\inst|inst|Selector11~0clkctrl_outclk\) & ((\inst|inst|next_state.s3_397~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Selector4~1_combout\,
	datac => \inst|inst|next_state.s3_397~combout\,
	datad => \inst|inst|Selector11~0clkctrl_outclk\,
	combout => \inst|inst|next_state.s3_397~combout\);

-- Location: FF_X13_Y22_N15
\inst|inst|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst|next_state.s3_397~combout\,
	clrn => \inst14|ALT_INV_set~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.s3~q\);

-- Location: LCCOMB_X19_Y22_N28
\inst|inst2|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal15~0_combout\ = (!\inst|inst|y\(5) & (!\inst|inst|y\(0) & (\inst|inst|y\(6) & \inst|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(5),
	datab => \inst|inst|y\(0),
	datac => \inst|inst|y\(6),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|Equal15~0_combout\);

-- Location: LCCOMB_X19_Y21_N24
\inst|inst2|j~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|j~1_combout\ = \inst|inst2|Equal15~0_combout\ $ (((!\inst|inst2|Equal0~2_combout\ & \inst|inst2|j~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Equal0~2_combout\,
	datac => \inst|inst2|j~q\,
	datad => \inst|inst2|Equal15~0_combout\,
	combout => \inst|inst2|j~1_combout\);

-- Location: FF_X19_Y21_N25
\inst|inst2|j\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|j~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|j~q\);

-- Location: LCCOMB_X19_Y21_N26
\inst|inst2|j~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|j~0_combout\ = (\inst|inst2|j~q\ & ((!\inst|inst2|Equal0~1_combout\) # (!\inst|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|j~q\,
	datac => \inst|inst2|Equal0~0_combout\,
	datad => \inst|inst2|Equal0~1_combout\,
	combout => \inst|inst2|j~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\a_t[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_t(3),
	o => \a_t[3]~input_o\);

-- Location: LCCOMB_X19_Y22_N10
\inst14|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector0~0_combout\ = (!\inst14|state.s3~q\ & \a_t[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|state.s3~q\,
	datad => \a_t[3]~input_o\,
	combout => \inst14|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y21_N0
\inst14|a[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|a[3]~3_combout\ = (!\inst14|state.s2~q\ & (((\inst|inst|Selector7~1_combout\ & \inst|inst|state.s3~q\)) # (!\inst14|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Selector7~1_combout\,
	datab => \inst14|state.s2~q\,
	datac => \inst14|state.s3~q\,
	datad => \inst|inst|state.s3~q\,
	combout => \inst14|a[3]~3_combout\);

-- Location: FF_X16_Y22_N9
\inst14|a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|Selector0~0_combout\,
	sload => VCC,
	ena => \inst14|a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|a\(3));

-- Location: FF_X16_Y22_N7
\inst|inst2|ra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|ra~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ra\(3));

-- Location: LCCOMB_X16_Y22_N6
\inst|inst2|ra~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ra~2_combout\ = (\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|Equal0~0_combout\ & (\inst14|a\(3))) # (!\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|ra\(3)))))) # (!\inst|inst2|Equal0~1_combout\ & (((\inst|inst2|ra\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~1_combout\,
	datab => \inst14|a\(3),
	datac => \inst|inst2|ra\(3),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|ra~2_combout\);

-- Location: IOIBUF_X23_Y24_N8
\a_t[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_t(2),
	o => \a_t[2]~input_o\);

-- Location: LCCOMB_X19_Y22_N2
\inst14|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector1~0_combout\ = (!\inst14|state.s3~q\ & \a_t[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|state.s3~q\,
	datad => \a_t[2]~input_o\,
	combout => \inst14|Selector1~0_combout\);

-- Location: FF_X16_Y22_N21
\inst14|a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|Selector1~0_combout\,
	sload => VCC,
	ena => \inst14|a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|a\(2));

-- Location: FF_X16_Y22_N1
\inst|inst2|ra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|ra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ra\(2));

-- Location: LCCOMB_X16_Y22_N0
\inst|inst2|ra~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ra~0_combout\ = (\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|Equal0~0_combout\ & (\inst14|a\(2))) # (!\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|ra\(2)))))) # (!\inst|inst2|Equal0~1_combout\ & (((\inst|inst2|ra\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~1_combout\,
	datab => \inst14|a\(2),
	datac => \inst|inst2|ra\(2),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|ra~0_combout\);

-- Location: IOIBUF_X28_Y24_N22
\a_t[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_t(0),
	o => \a_t[0]~input_o\);

-- Location: LCCOMB_X19_Y22_N24
\inst14|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector3~0_combout\ = (\inst14|state.s3~q\ & (\inst|inst2|priznak\(0))) # (!\inst14|state.s3~q\ & ((\a_t[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(0),
	datac => \inst14|state.s3~q\,
	datad => \a_t[0]~input_o\,
	combout => \inst14|Selector3~0_combout\);

-- Location: FF_X16_Y22_N11
\inst14|a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|Selector3~0_combout\,
	sload => VCC,
	ena => \inst14|a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|a\(0));

-- Location: FF_X16_Y22_N3
\inst|inst2|ra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|ra~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ra\(0));

-- Location: LCCOMB_X16_Y22_N2
\inst|inst2|ra~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ra~1_combout\ = (\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|Equal0~0_combout\ & (\inst14|a\(0))) # (!\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|ra\(0)))))) # (!\inst|inst2|Equal0~1_combout\ & (((\inst|inst2|ra\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~1_combout\,
	datab => \inst14|a\(0),
	datac => \inst|inst2|ra\(0),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|ra~1_combout\);

-- Location: LCCOMB_X21_Y21_N2
\inst|inst2|pr_saved~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|pr_saved~2_combout\ = (\inst|inst2|Equal0~2_combout\) # ((\inst|inst2|Equal15~0_combout\ & !\inst|inst2|j~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal15~0_combout\,
	datab => \inst|inst2|Equal0~2_combout\,
	datad => \inst|inst2|j~q\,
	combout => \inst|inst2|pr_saved~2_combout\);

-- Location: FF_X21_Y21_N25
\inst|inst2|pr_saved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|priznak\(0),
	sload => VCC,
	ena => \inst|inst2|pr_saved~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|pr_saved\(0));

-- Location: LCCOMB_X21_Y21_N24
\inst|inst2|pr_saved~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|pr_saved~0_combout\ = (\inst|inst2|Equal0~2_combout\ & (\inst|inst2|priznak\(0))) # (!\inst|inst2|Equal0~2_combout\ & ((\inst|inst2|j~q\ & ((\inst|inst2|pr_saved\(0)))) # (!\inst|inst2|j~q\ & (\inst|inst2|priznak\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(0),
	datab => \inst|inst2|Equal0~2_combout\,
	datac => \inst|inst2|pr_saved\(0),
	datad => \inst|inst2|j~q\,
	combout => \inst|inst2|pr_saved~0_combout\);

-- Location: LCCOMB_X19_Y21_N8
\inst|inst2|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal16~0_combout\ = \inst|inst2|pr_saved~0_combout\ $ (((\inst|inst2|j~0_combout\ & ((\inst|inst2|ra~1_combout\))) # (!\inst|inst2|j~0_combout\ & (\inst|inst2|ra~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|j~0_combout\,
	datab => \inst|inst2|ra~0_combout\,
	datac => \inst|inst2|ra~1_combout\,
	datad => \inst|inst2|pr_saved~0_combout\,
	combout => \inst|inst2|Equal16~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\inst|inst2|rc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~12_combout\ = (!\inst|inst2|j~0_combout\ & (!\inst|inst2|Equal16~1_combout\ & (!\inst|inst2|Equal16~0_combout\ & \inst|inst2|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|j~0_combout\,
	datab => \inst|inst2|Equal16~1_combout\,
	datac => \inst|inst2|Equal16~0_combout\,
	datad => \inst|inst2|Equal15~0_combout\,
	combout => \inst|inst2|rc~12_combout\);

-- Location: LCCOMB_X19_Y22_N4
\inst|inst2|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal19~0_combout\ = (\inst|inst|y\(5) & (!\inst|inst|y\(0) & (!\inst|inst|y\(6) & \inst|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(5),
	datab => \inst|inst|y\(0),
	datac => \inst|inst|y\(6),
	datad => \inst|inst2|Equal0~0_combout\,
	combout => \inst|inst2|Equal19~0_combout\);

-- Location: LCCOMB_X14_Y22_N10
\inst|inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal2~0_combout\ = (!\inst|inst|y\(5) & (!\inst|inst|y\(0) & (\inst|inst|y\(2) & !\inst|inst|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(5),
	datab => \inst|inst|y\(0),
	datac => \inst|inst|y\(2),
	datad => \inst|inst|y\(6),
	combout => \inst|inst2|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y22_N4
\inst|inst2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal2~1_combout\ = (!\inst|inst|y\(4) & (!\inst|inst|y\(3) & (\inst|inst2|Equal2~0_combout\ & !\inst|inst|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(4),
	datab => \inst|inst|y\(3),
	datac => \inst|inst2|Equal2~0_combout\,
	datad => \inst|inst|y\(1),
	combout => \inst|inst2|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y22_N24
\inst|inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~1_combout\ = (!\inst|inst|y\(4) & (\inst|inst2|Equal1~0_combout\ & (!\inst|inst|y\(3) & \inst|inst|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(4),
	datab => \inst|inst2|Equal1~0_combout\,
	datac => \inst|inst|y\(3),
	datad => \inst|inst|y\(1),
	combout => \inst|inst2|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y21_N26
\inst|inst2|rc[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[5]~26_combout\ = (\inst|inst2|rc\(6)) # (!\inst|inst2|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|Equal3~0_combout\,
	datad => \inst|inst2|rc\(6),
	combout => \inst|inst2|rc[5]~26_combout\);

-- Location: LCCOMB_X16_Y21_N28
\inst|inst2|rc[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~30_combout\ = (\inst|inst2|rc\(5)) # (!\inst|inst2|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|Equal3~0_combout\,
	datad => \inst|inst2|rc\(5),
	combout => \inst|inst2|rc[4]~30_combout\);

-- Location: LCCOMB_X19_Y21_N14
\inst|inst2|rc~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~16_combout\ = (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|Add0~16_combout\ & \inst|inst2|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|Add0~16_combout\,
	datad => \inst|inst2|Equal1~1_combout\,
	combout => \inst|inst2|rc~16_combout\);

-- Location: LCCOMB_X17_Y20_N26
\inst|inst2|rc~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~31_combout\ = (!\inst|inst2|Equal3~0_combout\ & (!\inst|inst2|rc~13_combout\ & ((\inst|inst2|Equal2~1_combout\) # (\inst|inst2|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal2~1_combout\,
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|Equal1~1_combout\,
	datad => \inst|inst2|rc~13_combout\,
	combout => \inst|inst2|rc~31_combout\);

-- Location: LCCOMB_X18_Y22_N22
\inst|inst2|rc~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~46_combout\ = (\inst|inst2|rc~13_combout\ & (((\inst|inst2|rb~1_combout\)))) # (!\inst|inst2|rc~13_combout\ & (\inst|inst2|Equal3~0_combout\ & (\inst|inst2|rc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc~13_combout\,
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|rc\(4),
	datad => \inst|inst2|rb~1_combout\,
	combout => \inst|inst2|rc~46_combout\);

-- Location: LCCOMB_X19_Y21_N12
\inst|inst2|rc~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~47_combout\ = (\inst|inst2|rc~13_combout\ & (((\inst|inst2|rb~0_combout\)))) # (!\inst|inst2|rc~13_combout\ & (\inst|inst2|rc\(3) & (\inst|inst2|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(3),
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|rb~0_combout\,
	datad => \inst|inst2|rc~13_combout\,
	combout => \inst|inst2|rc~47_combout\);

-- Location: LCCOMB_X17_Y20_N18
\inst|inst2|rc~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~48_combout\ = (\inst|inst2|rc~13_combout\ & (((\inst|inst2|rb~2_combout\)))) # (!\inst|inst2|rc~13_combout\ & (\inst|inst2|rc\(2) & (\inst|inst2|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(2),
	datab => \inst|inst2|Equal3~0_combout\,
	datac => \inst|inst2|rb~2_combout\,
	datad => \inst|inst2|rc~13_combout\,
	combout => \inst|inst2|rc~48_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst|inst2|rc~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~49_combout\ = (\inst|inst2|rc~13_combout\ & (((\inst|inst2|rb~3_combout\)))) # (!\inst|inst2|rc~13_combout\ & (\inst|inst2|rc\(1) & ((\inst|inst2|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(1),
	datab => \inst|inst2|rb~3_combout\,
	datac => \inst|inst2|Equal3~0_combout\,
	datad => \inst|inst2|rc~13_combout\,
	combout => \inst|inst2|rc~49_combout\);

-- Location: LCCOMB_X16_Y22_N16
\inst|inst2|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~8_combout\ = (\inst|inst2|ra~2_combout\ & (\inst|inst2|rc\(0) & VCC)) # (!\inst|inst2|ra~2_combout\ & (\inst|inst2|rc\(0) $ (VCC)))
-- \inst|inst2|Add2~9\ = CARRY((!\inst|inst2|ra~2_combout\ & \inst|inst2|rc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(0),
	datad => VCC,
	combout => \inst|inst2|Add2~8_combout\,
	cout => \inst|inst2|Add2~9\);

-- Location: LCCOMB_X16_Y22_N30
\inst|inst2|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~22_combout\ = (\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(7) & (!\inst|inst2|Add2~21\)) # (!\inst|inst2|rc\(7) & ((\inst|inst2|Add2~21\) # (GND))))) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(7) & (\inst|inst2|Add2~21\ & VCC)) # 
-- (!\inst|inst2|rc\(7) & (!\inst|inst2|Add2~21\))))
-- \inst|inst2|Add2~23\ = CARRY((\inst|inst2|ra~2_combout\ & ((!\inst|inst2|Add2~21\) # (!\inst|inst2|rc\(7)))) # (!\inst|inst2|ra~2_combout\ & (!\inst|inst2|rc\(7) & !\inst|inst2|Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(7),
	datad => VCC,
	cin => \inst|inst2|Add2~21\,
	combout => \inst|inst2|Add2~22_combout\,
	cout => \inst|inst2|Add2~23\);

-- Location: LCCOMB_X16_Y21_N0
\inst|inst2|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~24_combout\ = (\inst|inst2|Add2~8_combout\ & (\inst|inst2|Add2~23\ $ (GND))) # (!\inst|inst2|Add2~8_combout\ & (!\inst|inst2|Add2~23\ & VCC))
-- \inst|inst2|Add2~25\ = CARRY((\inst|inst2|Add2~8_combout\ & !\inst|inst2|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~8_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~23\,
	combout => \inst|inst2|Add2~24_combout\,
	cout => \inst|inst2|Add2~25\);

-- Location: LCCOMB_X17_Y21_N4
\inst|inst2|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~0_combout\ = (\inst|inst2|Add2~24_combout\ & (\inst|inst2|ra~1_combout\ $ (VCC))) # (!\inst|inst2|Add2~24_combout\ & (\inst|inst2|ra~1_combout\ & VCC))
-- \inst|inst2|Add4~1\ = CARRY((\inst|inst2|Add2~24_combout\ & \inst|inst2|ra~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~24_combout\,
	datab => \inst|inst2|ra~1_combout\,
	datad => VCC,
	combout => \inst|inst2|Add4~0_combout\,
	cout => \inst|inst2|Add4~1\);

-- Location: LCCOMB_X18_Y21_N12
\inst|inst2|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~0_combout\ = \inst|inst2|Add4~0_combout\ $ (VCC)
-- \inst|inst2|Add5~1\ = CARRY(\inst|inst2|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add4~0_combout\,
	datad => VCC,
	combout => \inst|inst2|Add5~0_combout\,
	cout => \inst|inst2|Add5~1\);

-- Location: LCCOMB_X18_Y22_N0
\inst|inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~0_combout\ = (\inst|inst2|rc\(0) & (\inst|inst2|ra~2_combout\ $ (VCC))) # (!\inst|inst2|rc\(0) & (\inst|inst2|ra~2_combout\ & VCC))
-- \inst|inst2|Add0~1\ = CARRY((\inst|inst2|rc\(0) & \inst|inst2|ra~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(0),
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	combout => \inst|inst2|Add0~0_combout\,
	cout => \inst|inst2|Add0~1\);

-- Location: LCCOMB_X17_Y22_N2
\inst|inst2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~0_combout\ = \inst|inst2|Add0~0_combout\ $ (VCC)
-- \inst|inst2|Add1~1\ = CARRY(\inst|inst2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add0~0_combout\,
	datad => VCC,
	combout => \inst|inst2|Add1~0_combout\,
	cout => \inst|inst2|Add1~1\);

-- Location: LCCOMB_X17_Y22_N20
\inst|inst2|rc~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~43_combout\ = (\inst|inst2|Equal2~1_combout\ & (((\inst|inst2|rc[4]~32_combout\)))) # (!\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc[4]~32_combout\ & (\inst|inst2|Add1~0_combout\)) # (!\inst|inst2|rc[4]~32_combout\ & 
-- ((\inst|inst2|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add1~0_combout\,
	datab => \inst|inst2|Add0~0_combout\,
	datac => \inst|inst2|Equal2~1_combout\,
	datad => \inst|inst2|rc[4]~32_combout\,
	combout => \inst|inst2|rc~43_combout\);

-- Location: LCCOMB_X17_Y22_N26
\inst|inst2|rc~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~44_combout\ = (\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc~43_combout\ & ((\inst|inst2|Add5~0_combout\))) # (!\inst|inst2|rc~43_combout\ & (\inst|inst2|Add4~0_combout\)))) # (!\inst|inst2|Equal2~1_combout\ & 
-- (((\inst|inst2|rc~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~0_combout\,
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|Add5~0_combout\,
	datad => \inst|inst2|rc~43_combout\,
	combout => \inst|inst2|rc~44_combout\);

-- Location: LCCOMB_X17_Y22_N28
\inst|inst2|rc~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~45_combout\ = (\inst|inst2|rc~49_combout\) # ((\inst|inst2|rc~44_combout\ & \inst|inst2|rc~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc~49_combout\,
	datac => \inst|inst2|rc~44_combout\,
	datad => \inst|inst2|rc~31_combout\,
	combout => \inst|inst2|rc~45_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst|inst2|rc[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~21_combout\ = (!\inst|inst2|Equal1~1_combout\ & (!\inst|inst2|Equal0~2_combout\ & (!\inst|inst2|Equal3~0_combout\ & !\inst|inst2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal1~1_combout\,
	datab => \inst|inst2|Equal0~2_combout\,
	datac => \inst|inst2|Equal3~0_combout\,
	datad => \inst|inst2|Equal2~1_combout\,
	combout => \inst|inst2|rc[4]~21_combout\);

-- Location: LCCOMB_X17_Y20_N16
\inst|inst2|rc[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[3]~36_combout\ = (\inst|inst2|rc~13_combout\) # (!\inst|inst2|rc[4]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|rc[4]~21_combout\,
	datad => \inst|inst2|rc~13_combout\,
	combout => \inst|inst2|rc[3]~36_combout\);

-- Location: FF_X17_Y22_N29
\inst|inst2|rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc~45_combout\,
	ena => \inst|inst2|rc[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(0));

-- Location: LCCOMB_X18_Y22_N2
\inst|inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~2_combout\ = (\inst|inst2|rc\(1) & ((\inst|inst2|ra~2_combout\ & (\inst|inst2|Add0~1\ & VCC)) # (!\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add0~1\)))) # (!\inst|inst2|rc\(1) & ((\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add0~1\)) # 
-- (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|Add0~1\) # (GND)))))
-- \inst|inst2|Add0~3\ = CARRY((\inst|inst2|rc\(1) & (!\inst|inst2|ra~2_combout\ & !\inst|inst2|Add0~1\)) # (!\inst|inst2|rc\(1) & ((!\inst|inst2|Add0~1\) # (!\inst|inst2|ra~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(1),
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add0~1\,
	combout => \inst|inst2|Add0~2_combout\,
	cout => \inst|inst2|Add0~3\);

-- Location: LCCOMB_X17_Y22_N4
\inst|inst2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~2_combout\ = (\inst|inst2|Add0~2_combout\ & (!\inst|inst2|Add1~1\)) # (!\inst|inst2|Add0~2_combout\ & ((\inst|inst2|Add1~1\) # (GND)))
-- \inst|inst2|Add1~3\ = CARRY((!\inst|inst2|Add1~1\) # (!\inst|inst2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add1~1\,
	combout => \inst|inst2|Add1~2_combout\,
	cout => \inst|inst2|Add1~3\);

-- Location: LCCOMB_X16_Y22_N18
\inst|inst2|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~10_combout\ = (\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(1) & (!\inst|inst2|Add2~9\)) # (!\inst|inst2|rc\(1) & ((\inst|inst2|Add2~9\) # (GND))))) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(1) & (\inst|inst2|Add2~9\ & VCC)) # 
-- (!\inst|inst2|rc\(1) & (!\inst|inst2|Add2~9\))))
-- \inst|inst2|Add2~11\ = CARRY((\inst|inst2|ra~2_combout\ & ((!\inst|inst2|Add2~9\) # (!\inst|inst2|rc\(1)))) # (!\inst|inst2|ra~2_combout\ & (!\inst|inst2|rc\(1) & !\inst|inst2|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(1),
	datad => VCC,
	cin => \inst|inst2|Add2~9\,
	combout => \inst|inst2|Add2~10_combout\,
	cout => \inst|inst2|Add2~11\);

-- Location: LCCOMB_X16_Y21_N2
\inst|inst2|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~26_combout\ = (\inst|inst2|Add2~10_combout\ & (!\inst|inst2|Add2~25\)) # (!\inst|inst2|Add2~10_combout\ & ((\inst|inst2|Add2~25\) # (GND)))
-- \inst|inst2|Add2~27\ = CARRY((!\inst|inst2|Add2~25\) # (!\inst|inst2|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add2~10_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~25\,
	combout => \inst|inst2|Add2~26_combout\,
	cout => \inst|inst2|Add2~27\);

-- Location: LCCOMB_X17_Y21_N6
\inst|inst2|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~2_combout\ = (\inst|inst2|Add2~26_combout\ & ((\inst|inst2|ra~3_combout\ & (\inst|inst2|Add4~1\ & VCC)) # (!\inst|inst2|ra~3_combout\ & (!\inst|inst2|Add4~1\)))) # (!\inst|inst2|Add2~26_combout\ & ((\inst|inst2|ra~3_combout\ & 
-- (!\inst|inst2|Add4~1\)) # (!\inst|inst2|ra~3_combout\ & ((\inst|inst2|Add4~1\) # (GND)))))
-- \inst|inst2|Add4~3\ = CARRY((\inst|inst2|Add2~26_combout\ & (!\inst|inst2|ra~3_combout\ & !\inst|inst2|Add4~1\)) # (!\inst|inst2|Add2~26_combout\ & ((!\inst|inst2|Add4~1\) # (!\inst|inst2|ra~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~26_combout\,
	datab => \inst|inst2|ra~3_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~1\,
	combout => \inst|inst2|Add4~2_combout\,
	cout => \inst|inst2|Add4~3\);

-- Location: LCCOMB_X18_Y21_N14
\inst|inst2|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~2_combout\ = (\inst|inst2|Add4~2_combout\ & (!\inst|inst2|Add5~1\)) # (!\inst|inst2|Add4~2_combout\ & ((\inst|inst2|Add5~1\) # (GND)))
-- \inst|inst2|Add5~3\ = CARRY((!\inst|inst2|Add5~1\) # (!\inst|inst2|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add4~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add5~1\,
	combout => \inst|inst2|Add5~2_combout\,
	cout => \inst|inst2|Add5~3\);

-- Location: LCCOMB_X17_Y20_N10
\inst|inst2|rc~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~40_combout\ = (\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|Add4~2_combout\) # ((\inst|inst2|rc[4]~32_combout\)))) # (!\inst|inst2|Equal2~1_combout\ & (((!\inst|inst2|rc[4]~32_combout\ & \inst|inst2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal2~1_combout\,
	datab => \inst|inst2|Add4~2_combout\,
	datac => \inst|inst2|rc[4]~32_combout\,
	datad => \inst|inst2|Add0~2_combout\,
	combout => \inst|inst2|rc~40_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst|inst2|rc~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~41_combout\ = (\inst|inst2|rc[4]~32_combout\ & ((\inst|inst2|rc~40_combout\ & ((\inst|inst2|Add5~2_combout\))) # (!\inst|inst2|rc~40_combout\ & (\inst|inst2|Add1~2_combout\)))) # (!\inst|inst2|rc[4]~32_combout\ & 
-- (((\inst|inst2|rc~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add1~2_combout\,
	datab => \inst|inst2|Add5~2_combout\,
	datac => \inst|inst2|rc[4]~32_combout\,
	datad => \inst|inst2|rc~40_combout\,
	combout => \inst|inst2|rc~41_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst|inst2|rc~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~42_combout\ = (\inst|inst2|rc~48_combout\) # ((\inst|inst2|rc~31_combout\ & \inst|inst2|rc~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|rc~48_combout\,
	datac => \inst|inst2|rc~31_combout\,
	datad => \inst|inst2|rc~41_combout\,
	combout => \inst|inst2|rc~42_combout\);

-- Location: FF_X17_Y20_N13
\inst|inst2|rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc~42_combout\,
	ena => \inst|inst2|rc[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(1));

-- Location: LCCOMB_X16_Y22_N20
\inst|inst2|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~12_combout\ = ((\inst|inst2|ra~2_combout\ $ (\inst|inst2|rc\(2) $ (\inst|inst2|Add2~11\)))) # (GND)
-- \inst|inst2|Add2~13\ = CARRY((\inst|inst2|ra~2_combout\ & (\inst|inst2|rc\(2) & !\inst|inst2|Add2~11\)) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(2)) # (!\inst|inst2|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(2),
	datad => VCC,
	cin => \inst|inst2|Add2~11\,
	combout => \inst|inst2|Add2~12_combout\,
	cout => \inst|inst2|Add2~13\);

-- Location: LCCOMB_X16_Y21_N4
\inst|inst2|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~28_combout\ = (\inst|inst2|Add2~12_combout\ & (\inst|inst2|Add2~27\ $ (GND))) # (!\inst|inst2|Add2~12_combout\ & (!\inst|inst2|Add2~27\ & VCC))
-- \inst|inst2|Add2~29\ = CARRY((\inst|inst2|Add2~12_combout\ & !\inst|inst2|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~12_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~27\,
	combout => \inst|inst2|Add2~28_combout\,
	cout => \inst|inst2|Add2~29\);

-- Location: LCCOMB_X17_Y21_N8
\inst|inst2|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~4_combout\ = ((\inst|inst2|ra~0_combout\ $ (\inst|inst2|Add2~28_combout\ $ (!\inst|inst2|Add4~3\)))) # (GND)
-- \inst|inst2|Add4~5\ = CARRY((\inst|inst2|ra~0_combout\ & ((\inst|inst2|Add2~28_combout\) # (!\inst|inst2|Add4~3\))) # (!\inst|inst2|ra~0_combout\ & (\inst|inst2|Add2~28_combout\ & !\inst|inst2|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~0_combout\,
	datab => \inst|inst2|Add2~28_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~3\,
	combout => \inst|inst2|Add4~4_combout\,
	cout => \inst|inst2|Add4~5\);

-- Location: LCCOMB_X18_Y21_N16
\inst|inst2|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~4_combout\ = (\inst|inst2|Add4~4_combout\ & (\inst|inst2|Add5~3\ $ (GND))) # (!\inst|inst2|Add4~4_combout\ & (!\inst|inst2|Add5~3\ & VCC))
-- \inst|inst2|Add5~5\ = CARRY((\inst|inst2|Add4~4_combout\ & !\inst|inst2|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~4_combout\,
	datad => VCC,
	cin => \inst|inst2|Add5~3\,
	combout => \inst|inst2|Add5~4_combout\,
	cout => \inst|inst2|Add5~5\);

-- Location: LCCOMB_X18_Y22_N4
\inst|inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~4_combout\ = ((\inst|inst2|ra~2_combout\ $ (\inst|inst2|rc\(2) $ (!\inst|inst2|Add0~3\)))) # (GND)
-- \inst|inst2|Add0~5\ = CARRY((\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(2)) # (!\inst|inst2|Add0~3\))) # (!\inst|inst2|ra~2_combout\ & (\inst|inst2|rc\(2) & !\inst|inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(2),
	datad => VCC,
	cin => \inst|inst2|Add0~3\,
	combout => \inst|inst2|Add0~4_combout\,
	cout => \inst|inst2|Add0~5\);

-- Location: LCCOMB_X17_Y22_N6
\inst|inst2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~4_combout\ = (\inst|inst2|Add0~4_combout\ & (\inst|inst2|Add1~3\ $ (GND))) # (!\inst|inst2|Add0~4_combout\ & (!\inst|inst2|Add1~3\ & VCC))
-- \inst|inst2|Add1~5\ = CARRY((\inst|inst2|Add0~4_combout\ & !\inst|inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst|inst2|Add1~3\,
	combout => \inst|inst2|Add1~4_combout\,
	cout => \inst|inst2|Add1~5\);

-- Location: LCCOMB_X17_Y22_N24
\inst|inst2|rc~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~37_combout\ = (\inst|inst2|Equal2~1_combout\ & (((\inst|inst2|rc[4]~32_combout\)))) # (!\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc[4]~32_combout\ & ((\inst|inst2|Add1~4_combout\))) # (!\inst|inst2|rc[4]~32_combout\ & 
-- (\inst|inst2|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~4_combout\,
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|Add1~4_combout\,
	datad => \inst|inst2|rc[4]~32_combout\,
	combout => \inst|inst2|rc~37_combout\);

-- Location: LCCOMB_X17_Y22_N18
\inst|inst2|rc~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~38_combout\ = (\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc~37_combout\ & ((\inst|inst2|Add5~4_combout\))) # (!\inst|inst2|rc~37_combout\ & (\inst|inst2|Add4~4_combout\)))) # (!\inst|inst2|Equal2~1_combout\ & 
-- (((\inst|inst2|rc~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~4_combout\,
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|Add5~4_combout\,
	datad => \inst|inst2|rc~37_combout\,
	combout => \inst|inst2|rc~38_combout\);

-- Location: LCCOMB_X17_Y22_N22
\inst|inst2|rc~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~39_combout\ = (\inst|inst2|rc~47_combout\) # ((\inst|inst2|rc~31_combout\ & \inst|inst2|rc~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|rc~31_combout\,
	datac => \inst|inst2|rc~47_combout\,
	datad => \inst|inst2|rc~38_combout\,
	combout => \inst|inst2|rc~39_combout\);

-- Location: FF_X17_Y22_N23
\inst|inst2|rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc~39_combout\,
	ena => \inst|inst2|rc[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(2));

-- Location: LCCOMB_X16_Y22_N22
\inst|inst2|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~14_combout\ = (\inst|inst2|ra~1_combout\ & ((\inst|inst2|rc\(3) & (!\inst|inst2|Add2~13\)) # (!\inst|inst2|rc\(3) & ((\inst|inst2|Add2~13\) # (GND))))) # (!\inst|inst2|ra~1_combout\ & ((\inst|inst2|rc\(3) & (\inst|inst2|Add2~13\ & VCC)) # 
-- (!\inst|inst2|rc\(3) & (!\inst|inst2|Add2~13\))))
-- \inst|inst2|Add2~15\ = CARRY((\inst|inst2|ra~1_combout\ & ((!\inst|inst2|Add2~13\) # (!\inst|inst2|rc\(3)))) # (!\inst|inst2|ra~1_combout\ & (!\inst|inst2|rc\(3) & !\inst|inst2|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~1_combout\,
	datab => \inst|inst2|rc\(3),
	datad => VCC,
	cin => \inst|inst2|Add2~13\,
	combout => \inst|inst2|Add2~14_combout\,
	cout => \inst|inst2|Add2~15\);

-- Location: LCCOMB_X16_Y22_N24
\inst|inst2|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~16_combout\ = ((\inst|inst2|rc\(4) $ (\inst|inst2|ra~3_combout\ $ (\inst|inst2|Add2~15\)))) # (GND)
-- \inst|inst2|Add2~17\ = CARRY((\inst|inst2|rc\(4) & ((!\inst|inst2|Add2~15\) # (!\inst|inst2|ra~3_combout\))) # (!\inst|inst2|rc\(4) & (!\inst|inst2|ra~3_combout\ & !\inst|inst2|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(4),
	datab => \inst|inst2|ra~3_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~15\,
	combout => \inst|inst2|Add2~16_combout\,
	cout => \inst|inst2|Add2~17\);

-- Location: LCCOMB_X16_Y22_N26
\inst|inst2|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~18_combout\ = (\inst|inst2|rc\(5) & ((\inst|inst2|ra~0_combout\ & (!\inst|inst2|Add2~17\)) # (!\inst|inst2|ra~0_combout\ & (\inst|inst2|Add2~17\ & VCC)))) # (!\inst|inst2|rc\(5) & ((\inst|inst2|ra~0_combout\ & ((\inst|inst2|Add2~17\) # 
-- (GND))) # (!\inst|inst2|ra~0_combout\ & (!\inst|inst2|Add2~17\))))
-- \inst|inst2|Add2~19\ = CARRY((\inst|inst2|rc\(5) & (\inst|inst2|ra~0_combout\ & !\inst|inst2|Add2~17\)) # (!\inst|inst2|rc\(5) & ((\inst|inst2|ra~0_combout\) # (!\inst|inst2|Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(5),
	datab => \inst|inst2|ra~0_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~17\,
	combout => \inst|inst2|Add2~18_combout\,
	cout => \inst|inst2|Add2~19\);

-- Location: LCCOMB_X16_Y22_N28
\inst|inst2|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~20_combout\ = ((\inst|inst2|ra~2_combout\ $ (\inst|inst2|rc\(6) $ (\inst|inst2|Add2~19\)))) # (GND)
-- \inst|inst2|Add2~21\ = CARRY((\inst|inst2|ra~2_combout\ & (\inst|inst2|rc\(6) & !\inst|inst2|Add2~19\)) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(6)) # (!\inst|inst2|Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(6),
	datad => VCC,
	cin => \inst|inst2|Add2~19\,
	combout => \inst|inst2|Add2~20_combout\,
	cout => \inst|inst2|Add2~21\);

-- Location: LCCOMB_X16_Y21_N6
\inst|inst2|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~30_combout\ = (\inst|inst2|Add2~14_combout\ & (!\inst|inst2|Add2~29\)) # (!\inst|inst2|Add2~14_combout\ & ((\inst|inst2|Add2~29\) # (GND)))
-- \inst|inst2|Add2~31\ = CARRY((!\inst|inst2|Add2~29\) # (!\inst|inst2|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add2~14_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~29\,
	combout => \inst|inst2|Add2~30_combout\,
	cout => \inst|inst2|Add2~31\);

-- Location: LCCOMB_X16_Y21_N8
\inst|inst2|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~32_combout\ = (\inst|inst2|Add2~16_combout\ & (\inst|inst2|Add2~31\ $ (GND))) # (!\inst|inst2|Add2~16_combout\ & (!\inst|inst2|Add2~31\ & VCC))
-- \inst|inst2|Add2~33\ = CARRY((\inst|inst2|Add2~16_combout\ & !\inst|inst2|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~16_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~31\,
	combout => \inst|inst2|Add2~32_combout\,
	cout => \inst|inst2|Add2~33\);

-- Location: LCCOMB_X16_Y21_N10
\inst|inst2|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~34_combout\ = (\inst|inst2|Add2~18_combout\ & (!\inst|inst2|Add2~33\)) # (!\inst|inst2|Add2~18_combout\ & ((\inst|inst2|Add2~33\) # (GND)))
-- \inst|inst2|Add2~35\ = CARRY((!\inst|inst2|Add2~33\) # (!\inst|inst2|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add2~18_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~33\,
	combout => \inst|inst2|Add2~34_combout\,
	cout => \inst|inst2|Add2~35\);

-- Location: LCCOMB_X16_Y21_N12
\inst|inst2|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~36_combout\ = (\inst|inst2|Add2~20_combout\ & (\inst|inst2|Add2~35\ $ (GND))) # (!\inst|inst2|Add2~20_combout\ & (!\inst|inst2|Add2~35\ & VCC))
-- \inst|inst2|Add2~37\ = CARRY((\inst|inst2|Add2~20_combout\ & !\inst|inst2|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add2~20_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~35\,
	combout => \inst|inst2|Add2~36_combout\,
	cout => \inst|inst2|Add2~37\);

-- Location: LCCOMB_X16_Y21_N14
\inst|inst2|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~38_combout\ = (\inst|inst2|Add2~22_combout\ & (!\inst|inst2|Add2~37\)) # (!\inst|inst2|Add2~22_combout\ & ((\inst|inst2|Add2~37\) # (GND)))
-- \inst|inst2|Add2~39\ = CARRY((!\inst|inst2|Add2~37\) # (!\inst|inst2|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add2~22_combout\,
	datad => VCC,
	cin => \inst|inst2|Add2~37\,
	combout => \inst|inst2|Add2~38_combout\,
	cout => \inst|inst2|Add2~39\);

-- Location: LCCOMB_X16_Y21_N16
\inst|inst2|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add2~40_combout\ = !\inst|inst2|Add2~39\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|inst2|Add2~39\,
	combout => \inst|inst2|Add2~40_combout\);

-- Location: LCCOMB_X17_Y21_N10
\inst|inst2|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~6_combout\ = (\inst|inst2|ra~2_combout\ & ((\inst|inst2|Add2~30_combout\ & (\inst|inst2|Add4~5\ & VCC)) # (!\inst|inst2|Add2~30_combout\ & (!\inst|inst2|Add4~5\)))) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|Add2~30_combout\ & 
-- (!\inst|inst2|Add4~5\)) # (!\inst|inst2|Add2~30_combout\ & ((\inst|inst2|Add4~5\) # (GND)))))
-- \inst|inst2|Add4~7\ = CARRY((\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add2~30_combout\ & !\inst|inst2|Add4~5\)) # (!\inst|inst2|ra~2_combout\ & ((!\inst|inst2|Add4~5\) # (!\inst|inst2|Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|Add2~30_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~5\,
	combout => \inst|inst2|Add4~6_combout\,
	cout => \inst|inst2|Add4~7\);

-- Location: LCCOMB_X17_Y21_N12
\inst|inst2|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~8_combout\ = ((\inst|inst2|Add2~32_combout\ $ (\inst|inst2|ra~2_combout\ $ (!\inst|inst2|Add4~7\)))) # (GND)
-- \inst|inst2|Add4~9\ = CARRY((\inst|inst2|Add2~32_combout\ & ((\inst|inst2|ra~2_combout\) # (!\inst|inst2|Add4~7\))) # (!\inst|inst2|Add2~32_combout\ & (\inst|inst2|ra~2_combout\ & !\inst|inst2|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~32_combout\,
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~7\,
	combout => \inst|inst2|Add4~8_combout\,
	cout => \inst|inst2|Add4~9\);

-- Location: LCCOMB_X17_Y21_N14
\inst|inst2|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~10_combout\ = (\inst|inst2|Add2~34_combout\ & ((\inst|inst2|ra~2_combout\ & (\inst|inst2|Add4~9\ & VCC)) # (!\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add4~9\)))) # (!\inst|inst2|Add2~34_combout\ & ((\inst|inst2|ra~2_combout\ & 
-- (!\inst|inst2|Add4~9\)) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|Add4~9\) # (GND)))))
-- \inst|inst2|Add4~11\ = CARRY((\inst|inst2|Add2~34_combout\ & (!\inst|inst2|ra~2_combout\ & !\inst|inst2|Add4~9\)) # (!\inst|inst2|Add2~34_combout\ & ((!\inst|inst2|Add4~9\) # (!\inst|inst2|ra~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~34_combout\,
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~9\,
	combout => \inst|inst2|Add4~10_combout\,
	cout => \inst|inst2|Add4~11\);

-- Location: LCCOMB_X17_Y21_N16
\inst|inst2|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~12_combout\ = ((\inst|inst2|Add2~36_combout\ $ (\inst|inst2|ra~2_combout\ $ (!\inst|inst2|Add4~11\)))) # (GND)
-- \inst|inst2|Add4~13\ = CARRY((\inst|inst2|Add2~36_combout\ & ((\inst|inst2|ra~2_combout\) # (!\inst|inst2|Add4~11\))) # (!\inst|inst2|Add2~36_combout\ & (\inst|inst2|ra~2_combout\ & !\inst|inst2|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~36_combout\,
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~11\,
	combout => \inst|inst2|Add4~12_combout\,
	cout => \inst|inst2|Add4~13\);

-- Location: LCCOMB_X17_Y21_N18
\inst|inst2|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~14_combout\ = (\inst|inst2|Add2~38_combout\ & ((\inst|inst2|ra~2_combout\ & (\inst|inst2|Add4~13\ & VCC)) # (!\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add4~13\)))) # (!\inst|inst2|Add2~38_combout\ & ((\inst|inst2|ra~2_combout\ & 
-- (!\inst|inst2|Add4~13\)) # (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|Add4~13\) # (GND)))))
-- \inst|inst2|Add4~15\ = CARRY((\inst|inst2|Add2~38_combout\ & (!\inst|inst2|ra~2_combout\ & !\inst|inst2|Add4~13\)) # (!\inst|inst2|Add2~38_combout\ & ((!\inst|inst2|Add4~13\) # (!\inst|inst2|ra~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~38_combout\,
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add4~13\,
	combout => \inst|inst2|Add4~14_combout\,
	cout => \inst|inst2|Add4~15\);

-- Location: LCCOMB_X17_Y21_N20
\inst|inst2|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add4~16_combout\ = \inst|inst2|Add2~40_combout\ $ (!\inst|inst2|Add4~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add2~40_combout\,
	cin => \inst|inst2|Add4~15\,
	combout => \inst|inst2|Add4~16_combout\);

-- Location: LCCOMB_X17_Y21_N30
\inst|inst2|rc[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~32_combout\ = (\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|Add4~16_combout\))) # (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|Add0~16_combout\,
	datad => \inst|inst2|Add4~16_combout\,
	combout => \inst|inst2|rc[4]~32_combout\);

-- Location: LCCOMB_X18_Y22_N6
\inst|inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~6_combout\ = (\inst|inst2|rc\(3) & ((\inst|inst2|ra~1_combout\ & (\inst|inst2|Add0~5\ & VCC)) # (!\inst|inst2|ra~1_combout\ & (!\inst|inst2|Add0~5\)))) # (!\inst|inst2|rc\(3) & ((\inst|inst2|ra~1_combout\ & (!\inst|inst2|Add0~5\)) # 
-- (!\inst|inst2|ra~1_combout\ & ((\inst|inst2|Add0~5\) # (GND)))))
-- \inst|inst2|Add0~7\ = CARRY((\inst|inst2|rc\(3) & (!\inst|inst2|ra~1_combout\ & !\inst|inst2|Add0~5\)) # (!\inst|inst2|rc\(3) & ((!\inst|inst2|Add0~5\) # (!\inst|inst2|ra~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(3),
	datab => \inst|inst2|ra~1_combout\,
	datad => VCC,
	cin => \inst|inst2|Add0~5\,
	combout => \inst|inst2|Add0~6_combout\,
	cout => \inst|inst2|Add0~7\);

-- Location: LCCOMB_X17_Y22_N8
\inst|inst2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~6_combout\ = (\inst|inst2|Add0~6_combout\ & (!\inst|inst2|Add1~5\)) # (!\inst|inst2|Add0~6_combout\ & ((\inst|inst2|Add1~5\) # (GND)))
-- \inst|inst2|Add1~7\ = CARRY((!\inst|inst2|Add1~5\) # (!\inst|inst2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst|inst2|Add1~5\,
	combout => \inst|inst2|Add1~6_combout\,
	cout => \inst|inst2|Add1~7\);

-- Location: LCCOMB_X17_Y21_N28
\inst|inst2|rc~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~33_combout\ = (\inst|inst2|Equal2~1_combout\ & (((\inst|inst2|rc[4]~32_combout\) # (\inst|inst2|Add4~6_combout\)))) # (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|Add0~6_combout\ & (!\inst|inst2|rc[4]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal2~1_combout\,
	datab => \inst|inst2|Add0~6_combout\,
	datac => \inst|inst2|rc[4]~32_combout\,
	datad => \inst|inst2|Add4~6_combout\,
	combout => \inst|inst2|rc~33_combout\);

-- Location: LCCOMB_X18_Y21_N18
\inst|inst2|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~6_combout\ = (\inst|inst2|Add4~6_combout\ & (!\inst|inst2|Add5~5\)) # (!\inst|inst2|Add4~6_combout\ & ((\inst|inst2|Add5~5\) # (GND)))
-- \inst|inst2|Add5~7\ = CARRY((!\inst|inst2|Add5~5\) # (!\inst|inst2|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~6_combout\,
	datad => VCC,
	cin => \inst|inst2|Add5~5\,
	combout => \inst|inst2|Add5~6_combout\,
	cout => \inst|inst2|Add5~7\);

-- Location: LCCOMB_X17_Y21_N22
\inst|inst2|rc~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~34_combout\ = (\inst|inst2|rc[4]~32_combout\ & ((\inst|inst2|rc~33_combout\ & ((\inst|inst2|Add5~6_combout\))) # (!\inst|inst2|rc~33_combout\ & (\inst|inst2|Add1~6_combout\)))) # (!\inst|inst2|rc[4]~32_combout\ & 
-- (((\inst|inst2|rc~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc[4]~32_combout\,
	datab => \inst|inst2|Add1~6_combout\,
	datac => \inst|inst2|rc~33_combout\,
	datad => \inst|inst2|Add5~6_combout\,
	combout => \inst|inst2|rc~34_combout\);

-- Location: LCCOMB_X17_Y22_N0
\inst|inst2|rc~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~35_combout\ = (\inst|inst2|rc~46_combout\) # ((\inst|inst2|rc~31_combout\ & \inst|inst2|rc~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|rc~31_combout\,
	datac => \inst|inst2|rc~46_combout\,
	datad => \inst|inst2|rc~34_combout\,
	combout => \inst|inst2|rc~35_combout\);

-- Location: FF_X17_Y22_N1
\inst|inst2|rc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc~35_combout\,
	ena => \inst|inst2|rc[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(3));

-- Location: LCCOMB_X18_Y22_N8
\inst|inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~8_combout\ = ((\inst|inst2|ra~3_combout\ $ (\inst|inst2|rc\(4) $ (!\inst|inst2|Add0~7\)))) # (GND)
-- \inst|inst2|Add0~9\ = CARRY((\inst|inst2|ra~3_combout\ & ((\inst|inst2|rc\(4)) # (!\inst|inst2|Add0~7\))) # (!\inst|inst2|ra~3_combout\ & (\inst|inst2|rc\(4) & !\inst|inst2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~3_combout\,
	datab => \inst|inst2|rc\(4),
	datad => VCC,
	cin => \inst|inst2|Add0~7\,
	combout => \inst|inst2|Add0~8_combout\,
	cout => \inst|inst2|Add0~9\);

-- Location: LCCOMB_X17_Y22_N10
\inst|inst2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~8_combout\ = (\inst|inst2|Add0~8_combout\ & (\inst|inst2|Add1~7\ $ (GND))) # (!\inst|inst2|Add0~8_combout\ & (!\inst|inst2|Add1~7\ & VCC))
-- \inst|inst2|Add1~9\ = CARRY((\inst|inst2|Add0~8_combout\ & !\inst|inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst|inst2|Add1~7\,
	combout => \inst|inst2|Add1~8_combout\,
	cout => \inst|inst2|Add1~9\);

-- Location: LCCOMB_X18_Y22_N28
\inst|inst2|rc[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~28_combout\ = (\inst|inst2|Equal1~1_combout\ & (\inst|inst2|Add0~8_combout\ & !\inst|inst2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Equal1~1_combout\,
	datac => \inst|inst2|Add0~8_combout\,
	datad => \inst|inst2|Add0~16_combout\,
	combout => \inst|inst2|rc[4]~28_combout\);

-- Location: LCCOMB_X18_Y21_N20
\inst|inst2|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~8_combout\ = (\inst|inst2|Add4~8_combout\ & (\inst|inst2|Add5~7\ $ (GND))) # (!\inst|inst2|Add4~8_combout\ & (!\inst|inst2|Add5~7\ & VCC))
-- \inst|inst2|Add5~9\ = CARRY((\inst|inst2|Add4~8_combout\ & !\inst|inst2|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~8_combout\,
	datad => VCC,
	cin => \inst|inst2|Add5~7\,
	combout => \inst|inst2|Add5~8_combout\,
	cout => \inst|inst2|Add5~9\);

-- Location: LCCOMB_X18_Y21_N4
\inst|inst2|rc[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~27_combout\ = (\inst|inst2|Add4~16_combout\ & ((\inst|inst2|Add5~8_combout\))) # (!\inst|inst2|Add4~16_combout\ & (\inst|inst2|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~8_combout\,
	datab => \inst|inst2|Add4~16_combout\,
	datad => \inst|inst2|Add5~8_combout\,
	combout => \inst|inst2|rc[4]~27_combout\);

-- Location: LCCOMB_X18_Y21_N2
\inst|inst2|rc[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~29_combout\ = (\inst|inst2|Equal3~0_combout\) # ((\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc[4]~27_combout\))) # (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|rc[4]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc[4]~28_combout\,
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|rc[4]~27_combout\,
	datad => \inst|inst2|Equal3~0_combout\,
	combout => \inst|inst2|rc[4]~29_combout\);

-- Location: LCCOMB_X18_Y21_N10
\inst|inst2|rc[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~3_combout\ = (\inst|inst2|rc[4]~30_combout\ & ((\inst|inst2|rc[4]~29_combout\) # ((\inst|inst2|rc~16_combout\ & \inst|inst2|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc[4]~30_combout\,
	datab => \inst|inst2|rc~16_combout\,
	datac => \inst|inst2|Add1~8_combout\,
	datad => \inst|inst2|rc[4]~29_combout\,
	combout => \inst|inst2|rc[4]~3_combout\);

-- Location: LCCOMB_X18_Y21_N8
\inst|inst2|rc[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~feeder_combout\ = \inst|inst2|rc[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|rc[4]~3_combout\,
	combout => \inst|inst2|rc[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N22
\inst|inst2|rc[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[4]~22_combout\ = (\inst|inst2|rc~12_combout\) # (!\inst|inst2|rc[4]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|rc[4]~21_combout\,
	datad => \inst|inst2|rc~12_combout\,
	combout => \inst|inst2|rc[4]~22_combout\);

-- Location: FF_X18_Y21_N9
\inst|inst2|rc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc[4]~feeder_combout\,
	asdata => \inst|inst2|rb~3_combout\,
	sload => \inst|inst2|rc~12_combout\,
	ena => \inst|inst2|rc[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(4));

-- Location: LCCOMB_X18_Y22_N10
\inst|inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~10_combout\ = (\inst|inst2|ra~0_combout\ & ((\inst|inst2|rc\(5) & (\inst|inst2|Add0~9\ & VCC)) # (!\inst|inst2|rc\(5) & (!\inst|inst2|Add0~9\)))) # (!\inst|inst2|ra~0_combout\ & ((\inst|inst2|rc\(5) & (!\inst|inst2|Add0~9\)) # 
-- (!\inst|inst2|rc\(5) & ((\inst|inst2|Add0~9\) # (GND)))))
-- \inst|inst2|Add0~11\ = CARRY((\inst|inst2|ra~0_combout\ & (!\inst|inst2|rc\(5) & !\inst|inst2|Add0~9\)) # (!\inst|inst2|ra~0_combout\ & ((!\inst|inst2|Add0~9\) # (!\inst|inst2|rc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~0_combout\,
	datab => \inst|inst2|rc\(5),
	datad => VCC,
	cin => \inst|inst2|Add0~9\,
	combout => \inst|inst2|Add0~10_combout\,
	cout => \inst|inst2|Add0~11\);

-- Location: LCCOMB_X17_Y22_N12
\inst|inst2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~10_combout\ = (\inst|inst2|Add0~10_combout\ & (!\inst|inst2|Add1~9\)) # (!\inst|inst2|Add0~10_combout\ & ((\inst|inst2|Add1~9\) # (GND)))
-- \inst|inst2|Add1~11\ = CARRY((!\inst|inst2|Add1~9\) # (!\inst|inst2|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add0~10_combout\,
	datad => VCC,
	cin => \inst|inst2|Add1~9\,
	combout => \inst|inst2|Add1~10_combout\,
	cout => \inst|inst2|Add1~11\);

-- Location: LCCOMB_X17_Y22_N30
\inst|inst2|rc[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[5]~24_combout\ = (\inst|inst2|Equal1~1_combout\ & (\inst|inst2|Add0~10_combout\ & !\inst|inst2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Equal1~1_combout\,
	datac => \inst|inst2|Add0~10_combout\,
	datad => \inst|inst2|Add0~16_combout\,
	combout => \inst|inst2|rc[5]~24_combout\);

-- Location: LCCOMB_X18_Y21_N22
\inst|inst2|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~10_combout\ = (\inst|inst2|Add4~10_combout\ & (!\inst|inst2|Add5~9\)) # (!\inst|inst2|Add4~10_combout\ & ((\inst|inst2|Add5~9\) # (GND)))
-- \inst|inst2|Add5~11\ = CARRY((!\inst|inst2|Add5~9\) # (!\inst|inst2|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~10_combout\,
	datad => VCC,
	cin => \inst|inst2|Add5~9\,
	combout => \inst|inst2|Add5~10_combout\,
	cout => \inst|inst2|Add5~11\);

-- Location: LCCOMB_X18_Y21_N28
\inst|inst2|rc[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[5]~23_combout\ = (\inst|inst2|Add4~16_combout\ & ((\inst|inst2|Add5~10_combout\))) # (!\inst|inst2|Add4~16_combout\ & (\inst|inst2|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~10_combout\,
	datac => \inst|inst2|Add5~10_combout\,
	datad => \inst|inst2|Add4~16_combout\,
	combout => \inst|inst2|rc[5]~23_combout\);

-- Location: LCCOMB_X18_Y21_N6
\inst|inst2|rc[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[5]~25_combout\ = (\inst|inst2|Equal3~0_combout\) # ((\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc[5]~23_combout\))) # (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|rc[5]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal3~0_combout\,
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|rc[5]~24_combout\,
	datad => \inst|inst2|rc[5]~23_combout\,
	combout => \inst|inst2|rc[5]~25_combout\);

-- Location: LCCOMB_X17_Y21_N2
\inst|inst2|rc[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[5]~2_combout\ = (\inst|inst2|rc[5]~26_combout\ & ((\inst|inst2|rc[5]~25_combout\) # ((\inst|inst2|Add1~10_combout\ & \inst|inst2|rc~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc[5]~26_combout\,
	datab => \inst|inst2|Add1~10_combout\,
	datac => \inst|inst2|rc~16_combout\,
	datad => \inst|inst2|rc[5]~25_combout\,
	combout => \inst|inst2|rc[5]~2_combout\);

-- Location: LCCOMB_X17_Y21_N26
\inst|inst2|rc[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[5]~feeder_combout\ = \inst|inst2|rc[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|rc[5]~2_combout\,
	combout => \inst|inst2|rc[5]~feeder_combout\);

-- Location: FF_X17_Y21_N27
\inst|inst2|rc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc[5]~feeder_combout\,
	asdata => \inst|inst2|rb~2_combout\,
	sload => \inst|inst2|rc~12_combout\,
	ena => \inst|inst2|rc[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(5));

-- Location: LCCOMB_X18_Y22_N12
\inst|inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~12_combout\ = ((\inst|inst2|ra~2_combout\ $ (\inst|inst2|rc\(6) $ (!\inst|inst2|Add0~11\)))) # (GND)
-- \inst|inst2|Add0~13\ = CARRY((\inst|inst2|ra~2_combout\ & ((\inst|inst2|rc\(6)) # (!\inst|inst2|Add0~11\))) # (!\inst|inst2|ra~2_combout\ & (\inst|inst2|rc\(6) & !\inst|inst2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|rc\(6),
	datad => VCC,
	cin => \inst|inst2|Add0~11\,
	combout => \inst|inst2|Add0~12_combout\,
	cout => \inst|inst2|Add0~13\);

-- Location: LCCOMB_X17_Y22_N14
\inst|inst2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~12_combout\ = (\inst|inst2|Add0~12_combout\ & (\inst|inst2|Add1~11\ $ (GND))) # (!\inst|inst2|Add0~12_combout\ & (!\inst|inst2|Add1~11\ & VCC))
-- \inst|inst2|Add1~13\ = CARRY((\inst|inst2|Add0~12_combout\ & !\inst|inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add0~12_combout\,
	datad => VCC,
	cin => \inst|inst2|Add1~11\,
	combout => \inst|inst2|Add1~12_combout\,
	cout => \inst|inst2|Add1~13\);

-- Location: LCCOMB_X19_Y21_N4
\inst|inst2|rc[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[6]~20_combout\ = (\inst|inst2|rc\(7)) # (!\inst|inst2|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|Equal3~0_combout\,
	datad => \inst|inst2|rc\(7),
	combout => \inst|inst2|rc[6]~20_combout\);

-- Location: LCCOMB_X18_Y22_N30
\inst|inst2|rc[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[6]~18_combout\ = (\inst|inst2|Add0~12_combout\ & (\inst|inst2|Equal1~1_combout\ & !\inst|inst2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~12_combout\,
	datab => \inst|inst2|Equal1~1_combout\,
	datad => \inst|inst2|Add0~16_combout\,
	combout => \inst|inst2|rc[6]~18_combout\);

-- Location: LCCOMB_X18_Y21_N24
\inst|inst2|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~12_combout\ = (\inst|inst2|Add4~12_combout\ & (\inst|inst2|Add5~11\ $ (GND))) # (!\inst|inst2|Add4~12_combout\ & (!\inst|inst2|Add5~11\ & VCC))
-- \inst|inst2|Add5~13\ = CARRY((\inst|inst2|Add4~12_combout\ & !\inst|inst2|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add4~12_combout\,
	datad => VCC,
	cin => \inst|inst2|Add5~11\,
	combout => \inst|inst2|Add5~12_combout\,
	cout => \inst|inst2|Add5~13\);

-- Location: LCCOMB_X18_Y21_N0
\inst|inst2|rc[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[6]~17_combout\ = (\inst|inst2|Add4~16_combout\ & ((\inst|inst2|Add5~12_combout\))) # (!\inst|inst2|Add4~16_combout\ & (\inst|inst2|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add4~16_combout\,
	datac => \inst|inst2|Add4~12_combout\,
	datad => \inst|inst2|Add5~12_combout\,
	combout => \inst|inst2|rc[6]~17_combout\);

-- Location: LCCOMB_X18_Y21_N30
\inst|inst2|rc[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[6]~19_combout\ = (\inst|inst2|Equal3~0_combout\) # ((\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|rc[6]~17_combout\))) # (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|rc[6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal3~0_combout\,
	datab => \inst|inst2|Equal2~1_combout\,
	datac => \inst|inst2|rc[6]~18_combout\,
	datad => \inst|inst2|rc[6]~17_combout\,
	combout => \inst|inst2|rc[6]~19_combout\);

-- Location: LCCOMB_X19_Y21_N10
\inst|inst2|rc[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[6]~1_combout\ = (\inst|inst2|rc[6]~20_combout\ & ((\inst|inst2|rc[6]~19_combout\) # ((\inst|inst2|Add1~12_combout\ & \inst|inst2|rc~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add1~12_combout\,
	datab => \inst|inst2|rc[6]~20_combout\,
	datac => \inst|inst2|rc~16_combout\,
	datad => \inst|inst2|rc[6]~19_combout\,
	combout => \inst|inst2|rc[6]~1_combout\);

-- Location: LCCOMB_X19_Y21_N0
\inst|inst2|rc[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[6]~feeder_combout\ = \inst|inst2|rc[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|rc[6]~1_combout\,
	combout => \inst|inst2|rc[6]~feeder_combout\);

-- Location: FF_X19_Y21_N1
\inst|inst2|rc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc[6]~feeder_combout\,
	asdata => \inst|inst2|rb~0_combout\,
	sload => \inst|inst2|rc~12_combout\,
	ena => \inst|inst2|rc[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(6));

-- Location: LCCOMB_X18_Y22_N14
\inst|inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~14_combout\ = (\inst|inst2|rc\(7) & ((\inst|inst2|ra~2_combout\ & (\inst|inst2|Add0~13\ & VCC)) # (!\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add0~13\)))) # (!\inst|inst2|rc\(7) & ((\inst|inst2|ra~2_combout\ & (!\inst|inst2|Add0~13\)) # 
-- (!\inst|inst2|ra~2_combout\ & ((\inst|inst2|Add0~13\) # (GND)))))
-- \inst|inst2|Add0~15\ = CARRY((\inst|inst2|rc\(7) & (!\inst|inst2|ra~2_combout\ & !\inst|inst2|Add0~13\)) # (!\inst|inst2|rc\(7) & ((!\inst|inst2|Add0~13\) # (!\inst|inst2|ra~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(7),
	datab => \inst|inst2|ra~2_combout\,
	datad => VCC,
	cin => \inst|inst2|Add0~13\,
	combout => \inst|inst2|Add0~14_combout\,
	cout => \inst|inst2|Add0~15\);

-- Location: LCCOMB_X18_Y22_N16
\inst|inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~16_combout\ = !\inst|inst2|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|inst2|Add0~15\,
	combout => \inst|inst2|Add0~16_combout\);

-- Location: LCCOMB_X17_Y22_N16
\inst|inst2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add1~14_combout\ = \inst|inst2|Add0~14_combout\ $ (\inst|inst2|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add0~14_combout\,
	cin => \inst|inst2|Add1~13\,
	combout => \inst|inst2|Add1~14_combout\);

-- Location: LCCOMB_X16_Y21_N18
\inst|inst2|rc~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~14_combout\ = (\inst|inst2|Equal1~1_combout\ & ((\inst|inst2|Add0~16_combout\ & (\inst|inst2|Add1~14_combout\)) # (!\inst|inst2|Add0~16_combout\ & ((\inst|inst2|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~16_combout\,
	datab => \inst|inst2|Add1~14_combout\,
	datac => \inst|inst2|Add0~14_combout\,
	datad => \inst|inst2|Equal1~1_combout\,
	combout => \inst|inst2|rc~14_combout\);

-- Location: LCCOMB_X16_Y21_N24
\inst|inst2|rc~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~15_combout\ = (\inst|inst2|rc~14_combout\) # ((!\inst|inst2|Equal1~1_combout\ & (\inst|inst2|rc\(7) & !\inst|inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal1~1_combout\,
	datab => \inst|inst2|rc\(7),
	datac => \inst|inst2|Equal0~2_combout\,
	datad => \inst|inst2|rc~14_combout\,
	combout => \inst|inst2|rc~15_combout\);

-- Location: LCCOMB_X18_Y21_N26
\inst|inst2|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add5~14_combout\ = \inst|inst2|Add5~13\ $ (\inst|inst2|Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|Add4~14_combout\,
	cin => \inst|inst2|Add5~13\,
	combout => \inst|inst2|Add5~14_combout\);

-- Location: LCCOMB_X17_Y21_N24
\inst|inst2|res_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|res_sum~0_combout\ = (\inst|inst2|Add4~16_combout\ & ((\inst|inst2|Add5~14_combout\))) # (!\inst|inst2|Add4~16_combout\ & (\inst|inst2|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Add4~16_combout\,
	datac => \inst|inst2|Add4~14_combout\,
	datad => \inst|inst2|Add5~14_combout\,
	combout => \inst|inst2|res_sum~0_combout\);

-- Location: LCCOMB_X17_Y21_N0
\inst|inst2|rc[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc[7]~0_combout\ = (\inst|inst2|Equal2~1_combout\ & ((\inst|inst2|res_sum~0_combout\))) # (!\inst|inst2|Equal2~1_combout\ & (\inst|inst2|rc~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal2~1_combout\,
	datab => \inst|inst2|rc~15_combout\,
	datad => \inst|inst2|res_sum~0_combout\,
	combout => \inst|inst2|rc[7]~0_combout\);

-- Location: FF_X17_Y21_N1
\inst|inst2|rc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|rc[7]~0_combout\,
	asdata => \inst|inst2|rb~1_combout\,
	sload => \inst|inst2|rc~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|rc\(7));

-- Location: LCCOMB_X19_Y22_N6
\inst|inst2|MK~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|MK~1_combout\ = (\inst|inst2|rc\(7) & (((\inst|inst2|rc\(4) & \inst|inst2|rc\(0))) # (!\inst|inst2|rc\(2)))) # (!\inst|inst2|rc\(7) & (!\inst|inst2|rc\(2) & ((\inst|inst2|rc\(4)) # (\inst|inst2|rc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(7),
	datab => \inst|inst2|rc\(2),
	datac => \inst|inst2|rc\(4),
	datad => \inst|inst2|rc\(0),
	combout => \inst|inst2|MK~1_combout\);

-- Location: LCCOMB_X19_Y22_N8
\inst|inst2|MK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|MK~2_combout\ = (\inst|inst2|rc\(5) & (((\inst|inst2|rc\(2) & \inst|inst2|rc\(6))) # (!\inst|inst2|rc\(1)))) # (!\inst|inst2|rc\(5) & (!\inst|inst2|rc\(1) & ((\inst|inst2|rc\(2)) # (\inst|inst2|rc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(5),
	datab => \inst|inst2|rc\(2),
	datac => \inst|inst2|rc\(1),
	datad => \inst|inst2|rc\(6),
	combout => \inst|inst2|MK~2_combout\);

-- Location: LCCOMB_X19_Y22_N22
\inst|inst2|MK~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|MK~3_combout\ = (\inst|inst2|MK~1_combout\ & (\inst|inst2|rc\(1) & (\inst|inst2|MK~2_combout\ & \inst|inst2|rc\(3)))) # (!\inst|inst2|MK~1_combout\ & (!\inst|inst2|rc\(1) & (!\inst|inst2|MK~2_combout\ & !\inst|inst2|rc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|MK~1_combout\,
	datab => \inst|inst2|rc\(1),
	datac => \inst|inst2|MK~2_combout\,
	datad => \inst|inst2|rc\(3),
	combout => \inst|inst2|MK~3_combout\);

-- Location: LCCOMB_X14_Y22_N14
\inst|inst2|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal4~0_combout\ = (\inst|inst|y\(4) & (\inst|inst2|Equal1~0_combout\ & (!\inst|inst|y\(3) & !\inst|inst|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|y\(4),
	datab => \inst|inst2|Equal1~0_combout\,
	datac => \inst|inst|y\(3),
	datad => \inst|inst|y\(1),
	combout => \inst|inst2|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst|inst2|priznak~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~0_combout\ = (\inst|inst2|rb~0_combout\ & (((!\inst|inst2|rb~2_combout\) # (!\inst|inst2|rb~3_combout\)) # (!\inst|inst2|rb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rb~1_combout\,
	datab => \inst|inst2|rb~3_combout\,
	datac => \inst|inst2|rb~2_combout\,
	datad => \inst|inst2|rb~0_combout\,
	combout => \inst|inst2|priznak~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\inst|inst2|priznak~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~1_combout\ = (\inst|inst2|priznak\(1) & (!\inst|inst2|Equal0~2_combout\ & ((\inst|inst2|priznak~0_combout\) # (!\inst|inst2|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal4~0_combout\,
	datab => \inst|inst2|priznak~0_combout\,
	datac => \inst|inst2|priznak\(1),
	datad => \inst|inst2|Equal0~2_combout\,
	combout => \inst|inst2|priznak~1_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst|inst2|MK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|MK~0_combout\ = (\inst|inst2|rb~1_combout\ & (\inst|inst2|rb~3_combout\ & (\inst|inst2|rb~2_combout\ & \inst|inst2|rb~0_combout\))) # (!\inst|inst2|rb~1_combout\ & (!\inst|inst2|rb~3_combout\ & (!\inst|inst2|rb~2_combout\ & 
-- !\inst|inst2|rb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rb~1_combout\,
	datab => \inst|inst2|rb~3_combout\,
	datac => \inst|inst2|rb~2_combout\,
	datad => \inst|inst2|rb~0_combout\,
	combout => \inst|inst2|MK~0_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst|inst2|priznak~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~2_combout\ = (\inst|inst2|priznak~1_combout\) # ((\inst|inst2|rb~1_combout\ & (\inst|inst2|Equal4~0_combout\ & !\inst|inst2|MK~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rb~1_combout\,
	datab => \inst|inst2|priznak~1_combout\,
	datac => \inst|inst2|Equal4~0_combout\,
	datad => \inst|inst2|MK~0_combout\,
	combout => \inst|inst2|priznak~2_combout\);

-- Location: LCCOMB_X18_Y22_N18
\inst|inst2|priznak~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~3_combout\ = (\inst|inst2|priznak~2_combout\ & (((\inst|inst2|rc\(6) & !\inst|inst2|MK~3_combout\)) # (!\inst|inst2|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal19~0_combout\,
	datab => \inst|inst2|rc\(6),
	datac => \inst|inst2|priznak~2_combout\,
	datad => \inst|inst2|MK~3_combout\,
	combout => \inst|inst2|priznak~3_combout\);

-- Location: LCCOMB_X18_Y22_N24
\inst|inst2|priznak~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~4_combout\ = (\inst|inst2|priznak~3_combout\) # ((\inst|inst2|Equal19~0_combout\ & (!\inst|inst2|MK~3_combout\ & \inst|inst2|rc\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal19~0_combout\,
	datab => \inst|inst2|MK~3_combout\,
	datac => \inst|inst2|rc\(7),
	datad => \inst|inst2|priznak~3_combout\,
	combout => \inst|inst2|priznak~4_combout\);

-- Location: LCCOMB_X19_Y21_N20
\inst|inst2|priznak~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~5_combout\ = (\inst|inst2|rc~12_combout\) # ((\inst|inst2|priznak~4_combout\ & ((\inst|inst2|j~0_combout\) # (!\inst|inst2|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|j~0_combout\,
	datab => \inst|inst2|rc~12_combout\,
	datac => \inst|inst2|priznak~4_combout\,
	datad => \inst|inst2|Equal15~0_combout\,
	combout => \inst|inst2|priznak~5_combout\);

-- Location: FF_X19_Y21_N21
\inst|inst2|priznak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|priznak~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|priznak\(1));

-- Location: IOIBUF_X23_Y24_N1
\a_t[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_t(1),
	o => \a_t[1]~input_o\);

-- Location: LCCOMB_X19_Y22_N12
\inst14|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Selector2~0_combout\ = (\inst14|state.s3~q\ & (\inst|inst2|priznak\(1))) # (!\inst14|state.s3~q\ & ((\a_t[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|state.s3~q\,
	datac => \inst|inst2|priznak\(1),
	datad => \a_t[1]~input_o\,
	combout => \inst14|Selector2~0_combout\);

-- Location: FF_X16_Y22_N23
\inst14|a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|Selector2~0_combout\,
	sload => VCC,
	ena => \inst14|a[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|a\(1));

-- Location: FF_X16_Y22_N5
\inst|inst2|ra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|ra~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ra\(1));

-- Location: LCCOMB_X16_Y22_N4
\inst|inst2|ra~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ra~3_combout\ = (\inst|inst2|Equal0~0_combout\ & ((\inst|inst2|Equal0~1_combout\ & (\inst14|a\(1))) # (!\inst|inst2|Equal0~1_combout\ & ((\inst|inst2|ra\(1)))))) # (!\inst|inst2|Equal0~0_combout\ & (((\inst|inst2|ra\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|a\(1),
	datab => \inst|inst2|Equal0~0_combout\,
	datac => \inst|inst2|ra\(1),
	datad => \inst|inst2|Equal0~1_combout\,
	combout => \inst|inst2|ra~3_combout\);

-- Location: FF_X21_Y21_N3
\inst|inst2|pr_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|inst2|priznak\(1),
	sload => VCC,
	ena => \inst|inst2|pr_saved~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|pr_saved\(1));

-- Location: LCCOMB_X19_Y21_N18
\inst|inst2|pr_saved~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|pr_saved~1_combout\ = (\inst|inst2|Equal0~2_combout\ & (((\inst|inst2|priznak\(1))))) # (!\inst|inst2|Equal0~2_combout\ & ((\inst|inst2|j~q\ & (\inst|inst2|pr_saved\(1))) # (!\inst|inst2|j~q\ & ((\inst|inst2|priznak\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|pr_saved\(1),
	datab => \inst|inst2|priznak\(1),
	datac => \inst|inst2|Equal0~2_combout\,
	datad => \inst|inst2|j~q\,
	combout => \inst|inst2|pr_saved~1_combout\);

-- Location: LCCOMB_X19_Y21_N16
\inst|inst2|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal16~1_combout\ = \inst|inst2|pr_saved~1_combout\ $ (((\inst|inst2|j~0_combout\ & ((\inst|inst2|ra~3_combout\))) # (!\inst|inst2|j~0_combout\ & (\inst|inst2|ra~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ra~2_combout\,
	datab => \inst|inst2|ra~3_combout\,
	datac => \inst|inst2|j~0_combout\,
	datad => \inst|inst2|pr_saved~1_combout\,
	combout => \inst|inst2|Equal16~1_combout\);

-- Location: LCCOMB_X19_Y21_N28
\inst|inst2|rc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|rc~13_combout\ = (\inst|inst2|j~0_combout\ & (!\inst|inst2|Equal16~1_combout\ & (!\inst|inst2|Equal16~0_combout\ & \inst|inst2|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|j~0_combout\,
	datab => \inst|inst2|Equal16~1_combout\,
	datac => \inst|inst2|Equal16~0_combout\,
	datad => \inst|inst2|Equal15~0_combout\,
	combout => \inst|inst2|rc~13_combout\);

-- Location: LCCOMB_X17_Y20_N30
\inst|inst2|priznak~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~6_combout\ = (!\inst|inst2|rb~1_combout\ & ((\inst|inst2|rb~3_combout\) # ((\inst|inst2|rb~2_combout\) # (\inst|inst2|rb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rb~1_combout\,
	datab => \inst|inst2|rb~3_combout\,
	datac => \inst|inst2|rb~2_combout\,
	datad => \inst|inst2|rb~0_combout\,
	combout => \inst|inst2|priznak~6_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst|inst2|priznak~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~7_combout\ = (\inst|inst2|priznak\(0) & (!\inst|inst2|Equal0~2_combout\ & ((\inst|inst2|priznak~6_combout\) # (!\inst|inst2|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal4~0_combout\,
	datab => \inst|inst2|priznak\(0),
	datac => \inst|inst2|priznak~6_combout\,
	datad => \inst|inst2|Equal0~2_combout\,
	combout => \inst|inst2|priznak~7_combout\);

-- Location: LCCOMB_X17_Y20_N2
\inst|inst2|priznak~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~8_combout\ = (\inst|inst2|priznak~7_combout\) # ((!\inst|inst2|MK~0_combout\ & (!\inst|inst2|rb~0_combout\ & \inst|inst2|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|MK~0_combout\,
	datab => \inst|inst2|rb~0_combout\,
	datac => \inst|inst2|Equal4~0_combout\,
	datad => \inst|inst2|priznak~7_combout\,
	combout => \inst|inst2|priznak~8_combout\);

-- Location: LCCOMB_X18_Y22_N26
\inst|inst2|priznak~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~9_combout\ = (\inst|inst2|priznak~8_combout\ & (((!\inst|inst2|rc\(7) & !\inst|inst2|MK~3_combout\)) # (!\inst|inst2|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|rc\(7),
	datab => \inst|inst2|MK~3_combout\,
	datac => \inst|inst2|priznak~8_combout\,
	datad => \inst|inst2|Equal19~0_combout\,
	combout => \inst|inst2|priznak~9_combout\);

-- Location: LCCOMB_X18_Y22_N20
\inst|inst2|priznak~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~10_combout\ = (\inst|inst2|priznak~9_combout\) # ((\inst|inst2|Equal19~0_combout\ & (!\inst|inst2|rc\(6) & !\inst|inst2|MK~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal19~0_combout\,
	datab => \inst|inst2|rc\(6),
	datac => \inst|inst2|priznak~9_combout\,
	datad => \inst|inst2|MK~3_combout\,
	combout => \inst|inst2|priznak~10_combout\);

-- Location: LCCOMB_X19_Y21_N30
\inst|inst2|priznak~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|priznak~11_combout\ = (\inst|inst2|rc~13_combout\) # ((\inst|inst2|priznak~10_combout\ & ((!\inst|inst2|Equal15~0_combout\) # (!\inst|inst2|j~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|j~0_combout\,
	datab => \inst|inst2|rc~13_combout\,
	datac => \inst|inst2|priznak~10_combout\,
	datad => \inst|inst2|Equal15~0_combout\,
	combout => \inst|inst2|priznak~11_combout\);

-- Location: FF_X19_Y21_N31
\inst|inst2|priznak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst2|priznak~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|priznak\(0));

-- Location: LCCOMB_X12_Y20_N14
\inst14|cx_test~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test~5_combout\ = (\inst|inst2|priznak\(0) & (\inst14|b\(1))) # (!\inst|inst2|priznak\(0) & ((\inst|inst2|priznak\(1) & (!\inst14|b\(1))) # (!\inst|inst2|priznak\(1) & ((\inst14|cx\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(0),
	datab => \inst14|b\(1),
	datac => \inst14|cx\(1),
	datad => \inst|inst2|priznak\(1),
	combout => \inst14|cx_test~5_combout\);

-- Location: LCCOMB_X14_Y22_N12
\inst14|cx_test[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test[3]~3_combout\ = (\inst|inst|state.s3~q\ & (\inst14|cop\(1) & (\inst14|cop\(0) & \inst14|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.s3~q\,
	datab => \inst14|cop\(1),
	datac => \inst14|cop\(0),
	datad => \inst14|state.s3~q\,
	combout => \inst14|cx_test[3]~3_combout\);

-- Location: FF_X12_Y20_N15
\inst14|cx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test~5_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx\(1));

-- Location: LCCOMB_X12_Y20_N24
\inst14|cx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx~0_combout\ = (\inst|inst2|priznak\(1) & ((!\inst14|b\(1)))) # (!\inst|inst2|priznak\(1) & (\inst14|cx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(1),
	datab => \inst14|cx\(1),
	datad => \inst14|b\(1),
	combout => \inst14|cx~0_combout\);

-- Location: LCCOMB_X12_Y20_N18
\inst14|cx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx~1_combout\ = (\inst|inst2|priznak\(1) & (\inst14|b\(2))) # (!\inst|inst2|priznak\(1) & ((\inst14|cx\(1) $ (\inst14|cx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|b\(2),
	datab => \inst14|cx\(1),
	datac => \inst14|cx\(2),
	datad => \inst|inst2|priznak\(1),
	combout => \inst14|cx~1_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst14|cx_test~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test~4_combout\ = (\inst|inst2|priznak\(0) & (((\inst14|b\(2))))) # (!\inst|inst2|priznak\(0) & (\inst14|cx~0_combout\ $ (((!\inst14|cx~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(0),
	datab => \inst14|cx~0_combout\,
	datac => \inst14|b\(2),
	datad => \inst14|cx~1_combout\,
	combout => \inst14|cx_test~4_combout\);

-- Location: FF_X12_Y20_N21
\inst14|cx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test~4_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx\(2));

-- Location: FF_X12_Y20_N9
\inst14|cx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test~2_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx\(3));

-- Location: LCCOMB_X12_Y20_N10
\inst14|cx_test~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test~0_combout\ = \inst14|cx\(3) $ (((\inst14|cx\(1) & \inst14|cx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cx\(1),
	datac => \inst14|cx\(2),
	datad => \inst14|cx\(3),
	combout => \inst14|cx_test~0_combout\);

-- Location: LCCOMB_X12_Y20_N28
\inst14|cx_test~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test~1_combout\ = (\inst14|cx_test~0_combout\ & (\inst|inst2|priznak\(1) $ (((\inst14|cx~0_combout\) # (!\inst14|cx~1_combout\))))) # (!\inst14|cx_test~0_combout\ & (!\inst14|cx~0_combout\ & ((\inst14|cx~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cx_test~0_combout\,
	datab => \inst14|cx~0_combout\,
	datac => \inst|inst2|priznak\(1),
	datad => \inst14|cx~1_combout\,
	combout => \inst14|cx_test~1_combout\);

-- Location: LCCOMB_X12_Y20_N8
\inst14|cx_test~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test~2_combout\ = (\inst|inst2|priznak\(0) & (((\inst14|b\(3))))) # (!\inst|inst2|priznak\(0) & (\inst14|cx_test~1_combout\ $ (((\inst14|b\(3) & \inst|inst2|priznak\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(0),
	datab => \inst14|cx_test~1_combout\,
	datac => \inst14|b\(3),
	datad => \inst|inst2|priznak\(1),
	combout => \inst14|cx_test~2_combout\);

-- Location: FF_X12_Y20_N25
\inst14|cx_test[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|cx_test~2_combout\,
	sload => VCC,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx_test\(3));

-- Location: LCCOMB_X12_Y20_N30
\inst14|cx_test[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test[2]~feeder_combout\ = \inst14|cx_test~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cx_test~4_combout\,
	combout => \inst14|cx_test[2]~feeder_combout\);

-- Location: FF_X12_Y20_N31
\inst14|cx_test[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test[2]~feeder_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx_test\(2));

-- Location: LCCOMB_X12_Y20_N0
\inst14|cx_test[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test[1]~feeder_combout\ = \inst14|cx_test~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cx_test~5_combout\,
	combout => \inst14|cx_test[1]~feeder_combout\);

-- Location: FF_X12_Y20_N1
\inst14|cx_test[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test[1]~feeder_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx_test\(1));

-- Location: FF_X12_Y20_N13
\inst14|cx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test~6_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx\(0));

-- Location: LCCOMB_X12_Y20_N12
\inst14|cx_test~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test~6_combout\ = (\inst|inst2|priznak\(0) & (((\inst14|b\(0))))) # (!\inst|inst2|priznak\(0) & ((\inst|inst2|priznak\(1) & ((\inst14|b\(0)))) # (!\inst|inst2|priznak\(1) & (\inst14|cx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|priznak\(0),
	datab => \inst|inst2|priznak\(1),
	datac => \inst14|cx\(0),
	datad => \inst14|b\(0),
	combout => \inst14|cx_test~6_combout\);

-- Location: LCCOMB_X12_Y20_N2
\inst14|cx_test[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|cx_test[0]~feeder_combout\ = \inst14|cx_test~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cx_test~6_combout\,
	combout => \inst14|cx_test[0]~feeder_combout\);

-- Location: FF_X12_Y20_N3
\inst14|cx_test[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cx_test[0]~feeder_combout\,
	ena => \inst14|cx_test[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cx_test\(0));

ww_sko <= \sko~output_o\;

ww_cx_test(3) <= \cx_test[3]~output_o\;

ww_cx_test(2) <= \cx_test[2]~output_o\;

ww_cx_test(1) <= \cx_test[1]~output_o\;

ww_cx_test(0) <= \cx_test[0]~output_o\;

ww_pr(1) <= \pr[1]~output_o\;

ww_pr(0) <= \pr[0]~output_o\;

ww_pr_rc(7) <= \pr_rc[7]~output_o\;

ww_pr_rc(6) <= \pr_rc[6]~output_o\;

ww_pr_rc(5) <= \pr_rc[5]~output_o\;

ww_pr_rc(4) <= \pr_rc[4]~output_o\;

ww_pr_rc(3) <= \pr_rc[3]~output_o\;

ww_pr_rc(2) <= \pr_rc[2]~output_o\;

ww_pr_rc(1) <= \pr_rc[1]~output_o\;

ww_pr_rc(0) <= \pr_rc[0]~output_o\;
END structure;


