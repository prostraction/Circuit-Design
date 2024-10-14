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

-- DATE "01/24/2022 22:34:09"

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

ENTITY 	TEST_OY IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sko : BUFFER std_logic;
	sno : BUFFER std_logic;
	okay : OUT std_logic;
	defect : OUT std_logic;
	finish : BUFFER std_logic;
	real_rez : BUFFER std_logic_vector(7 DOWNTO 0);
	true_rez : BUFFER std_logic_vector(7 DOWNTO 0);
	x : BUFFER std_logic_vector(3 DOWNTO 0);
	y : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END TEST_OY;

-- Design Ports Information
-- sko	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- okay	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- defect	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- real_rez[7]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[6]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- true_rez[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TEST_OY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sko : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_okay : std_logic;
SIGNAL ww_defect : std_logic;
SIGNAL ww_finish : std_logic;
SIGNAL ww_real_rez : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_true_rez : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|unit_YA|state.s4~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \sno~output_o\ : std_logic;
SIGNAL \okay~output_o\ : std_logic;
SIGNAL \defect~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \real_rez[0]~output_o\ : std_logic;
SIGNAL \real_rez[1]~output_o\ : std_logic;
SIGNAL \real_rez[2]~output_o\ : std_logic;
SIGNAL \real_rez[3]~output_o\ : std_logic;
SIGNAL \real_rez[4]~output_o\ : std_logic;
SIGNAL \real_rez[5]~output_o\ : std_logic;
SIGNAL \real_rez[6]~output_o\ : std_logic;
SIGNAL \real_rez[7]~output_o\ : std_logic;
SIGNAL \true_rez[0]~output_o\ : std_logic;
SIGNAL \true_rez[1]~output_o\ : std_logic;
SIGNAL \true_rez[2]~output_o\ : std_logic;
SIGNAL \true_rez[3]~output_o\ : std_logic;
SIGNAL \true_rez[4]~output_o\ : std_logic;
SIGNAL \true_rez[5]~output_o\ : std_logic;
SIGNAL \true_rez[6]~output_o\ : std_logic;
SIGNAL \true_rez[7]~output_o\ : std_logic;
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uut|unit_YA|state.s4~clkctrl_outclk\ : std_logic;
SIGNAL \gen_test:cnt[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \gen_test:cnt[7]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[0]~q\ : std_logic;
SIGNAL \gen_test:cnt[0]~2\ : std_logic;
SIGNAL \gen_test:cnt[1]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[1]~q\ : std_logic;
SIGNAL \gen_test:cnt[1]~2\ : std_logic;
SIGNAL \gen_test:cnt[2]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[2]~q\ : std_logic;
SIGNAL \gen_test:cnt[2]~2\ : std_logic;
SIGNAL \gen_test:cnt[3]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[3]~q\ : std_logic;
SIGNAL \gen_test:cnt[3]~2\ : std_logic;
SIGNAL \gen_test:cnt[4]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[4]~q\ : std_logic;
SIGNAL \gen_test:cnt[4]~2\ : std_logic;
SIGNAL \gen_test:cnt[5]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[5]~q\ : std_logic;
SIGNAL \gen_test:cnt[5]~2\ : std_logic;
SIGNAL \gen_test:cnt[6]~1_combout\ : std_logic;
SIGNAL \gen_test:cnt[6]~q\ : std_logic;
SIGNAL \gen_test:cnt[6]~2\ : std_logic;
SIGNAL \gen_test:cnt[7]~2_combout\ : std_logic;
SIGNAL \gen_test:cnt[7]~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ctl_unit~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctl_unit:v_sno~q\ : std_logic;
SIGNAL \uut|unit_YA|Selector2~0_combout\ : std_logic;
SIGNAL \uut|unit_YA|state.s0~q\ : std_logic;
SIGNAL \uut|unit_YA|Selector3~1_combout\ : std_logic;
SIGNAL \uut|unit_YA|state.s1~q\ : std_logic;
SIGNAL \uut|unit_YA|Selector5~0_combout\ : std_logic;
SIGNAL \uut|unit_YA|Selector7~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal0~1_combout\ : std_logic;
SIGNAL \uut|unit_OA|rb~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|rb~1_combout\ : std_logic;
SIGNAL \uut|unit_OA|Mux2~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|rb~3_combout\ : std_logic;
SIGNAL \uut|unit_OA|rb~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Mux2~1_combout\ : std_logic;
SIGNAL \uut|unit_YA|Selector1~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|i~4_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal0~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add6~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|i~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal13~0_combout\ : std_logic;
SIGNAL \uut|unit_YA|next_state.s2~0_combout\ : std_logic;
SIGNAL \uut|unit_YA|state.s2~q\ : std_logic;
SIGNAL \uut|unit_YA|Selector3~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal3~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal3~1_combout\ : std_logic;
SIGNAL \uut|unit_OA|i~3_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal12~0_combout\ : std_logic;
SIGNAL \uut|unit_YA|Selector4~0_combout\ : std_logic;
SIGNAL \uut|unit_YA|state.s3~q\ : std_logic;
SIGNAL \uut|unit_YA|state.s4~q\ : std_logic;
SIGNAL \uut|unit_OA|Equal0~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal2~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal4~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Equal1~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|ra~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~25_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~20_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~16_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~15_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~6_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~9\ : std_logic;
SIGNAL \uut|unit_OA|Add2~11\ : std_logic;
SIGNAL \uut|unit_OA|Add2~12_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~10_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~8_combout\ : std_logic;
SIGNAL \uut|unit_OA|ra~1_combout\ : std_logic;
SIGNAL \uut|unit_OA|ra~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|ra~3_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~13\ : std_logic;
SIGNAL \uut|unit_OA|Add2~15\ : std_logic;
SIGNAL \uut|unit_OA|Add2~17\ : std_logic;
SIGNAL \uut|unit_OA|Add2~19\ : std_logic;
SIGNAL \uut|unit_OA|Add2~21\ : std_logic;
SIGNAL \uut|unit_OA|Add2~23\ : std_logic;
SIGNAL \uut|unit_OA|Add2~25\ : std_logic;
SIGNAL \uut|unit_OA|Add2~27\ : std_logic;
SIGNAL \uut|unit_OA|Add2~28_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~26_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~24_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~1\ : std_logic;
SIGNAL \uut|unit_OA|Add4~3\ : std_logic;
SIGNAL \uut|unit_OA|Add4~4_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~1\ : std_logic;
SIGNAL \uut|unit_OA|Add5~3\ : std_logic;
SIGNAL \uut|unit_OA|Add5~4_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~1\ : std_logic;
SIGNAL \uut|unit_OA|Add0~3\ : std_logic;
SIGNAL \uut|unit_OA|Add0~4_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~1\ : std_logic;
SIGNAL \uut|unit_OA|Add1~3\ : std_logic;
SIGNAL \uut|unit_OA|Add1~4_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~22_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~20_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~18_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~16_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~14_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~29\ : std_logic;
SIGNAL \uut|unit_OA|Add2~31\ : std_logic;
SIGNAL \uut|unit_OA|Add2~33\ : std_logic;
SIGNAL \uut|unit_OA|Add2~35\ : std_logic;
SIGNAL \uut|unit_OA|Add2~37\ : std_logic;
SIGNAL \uut|unit_OA|Add2~39\ : std_logic;
SIGNAL \uut|unit_OA|Add2~40_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~38_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~36_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~34_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~32_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add2~30_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~5\ : std_logic;
SIGNAL \uut|unit_OA|Add4~7\ : std_logic;
SIGNAL \uut|unit_OA|Add4~9\ : std_logic;
SIGNAL \uut|unit_OA|Add4~11\ : std_logic;
SIGNAL \uut|unit_OA|Add4~13\ : std_logic;
SIGNAL \uut|unit_OA|Add4~15\ : std_logic;
SIGNAL \uut|unit_OA|Add4~16_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~15\ : std_logic;
SIGNAL \uut|unit_OA|Add0~16_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc[3]~3_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~17_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~18_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~19_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~8_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~9_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~21_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~5\ : std_logic;
SIGNAL \uut|unit_OA|Add0~6_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~5\ : std_logic;
SIGNAL \uut|unit_OA|Add1~6_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~6_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~22_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~5\ : std_logic;
SIGNAL \uut|unit_OA|Add5~6_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~23_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~24_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~26_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~8_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~7\ : std_logic;
SIGNAL \uut|unit_OA|Add5~8_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~7\ : std_logic;
SIGNAL \uut|unit_OA|Add0~8_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~7\ : std_logic;
SIGNAL \uut|unit_OA|Add1~8_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~27_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~28_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~29_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~31_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~30_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~9\ : std_logic;
SIGNAL \uut|unit_OA|Add0~10_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~9\ : std_logic;
SIGNAL \uut|unit_OA|Add1~10_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~10_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~32_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~9\ : std_logic;
SIGNAL \uut|unit_OA|Add5~10_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~33_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~34_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~36_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~35_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~12_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~11\ : std_logic;
SIGNAL \uut|unit_OA|Add0~12_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~11\ : std_logic;
SIGNAL \uut|unit_OA|Add1~12_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~37_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~11\ : std_logic;
SIGNAL \uut|unit_OA|Add5~12_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~38_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~39_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add0~13\ : std_logic;
SIGNAL \uut|unit_OA|Add0~14_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~13\ : std_logic;
SIGNAL \uut|unit_OA|Add1~14_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~42_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~43_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add4~14_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~13\ : std_logic;
SIGNAL \uut|unit_OA|Add5~14_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~40_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~41_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~44_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~1_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~0_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~4_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~5_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~7_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~11_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~10_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add5~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|Add1~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~12_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~13_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc~14_combout\ : std_logic;
SIGNAL \analise_unit~0_combout\ : std_logic;
SIGNAL \analise_unit~1_combout\ : std_logic;
SIGNAL \analise_unit~2_combout\ : std_logic;
SIGNAL \actual_result~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \okay~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \actual_result:mbin[2]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \actual_result:mbin[1]~0_combout\ : std_logic;
SIGNAL \okay~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \actual_result:mbin[4]~2_combout\ : std_logic;
SIGNAL \okay~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \actual_result:mbin[5]~2_combout\ : std_logic;
SIGNAL \okay~5_combout\ : std_logic;
SIGNAL \okay~6_combout\ : std_logic;
SIGNAL \okay~7_combout\ : std_logic;
SIGNAL \okay~0_combout\ : std_logic;
SIGNAL \okay~1_combout\ : std_logic;
SIGNAL \okay~8_combout\ : std_logic;
SIGNAL \okay~9_combout\ : std_logic;
SIGNAL \okay~reg0_q\ : std_logic;
SIGNAL \defect~0_combout\ : std_logic;
SIGNAL \defect~reg0_q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \actual_result:mbin[3]~2_combout\ : std_logic;
SIGNAL \actual_result:mbin[6]~2_combout\ : std_logic;
SIGNAL \uut|unit_OA|rc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|unit_OA|ra\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|unit_OA|x\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uut|unit_OA|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uut|unit_OA|rb\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|unit_YA|y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_okay~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ctl_unit:v_sno~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
sko <= ww_sko;
sno <= ww_sno;
okay <= ww_okay;
defect <= ww_defect;
finish <= ww_finish;
real_rez <= ww_real_rez;
true_rez <= ww_true_rez;
x <= ww_x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uut|unit_YA|state.s4~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uut|unit_YA|state.s4~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_okay~reg0_q\ <= NOT \okay~reg0_q\;
\ALT_INV_ctl_unit:v_sno~q\ <= NOT \ctl_unit:v_sno~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\sko~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_YA|state.s4~q\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\sno~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ctl_unit:v_sno~q\,
	devoe => ww_devoe,
	o => \sno~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\okay~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_okay~reg0_q\,
	devoe => ww_devoe,
	o => \okay~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\defect~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \defect~reg0_q\,
	devoe => ww_devoe,
	o => \defect~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\finish~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \finish~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\real_rez[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(0),
	devoe => ww_devoe,
	o => \real_rez[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\real_rez[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(1),
	devoe => ww_devoe,
	o => \real_rez[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\real_rez[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(2),
	devoe => ww_devoe,
	o => \real_rez[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\real_rez[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(3),
	devoe => ww_devoe,
	o => \real_rez[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\real_rez[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(4),
	devoe => ww_devoe,
	o => \real_rez[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\real_rez[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(5),
	devoe => ww_devoe,
	o => \real_rez[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\real_rez[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(6),
	devoe => ww_devoe,
	o => \real_rez[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\real_rez[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|unit_OA|rc\(7),
	devoe => ww_devoe,
	o => \real_rez[7]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\true_rez[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result~0_combout\,
	devoe => ww_devoe,
	o => \true_rez[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\true_rez[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[1]~0_combout\,
	devoe => ww_devoe,
	o => \true_rez[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\true_rez[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[2]~0_combout\,
	devoe => ww_devoe,
	o => \true_rez[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\true_rez[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[3]~2_combout\,
	devoe => ww_devoe,
	o => \true_rez[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\true_rez[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[4]~2_combout\,
	devoe => ww_devoe,
	o => \true_rez[4]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\true_rez[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[5]~2_combout\,
	devoe => ww_devoe,
	o => \true_rez[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\true_rez[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result:mbin[6]~2_combout\,
	devoe => ww_devoe,
	o => \true_rez[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\true_rez[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \actual_result~0_combout\,
	devoe => ww_devoe,
	o => \true_rez[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[4]~q\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[5]~q\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[6]~q\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[7]~q\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[0]~q\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[1]~q\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[2]~q\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_test:cnt[3]~q\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

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

-- Location: CLKCTRL_G1
\uut|unit_YA|state.s4~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uut|unit_YA|state.s4~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uut|unit_YA|state.s4~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y22_N2
\uut|unit_YA|y[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|y\(5) = (GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & ((\uut|unit_YA|y\(5)))) # (!GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & (\uut|unit_YA|state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|state.s3~q\,
	datac => \uut|unit_YA|y\(5),
	datad => \uut|unit_YA|state.s4~clkctrl_outclk\,
	combout => \uut|unit_YA|y\(5));

-- Location: LCCOMB_X14_Y22_N12
\gen_test:cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[0]~1_combout\ = \gen_test:cnt[0]~q\ $ (VCC)
-- \gen_test:cnt[0]~2\ = CARRY(\gen_test:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[0]~q\,
	datad => VCC,
	combout => \gen_test:cnt[0]~1_combout\,
	cout => \gen_test:cnt[0]~2\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X14_Y22_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\gen_test:cnt[3]~q\ & (\gen_test:cnt[1]~q\ & (\gen_test:cnt[0]~q\ & \gen_test:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[3]~q\,
	datab => \gen_test:cnt[1]~q\,
	datac => \gen_test:cnt[0]~q\,
	datad => \gen_test:cnt[2]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y22_N4
\gen_test:cnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[7]~1_combout\ = (\reset~input_o\) # ((\uut|unit_YA|state.s4~q\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \reset~input_o\,
	datad => \uut|unit_YA|state.s4~q\,
	combout => \gen_test:cnt[7]~1_combout\);

-- Location: FF_X14_Y22_N13
\gen_test:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[0]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[0]~q\);

-- Location: LCCOMB_X14_Y22_N14
\gen_test:cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[1]~1_combout\ = (\gen_test:cnt[1]~q\ & (!\gen_test:cnt[0]~2\)) # (!\gen_test:cnt[1]~q\ & ((\gen_test:cnt[0]~2\) # (GND)))
-- \gen_test:cnt[1]~2\ = CARRY((!\gen_test:cnt[0]~2\) # (!\gen_test:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[1]~q\,
	datad => VCC,
	cin => \gen_test:cnt[0]~2\,
	combout => \gen_test:cnt[1]~1_combout\,
	cout => \gen_test:cnt[1]~2\);

-- Location: FF_X14_Y22_N15
\gen_test:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[1]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[1]~q\);

-- Location: LCCOMB_X14_Y22_N16
\gen_test:cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[2]~1_combout\ = (\gen_test:cnt[2]~q\ & (\gen_test:cnt[1]~2\ $ (GND))) # (!\gen_test:cnt[2]~q\ & (!\gen_test:cnt[1]~2\ & VCC))
-- \gen_test:cnt[2]~2\ = CARRY((\gen_test:cnt[2]~q\ & !\gen_test:cnt[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[2]~q\,
	datad => VCC,
	cin => \gen_test:cnt[1]~2\,
	combout => \gen_test:cnt[2]~1_combout\,
	cout => \gen_test:cnt[2]~2\);

-- Location: FF_X14_Y22_N17
\gen_test:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[2]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[2]~q\);

-- Location: LCCOMB_X14_Y22_N18
\gen_test:cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[3]~1_combout\ = (\gen_test:cnt[3]~q\ & (!\gen_test:cnt[2]~2\)) # (!\gen_test:cnt[3]~q\ & ((\gen_test:cnt[2]~2\) # (GND)))
-- \gen_test:cnt[3]~2\ = CARRY((!\gen_test:cnt[2]~2\) # (!\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[3]~q\,
	datad => VCC,
	cin => \gen_test:cnt[2]~2\,
	combout => \gen_test:cnt[3]~1_combout\,
	cout => \gen_test:cnt[3]~2\);

-- Location: FF_X14_Y22_N19
\gen_test:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[3]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[3]~q\);

-- Location: LCCOMB_X14_Y22_N20
\gen_test:cnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[4]~1_combout\ = (\gen_test:cnt[4]~q\ & (\gen_test:cnt[3]~2\ $ (GND))) # (!\gen_test:cnt[4]~q\ & (!\gen_test:cnt[3]~2\ & VCC))
-- \gen_test:cnt[4]~2\ = CARRY((\gen_test:cnt[4]~q\ & !\gen_test:cnt[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[4]~q\,
	datad => VCC,
	cin => \gen_test:cnt[3]~2\,
	combout => \gen_test:cnt[4]~1_combout\,
	cout => \gen_test:cnt[4]~2\);

-- Location: FF_X14_Y22_N21
\gen_test:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[4]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[4]~q\);

-- Location: LCCOMB_X14_Y22_N22
\gen_test:cnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[5]~1_combout\ = (\gen_test:cnt[5]~q\ & (!\gen_test:cnt[4]~2\)) # (!\gen_test:cnt[5]~q\ & ((\gen_test:cnt[4]~2\) # (GND)))
-- \gen_test:cnt[5]~2\ = CARRY((!\gen_test:cnt[4]~2\) # (!\gen_test:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datad => VCC,
	cin => \gen_test:cnt[4]~2\,
	combout => \gen_test:cnt[5]~1_combout\,
	cout => \gen_test:cnt[5]~2\);

-- Location: FF_X14_Y22_N23
\gen_test:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[5]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[5]~q\);

-- Location: LCCOMB_X14_Y22_N24
\gen_test:cnt[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[6]~1_combout\ = (\gen_test:cnt[6]~q\ & (\gen_test:cnt[5]~2\ $ (GND))) # (!\gen_test:cnt[6]~q\ & (!\gen_test:cnt[5]~2\ & VCC))
-- \gen_test:cnt[6]~2\ = CARRY((\gen_test:cnt[6]~q\ & !\gen_test:cnt[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_test:cnt[6]~q\,
	datad => VCC,
	cin => \gen_test:cnt[5]~2\,
	combout => \gen_test:cnt[6]~1_combout\,
	cout => \gen_test:cnt[6]~2\);

-- Location: FF_X14_Y22_N25
\gen_test:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[6]~1_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[6]~q\);

-- Location: LCCOMB_X14_Y22_N26
\gen_test:cnt[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_test:cnt[7]~2_combout\ = \gen_test:cnt[6]~2\ $ (\gen_test:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen_test:cnt[7]~q\,
	cin => \gen_test:cnt[6]~2\,
	combout => \gen_test:cnt[7]~2_combout\);

-- Location: FF_X14_Y22_N27
\gen_test:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_test:cnt[7]~2_combout\,
	sclr => \reset~input_o\,
	ena => \gen_test:cnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_test:cnt[7]~q\);

-- Location: LCCOMB_X8_Y23_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\gen_test:cnt[7]~q\ & (\gen_test:cnt[5]~q\ & (\gen_test:cnt[4]~q\ & \gen_test:cnt[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datab => \gen_test:cnt[5]~q\,
	datac => \gen_test:cnt[4]~q\,
	datad => \gen_test:cnt[6]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X13_Y22_N4
\ctl_unit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl_unit~0_combout\ = ((\Equal0~1_combout\ & \Equal0~0_combout\)) # (!\uut|unit_YA|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \uut|unit_YA|state.s4~q\,
	combout => \ctl_unit~0_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X12_Y22_N25
\ctl_unit:v_sno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl_unit~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl_unit:v_sno~q\);

-- Location: LCCOMB_X12_Y22_N24
\uut|unit_YA|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector2~0_combout\ = (!\uut|unit_YA|state.s4~q\ & ((\uut|unit_YA|state.s0~q\) # (!\ctl_unit:v_sno~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_YA|state.s4~q\,
	datac => \ctl_unit:v_sno~q\,
	datad => \uut|unit_YA|state.s0~q\,
	combout => \uut|unit_YA|Selector2~0_combout\);

-- Location: FF_X12_Y22_N31
\uut|unit_YA|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uut|unit_YA|Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_YA|state.s0~q\);

-- Location: LCCOMB_X12_Y22_N30
\uut|unit_YA|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector3~1_combout\ = (\ctl_unit:v_sno~q\ & (!\uut|unit_OA|x\(0) & ((\uut|unit_YA|state.s2~q\)))) # (!\ctl_unit:v_sno~q\ & (((!\uut|unit_OA|x\(0) & \uut|unit_YA|state.s2~q\)) # (!\uut|unit_YA|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl_unit:v_sno~q\,
	datab => \uut|unit_OA|x\(0),
	datac => \uut|unit_YA|state.s0~q\,
	datad => \uut|unit_YA|state.s2~q\,
	combout => \uut|unit_YA|Selector3~1_combout\);

-- Location: FF_X11_Y22_N9
\uut|unit_YA|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uut|unit_YA|Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_YA|state.s1~q\);

-- Location: FF_X14_Y22_N7
\uut|unit_OA|rb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rb\(0));

-- Location: LCCOMB_X11_Y22_N12
\uut|unit_YA|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector5~0_combout\ = (!\uut|unit_OA|x\(0) & (\uut|unit_YA|state.s1~q\ & (!\uut|unit_OA|x\(2) & \uut|unit_OA|x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|x\(0),
	datab => \uut|unit_YA|state.s1~q\,
	datac => \uut|unit_OA|x\(2),
	datad => \uut|unit_OA|x\(1),
	combout => \uut|unit_YA|Selector5~0_combout\);

-- Location: LCCOMB_X12_Y22_N22
\uut|unit_YA|y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|y\(1) = (GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & ((\uut|unit_YA|y\(1)))) # (!GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & (\uut|unit_YA|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|Selector5~0_combout\,
	datac => \uut|unit_YA|y\(1),
	datad => \uut|unit_YA|state.s4~clkctrl_outclk\,
	combout => \uut|unit_YA|y\(1));

-- Location: LCCOMB_X12_Y22_N12
\uut|unit_YA|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector7~0_combout\ = (!\uut|unit_YA|state.s0~q\ & !\ctl_unit:v_sno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|state.s0~q\,
	datab => \ctl_unit:v_sno~q\,
	combout => \uut|unit_YA|Selector7~0_combout\);

-- Location: LCCOMB_X12_Y22_N4
\uut|unit_YA|y[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|y\(0) = (GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & ((\uut|unit_YA|y\(0)))) # (!GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & (\uut|unit_YA|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|Selector7~0_combout\,
	datac => \uut|unit_YA|y\(0),
	datad => \uut|unit_YA|state.s4~clkctrl_outclk\,
	combout => \uut|unit_YA|y\(0));

-- Location: LCCOMB_X12_Y22_N18
\uut|unit_OA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal0~1_combout\ = (!\uut|unit_YA|y\(1) & (!\uut|unit_YA|y\(5) & (\uut|unit_YA|y\(0) & !\uut|unit_YA|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(1),
	datab => \uut|unit_YA|y\(5),
	datac => \uut|unit_YA|y\(0),
	datad => \uut|unit_YA|y\(3),
	combout => \uut|unit_OA|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y22_N6
\uut|unit_OA|rb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rb~2_combout\ = (\uut|unit_YA|y\(2) & (((\uut|unit_OA|rb\(0))))) # (!\uut|unit_YA|y\(2) & ((\uut|unit_OA|Equal0~1_combout\ & (\gen_test:cnt[0]~q\)) # (!\uut|unit_OA|Equal0~1_combout\ & ((\uut|unit_OA|rb\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \gen_test:cnt[0]~q\,
	datac => \uut|unit_OA|rb\(0),
	datad => \uut|unit_OA|Equal0~1_combout\,
	combout => \uut|unit_OA|rb~2_combout\);

-- Location: FF_X11_Y22_N1
\uut|unit_OA|rb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rb\(1));

-- Location: LCCOMB_X11_Y22_N0
\uut|unit_OA|rb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rb~1_combout\ = (\uut|unit_YA|y\(2) & (((\uut|unit_OA|rb\(1))))) # (!\uut|unit_YA|y\(2) & ((\uut|unit_OA|Equal0~1_combout\ & (\gen_test:cnt[1]~q\)) # (!\uut|unit_OA|Equal0~1_combout\ & ((\uut|unit_OA|rb\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \gen_test:cnt[1]~q\,
	datac => \uut|unit_OA|rb\(1),
	datad => \uut|unit_OA|Equal0~1_combout\,
	combout => \uut|unit_OA|rb~1_combout\);

-- Location: LCCOMB_X11_Y22_N26
\uut|unit_OA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Mux2~0_combout\ = (\uut|unit_OA|i~3_combout\ & (((\uut|unit_OA|i~4_combout\)))) # (!\uut|unit_OA|i~3_combout\ & ((\uut|unit_OA|i~4_combout\ & ((\uut|unit_OA|rb~1_combout\))) # (!\uut|unit_OA|i~4_combout\ & (\uut|unit_OA|rb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rb~2_combout\,
	datab => \uut|unit_OA|i~3_combout\,
	datac => \uut|unit_OA|i~4_combout\,
	datad => \uut|unit_OA|rb~1_combout\,
	combout => \uut|unit_OA|Mux2~0_combout\);

-- Location: FF_X11_Y22_N17
\uut|unit_OA|rb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rb\(3));

-- Location: LCCOMB_X11_Y22_N16
\uut|unit_OA|rb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rb~3_combout\ = (\uut|unit_YA|y\(2) & (((\uut|unit_OA|rb\(3))))) # (!\uut|unit_YA|y\(2) & ((\uut|unit_OA|Equal0~1_combout\ & ((\gen_test:cnt[3]~q\))) # (!\uut|unit_OA|Equal0~1_combout\ & (\uut|unit_OA|rb\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \uut|unit_OA|Equal0~1_combout\,
	datac => \uut|unit_OA|rb\(3),
	datad => \gen_test:cnt[3]~q\,
	combout => \uut|unit_OA|rb~3_combout\);

-- Location: FF_X12_Y22_N11
\uut|unit_OA|rb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rb\(2));

-- Location: LCCOMB_X12_Y22_N10
\uut|unit_OA|rb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rb~0_combout\ = (\uut|unit_OA|Equal0~1_combout\ & ((\uut|unit_YA|y\(2) & (\uut|unit_OA|rb\(2))) # (!\uut|unit_YA|y\(2) & ((\gen_test:cnt[2]~q\))))) # (!\uut|unit_OA|Equal0~1_combout\ & (((\uut|unit_OA|rb\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal0~1_combout\,
	datab => \uut|unit_YA|y\(2),
	datac => \uut|unit_OA|rb\(2),
	datad => \gen_test:cnt[2]~q\,
	combout => \uut|unit_OA|rb~0_combout\);

-- Location: LCCOMB_X11_Y22_N30
\uut|unit_OA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Mux2~1_combout\ = (\uut|unit_OA|Mux2~0_combout\ & ((\uut|unit_OA|rb~3_combout\) # ((!\uut|unit_OA|i~3_combout\)))) # (!\uut|unit_OA|Mux2~0_combout\ & (((\uut|unit_OA|rb~0_combout\ & \uut|unit_OA|i~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Mux2~0_combout\,
	datab => \uut|unit_OA|rb~3_combout\,
	datac => \uut|unit_OA|rb~0_combout\,
	datad => \uut|unit_OA|i~3_combout\,
	combout => \uut|unit_OA|Mux2~1_combout\);

-- Location: FF_X11_Y22_N31
\uut|unit_OA|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|x\(1));

-- Location: LCCOMB_X11_Y22_N18
\uut|unit_YA|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector1~0_combout\ = (!\uut|unit_OA|x\(0) & (\uut|unit_YA|state.s1~q\ & (\uut|unit_OA|x\(2) & \uut|unit_OA|x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|x\(0),
	datab => \uut|unit_YA|state.s1~q\,
	datac => \uut|unit_OA|x\(2),
	datad => \uut|unit_OA|x\(1),
	combout => \uut|unit_YA|Selector1~0_combout\);

-- Location: LCCOMB_X11_Y22_N28
\uut|unit_YA|y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|y\(2) = (GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & (\uut|unit_YA|y\(2))) # (!GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & ((\uut|unit_YA|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \uut|unit_YA|Selector1~0_combout\,
	datad => \uut|unit_YA|state.s4~clkctrl_outclk\,
	combout => \uut|unit_YA|y\(2));

-- Location: FF_X11_Y22_N29
\uut|unit_OA|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uut|unit_OA|i~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|i\(0));

-- Location: LCCOMB_X11_Y22_N14
\uut|unit_OA|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|i~4_combout\ = \uut|unit_OA|Equal3~1_combout\ $ (((\uut|unit_OA|i\(0) & ((\uut|unit_YA|y\(2)) # (!\uut|unit_OA|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \uut|unit_OA|Equal0~1_combout\,
	datac => \uut|unit_OA|Equal3~1_combout\,
	datad => \uut|unit_OA|i\(0),
	combout => \uut|unit_OA|i~4_combout\);

-- Location: LCCOMB_X11_Y22_N8
\uut|unit_OA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal0~2_combout\ = (!\uut|unit_YA|y\(2) & \uut|unit_OA|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datad => \uut|unit_OA|Equal0~1_combout\,
	combout => \uut|unit_OA|Equal0~2_combout\);

-- Location: FF_X11_Y22_N21
\uut|unit_OA|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|i\(2));

-- Location: FF_X11_Y22_N3
\uut|unit_OA|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|i\(1));

-- Location: LCCOMB_X11_Y22_N10
\uut|unit_OA|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add6~0_combout\ = (((!\uut|unit_YA|y\(2) & \uut|unit_OA|Equal0~1_combout\)) # (!\uut|unit_OA|i\(0))) # (!\uut|unit_OA|i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|i\(1),
	datab => \uut|unit_OA|i\(0),
	datac => \uut|unit_YA|y\(2),
	datad => \uut|unit_OA|Equal0~1_combout\,
	combout => \uut|unit_OA|Add6~0_combout\);

-- Location: LCCOMB_X11_Y22_N20
\uut|unit_OA|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|i~2_combout\ = (\uut|unit_OA|Equal3~1_combout\ & (\uut|unit_OA|Add6~0_combout\ $ (((\uut|unit_OA|Equal0~2_combout\) # (!\uut|unit_OA|i\(2)))))) # (!\uut|unit_OA|Equal3~1_combout\ & (!\uut|unit_OA|Equal0~2_combout\ & (\uut|unit_OA|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal3~1_combout\,
	datab => \uut|unit_OA|Equal0~2_combout\,
	datac => \uut|unit_OA|i\(2),
	datad => \uut|unit_OA|Add6~0_combout\,
	combout => \uut|unit_OA|i~2_combout\);

-- Location: LCCOMB_X11_Y22_N4
\uut|unit_OA|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal13~0_combout\ = (\uut|unit_OA|i~3_combout\ & (\uut|unit_OA|i~4_combout\ & !\uut|unit_OA|i~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|i~3_combout\,
	datac => \uut|unit_OA|i~4_combout\,
	datad => \uut|unit_OA|i~2_combout\,
	combout => \uut|unit_OA|Equal13~0_combout\);

-- Location: FF_X11_Y22_N5
\uut|unit_OA|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|Equal13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|x\(2));

-- Location: LCCOMB_X12_Y22_N26
\uut|unit_YA|next_state.s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|next_state.s2~0_combout\ = (!\uut|unit_OA|x\(2) & (!\uut|unit_OA|x\(0) & \uut|unit_YA|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|x\(2),
	datac => \uut|unit_OA|x\(0),
	datad => \uut|unit_YA|state.s1~q\,
	combout => \uut|unit_YA|next_state.s2~0_combout\);

-- Location: FF_X12_Y22_N27
\uut|unit_YA|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_YA|next_state.s2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_YA|state.s2~q\);

-- Location: LCCOMB_X12_Y22_N8
\uut|unit_YA|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector3~0_combout\ = (!\uut|unit_OA|x\(0) & \uut|unit_YA|state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|unit_OA|x\(0),
	datad => \uut|unit_YA|state.s2~q\,
	combout => \uut|unit_YA|Selector3~0_combout\);

-- Location: LCCOMB_X12_Y22_N16
\uut|unit_YA|y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|y\(3) = (GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & (\uut|unit_YA|y\(3))) # (!GLOBAL(\uut|unit_YA|state.s4~clkctrl_outclk\) & ((\uut|unit_YA|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_YA|y\(3),
	datac => \uut|unit_YA|state.s4~clkctrl_outclk\,
	datad => \uut|unit_YA|Selector3~0_combout\,
	combout => \uut|unit_YA|y\(3));

-- Location: LCCOMB_X11_Y22_N24
\uut|unit_OA|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal3~0_combout\ = (!\uut|unit_YA|y\(2) & (!\uut|unit_YA|y\(1) & !\uut|unit_YA|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datac => \uut|unit_YA|y\(1),
	datad => \uut|unit_YA|y\(0),
	combout => \uut|unit_OA|Equal3~0_combout\);

-- Location: LCCOMB_X10_Y22_N26
\uut|unit_OA|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal3~1_combout\ = (!\uut|unit_YA|y\(5) & (\uut|unit_YA|y\(3) & \uut|unit_OA|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(5),
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_OA|Equal3~0_combout\,
	combout => \uut|unit_OA|Equal3~1_combout\);

-- Location: LCCOMB_X11_Y22_N2
\uut|unit_OA|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|i~3_combout\ = (!\uut|unit_OA|Equal0~2_combout\ & (\uut|unit_OA|i\(1) $ (((\uut|unit_OA|Equal3~1_combout\ & \uut|unit_OA|i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal3~1_combout\,
	datab => \uut|unit_OA|Equal0~2_combout\,
	datac => \uut|unit_OA|i\(1),
	datad => \uut|unit_OA|i\(0),
	combout => \uut|unit_OA|i~3_combout\);

-- Location: LCCOMB_X11_Y22_N6
\uut|unit_OA|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal12~0_combout\ = (!\uut|unit_OA|i~3_combout\ & (!\uut|unit_OA|i~4_combout\ & \uut|unit_OA|i~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|i~3_combout\,
	datac => \uut|unit_OA|i~4_combout\,
	datad => \uut|unit_OA|i~2_combout\,
	combout => \uut|unit_OA|Equal12~0_combout\);

-- Location: FF_X11_Y22_N7
\uut|unit_OA|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|x\(0));

-- Location: LCCOMB_X12_Y22_N14
\uut|unit_YA|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_YA|Selector4~0_combout\ = (\uut|unit_OA|x\(0) & ((\uut|unit_YA|state.s1~q\) # ((\uut|unit_YA|state.s2~q\)))) # (!\uut|unit_OA|x\(0) & (\uut|unit_YA|state.s1~q\ & (\uut|unit_OA|x\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|x\(0),
	datab => \uut|unit_YA|state.s1~q\,
	datac => \uut|unit_OA|x\(2),
	datad => \uut|unit_YA|state.s2~q\,
	combout => \uut|unit_YA|Selector4~0_combout\);

-- Location: FF_X12_Y22_N15
\uut|unit_YA|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_YA|Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_YA|state.s3~q\);

-- Location: FF_X9_Y22_N3
\uut|unit_YA|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uut|unit_YA|state.s3~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_YA|state.s4~q\);

-- Location: LCCOMB_X10_Y22_N4
\uut|unit_OA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal0~0_combout\ = (!\uut|unit_YA|y\(3) & !\uut|unit_YA|y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_YA|y\(5),
	combout => \uut|unit_OA|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y22_N0
\uut|unit_OA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal2~0_combout\ = (!\uut|unit_YA|y\(1) & (\uut|unit_YA|y\(2) & (!\uut|unit_YA|y\(0) & \uut|unit_OA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(1),
	datab => \uut|unit_YA|y\(2),
	datac => \uut|unit_YA|y\(0),
	datad => \uut|unit_OA|Equal0~0_combout\,
	combout => \uut|unit_OA|Equal2~0_combout\);

-- Location: LCCOMB_X10_Y22_N6
\uut|unit_OA|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal4~0_combout\ = (\uut|unit_YA|y\(5) & (!\uut|unit_YA|y\(3) & \uut|unit_OA|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(5),
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_OA|Equal3~0_combout\,
	combout => \uut|unit_OA|Equal4~0_combout\);

-- Location: LCCOMB_X11_Y22_N22
\uut|unit_OA|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Equal1~0_combout\ = (!\uut|unit_YA|y\(2) & (\uut|unit_YA|y\(1) & (\uut|unit_OA|Equal0~0_combout\ & !\uut|unit_YA|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \uut|unit_YA|y\(1),
	datac => \uut|unit_OA|Equal0~0_combout\,
	datad => \uut|unit_YA|y\(0),
	combout => \uut|unit_OA|Equal1~0_combout\);

-- Location: FF_X14_Y22_N1
\uut|unit_OA|ra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|ra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|ra\(3));

-- Location: LCCOMB_X14_Y22_N0
\uut|unit_OA|ra~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|ra~0_combout\ = (\uut|unit_YA|y\(2) & (((\uut|unit_OA|ra\(3))))) # (!\uut|unit_YA|y\(2) & ((\uut|unit_OA|Equal0~1_combout\ & (\gen_test:cnt[7]~q\)) # (!\uut|unit_OA|Equal0~1_combout\ & ((\uut|unit_OA|ra\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datab => \uut|unit_YA|y\(2),
	datac => \uut|unit_OA|ra\(3),
	datad => \uut|unit_OA|Equal0~1_combout\,
	combout => \uut|unit_OA|ra~0_combout\);

-- Location: LCCOMB_X14_Y22_N10
\uut|unit_OA|rc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~0_combout\ = (!\uut|unit_OA|Equal4~0_combout\ & (\uut|unit_OA|Equal3~1_combout\ & (\uut|unit_OA|Equal1~0_combout\ $ (!\uut|unit_OA|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal1~0_combout\,
	datab => \uut|unit_OA|Equal4~0_combout\,
	datac => \uut|unit_OA|Equal2~0_combout\,
	datad => \uut|unit_OA|Equal3~1_combout\,
	combout => \uut|unit_OA|rc~0_combout\);

-- Location: LCCOMB_X13_Y21_N28
\uut|unit_OA|rc~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~25_combout\ = (\uut|unit_OA|rc\(5) & \uut|unit_OA|rc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|rc\(5),
	datad => \uut|unit_OA|rc~0_combout\,
	combout => \uut|unit_OA|rc~25_combout\);

-- Location: LCCOMB_X14_Y22_N2
\uut|unit_OA|rc~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~20_combout\ = (\uut|unit_OA|rc\(4) & \uut|unit_OA|rc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|unit_OA|rc\(4),
	datad => \uut|unit_OA|rc~0_combout\,
	combout => \uut|unit_OA|rc~20_combout\);

-- Location: LCCOMB_X10_Y22_N28
\uut|unit_OA|rc~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~16_combout\ = (!\uut|unit_YA|y\(3) & (\uut|unit_YA|y\(5) & (\uut|unit_OA|rc\(1) & \uut|unit_OA|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(3),
	datab => \uut|unit_YA|y\(5),
	datac => \uut|unit_OA|rc\(1),
	datad => \uut|unit_OA|Equal3~0_combout\,
	combout => \uut|unit_OA|rc~16_combout\);

-- Location: LCCOMB_X13_Y23_N28
\uut|unit_OA|rc~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~15_combout\ = (\uut|unit_OA|rc~0_combout\ & \uut|unit_OA|rc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|unit_OA|rc~0_combout\,
	datad => \uut|unit_OA|rc\(3),
	combout => \uut|unit_OA|rc~15_combout\);

-- Location: LCCOMB_X13_Y21_N26
\uut|unit_OA|rc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~6_combout\ = (!\uut|unit_OA|Equal4~0_combout\ & (!\uut|unit_OA|Equal3~1_combout\ & (\uut|unit_OA|Equal2~0_combout\ $ (\uut|unit_OA|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal4~0_combout\,
	datab => \uut|unit_OA|Equal3~1_combout\,
	datac => \uut|unit_OA|Equal2~0_combout\,
	datad => \uut|unit_OA|Equal1~0_combout\,
	combout => \uut|unit_OA|rc~6_combout\);

-- Location: LCCOMB_X13_Y22_N16
\uut|unit_OA|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~8_combout\ = (\uut|unit_OA|rc\(0) & (\uut|unit_OA|ra~0_combout\ $ (GND))) # (!\uut|unit_OA|rc\(0) & (!\uut|unit_OA|ra~0_combout\ & VCC))
-- \uut|unit_OA|Add2~9\ = CARRY((\uut|unit_OA|rc\(0) & !\uut|unit_OA|ra~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(0),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	combout => \uut|unit_OA|Add2~8_combout\,
	cout => \uut|unit_OA|Add2~9\);

-- Location: LCCOMB_X13_Y22_N18
\uut|unit_OA|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~10_combout\ = (\uut|unit_OA|rc\(1) & ((\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add2~9\)) # (!\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add2~9\ & VCC)))) # (!\uut|unit_OA|rc\(1) & ((\uut|unit_OA|ra~0_combout\ & 
-- ((\uut|unit_OA|Add2~9\) # (GND))) # (!\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add2~9\))))
-- \uut|unit_OA|Add2~11\ = CARRY((\uut|unit_OA|rc\(1) & (\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add2~9\)) # (!\uut|unit_OA|rc\(1) & ((\uut|unit_OA|ra~0_combout\) # (!\uut|unit_OA|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(1),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~9\,
	combout => \uut|unit_OA|Add2~10_combout\,
	cout => \uut|unit_OA|Add2~11\);

-- Location: LCCOMB_X13_Y22_N20
\uut|unit_OA|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~12_combout\ = ((\uut|unit_OA|rc\(2) $ (\uut|unit_OA|ra~0_combout\ $ (\uut|unit_OA|Add2~11\)))) # (GND)
-- \uut|unit_OA|Add2~13\ = CARRY((\uut|unit_OA|rc\(2) & ((!\uut|unit_OA|Add2~11\) # (!\uut|unit_OA|ra~0_combout\))) # (!\uut|unit_OA|rc\(2) & (!\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(2),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~11\,
	combout => \uut|unit_OA|Add2~12_combout\,
	cout => \uut|unit_OA|Add2~13\);

-- Location: FF_X13_Y22_N15
\uut|unit_OA|ra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|ra~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|ra\(2));

-- Location: LCCOMB_X13_Y22_N14
\uut|unit_OA|ra~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|ra~1_combout\ = (\uut|unit_OA|Equal0~1_combout\ & ((\uut|unit_YA|y\(2) & (\uut|unit_OA|ra\(2))) # (!\uut|unit_YA|y\(2) & ((\gen_test:cnt[6]~q\))))) # (!\uut|unit_OA|Equal0~1_combout\ & (((\uut|unit_OA|ra\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal0~1_combout\,
	datab => \uut|unit_YA|y\(2),
	datac => \uut|unit_OA|ra\(2),
	datad => \gen_test:cnt[6]~q\,
	combout => \uut|unit_OA|ra~1_combout\);

-- Location: FF_X12_Y22_N21
\uut|unit_OA|ra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|ra~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|ra\(1));

-- Location: LCCOMB_X12_Y22_N20
\uut|unit_OA|ra~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|ra~2_combout\ = (\uut|unit_OA|Equal0~1_combout\ & ((\uut|unit_YA|y\(2) & (\uut|unit_OA|ra\(1))) # (!\uut|unit_YA|y\(2) & ((\gen_test:cnt[5]~q\))))) # (!\uut|unit_OA|Equal0~1_combout\ & (((\uut|unit_OA|ra\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal0~1_combout\,
	datab => \uut|unit_YA|y\(2),
	datac => \uut|unit_OA|ra\(1),
	datad => \gen_test:cnt[5]~q\,
	combout => \uut|unit_OA|ra~2_combout\);

-- Location: FF_X12_Y22_N7
\uut|unit_OA|ra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|ra~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|ra\(0));

-- Location: LCCOMB_X12_Y22_N6
\uut|unit_OA|ra~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|ra~3_combout\ = (\uut|unit_YA|y\(2) & (((\uut|unit_OA|ra\(0))))) # (!\uut|unit_YA|y\(2) & ((\uut|unit_OA|Equal0~1_combout\ & ((\gen_test:cnt[4]~q\))) # (!\uut|unit_OA|Equal0~1_combout\ & (\uut|unit_OA|ra\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(2),
	datab => \uut|unit_OA|Equal0~1_combout\,
	datac => \uut|unit_OA|ra\(0),
	datad => \gen_test:cnt[4]~q\,
	combout => \uut|unit_OA|ra~3_combout\);

-- Location: LCCOMB_X13_Y22_N22
\uut|unit_OA|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~14_combout\ = (\uut|unit_OA|rc\(3) & ((\uut|unit_OA|ra~3_combout\ & (!\uut|unit_OA|Add2~13\)) # (!\uut|unit_OA|ra~3_combout\ & (\uut|unit_OA|Add2~13\ & VCC)))) # (!\uut|unit_OA|rc\(3) & ((\uut|unit_OA|ra~3_combout\ & 
-- ((\uut|unit_OA|Add2~13\) # (GND))) # (!\uut|unit_OA|ra~3_combout\ & (!\uut|unit_OA|Add2~13\))))
-- \uut|unit_OA|Add2~15\ = CARRY((\uut|unit_OA|rc\(3) & (\uut|unit_OA|ra~3_combout\ & !\uut|unit_OA|Add2~13\)) # (!\uut|unit_OA|rc\(3) & ((\uut|unit_OA|ra~3_combout\) # (!\uut|unit_OA|Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(3),
	datab => \uut|unit_OA|ra~3_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~13\,
	combout => \uut|unit_OA|Add2~14_combout\,
	cout => \uut|unit_OA|Add2~15\);

-- Location: LCCOMB_X13_Y22_N24
\uut|unit_OA|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~16_combout\ = ((\uut|unit_OA|rc\(4) $ (\uut|unit_OA|ra~2_combout\ $ (\uut|unit_OA|Add2~15\)))) # (GND)
-- \uut|unit_OA|Add2~17\ = CARRY((\uut|unit_OA|rc\(4) & ((!\uut|unit_OA|Add2~15\) # (!\uut|unit_OA|ra~2_combout\))) # (!\uut|unit_OA|rc\(4) & (!\uut|unit_OA|ra~2_combout\ & !\uut|unit_OA|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(4),
	datab => \uut|unit_OA|ra~2_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~15\,
	combout => \uut|unit_OA|Add2~16_combout\,
	cout => \uut|unit_OA|Add2~17\);

-- Location: LCCOMB_X13_Y22_N26
\uut|unit_OA|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~18_combout\ = (\uut|unit_OA|ra~1_combout\ & ((\uut|unit_OA|rc\(5) & (!\uut|unit_OA|Add2~17\)) # (!\uut|unit_OA|rc\(5) & ((\uut|unit_OA|Add2~17\) # (GND))))) # (!\uut|unit_OA|ra~1_combout\ & ((\uut|unit_OA|rc\(5) & (\uut|unit_OA|Add2~17\ 
-- & VCC)) # (!\uut|unit_OA|rc\(5) & (!\uut|unit_OA|Add2~17\))))
-- \uut|unit_OA|Add2~19\ = CARRY((\uut|unit_OA|ra~1_combout\ & ((!\uut|unit_OA|Add2~17\) # (!\uut|unit_OA|rc\(5)))) # (!\uut|unit_OA|ra~1_combout\ & (!\uut|unit_OA|rc\(5) & !\uut|unit_OA|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~1_combout\,
	datab => \uut|unit_OA|rc\(5),
	datad => VCC,
	cin => \uut|unit_OA|Add2~17\,
	combout => \uut|unit_OA|Add2~18_combout\,
	cout => \uut|unit_OA|Add2~19\);

-- Location: LCCOMB_X13_Y22_N28
\uut|unit_OA|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~20_combout\ = ((\uut|unit_OA|rc\(6) $ (\uut|unit_OA|ra~0_combout\ $ (\uut|unit_OA|Add2~19\)))) # (GND)
-- \uut|unit_OA|Add2~21\ = CARRY((\uut|unit_OA|rc\(6) & ((!\uut|unit_OA|Add2~19\) # (!\uut|unit_OA|ra~0_combout\))) # (!\uut|unit_OA|rc\(6) & (!\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(6),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~19\,
	combout => \uut|unit_OA|Add2~20_combout\,
	cout => \uut|unit_OA|Add2~21\);

-- Location: LCCOMB_X13_Y22_N30
\uut|unit_OA|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~22_combout\ = (\uut|unit_OA|rc\(7) & ((\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add2~21\)) # (!\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add2~21\ & VCC)))) # (!\uut|unit_OA|rc\(7) & ((\uut|unit_OA|ra~0_combout\ & 
-- ((\uut|unit_OA|Add2~21\) # (GND))) # (!\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add2~21\))))
-- \uut|unit_OA|Add2~23\ = CARRY((\uut|unit_OA|rc\(7) & (\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add2~21\)) # (!\uut|unit_OA|rc\(7) & ((\uut|unit_OA|ra~0_combout\) # (!\uut|unit_OA|Add2~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(7),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~21\,
	combout => \uut|unit_OA|Add2~22_combout\,
	cout => \uut|unit_OA|Add2~23\);

-- Location: LCCOMB_X13_Y21_N0
\uut|unit_OA|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~24_combout\ = (\uut|unit_OA|Add2~8_combout\ & (\uut|unit_OA|Add2~23\ $ (GND))) # (!\uut|unit_OA|Add2~8_combout\ & (!\uut|unit_OA|Add2~23\ & VCC))
-- \uut|unit_OA|Add2~25\ = CARRY((\uut|unit_OA|Add2~8_combout\ & !\uut|unit_OA|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add2~8_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~23\,
	combout => \uut|unit_OA|Add2~24_combout\,
	cout => \uut|unit_OA|Add2~25\);

-- Location: LCCOMB_X13_Y21_N2
\uut|unit_OA|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~26_combout\ = (\uut|unit_OA|Add2~10_combout\ & (!\uut|unit_OA|Add2~25\)) # (!\uut|unit_OA|Add2~10_combout\ & ((\uut|unit_OA|Add2~25\) # (GND)))
-- \uut|unit_OA|Add2~27\ = CARRY((!\uut|unit_OA|Add2~25\) # (!\uut|unit_OA|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add2~10_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~25\,
	combout => \uut|unit_OA|Add2~26_combout\,
	cout => \uut|unit_OA|Add2~27\);

-- Location: LCCOMB_X13_Y21_N4
\uut|unit_OA|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~28_combout\ = (\uut|unit_OA|Add2~12_combout\ & (\uut|unit_OA|Add2~27\ $ (GND))) # (!\uut|unit_OA|Add2~12_combout\ & (!\uut|unit_OA|Add2~27\ & VCC))
-- \uut|unit_OA|Add2~29\ = CARRY((\uut|unit_OA|Add2~12_combout\ & !\uut|unit_OA|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add2~12_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~27\,
	combout => \uut|unit_OA|Add2~28_combout\,
	cout => \uut|unit_OA|Add2~29\);

-- Location: LCCOMB_X12_Y20_N10
\uut|unit_OA|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~0_combout\ = (\uut|unit_OA|ra~3_combout\ & (\uut|unit_OA|Add2~24_combout\ $ (VCC))) # (!\uut|unit_OA|ra~3_combout\ & (\uut|unit_OA|Add2~24_combout\ & VCC))
-- \uut|unit_OA|Add4~1\ = CARRY((\uut|unit_OA|ra~3_combout\ & \uut|unit_OA|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~3_combout\,
	datab => \uut|unit_OA|Add2~24_combout\,
	datad => VCC,
	combout => \uut|unit_OA|Add4~0_combout\,
	cout => \uut|unit_OA|Add4~1\);

-- Location: LCCOMB_X12_Y20_N12
\uut|unit_OA|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~2_combout\ = (\uut|unit_OA|ra~2_combout\ & ((\uut|unit_OA|Add2~26_combout\ & (\uut|unit_OA|Add4~1\ & VCC)) # (!\uut|unit_OA|Add2~26_combout\ & (!\uut|unit_OA|Add4~1\)))) # (!\uut|unit_OA|ra~2_combout\ & ((\uut|unit_OA|Add2~26_combout\ & 
-- (!\uut|unit_OA|Add4~1\)) # (!\uut|unit_OA|Add2~26_combout\ & ((\uut|unit_OA|Add4~1\) # (GND)))))
-- \uut|unit_OA|Add4~3\ = CARRY((\uut|unit_OA|ra~2_combout\ & (!\uut|unit_OA|Add2~26_combout\ & !\uut|unit_OA|Add4~1\)) # (!\uut|unit_OA|ra~2_combout\ & ((!\uut|unit_OA|Add4~1\) # (!\uut|unit_OA|Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~2_combout\,
	datab => \uut|unit_OA|Add2~26_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~1\,
	combout => \uut|unit_OA|Add4~2_combout\,
	cout => \uut|unit_OA|Add4~3\);

-- Location: LCCOMB_X12_Y20_N14
\uut|unit_OA|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~4_combout\ = ((\uut|unit_OA|Add2~28_combout\ $ (\uut|unit_OA|ra~1_combout\ $ (!\uut|unit_OA|Add4~3\)))) # (GND)
-- \uut|unit_OA|Add4~5\ = CARRY((\uut|unit_OA|Add2~28_combout\ & ((\uut|unit_OA|ra~1_combout\) # (!\uut|unit_OA|Add4~3\))) # (!\uut|unit_OA|Add2~28_combout\ & (\uut|unit_OA|ra~1_combout\ & !\uut|unit_OA|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add2~28_combout\,
	datab => \uut|unit_OA|ra~1_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~3\,
	combout => \uut|unit_OA|Add4~4_combout\,
	cout => \uut|unit_OA|Add4~5\);

-- Location: LCCOMB_X13_Y20_N2
\uut|unit_OA|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~0_combout\ = \uut|unit_OA|Add4~0_combout\ $ (VCC)
-- \uut|unit_OA|Add5~1\ = CARRY(\uut|unit_OA|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add4~0_combout\,
	datad => VCC,
	combout => \uut|unit_OA|Add5~0_combout\,
	cout => \uut|unit_OA|Add5~1\);

-- Location: LCCOMB_X13_Y20_N4
\uut|unit_OA|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~2_combout\ = (\uut|unit_OA|Add4~2_combout\ & (!\uut|unit_OA|Add5~1\)) # (!\uut|unit_OA|Add4~2_combout\ & ((\uut|unit_OA|Add5~1\) # (GND)))
-- \uut|unit_OA|Add5~3\ = CARRY((!\uut|unit_OA|Add5~1\) # (!\uut|unit_OA|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add4~2_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add5~1\,
	combout => \uut|unit_OA|Add5~2_combout\,
	cout => \uut|unit_OA|Add5~3\);

-- Location: LCCOMB_X13_Y20_N6
\uut|unit_OA|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~4_combout\ = (\uut|unit_OA|Add4~4_combout\ & (\uut|unit_OA|Add5~3\ $ (GND))) # (!\uut|unit_OA|Add4~4_combout\ & (!\uut|unit_OA|Add5~3\ & VCC))
-- \uut|unit_OA|Add5~5\ = CARRY((\uut|unit_OA|Add4~4_combout\ & !\uut|unit_OA|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add4~4_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add5~3\,
	combout => \uut|unit_OA|Add5~4_combout\,
	cout => \uut|unit_OA|Add5~5\);

-- Location: LCCOMB_X13_Y23_N0
\uut|unit_OA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~0_combout\ = (\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|rc\(0) $ (VCC))) # (!\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|rc\(0) & VCC))
-- \uut|unit_OA|Add0~1\ = CARRY((\uut|unit_OA|ra~0_combout\ & \uut|unit_OA|rc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~0_combout\,
	datab => \uut|unit_OA|rc\(0),
	datad => VCC,
	combout => \uut|unit_OA|Add0~0_combout\,
	cout => \uut|unit_OA|Add0~1\);

-- Location: LCCOMB_X13_Y23_N2
\uut|unit_OA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~2_combout\ = (\uut|unit_OA|rc\(1) & ((\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add0~1\ & VCC)) # (!\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add0~1\)))) # (!\uut|unit_OA|rc\(1) & ((\uut|unit_OA|ra~0_combout\ & 
-- (!\uut|unit_OA|Add0~1\)) # (!\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add0~1\) # (GND)))))
-- \uut|unit_OA|Add0~3\ = CARRY((\uut|unit_OA|rc\(1) & (!\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add0~1\)) # (!\uut|unit_OA|rc\(1) & ((!\uut|unit_OA|Add0~1\) # (!\uut|unit_OA|ra~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(1),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add0~1\,
	combout => \uut|unit_OA|Add0~2_combout\,
	cout => \uut|unit_OA|Add0~3\);

-- Location: LCCOMB_X13_Y23_N4
\uut|unit_OA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~4_combout\ = ((\uut|unit_OA|rc\(2) $ (\uut|unit_OA|ra~0_combout\ $ (!\uut|unit_OA|Add0~3\)))) # (GND)
-- \uut|unit_OA|Add0~5\ = CARRY((\uut|unit_OA|rc\(2) & ((\uut|unit_OA|ra~0_combout\) # (!\uut|unit_OA|Add0~3\))) # (!\uut|unit_OA|rc\(2) & (\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(2),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add0~3\,
	combout => \uut|unit_OA|Add0~4_combout\,
	cout => \uut|unit_OA|Add0~5\);

-- Location: LCCOMB_X14_Y20_N2
\uut|unit_OA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~0_combout\ = \uut|unit_OA|Add0~0_combout\ $ (VCC)
-- \uut|unit_OA|Add1~1\ = CARRY(\uut|unit_OA|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add0~0_combout\,
	datad => VCC,
	combout => \uut|unit_OA|Add1~0_combout\,
	cout => \uut|unit_OA|Add1~1\);

-- Location: LCCOMB_X14_Y20_N4
\uut|unit_OA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~2_combout\ = (\uut|unit_OA|Add0~2_combout\ & (!\uut|unit_OA|Add1~1\)) # (!\uut|unit_OA|Add0~2_combout\ & ((\uut|unit_OA|Add1~1\) # (GND)))
-- \uut|unit_OA|Add1~3\ = CARRY((!\uut|unit_OA|Add1~1\) # (!\uut|unit_OA|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add0~2_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add1~1\,
	combout => \uut|unit_OA|Add1~2_combout\,
	cout => \uut|unit_OA|Add1~3\);

-- Location: LCCOMB_X14_Y20_N6
\uut|unit_OA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~4_combout\ = (\uut|unit_OA|Add0~4_combout\ & (\uut|unit_OA|Add1~3\ $ (GND))) # (!\uut|unit_OA|Add0~4_combout\ & (!\uut|unit_OA|Add1~3\ & VCC))
-- \uut|unit_OA|Add1~5\ = CARRY((\uut|unit_OA|Add0~4_combout\ & !\uut|unit_OA|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add0~4_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add1~3\,
	combout => \uut|unit_OA|Add1~4_combout\,
	cout => \uut|unit_OA|Add1~5\);

-- Location: LCCOMB_X13_Y21_N6
\uut|unit_OA|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~30_combout\ = (\uut|unit_OA|Add2~14_combout\ & (!\uut|unit_OA|Add2~29\)) # (!\uut|unit_OA|Add2~14_combout\ & ((\uut|unit_OA|Add2~29\) # (GND)))
-- \uut|unit_OA|Add2~31\ = CARRY((!\uut|unit_OA|Add2~29\) # (!\uut|unit_OA|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add2~14_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~29\,
	combout => \uut|unit_OA|Add2~30_combout\,
	cout => \uut|unit_OA|Add2~31\);

-- Location: LCCOMB_X13_Y21_N8
\uut|unit_OA|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~32_combout\ = (\uut|unit_OA|Add2~16_combout\ & (\uut|unit_OA|Add2~31\ $ (GND))) # (!\uut|unit_OA|Add2~16_combout\ & (!\uut|unit_OA|Add2~31\ & VCC))
-- \uut|unit_OA|Add2~33\ = CARRY((\uut|unit_OA|Add2~16_combout\ & !\uut|unit_OA|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add2~16_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~31\,
	combout => \uut|unit_OA|Add2~32_combout\,
	cout => \uut|unit_OA|Add2~33\);

-- Location: LCCOMB_X13_Y21_N10
\uut|unit_OA|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~34_combout\ = (\uut|unit_OA|Add2~18_combout\ & (!\uut|unit_OA|Add2~33\)) # (!\uut|unit_OA|Add2~18_combout\ & ((\uut|unit_OA|Add2~33\) # (GND)))
-- \uut|unit_OA|Add2~35\ = CARRY((!\uut|unit_OA|Add2~33\) # (!\uut|unit_OA|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add2~18_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~33\,
	combout => \uut|unit_OA|Add2~34_combout\,
	cout => \uut|unit_OA|Add2~35\);

-- Location: LCCOMB_X13_Y21_N12
\uut|unit_OA|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~36_combout\ = (\uut|unit_OA|Add2~20_combout\ & (\uut|unit_OA|Add2~35\ $ (GND))) # (!\uut|unit_OA|Add2~20_combout\ & (!\uut|unit_OA|Add2~35\ & VCC))
-- \uut|unit_OA|Add2~37\ = CARRY((\uut|unit_OA|Add2~20_combout\ & !\uut|unit_OA|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add2~20_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~35\,
	combout => \uut|unit_OA|Add2~36_combout\,
	cout => \uut|unit_OA|Add2~37\);

-- Location: LCCOMB_X13_Y21_N14
\uut|unit_OA|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~38_combout\ = (\uut|unit_OA|Add2~22_combout\ & (!\uut|unit_OA|Add2~37\)) # (!\uut|unit_OA|Add2~22_combout\ & ((\uut|unit_OA|Add2~37\) # (GND)))
-- \uut|unit_OA|Add2~39\ = CARRY((!\uut|unit_OA|Add2~37\) # (!\uut|unit_OA|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add2~22_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add2~37\,
	combout => \uut|unit_OA|Add2~38_combout\,
	cout => \uut|unit_OA|Add2~39\);

-- Location: LCCOMB_X13_Y21_N16
\uut|unit_OA|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add2~40_combout\ = !\uut|unit_OA|Add2~39\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uut|unit_OA|Add2~39\,
	combout => \uut|unit_OA|Add2~40_combout\);

-- Location: LCCOMB_X12_Y20_N16
\uut|unit_OA|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~6_combout\ = (\uut|unit_OA|Add2~30_combout\ & ((\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add4~5\ & VCC)) # (!\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add4~5\)))) # (!\uut|unit_OA|Add2~30_combout\ & ((\uut|unit_OA|ra~0_combout\ & 
-- (!\uut|unit_OA|Add4~5\)) # (!\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add4~5\) # (GND)))))
-- \uut|unit_OA|Add4~7\ = CARRY((\uut|unit_OA|Add2~30_combout\ & (!\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add4~5\)) # (!\uut|unit_OA|Add2~30_combout\ & ((!\uut|unit_OA|Add4~5\) # (!\uut|unit_OA|ra~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add2~30_combout\,
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~5\,
	combout => \uut|unit_OA|Add4~6_combout\,
	cout => \uut|unit_OA|Add4~7\);

-- Location: LCCOMB_X12_Y20_N18
\uut|unit_OA|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~8_combout\ = ((\uut|unit_OA|ra~0_combout\ $ (\uut|unit_OA|Add2~32_combout\ $ (!\uut|unit_OA|Add4~7\)))) # (GND)
-- \uut|unit_OA|Add4~9\ = CARRY((\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add2~32_combout\) # (!\uut|unit_OA|Add4~7\))) # (!\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add2~32_combout\ & !\uut|unit_OA|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~0_combout\,
	datab => \uut|unit_OA|Add2~32_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~7\,
	combout => \uut|unit_OA|Add4~8_combout\,
	cout => \uut|unit_OA|Add4~9\);

-- Location: LCCOMB_X12_Y20_N20
\uut|unit_OA|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~10_combout\ = (\uut|unit_OA|Add2~34_combout\ & ((\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add4~9\ & VCC)) # (!\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add4~9\)))) # (!\uut|unit_OA|Add2~34_combout\ & ((\uut|unit_OA|ra~0_combout\ & 
-- (!\uut|unit_OA|Add4~9\)) # (!\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add4~9\) # (GND)))))
-- \uut|unit_OA|Add4~11\ = CARRY((\uut|unit_OA|Add2~34_combout\ & (!\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add4~9\)) # (!\uut|unit_OA|Add2~34_combout\ & ((!\uut|unit_OA|Add4~9\) # (!\uut|unit_OA|ra~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add2~34_combout\,
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~9\,
	combout => \uut|unit_OA|Add4~10_combout\,
	cout => \uut|unit_OA|Add4~11\);

-- Location: LCCOMB_X12_Y20_N22
\uut|unit_OA|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~12_combout\ = ((\uut|unit_OA|ra~0_combout\ $ (\uut|unit_OA|Add2~36_combout\ $ (!\uut|unit_OA|Add4~11\)))) # (GND)
-- \uut|unit_OA|Add4~13\ = CARRY((\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add2~36_combout\) # (!\uut|unit_OA|Add4~11\))) # (!\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add2~36_combout\ & !\uut|unit_OA|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~0_combout\,
	datab => \uut|unit_OA|Add2~36_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~11\,
	combout => \uut|unit_OA|Add4~12_combout\,
	cout => \uut|unit_OA|Add4~13\);

-- Location: LCCOMB_X12_Y20_N24
\uut|unit_OA|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~14_combout\ = (\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add2~38_combout\ & (\uut|unit_OA|Add4~13\ & VCC)) # (!\uut|unit_OA|Add2~38_combout\ & (!\uut|unit_OA|Add4~13\)))) # (!\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add2~38_combout\ 
-- & (!\uut|unit_OA|Add4~13\)) # (!\uut|unit_OA|Add2~38_combout\ & ((\uut|unit_OA|Add4~13\) # (GND)))))
-- \uut|unit_OA|Add4~15\ = CARRY((\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add2~38_combout\ & !\uut|unit_OA|Add4~13\)) # (!\uut|unit_OA|ra~0_combout\ & ((!\uut|unit_OA|Add4~13\) # (!\uut|unit_OA|Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~0_combout\,
	datab => \uut|unit_OA|Add2~38_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add4~13\,
	combout => \uut|unit_OA|Add4~14_combout\,
	cout => \uut|unit_OA|Add4~15\);

-- Location: LCCOMB_X12_Y20_N26
\uut|unit_OA|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add4~16_combout\ = \uut|unit_OA|Add4~15\ $ (!\uut|unit_OA|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|unit_OA|Add2~40_combout\,
	cin => \uut|unit_OA|Add4~15\,
	combout => \uut|unit_OA|Add4~16_combout\);

-- Location: LCCOMB_X13_Y23_N14
\uut|unit_OA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~14_combout\ = (\uut|unit_OA|rc\(7) & ((\uut|unit_OA|ra~0_combout\ & (\uut|unit_OA|Add0~13\ & VCC)) # (!\uut|unit_OA|ra~0_combout\ & (!\uut|unit_OA|Add0~13\)))) # (!\uut|unit_OA|rc\(7) & ((\uut|unit_OA|ra~0_combout\ & 
-- (!\uut|unit_OA|Add0~13\)) # (!\uut|unit_OA|ra~0_combout\ & ((\uut|unit_OA|Add0~13\) # (GND)))))
-- \uut|unit_OA|Add0~15\ = CARRY((\uut|unit_OA|rc\(7) & (!\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add0~13\)) # (!\uut|unit_OA|rc\(7) & ((!\uut|unit_OA|Add0~13\) # (!\uut|unit_OA|ra~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(7),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add0~13\,
	combout => \uut|unit_OA|Add0~14_combout\,
	cout => \uut|unit_OA|Add0~15\);

-- Location: LCCOMB_X13_Y23_N16
\uut|unit_OA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~16_combout\ = !\uut|unit_OA|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uut|unit_OA|Add0~15\,
	combout => \uut|unit_OA|Add0~16_combout\);

-- Location: LCCOMB_X12_Y20_N8
\uut|unit_OA|rc[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc[3]~3_combout\ = (\uut|unit_OA|Equal2~0_combout\ & (\uut|unit_OA|Add4~16_combout\)) # (!\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Equal2~0_combout\,
	datac => \uut|unit_OA|Add4~16_combout\,
	datad => \uut|unit_OA|Add0~16_combout\,
	combout => \uut|unit_OA|rc[3]~3_combout\);

-- Location: LCCOMB_X12_Y20_N28
\uut|unit_OA|rc~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~17_combout\ = (\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|Add4~4_combout\) # ((\uut|unit_OA|rc[3]~3_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & (((!\uut|unit_OA|rc[3]~3_combout\ & \uut|unit_OA|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Add4~4_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|Add0~4_combout\,
	combout => \uut|unit_OA|rc~17_combout\);

-- Location: LCCOMB_X12_Y20_N4
\uut|unit_OA|rc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~18_combout\ = (\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|rc~17_combout\ & (\uut|unit_OA|Add5~4_combout\)) # (!\uut|unit_OA|rc~17_combout\ & ((\uut|unit_OA|Add1~4_combout\))))) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- (((\uut|unit_OA|rc~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add5~4_combout\,
	datab => \uut|unit_OA|Add1~4_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|rc~17_combout\,
	combout => \uut|unit_OA|rc~18_combout\);

-- Location: LCCOMB_X13_Y22_N12
\uut|unit_OA|rc~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~19_combout\ = (\uut|unit_OA|rc~16_combout\) # ((\uut|unit_OA|rc~15_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~16_combout\,
	datab => \uut|unit_OA|rc~15_combout\,
	datac => \uut|unit_OA|rc~6_combout\,
	datad => \uut|unit_OA|rc~18_combout\,
	combout => \uut|unit_OA|rc~19_combout\);

-- Location: LCCOMB_X12_Y22_N28
\uut|unit_OA|rc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~8_combout\ = (\uut|unit_YA|y\(2)) # ((\uut|unit_YA|y\(1) $ (!\uut|unit_YA|y\(0))) # (!\uut|unit_OA|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(1),
	datab => \uut|unit_YA|y\(2),
	datac => \uut|unit_YA|y\(0),
	datad => \uut|unit_OA|Equal0~0_combout\,
	combout => \uut|unit_OA|rc~8_combout\);

-- Location: LCCOMB_X12_Y21_N28
\uut|unit_OA|rc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~9_combout\ = (\uut|unit_OA|Equal2~0_combout\) # ((\uut|unit_OA|Equal4~0_combout\) # ((\uut|unit_OA|Equal3~1_combout\) # (!\uut|unit_OA|rc~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Equal4~0_combout\,
	datac => \uut|unit_OA|Equal3~1_combout\,
	datad => \uut|unit_OA|rc~8_combout\,
	combout => \uut|unit_OA|rc~9_combout\);

-- Location: FF_X13_Y22_N13
\uut|unit_OA|rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~19_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(2));

-- Location: LCCOMB_X10_Y22_N10
\uut|unit_OA|rc~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~21_combout\ = (\uut|unit_OA|rc\(2) & (\uut|unit_YA|y\(5) & (!\uut|unit_YA|y\(3) & \uut|unit_OA|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(2),
	datab => \uut|unit_YA|y\(5),
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_OA|Equal3~0_combout\,
	combout => \uut|unit_OA|rc~21_combout\);

-- Location: LCCOMB_X13_Y23_N6
\uut|unit_OA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~6_combout\ = (\uut|unit_OA|ra~3_combout\ & ((\uut|unit_OA|rc\(3) & (\uut|unit_OA|Add0~5\ & VCC)) # (!\uut|unit_OA|rc\(3) & (!\uut|unit_OA|Add0~5\)))) # (!\uut|unit_OA|ra~3_combout\ & ((\uut|unit_OA|rc\(3) & (!\uut|unit_OA|Add0~5\)) # 
-- (!\uut|unit_OA|rc\(3) & ((\uut|unit_OA|Add0~5\) # (GND)))))
-- \uut|unit_OA|Add0~7\ = CARRY((\uut|unit_OA|ra~3_combout\ & (!\uut|unit_OA|rc\(3) & !\uut|unit_OA|Add0~5\)) # (!\uut|unit_OA|ra~3_combout\ & ((!\uut|unit_OA|Add0~5\) # (!\uut|unit_OA|rc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~3_combout\,
	datab => \uut|unit_OA|rc\(3),
	datad => VCC,
	cin => \uut|unit_OA|Add0~5\,
	combout => \uut|unit_OA|Add0~6_combout\,
	cout => \uut|unit_OA|Add0~7\);

-- Location: LCCOMB_X14_Y20_N8
\uut|unit_OA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~6_combout\ = (\uut|unit_OA|Add0~6_combout\ & (!\uut|unit_OA|Add1~5\)) # (!\uut|unit_OA|Add0~6_combout\ & ((\uut|unit_OA|Add1~5\) # (GND)))
-- \uut|unit_OA|Add1~7\ = CARRY((!\uut|unit_OA|Add1~5\) # (!\uut|unit_OA|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add0~6_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add1~5\,
	combout => \uut|unit_OA|Add1~6_combout\,
	cout => \uut|unit_OA|Add1~7\);

-- Location: LCCOMB_X12_Y20_N30
\uut|unit_OA|rc~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~22_combout\ = (\uut|unit_OA|Equal2~0_combout\ & (((\uut|unit_OA|rc[3]~3_combout\) # (\uut|unit_OA|Add4~6_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & (\uut|unit_OA|Add0~6_combout\ & (!\uut|unit_OA|rc[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Add0~6_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|Add4~6_combout\,
	combout => \uut|unit_OA|rc~22_combout\);

-- Location: LCCOMB_X13_Y20_N8
\uut|unit_OA|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~6_combout\ = (\uut|unit_OA|Add4~6_combout\ & (!\uut|unit_OA|Add5~5\)) # (!\uut|unit_OA|Add4~6_combout\ & ((\uut|unit_OA|Add5~5\) # (GND)))
-- \uut|unit_OA|Add5~7\ = CARRY((!\uut|unit_OA|Add5~5\) # (!\uut|unit_OA|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add4~6_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add5~5\,
	combout => \uut|unit_OA|Add5~6_combout\,
	cout => \uut|unit_OA|Add5~7\);

-- Location: LCCOMB_X13_Y22_N2
\uut|unit_OA|rc~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~23_combout\ = (\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|rc~22_combout\ & ((\uut|unit_OA|Add5~6_combout\))) # (!\uut|unit_OA|rc~22_combout\ & (\uut|unit_OA|Add1~6_combout\)))) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- (((\uut|unit_OA|rc~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add1~6_combout\,
	datab => \uut|unit_OA|rc[3]~3_combout\,
	datac => \uut|unit_OA|rc~22_combout\,
	datad => \uut|unit_OA|Add5~6_combout\,
	combout => \uut|unit_OA|rc~23_combout\);

-- Location: LCCOMB_X13_Y22_N6
\uut|unit_OA|rc~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~24_combout\ = (\uut|unit_OA|rc~20_combout\) # ((\uut|unit_OA|rc~21_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~20_combout\,
	datab => \uut|unit_OA|rc~21_combout\,
	datac => \uut|unit_OA|rc~6_combout\,
	datad => \uut|unit_OA|rc~23_combout\,
	combout => \uut|unit_OA|rc~24_combout\);

-- Location: FF_X13_Y22_N7
\uut|unit_OA|rc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~24_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(3));

-- Location: LCCOMB_X10_Y22_N12
\uut|unit_OA|rc~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~26_combout\ = (\uut|unit_OA|rc\(3) & (\uut|unit_OA|Equal3~0_combout\ & (!\uut|unit_YA|y\(3) & \uut|unit_YA|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(3),
	datab => \uut|unit_OA|Equal3~0_combout\,
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_YA|y\(5),
	combout => \uut|unit_OA|rc~26_combout\);

-- Location: LCCOMB_X13_Y20_N10
\uut|unit_OA|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~8_combout\ = (\uut|unit_OA|Add4~8_combout\ & (\uut|unit_OA|Add5~7\ $ (GND))) # (!\uut|unit_OA|Add4~8_combout\ & (!\uut|unit_OA|Add5~7\ & VCC))
-- \uut|unit_OA|Add5~9\ = CARRY((\uut|unit_OA|Add4~8_combout\ & !\uut|unit_OA|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add4~8_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add5~7\,
	combout => \uut|unit_OA|Add5~8_combout\,
	cout => \uut|unit_OA|Add5~9\);

-- Location: LCCOMB_X13_Y23_N8
\uut|unit_OA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~8_combout\ = ((\uut|unit_OA|ra~2_combout\ $ (\uut|unit_OA|rc\(4) $ (!\uut|unit_OA|Add0~7\)))) # (GND)
-- \uut|unit_OA|Add0~9\ = CARRY((\uut|unit_OA|ra~2_combout\ & ((\uut|unit_OA|rc\(4)) # (!\uut|unit_OA|Add0~7\))) # (!\uut|unit_OA|ra~2_combout\ & (\uut|unit_OA|rc\(4) & !\uut|unit_OA|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~2_combout\,
	datab => \uut|unit_OA|rc\(4),
	datad => VCC,
	cin => \uut|unit_OA|Add0~7\,
	combout => \uut|unit_OA|Add0~8_combout\,
	cout => \uut|unit_OA|Add0~9\);

-- Location: LCCOMB_X14_Y20_N10
\uut|unit_OA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~8_combout\ = (\uut|unit_OA|Add0~8_combout\ & (\uut|unit_OA|Add1~7\ $ (GND))) # (!\uut|unit_OA|Add0~8_combout\ & (!\uut|unit_OA|Add1~7\ & VCC))
-- \uut|unit_OA|Add1~9\ = CARRY((\uut|unit_OA|Add0~8_combout\ & !\uut|unit_OA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add0~8_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add1~7\,
	combout => \uut|unit_OA|Add1~8_combout\,
	cout => \uut|unit_OA|Add1~9\);

-- Location: LCCOMB_X14_Y20_N20
\uut|unit_OA|rc~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~27_combout\ = (\uut|unit_OA|Equal2~0_combout\ & (((\uut|unit_OA|rc[3]~3_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|rc[3]~3_combout\ & (\uut|unit_OA|Add1~8_combout\)) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- ((\uut|unit_OA|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add1~8_combout\,
	datab => \uut|unit_OA|Equal2~0_combout\,
	datac => \uut|unit_OA|Add0~8_combout\,
	datad => \uut|unit_OA|rc[3]~3_combout\,
	combout => \uut|unit_OA|rc~27_combout\);

-- Location: LCCOMB_X14_Y20_N18
\uut|unit_OA|rc~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~28_combout\ = (\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|rc~27_combout\ & (\uut|unit_OA|Add5~8_combout\)) # (!\uut|unit_OA|rc~27_combout\ & ((\uut|unit_OA|Add4~8_combout\))))) # (!\uut|unit_OA|Equal2~0_combout\ & 
-- (((\uut|unit_OA|rc~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add5~8_combout\,
	datab => \uut|unit_OA|Equal2~0_combout\,
	datac => \uut|unit_OA|Add4~8_combout\,
	datad => \uut|unit_OA|rc~27_combout\,
	combout => \uut|unit_OA|rc~28_combout\);

-- Location: LCCOMB_X14_Y20_N24
\uut|unit_OA|rc~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~29_combout\ = (\uut|unit_OA|rc~25_combout\) # ((\uut|unit_OA|rc~26_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~25_combout\,
	datab => \uut|unit_OA|rc~26_combout\,
	datac => \uut|unit_OA|rc~6_combout\,
	datad => \uut|unit_OA|rc~28_combout\,
	combout => \uut|unit_OA|rc~29_combout\);

-- Location: FF_X14_Y20_N25
\uut|unit_OA|rc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~29_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(4));

-- Location: LCCOMB_X10_Y22_N30
\uut|unit_OA|rc~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~31_combout\ = (\uut|unit_YA|y\(5) & (\uut|unit_OA|rc\(4) & (!\uut|unit_YA|y\(3) & \uut|unit_OA|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(5),
	datab => \uut|unit_OA|rc\(4),
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_OA|Equal3~0_combout\,
	combout => \uut|unit_OA|rc~31_combout\);

-- Location: LCCOMB_X13_Y20_N28
\uut|unit_OA|rc~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~30_combout\ = (\uut|unit_OA|rc\(6) & \uut|unit_OA|rc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(6),
	datac => \uut|unit_OA|rc~0_combout\,
	combout => \uut|unit_OA|rc~30_combout\);

-- Location: LCCOMB_X13_Y23_N10
\uut|unit_OA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~10_combout\ = (\uut|unit_OA|ra~1_combout\ & ((\uut|unit_OA|rc\(5) & (\uut|unit_OA|Add0~9\ & VCC)) # (!\uut|unit_OA|rc\(5) & (!\uut|unit_OA|Add0~9\)))) # (!\uut|unit_OA|ra~1_combout\ & ((\uut|unit_OA|rc\(5) & (!\uut|unit_OA|Add0~9\)) # 
-- (!\uut|unit_OA|rc\(5) & ((\uut|unit_OA|Add0~9\) # (GND)))))
-- \uut|unit_OA|Add0~11\ = CARRY((\uut|unit_OA|ra~1_combout\ & (!\uut|unit_OA|rc\(5) & !\uut|unit_OA|Add0~9\)) # (!\uut|unit_OA|ra~1_combout\ & ((!\uut|unit_OA|Add0~9\) # (!\uut|unit_OA|rc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|ra~1_combout\,
	datab => \uut|unit_OA|rc\(5),
	datad => VCC,
	cin => \uut|unit_OA|Add0~9\,
	combout => \uut|unit_OA|Add0~10_combout\,
	cout => \uut|unit_OA|Add0~11\);

-- Location: LCCOMB_X14_Y20_N12
\uut|unit_OA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~10_combout\ = (\uut|unit_OA|Add0~10_combout\ & (!\uut|unit_OA|Add1~9\)) # (!\uut|unit_OA|Add0~10_combout\ & ((\uut|unit_OA|Add1~9\) # (GND)))
-- \uut|unit_OA|Add1~11\ = CARRY((!\uut|unit_OA|Add1~9\) # (!\uut|unit_OA|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add0~10_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add1~9\,
	combout => \uut|unit_OA|Add1~10_combout\,
	cout => \uut|unit_OA|Add1~11\);

-- Location: LCCOMB_X13_Y20_N22
\uut|unit_OA|rc~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~32_combout\ = (\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|Add4~10_combout\) # ((\uut|unit_OA|rc[3]~3_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & (((\uut|unit_OA|Add0~10_combout\ & !\uut|unit_OA|rc[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Add4~10_combout\,
	datac => \uut|unit_OA|Add0~10_combout\,
	datad => \uut|unit_OA|rc[3]~3_combout\,
	combout => \uut|unit_OA|rc~32_combout\);

-- Location: LCCOMB_X13_Y20_N12
\uut|unit_OA|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~10_combout\ = (\uut|unit_OA|Add4~10_combout\ & (!\uut|unit_OA|Add5~9\)) # (!\uut|unit_OA|Add4~10_combout\ & ((\uut|unit_OA|Add5~9\) # (GND)))
-- \uut|unit_OA|Add5~11\ = CARRY((!\uut|unit_OA|Add5~9\) # (!\uut|unit_OA|Add4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add4~10_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add5~9\,
	combout => \uut|unit_OA|Add5~10_combout\,
	cout => \uut|unit_OA|Add5~11\);

-- Location: LCCOMB_X13_Y20_N20
\uut|unit_OA|rc~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~33_combout\ = (\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|rc~32_combout\ & ((\uut|unit_OA|Add5~10_combout\))) # (!\uut|unit_OA|rc~32_combout\ & (\uut|unit_OA|Add1~10_combout\)))) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- (((\uut|unit_OA|rc~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc[3]~3_combout\,
	datab => \uut|unit_OA|Add1~10_combout\,
	datac => \uut|unit_OA|rc~32_combout\,
	datad => \uut|unit_OA|Add5~10_combout\,
	combout => \uut|unit_OA|rc~33_combout\);

-- Location: LCCOMB_X13_Y20_N0
\uut|unit_OA|rc~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~34_combout\ = (\uut|unit_OA|rc~31_combout\) # ((\uut|unit_OA|rc~30_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~31_combout\,
	datab => \uut|unit_OA|rc~30_combout\,
	datac => \uut|unit_OA|rc~6_combout\,
	datad => \uut|unit_OA|rc~33_combout\,
	combout => \uut|unit_OA|rc~34_combout\);

-- Location: FF_X13_Y20_N1
\uut|unit_OA|rc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~34_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(5));

-- Location: LCCOMB_X10_Y22_N8
\uut|unit_OA|rc~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~36_combout\ = (\uut|unit_YA|y\(5) & (\uut|unit_OA|rc\(5) & (!\uut|unit_YA|y\(3) & \uut|unit_OA|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(5),
	datab => \uut|unit_OA|rc\(5),
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_OA|Equal3~0_combout\,
	combout => \uut|unit_OA|rc~36_combout\);

-- Location: LCCOMB_X14_Y20_N0
\uut|unit_OA|rc~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~35_combout\ = (\uut|unit_OA|rc\(7) & \uut|unit_OA|rc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|rc\(7),
	datac => \uut|unit_OA|rc~0_combout\,
	combout => \uut|unit_OA|rc~35_combout\);

-- Location: LCCOMB_X13_Y23_N12
\uut|unit_OA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add0~12_combout\ = ((\uut|unit_OA|rc\(6) $ (\uut|unit_OA|ra~0_combout\ $ (!\uut|unit_OA|Add0~11\)))) # (GND)
-- \uut|unit_OA|Add0~13\ = CARRY((\uut|unit_OA|rc\(6) & ((\uut|unit_OA|ra~0_combout\) # (!\uut|unit_OA|Add0~11\))) # (!\uut|unit_OA|rc\(6) & (\uut|unit_OA|ra~0_combout\ & !\uut|unit_OA|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(6),
	datab => \uut|unit_OA|ra~0_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add0~11\,
	combout => \uut|unit_OA|Add0~12_combout\,
	cout => \uut|unit_OA|Add0~13\);

-- Location: LCCOMB_X14_Y20_N14
\uut|unit_OA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~12_combout\ = (\uut|unit_OA|Add0~12_combout\ & (\uut|unit_OA|Add1~11\ $ (GND))) # (!\uut|unit_OA|Add0~12_combout\ & (!\uut|unit_OA|Add1~11\ & VCC))
-- \uut|unit_OA|Add1~13\ = CARRY((\uut|unit_OA|Add0~12_combout\ & !\uut|unit_OA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add0~12_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add1~11\,
	combout => \uut|unit_OA|Add1~12_combout\,
	cout => \uut|unit_OA|Add1~13\);

-- Location: LCCOMB_X14_Y20_N22
\uut|unit_OA|rc~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~37_combout\ = (\uut|unit_OA|Equal2~0_combout\ & (((\uut|unit_OA|rc[3]~3_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|Add1~12_combout\))) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- (\uut|unit_OA|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Add0~12_combout\,
	datac => \uut|unit_OA|Add1~12_combout\,
	datad => \uut|unit_OA|rc[3]~3_combout\,
	combout => \uut|unit_OA|rc~37_combout\);

-- Location: LCCOMB_X13_Y20_N14
\uut|unit_OA|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~12_combout\ = (\uut|unit_OA|Add4~12_combout\ & (\uut|unit_OA|Add5~11\ $ (GND))) # (!\uut|unit_OA|Add4~12_combout\ & (!\uut|unit_OA|Add5~11\ & VCC))
-- \uut|unit_OA|Add5~13\ = CARRY((\uut|unit_OA|Add4~12_combout\ & !\uut|unit_OA|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add4~12_combout\,
	datad => VCC,
	cin => \uut|unit_OA|Add5~11\,
	combout => \uut|unit_OA|Add5~12_combout\,
	cout => \uut|unit_OA|Add5~13\);

-- Location: LCCOMB_X14_Y20_N28
\uut|unit_OA|rc~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~38_combout\ = (\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|rc~37_combout\ & ((\uut|unit_OA|Add5~12_combout\))) # (!\uut|unit_OA|rc~37_combout\ & (\uut|unit_OA|Add4~12_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & 
-- (((\uut|unit_OA|rc~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add4~12_combout\,
	datab => \uut|unit_OA|Equal2~0_combout\,
	datac => \uut|unit_OA|rc~37_combout\,
	datad => \uut|unit_OA|Add5~12_combout\,
	combout => \uut|unit_OA|rc~38_combout\);

-- Location: LCCOMB_X14_Y20_N30
\uut|unit_OA|rc~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~39_combout\ = (\uut|unit_OA|rc~36_combout\) # ((\uut|unit_OA|rc~35_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~36_combout\,
	datab => \uut|unit_OA|rc~35_combout\,
	datac => \uut|unit_OA|rc~6_combout\,
	datad => \uut|unit_OA|rc~38_combout\,
	combout => \uut|unit_OA|rc~39_combout\);

-- Location: FF_X14_Y20_N31
\uut|unit_OA|rc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~39_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(6));

-- Location: LCCOMB_X14_Y20_N16
\uut|unit_OA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add1~14_combout\ = \uut|unit_OA|Add1~13\ $ (\uut|unit_OA|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|unit_OA|Add0~14_combout\,
	cin => \uut|unit_OA|Add1~13\,
	combout => \uut|unit_OA|Add1~14_combout\);

-- Location: LCCOMB_X14_Y20_N26
\uut|unit_OA|rc~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~42_combout\ = (\uut|unit_OA|Equal1~0_combout\ & ((\uut|unit_OA|Add0~16_combout\ & ((\uut|unit_OA|Add1~14_combout\))) # (!\uut|unit_OA|Add0~16_combout\ & (\uut|unit_OA|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal1~0_combout\,
	datab => \uut|unit_OA|Add0~14_combout\,
	datac => \uut|unit_OA|Add0~16_combout\,
	datad => \uut|unit_OA|Add1~14_combout\,
	combout => \uut|unit_OA|rc~42_combout\);

-- Location: LCCOMB_X13_Y20_N26
\uut|unit_OA|rc~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~43_combout\ = (\uut|unit_OA|rc~42_combout\) # ((\uut|unit_OA|rc\(7) & (!\uut|unit_OA|Equal1~0_combout\ & !\uut|unit_OA|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(7),
	datab => \uut|unit_OA|Equal1~0_combout\,
	datac => \uut|unit_OA|Equal0~2_combout\,
	datad => \uut|unit_OA|rc~42_combout\,
	combout => \uut|unit_OA|rc~43_combout\);

-- Location: LCCOMB_X13_Y20_N16
\uut|unit_OA|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|Add5~14_combout\ = \uut|unit_OA|Add5~13\ $ (\uut|unit_OA|Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|unit_OA|Add4~14_combout\,
	cin => \uut|unit_OA|Add5~13\,
	combout => \uut|unit_OA|Add5~14_combout\);

-- Location: LCCOMB_X13_Y20_N18
\uut|unit_OA|rc~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~40_combout\ = (\uut|unit_OA|Add4~16_combout\ & ((\uut|unit_OA|Add5~14_combout\))) # (!\uut|unit_OA|Add4~16_combout\ & (\uut|unit_OA|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|unit_OA|Add4~14_combout\,
	datac => \uut|unit_OA|Add4~16_combout\,
	datad => \uut|unit_OA|Add5~14_combout\,
	combout => \uut|unit_OA|rc~40_combout\);

-- Location: LCCOMB_X13_Y20_N24
\uut|unit_OA|rc~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~41_combout\ = (\uut|unit_OA|Equal4~0_combout\ & (((\uut|unit_OA|rc\(6))))) # (!\uut|unit_OA|Equal4~0_combout\ & (\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|rc~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Equal4~0_combout\,
	datac => \uut|unit_OA|rc\(6),
	datad => \uut|unit_OA|rc~40_combout\,
	combout => \uut|unit_OA|rc~41_combout\);

-- Location: LCCOMB_X13_Y20_N30
\uut|unit_OA|rc~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~44_combout\ = (\uut|unit_OA|rc~41_combout\) # ((!\uut|unit_OA|Equal2~0_combout\ & (!\uut|unit_OA|Equal4~0_combout\ & \uut|unit_OA|rc~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Equal4~0_combout\,
	datac => \uut|unit_OA|rc~43_combout\,
	datad => \uut|unit_OA|rc~41_combout\,
	combout => \uut|unit_OA|rc~44_combout\);

-- Location: FF_X13_Y20_N31
\uut|unit_OA|rc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(7));

-- Location: LCCOMB_X10_Y22_N24
\uut|unit_OA|rc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~2_combout\ = (\uut|unit_YA|y\(5) & (\uut|unit_OA|Equal3~0_combout\ & (!\uut|unit_YA|y\(3) & \uut|unit_OA|rc\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(5),
	datab => \uut|unit_OA|Equal3~0_combout\,
	datac => \uut|unit_YA|y\(3),
	datad => \uut|unit_OA|rc\(7),
	combout => \uut|unit_OA|rc~2_combout\);

-- Location: LCCOMB_X13_Y23_N24
\uut|unit_OA|rc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~1_combout\ = (\uut|unit_OA|rc~0_combout\ & \uut|unit_OA|rc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|unit_OA|rc~0_combout\,
	datad => \uut|unit_OA|rc\(1),
	combout => \uut|unit_OA|rc~1_combout\);

-- Location: LCCOMB_X12_Y20_N2
\uut|unit_OA|rc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~4_combout\ = (\uut|unit_OA|Equal2~0_combout\ & ((\uut|unit_OA|Add4~0_combout\) # ((\uut|unit_OA|rc[3]~3_combout\)))) # (!\uut|unit_OA|Equal2~0_combout\ & (((!\uut|unit_OA|rc[3]~3_combout\ & \uut|unit_OA|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Equal2~0_combout\,
	datab => \uut|unit_OA|Add4~0_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|Add0~0_combout\,
	combout => \uut|unit_OA|rc~4_combout\);

-- Location: LCCOMB_X12_Y20_N0
\uut|unit_OA|rc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~5_combout\ = (\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|rc~4_combout\ & (\uut|unit_OA|Add5~0_combout\)) # (!\uut|unit_OA|rc~4_combout\ & ((\uut|unit_OA|Add1~0_combout\))))) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- (((\uut|unit_OA|rc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add5~0_combout\,
	datab => \uut|unit_OA|Add1~0_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|rc~4_combout\,
	combout => \uut|unit_OA|rc~5_combout\);

-- Location: LCCOMB_X13_Y22_N8
\uut|unit_OA|rc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~7_combout\ = (\uut|unit_OA|rc~2_combout\) # ((\uut|unit_OA|rc~1_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~2_combout\,
	datab => \uut|unit_OA|rc~1_combout\,
	datac => \uut|unit_OA|rc~6_combout\,
	datad => \uut|unit_OA|rc~5_combout\,
	combout => \uut|unit_OA|rc~7_combout\);

-- Location: FF_X13_Y22_N9
\uut|unit_OA|rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~7_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(0));

-- Location: LCCOMB_X10_Y22_N14
\uut|unit_OA|rc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~11_combout\ = (!\uut|unit_YA|y\(3) & (\uut|unit_OA|Equal3~0_combout\ & (\uut|unit_OA|rc\(0) & \uut|unit_YA|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|y\(3),
	datab => \uut|unit_OA|Equal3~0_combout\,
	datac => \uut|unit_OA|rc\(0),
	datad => \uut|unit_YA|y\(5),
	combout => \uut|unit_OA|rc~11_combout\);

-- Location: LCCOMB_X13_Y23_N30
\uut|unit_OA|rc~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~10_combout\ = (\uut|unit_OA|rc~0_combout\ & \uut|unit_OA|rc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|unit_OA|rc~0_combout\,
	datad => \uut|unit_OA|rc\(2),
	combout => \uut|unit_OA|rc~10_combout\);

-- Location: LCCOMB_X12_Y20_N6
\uut|unit_OA|rc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~12_combout\ = (\uut|unit_OA|rc[3]~3_combout\ & (((\uut|unit_OA|Equal2~0_combout\)))) # (!\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|Equal2~0_combout\ & (\uut|unit_OA|Add4~2_combout\)) # (!\uut|unit_OA|Equal2~0_combout\ & 
-- ((\uut|unit_OA|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add4~2_combout\,
	datab => \uut|unit_OA|Add0~2_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|Equal2~0_combout\,
	combout => \uut|unit_OA|rc~12_combout\);

-- Location: LCCOMB_X13_Y22_N0
\uut|unit_OA|rc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~13_combout\ = (\uut|unit_OA|rc[3]~3_combout\ & ((\uut|unit_OA|rc~12_combout\ & (\uut|unit_OA|Add5~2_combout\)) # (!\uut|unit_OA|rc~12_combout\ & ((\uut|unit_OA|Add1~2_combout\))))) # (!\uut|unit_OA|rc[3]~3_combout\ & 
-- (((\uut|unit_OA|rc~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|Add5~2_combout\,
	datab => \uut|unit_OA|Add1~2_combout\,
	datac => \uut|unit_OA|rc[3]~3_combout\,
	datad => \uut|unit_OA|rc~12_combout\,
	combout => \uut|unit_OA|rc~13_combout\);

-- Location: LCCOMB_X13_Y22_N10
\uut|unit_OA|rc~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|unit_OA|rc~14_combout\ = (\uut|unit_OA|rc~11_combout\) # ((\uut|unit_OA|rc~10_combout\) # ((\uut|unit_OA|rc~6_combout\ & \uut|unit_OA|rc~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc~11_combout\,
	datab => \uut|unit_OA|rc~6_combout\,
	datac => \uut|unit_OA|rc~10_combout\,
	datad => \uut|unit_OA|rc~13_combout\,
	combout => \uut|unit_OA|rc~14_combout\);

-- Location: FF_X13_Y22_N11
\uut|unit_OA|rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|unit_OA|rc~14_combout\,
	ena => \uut|unit_OA|rc~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|unit_OA|rc\(1));

-- Location: LCCOMB_X13_Y23_N26
\analise_unit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \analise_unit~0_combout\ = (\uut|unit_OA|rc\(7) & (((\uut|unit_OA|rc\(4) & \uut|unit_OA|rc\(0))) # (!\uut|unit_OA|rc\(2)))) # (!\uut|unit_OA|rc\(7) & (!\uut|unit_OA|rc\(2) & ((\uut|unit_OA|rc\(4)) # (\uut|unit_OA|rc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(7),
	datab => \uut|unit_OA|rc\(4),
	datac => \uut|unit_OA|rc\(0),
	datad => \uut|unit_OA|rc\(2),
	combout => \analise_unit~0_combout\);

-- Location: LCCOMB_X13_Y23_N20
\analise_unit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \analise_unit~1_combout\ = (\uut|unit_OA|rc\(6) & (((\uut|unit_OA|rc\(5) & \uut|unit_OA|rc\(2))) # (!\uut|unit_OA|rc\(3)))) # (!\uut|unit_OA|rc\(6) & (!\uut|unit_OA|rc\(3) & ((\uut|unit_OA|rc\(5)) # (\uut|unit_OA|rc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(6),
	datab => \uut|unit_OA|rc\(3),
	datac => \uut|unit_OA|rc\(5),
	datad => \uut|unit_OA|rc\(2),
	combout => \analise_unit~1_combout\);

-- Location: LCCOMB_X13_Y23_N18
\analise_unit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \analise_unit~2_combout\ = (\uut|unit_OA|rc\(1) & (\uut|unit_OA|rc\(3) & (\analise_unit~0_combout\ & \analise_unit~1_combout\))) # (!\uut|unit_OA|rc\(1) & (!\uut|unit_OA|rc\(3) & (!\analise_unit~0_combout\ & !\analise_unit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(1),
	datab => \uut|unit_OA|rc\(3),
	datac => \analise_unit~0_combout\,
	datad => \analise_unit~1_combout\,
	combout => \analise_unit~2_combout\);

-- Location: LCCOMB_X9_Y22_N2
\actual_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result~0_combout\ = \gen_test:cnt[7]~q\ $ (\gen_test:cnt[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \actual_result~0_combout\);

-- Location: LCCOMB_X10_Y22_N2
\Mult0|mult_core|decoder_node[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][2]~combout\ = LCELL((\gen_test:cnt[1]~q\ & (!\gen_test:cnt[3]~q\ & (\gen_test:cnt[6]~q\ $ (\gen_test:cnt[7]~q\)))) # (!\gen_test:cnt[1]~q\ & (\gen_test:cnt[3]~q\ & (\gen_test:cnt[6]~q\ $ (\gen_test:cnt[7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[1]~q\,
	datab => \gen_test:cnt[6]~q\,
	datac => \gen_test:cnt[3]~q\,
	datad => \gen_test:cnt[7]~q\,
	combout => \Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X9_Y22_N4
\Mult0|mult_core|decoder_node[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][1]~combout\ = LCELL((\gen_test:cnt[5]~q\ & (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[1]~q\ $ (\gen_test:cnt[3]~q\)))) # (!\gen_test:cnt[5]~q\ & (\gen_test:cnt[7]~q\ & (\gen_test:cnt[1]~q\ $ (\gen_test:cnt[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \gen_test:cnt[1]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X8_Y22_N28
\Mult0|mult_core|decoder_node[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][2]~combout\ = LCELL((\gen_test:cnt[0]~q\ & (!\gen_test:cnt[3]~q\ & (\gen_test:cnt[6]~q\ $ (\gen_test:cnt[7]~q\)))) # (!\gen_test:cnt[0]~q\ & (\gen_test:cnt[3]~q\ & (\gen_test:cnt[6]~q\ $ (\gen_test:cnt[7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[0]~q\,
	datab => \gen_test:cnt[6]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X9_Y22_N30
\Mult0|mult_core|decoder_node[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][1]~combout\ = LCELL((\gen_test:cnt[7]~q\ & (!\gen_test:cnt[5]~q\ & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[0]~q\)))) # (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[5]~q\ & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datab => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[5]~q\,
	datad => \gen_test:cnt[0]~q\,
	combout => \Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X14_Y22_N8
\Mult0|mult_core|decoder_node[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][0]~combout\ = LCELL((\gen_test:cnt[7]~q\ & (!\gen_test:cnt[4]~q\ & (\gen_test:cnt[1]~q\ $ (\gen_test:cnt[3]~q\)))) # (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[4]~q\ & (\gen_test:cnt[1]~q\ $ (\gen_test:cnt[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datab => \gen_test:cnt[4]~q\,
	datac => \gen_test:cnt[1]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X8_Y22_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|decoder_node[0][1]~combout\ & (\Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|decoder_node[0][1]~combout\ & \Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X8_Y22_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][2]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|decoder_node[0][2]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|decoder_node[1][1]~combout\ & (!\Mult0|mult_core|decoder_node[0][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X8_Y22_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult0|mult_core|decoder_node[1][2]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult0|mult_core|decoder_node[1][2]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|decoder_node[1][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X8_Y22_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X8_Y22_N16
\Mult0|mult_core|decoder_node[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][2]~combout\ = LCELL((\gen_test:cnt[2]~q\ & (!\gen_test:cnt[3]~q\ & (\gen_test:cnt[7]~q\ $ (\gen_test:cnt[6]~q\)))) # (!\gen_test:cnt[2]~q\ & (\gen_test:cnt[3]~q\ & (\gen_test:cnt[7]~q\ $ (\gen_test:cnt[6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[2]~q\,
	datab => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[6]~q\,
	combout => \Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X9_Y22_N6
\Mult0|mult_core|decoder_node[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][1]~combout\ = LCELL((\gen_test:cnt[5]~q\ & (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[2]~q\ $ (\gen_test:cnt[3]~q\)))) # (!\gen_test:cnt[5]~q\ & (\gen_test:cnt[7]~q\ & (\gen_test:cnt[2]~q\ $ (\gen_test:cnt[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[5]~q\,
	datab => \gen_test:cnt[2]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[3]~q\,
	combout => \Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X8_Y22_N18
\Mult0|mult_core|decoder_node[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][0]~combout\ = LCELL((\gen_test:cnt[7]~q\ & (!\gen_test:cnt[4]~q\ & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[2]~q\)))) # (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[4]~q\ & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datab => \gen_test:cnt[4]~q\,
	datac => \gen_test:cnt[3]~q\,
	datad => \gen_test:cnt[2]~q\,
	combout => \Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X8_Y22_N2
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Mult0|mult_core|decoder_node[2][0]~combout\ $ (VCC))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Mult0|mult_core|decoder_node[2][0]~combout\ & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \Mult0|mult_core|decoder_node[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|decoder_node[2][0]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X8_Y22_N4
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|decoder_node[2][1]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][1]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|decoder_node[2][1]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|decoder_node[2][1]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][1]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X8_Y22_N6
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\Mult0|mult_core|decoder_node[2][2]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult0|mult_core|decoder_node[2][2]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X8_Y22_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X9_Y22_N18
\Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = \uut|unit_OA|rc\(6) $ (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[7]~q\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(6),
	datab => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X9_Y22_N22
\okay~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~4_combout\ = (\Equal4~5_combout\ & ((\uut|unit_OA|rc\(7) & (\uut|unit_OA|rc\(0) & !\actual_result~0_combout\)) # (!\uut|unit_OA|rc\(7) & (!\uut|unit_OA|rc\(0) & \actual_result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(7),
	datab => \uut|unit_OA|rc\(0),
	datac => \actual_result~0_combout\,
	datad => \Equal4~5_combout\,
	combout => \okay~4_combout\);

-- Location: LCCOMB_X8_Y22_N30
\actual_result:mbin[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result:mbin[2]~0_combout\ = \gen_test:cnt[3]~q\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (\gen_test:cnt[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[3]~q\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \gen_test:cnt[7]~q\,
	combout => \actual_result:mbin[2]~0_combout\);

-- Location: LCCOMB_X9_Y22_N26
\Mult0|mult_core|decoder_node[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][0]~combout\ = LCELL((\gen_test:cnt[4]~q\ & (!\gen_test:cnt[7]~q\ & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[0]~q\)))) # (!\gen_test:cnt[4]~q\ & (\gen_test:cnt[7]~q\ & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[4]~q\,
	datab => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \gen_test:cnt[0]~q\,
	combout => \Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X8_Y22_N0
\actual_result:mbin[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result:mbin[1]~0_combout\ = \gen_test:cnt[3]~q\ $ (\gen_test:cnt[7]~q\ $ (\Mult0|mult_core|decoder_node[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[3]~q\,
	datac => \gen_test:cnt[7]~q\,
	datad => \Mult0|mult_core|decoder_node[0][0]~combout\,
	combout => \actual_result:mbin[1]~0_combout\);

-- Location: LCCOMB_X8_Y22_N14
\okay~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~2_combout\ = (\uut|unit_OA|rc\(1) & (!\actual_result:mbin[1]~0_combout\ & (\uut|unit_OA|rc\(2) $ (\actual_result:mbin[2]~0_combout\)))) # (!\uut|unit_OA|rc\(1) & (\actual_result:mbin[1]~0_combout\ & (\uut|unit_OA|rc\(2) $ 
-- (\actual_result:mbin[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(1),
	datab => \uut|unit_OA|rc\(2),
	datac => \actual_result:mbin[2]~0_combout\,
	datad => \actual_result:mbin[1]~0_combout\,
	combout => \okay~2_combout\);

-- Location: LCCOMB_X10_Y22_N18
\Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = \gen_test:cnt[3]~q\ $ (\gen_test:cnt[7]~q\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\uut|unit_OA|rc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[3]~q\,
	datab => \gen_test:cnt[7]~q\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \uut|unit_OA|rc\(3),
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X9_Y22_N16
\actual_result:mbin[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result:mbin[4]~2_combout\ = \gen_test:cnt[7]~q\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ $ (\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \gen_test:cnt[3]~q\,
	combout => \actual_result:mbin[4]~2_combout\);

-- Location: LCCOMB_X9_Y22_N14
\okay~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~3_combout\ = (\okay~2_combout\ & (\Equal4~4_combout\ & (\uut|unit_OA|rc\(4) $ (\actual_result:mbin[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \okay~2_combout\,
	datab => \Equal4~4_combout\,
	datac => \uut|unit_OA|rc\(4),
	datad => \actual_result:mbin[4]~2_combout\,
	combout => \okay~3_combout\);

-- Location: LCCOMB_X9_Y22_N20
\actual_result:mbin[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result:mbin[5]~2_combout\ = \gen_test:cnt[7]~q\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \gen_test:cnt[3]~q\,
	combout => \actual_result:mbin[5]~2_combout\);

-- Location: LCCOMB_X9_Y22_N28
\okay~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~5_combout\ = (\okay~4_combout\ & (\okay~3_combout\ & (\uut|unit_OA|rc\(5) $ (\actual_result:mbin[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \okay~4_combout\,
	datab => \uut|unit_OA|rc\(5),
	datac => \okay~3_combout\,
	datad => \actual_result:mbin[5]~2_combout\,
	combout => \okay~5_combout\);

-- Location: LCCOMB_X10_Y22_N0
\okay~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~6_combout\ = (\uut|unit_OA|rc\(0) & (\uut|unit_OA|rc\(7) & (\gen_test:cnt[3]~q\ $ (\gen_test:cnt[7]~q\)))) # (!\uut|unit_OA|rc\(0) & (!\uut|unit_OA|rc\(7) & (\gen_test:cnt[3]~q\ $ (!\gen_test:cnt[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[3]~q\,
	datab => \gen_test:cnt[7]~q\,
	datac => \uut|unit_OA|rc\(0),
	datad => \uut|unit_OA|rc\(7),
	combout => \okay~6_combout\);

-- Location: LCCOMB_X9_Y22_N12
\okay~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~7_combout\ = (\okay~6_combout\ & (!\Equal4~5_combout\ & (\uut|unit_OA|rc\(5) $ (!\actual_result:mbin[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \okay~6_combout\,
	datab => \Equal4~5_combout\,
	datac => \uut|unit_OA|rc\(5),
	datad => \actual_result:mbin[5]~2_combout\,
	combout => \okay~7_combout\);

-- Location: LCCOMB_X8_Y22_N12
\okay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~0_combout\ = (\uut|unit_OA|rc\(1) & (\actual_result:mbin[1]~0_combout\ & (\uut|unit_OA|rc\(2) $ (!\actual_result:mbin[2]~0_combout\)))) # (!\uut|unit_OA|rc\(1) & (!\actual_result:mbin[1]~0_combout\ & (\uut|unit_OA|rc\(2) $ 
-- (!\actual_result:mbin[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_OA|rc\(1),
	datab => \uut|unit_OA|rc\(2),
	datac => \actual_result:mbin[2]~0_combout\,
	datad => \actual_result:mbin[1]~0_combout\,
	combout => \okay~0_combout\);

-- Location: LCCOMB_X9_Y22_N0
\okay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~1_combout\ = (\okay~0_combout\ & (!\Equal4~4_combout\ & (\actual_result:mbin[4]~2_combout\ $ (!\uut|unit_OA|rc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \okay~0_combout\,
	datab => \actual_result:mbin[4]~2_combout\,
	datac => \uut|unit_OA|rc\(4),
	datad => \Equal4~4_combout\,
	combout => \okay~1_combout\);

-- Location: LCCOMB_X9_Y22_N10
\okay~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~8_combout\ = (\analise_unit~2_combout\ & ((\okay~5_combout\) # ((\okay~7_combout\ & \okay~1_combout\)))) # (!\analise_unit~2_combout\ & (((\okay~7_combout\ & \okay~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \analise_unit~2_combout\,
	datab => \okay~5_combout\,
	datac => \okay~7_combout\,
	datad => \okay~1_combout\,
	combout => \okay~8_combout\);

-- Location: LCCOMB_X9_Y22_N24
\okay~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \okay~9_combout\ = (\uut|unit_YA|state.s4~q\ & ((!\okay~8_combout\))) # (!\uut|unit_YA|state.s4~q\ & (\okay~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|state.s4~q\,
	datac => \okay~reg0_q\,
	datad => \okay~8_combout\,
	combout => \okay~9_combout\);

-- Location: FF_X9_Y22_N25
\okay~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \okay~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \okay~reg0_q\);

-- Location: LCCOMB_X9_Y22_N8
\defect~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \defect~0_combout\ = (\defect~reg0_q\) # ((\uut|unit_YA|state.s4~q\ & !\okay~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|unit_YA|state.s4~q\,
	datac => \defect~reg0_q\,
	datad => \okay~8_combout\,
	combout => \defect~0_combout\);

-- Location: FF_X9_Y22_N9
\defect~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \defect~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \defect~reg0_q\);

-- Location: LCCOMB_X14_Y22_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y22_N16
\actual_result:mbin[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result:mbin[3]~2_combout\ = \gen_test:cnt[3]~q\ $ (\gen_test:cnt[7]~q\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[3]~q\,
	datab => \gen_test:cnt[7]~q\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \actual_result:mbin[3]~2_combout\);

-- Location: LCCOMB_X8_Y22_N10
\actual_result:mbin[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \actual_result:mbin[6]~2_combout\ = \gen_test:cnt[7]~q\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ (\gen_test:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_test:cnt[7]~q\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \gen_test:cnt[3]~q\,
	combout => \actual_result:mbin[6]~2_combout\);

ww_sko <= \sko~output_o\;

ww_sno <= \sno~output_o\;

ww_okay <= \okay~output_o\;

ww_defect <= \defect~output_o\;

ww_finish <= \finish~output_o\;

ww_real_rez(0) <= \real_rez[0]~output_o\;

ww_real_rez(1) <= \real_rez[1]~output_o\;

ww_real_rez(2) <= \real_rez[2]~output_o\;

ww_real_rez(3) <= \real_rez[3]~output_o\;

ww_real_rez(4) <= \real_rez[4]~output_o\;

ww_real_rez(5) <= \real_rez[5]~output_o\;

ww_real_rez(6) <= \real_rez[6]~output_o\;

ww_real_rez(7) <= \real_rez[7]~output_o\;

ww_true_rez(0) <= \true_rez[0]~output_o\;

ww_true_rez(1) <= \true_rez[1]~output_o\;

ww_true_rez(2) <= \true_rez[2]~output_o\;

ww_true_rez(3) <= \true_rez[3]~output_o\;

ww_true_rez(4) <= \true_rez[4]~output_o\;

ww_true_rez(5) <= \true_rez[5]~output_o\;

ww_true_rez(6) <= \true_rez[6]~output_o\;

ww_true_rez(7) <= \true_rez[7]~output_o\;

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;
END structure;


