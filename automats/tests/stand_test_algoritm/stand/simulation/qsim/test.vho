-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "08/06/2019 14:02:31"

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

ENTITY 	test_alg IS
    PORT (
	defect : OUT std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	okey : OUT std_logic;
	finish : OUT std_logic;
	rez_test : OUT std_logic_vector(7 DOWNTO 0);
	rez_true : OUT std_logic_vector(7 DOWNTO 0);
	x : OUT std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic_vector(3 DOWNTO 0)
	);
END test_alg;

-- Design Ports Information
-- defect	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- okey	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[7]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[6]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_test[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[6]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[5]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rez_true[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_alg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_defect : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_okey : std_logic;
SIGNAL ww_finish : std_logic;
SIGNAL ww_rez_test : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rez_true : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \defect~output_o\ : std_logic;
SIGNAL \okey~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \rez_test[7]~output_o\ : std_logic;
SIGNAL \rez_test[6]~output_o\ : std_logic;
SIGNAL \rez_test[5]~output_o\ : std_logic;
SIGNAL \rez_test[4]~output_o\ : std_logic;
SIGNAL \rez_test[3]~output_o\ : std_logic;
SIGNAL \rez_test[2]~output_o\ : std_logic;
SIGNAL \rez_test[1]~output_o\ : std_logic;
SIGNAL \rez_test[0]~output_o\ : std_logic;
SIGNAL \rez_true[7]~output_o\ : std_logic;
SIGNAL \rez_true[6]~output_o\ : std_logic;
SIGNAL \rez_true[5]~output_o\ : std_logic;
SIGNAL \rez_true[4]~output_o\ : std_logic;
SIGNAL \rez_true[3]~output_o\ : std_logic;
SIGNAL \rez_true[2]~output_o\ : std_logic;
SIGNAL \rez_true[1]~output_o\ : std_logic;
SIGNAL \rez_true[0]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|cnt[4]~18\ : std_logic;
SIGNAL \inst|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst|cnt[5]~20\ : std_logic;
SIGNAL \inst|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst|cnt[6]~22\ : std_logic;
SIGNAL \inst|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|cnt[3]~10_combout\ : std_logic;
SIGNAL \inst|cnt[0]~9\ : std_logic;
SIGNAL \inst|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst|cnt[1]~12\ : std_logic;
SIGNAL \inst|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst|cnt[2]~14\ : std_logic;
SIGNAL \inst|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst|cnt[3]~16\ : std_logic;
SIGNAL \inst|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst1|rc~3_combout\ : std_logic;
SIGNAL \inst1|rc~4_combout\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~15_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|rc~5_combout\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Add2~17_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Add2~18_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|Add2~19_combout\ : std_logic;
SIGNAL \inst1|rc~6_combout\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Add3~19_combout\ : std_logic;
SIGNAL \inst26|xp[1]~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst26|xp[2]~1_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst26|xp[3]~0_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst26|Equal0~1_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst26|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst26|Equal0~0_combout\ : std_logic;
SIGNAL \inst26|rez_true[7]~3_combout\ : std_logic;
SIGNAL \inst26|process_0~0_combout\ : std_logic;
SIGNAL \inst26|Add2~0_combout\ : std_logic;
SIGNAL \inst26|Add2~2\ : std_logic;
SIGNAL \inst26|Add2~4\ : std_logic;
SIGNAL \inst26|Add2~6\ : std_logic;
SIGNAL \inst26|Add2~8\ : std_logic;
SIGNAL \inst26|Add2~9_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|rc~1_combout\ : std_logic;
SIGNAL \inst1|rc~2_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Add1~13_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|Add2~15_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Add2~16_combout\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~11\ : std_logic;
SIGNAL \inst1|Add3~12_combout\ : std_logic;
SIGNAL \inst1|Add3~17_combout\ : std_logic;
SIGNAL \inst26|Add2~10\ : std_logic;
SIGNAL \inst26|Add2~12\ : std_logic;
SIGNAL \inst26|Add2~13_combout\ : std_logic;
SIGNAL \inst24|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|Add3~18_combout\ : std_logic;
SIGNAL \inst26|Add2~11_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|Add3~22_combout\ : std_logic;
SIGNAL \inst26|Add2~3_combout\ : std_logic;
SIGNAL \inst26|Add2~1_combout\ : std_logic;
SIGNAL \inst24|Equal0~3_combout\ : std_logic;
SIGNAL \inst24|Equal0~4_combout\ : std_logic;
SIGNAL \inst26|rez_true[7]~2_combout\ : std_logic;
SIGNAL \inst1|rc~0_combout\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add2~11\ : std_logic;
SIGNAL \inst1|Add2~12_combout\ : std_logic;
SIGNAL \inst1|Add2~14_combout\ : std_logic;
SIGNAL \inst1|Add3~13\ : std_logic;
SIGNAL \inst1|Add3~14_combout\ : std_logic;
SIGNAL \inst1|Add3~16_combout\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|Add3~21_combout\ : std_logic;
SIGNAL \inst26|Add2~5_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Add3~20_combout\ : std_logic;
SIGNAL \inst26|Add2~7_combout\ : std_logic;
SIGNAL \inst24|Equal0~1_combout\ : std_logic;
SIGNAL \inst24|Equal0~2_combout\ : std_logic;
SIGNAL \inst24|defect~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst24|defect~q\ : std_logic;
SIGNAL \inst24|Equal0~5_combout\ : std_logic;
SIGNAL \inst24|Equal0~6_combout\ : std_logic;
SIGNAL \inst24|okey~q\ : std_logic;
SIGNAL \inst|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst26|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst26|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst26|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst24|ALT_INV_okey~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

defect <= ww_defect;
ww_reset <= reset;
ww_clk <= clk;
okey <= ww_okey;
finish <= ww_finish;
rez_test <= ww_rez_test;
rez_true <= ww_rez_true;
x <= ww_x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst24|ALT_INV_okey~q\ <= NOT \inst24|okey~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N9
\defect~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|defect~q\,
	devoe => ww_devoe,
	o => \defect~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\okey~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|ALT_INV_okey~q\,
	devoe => ww_devoe,
	o => \okey~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\finish~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \finish~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\rez_test[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~16_combout\,
	devoe => ww_devoe,
	o => \rez_test[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\rez_test[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~17_combout\,
	devoe => ww_devoe,
	o => \rez_test[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\rez_test[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~18_combout\,
	devoe => ww_devoe,
	o => \rez_test[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\rez_test[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~19_combout\,
	devoe => ww_devoe,
	o => \rez_test[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\rez_test[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~20_combout\,
	devoe => ww_devoe,
	o => \rez_test[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\rez_test[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~21_combout\,
	devoe => ww_devoe,
	o => \rez_test[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\rez_test[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Add3~22_combout\,
	devoe => ww_devoe,
	o => \rez_test[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\rez_test[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \rez_test[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\rez_true[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|rez_true[7]~2_combout\,
	devoe => ww_devoe,
	o => \rez_true[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\rez_true[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~13_combout\,
	devoe => ww_devoe,
	o => \rez_true[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\rez_true[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~11_combout\,
	devoe => ww_devoe,
	o => \rez_true[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\rez_true[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~9_combout\,
	devoe => ww_devoe,
	o => \rez_true[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\rez_true[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~7_combout\,
	devoe => ww_devoe,
	o => \rez_true[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\rez_true[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~5_combout\,
	devoe => ww_devoe,
	o => \rez_true[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\rez_true[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~3_combout\,
	devoe => ww_devoe,
	o => \rez_true[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\rez_true[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|Add2~1_combout\,
	devoe => ww_devoe,
	o => \rez_true[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(3),
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(2),
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(1),
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(0),
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(7),
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(6),
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(5),
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cnt\(4),
	devoe => ww_devoe,
	o => \y[0]~output_o\);

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

-- Location: LCCOMB_X16_Y18_N4
\inst|cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~8_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~9\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~8_combout\,
	cout => \inst|cnt[0]~9\);

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

-- Location: LCCOMB_X13_Y20_N0
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt\(0) & \inst|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => \inst|cnt\(4),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y18_N12
\inst|cnt[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~17_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~16\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~16\ & VCC))
-- \inst|cnt[4]~18\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~16\,
	combout => \inst|cnt[4]~17_combout\,
	cout => \inst|cnt[4]~18\);

-- Location: LCCOMB_X16_Y18_N14
\inst|cnt[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~19_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~18\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~18\) # (GND)))
-- \inst|cnt[5]~20\ = CARRY((!\inst|cnt[4]~18\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~18\,
	combout => \inst|cnt[5]~19_combout\,
	cout => \inst|cnt[5]~20\);

-- Location: FF_X16_Y18_N15
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[5]~19_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X16_Y18_N16
\inst|cnt[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~21_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~20\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~20\ & VCC))
-- \inst|cnt[6]~22\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~20\,
	combout => \inst|cnt[6]~21_combout\,
	cout => \inst|cnt[6]~22\);

-- Location: FF_X16_Y18_N17
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[6]~21_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X16_Y18_N18
\inst|cnt[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~23_combout\ = \inst|cnt\(7) $ (\inst|cnt[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	cin => \inst|cnt[6]~22\,
	combout => \inst|cnt[7]~23_combout\);

-- Location: FF_X16_Y18_N19
\inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[7]~23_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(7));

-- Location: LCCOMB_X13_Y20_N6
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|cnt\(5) & (\inst|cnt\(7) & (\inst|cnt\(3) & \inst|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(3),
	datad => \inst|cnt\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y20_N12
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~0_combout\ & (\inst|cnt\(1) & (\inst|cnt\(2) & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(2),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y18_N0
\inst|cnt[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~10_combout\ = (\reset~input_o\) # (!\inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|Equal0~2_combout\,
	combout => \inst|cnt[3]~10_combout\);

-- Location: FF_X16_Y18_N5
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[0]~8_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X16_Y18_N6
\inst|cnt[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~11_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~9\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~9\) # (GND)))
-- \inst|cnt[1]~12\ = CARRY((!\inst|cnt[0]~9\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~9\,
	combout => \inst|cnt[1]~11_combout\,
	cout => \inst|cnt[1]~12\);

-- Location: FF_X16_Y18_N7
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[1]~11_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X16_Y18_N8
\inst|cnt[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~13_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~12\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~12\ & VCC))
-- \inst|cnt[2]~14\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~12\,
	combout => \inst|cnt[2]~13_combout\,
	cout => \inst|cnt[2]~14\);

-- Location: FF_X16_Y18_N9
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[2]~13_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X16_Y18_N10
\inst|cnt[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~15_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~14\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~14\) # (GND)))
-- \inst|cnt[3]~16\ = CARRY((!\inst|cnt[2]~14\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~14\,
	combout => \inst|cnt[3]~15_combout\,
	cout => \inst|cnt[3]~16\);

-- Location: FF_X16_Y18_N11
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[3]~15_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: FF_X16_Y18_N13
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[4]~17_combout\,
	sclr => \reset~input_o\,
	ena => \inst|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X16_Y20_N12
\inst1|rc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~3_combout\ = (\inst|cnt\(7) & (\inst|cnt\(1) $ (\inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(0),
	combout => \inst1|rc~3_combout\);

-- Location: LCCOMB_X16_Y20_N6
\inst1|rc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~4_combout\ = (\inst|cnt\(0) & \inst|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(7),
	combout => \inst1|rc~4_combout\);

-- Location: LCCOMB_X16_Y20_N16
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|rc~4_combout\ & (\inst|cnt\(1) $ (VCC))) # (!\inst1|rc~4_combout\ & (\inst|cnt\(1) & VCC))
-- \inst1|Add1~3\ = CARRY((\inst1|rc~4_combout\ & \inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc~4_combout\,
	datab => \inst|cnt\(1),
	datad => VCC,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X16_Y20_N18
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|rc~3_combout\ & ((\inst|cnt\(2) & (\inst1|Add1~3\ & VCC)) # (!\inst|cnt\(2) & (!\inst1|Add1~3\)))) # (!\inst1|rc~3_combout\ & ((\inst|cnt\(2) & (!\inst1|Add1~3\)) # (!\inst|cnt\(2) & ((\inst1|Add1~3\) # (GND)))))
-- \inst1|Add1~5\ = CARRY((\inst1|rc~3_combout\ & (!\inst|cnt\(2) & !\inst1|Add1~3\)) # (!\inst1|rc~3_combout\ & ((!\inst1|Add1~3\) # (!\inst|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc~3_combout\,
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X16_Y20_N4
\inst1|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~15_combout\ = (\inst|cnt\(6) & ((\inst1|Add1~4_combout\))) # (!\inst|cnt\(6) & (\inst1|rc~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc~3_combout\,
	datab => \inst|cnt\(6),
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|Add1~15_combout\);

-- Location: LCCOMB_X16_Y20_N14
\inst1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst|cnt\(6) & (((\inst1|Add1~2_combout\)))) # (!\inst|cnt\(6) & (\inst|cnt\(7) & (\inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(6),
	datac => \inst|cnt\(0),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~16_combout\);

-- Location: LCCOMB_X13_Y20_N2
\inst1|rc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~5_combout\ = (\inst|cnt\(6) & \inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datad => \inst|cnt\(0),
	combout => \inst1|rc~5_combout\);

-- Location: LCCOMB_X13_Y20_N16
\inst1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst|cnt\(1) & (\inst1|rc~5_combout\ $ (VCC))) # (!\inst|cnt\(1) & (\inst1|rc~5_combout\ & VCC))
-- \inst1|Add2~3\ = CARRY((\inst|cnt\(1) & \inst1|rc~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datab => \inst1|rc~5_combout\,
	datad => VCC,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X13_Y20_N18
\inst1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst1|Add1~16_combout\ & ((\inst|cnt\(2) & (\inst1|Add2~3\ & VCC)) # (!\inst|cnt\(2) & (!\inst1|Add2~3\)))) # (!\inst1|Add1~16_combout\ & ((\inst|cnt\(2) & (!\inst1|Add2~3\)) # (!\inst|cnt\(2) & ((\inst1|Add2~3\) # (GND)))))
-- \inst1|Add2~5\ = CARRY((\inst1|Add1~16_combout\ & (!\inst|cnt\(2) & !\inst1|Add2~3\)) # (!\inst1|Add1~16_combout\ & ((!\inst1|Add2~3\) # (!\inst|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~16_combout\,
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X13_Y20_N20
\inst1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = ((\inst|cnt\(3) $ (\inst1|Add1~15_combout\ $ (!\inst1|Add2~5\)))) # (GND)
-- \inst1|Add2~7\ = CARRY((\inst|cnt\(3) & ((\inst1|Add1~15_combout\) # (!\inst1|Add2~5\))) # (!\inst|cnt\(3) & (\inst1|Add1~15_combout\ & !\inst1|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst1|Add1~15_combout\,
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X12_Y20_N26
\inst1|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~17_combout\ = (\inst|cnt\(5) & ((\inst1|Add2~6_combout\))) # (!\inst|cnt\(5) & (\inst1|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst1|Add1~15_combout\,
	datac => \inst1|Add2~6_combout\,
	combout => \inst1|Add2~17_combout\);

-- Location: LCCOMB_X12_Y20_N16
\inst1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~18_combout\ = (\inst|cnt\(5) & ((\inst1|Add2~4_combout\))) # (!\inst|cnt\(5) & (\inst1|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~16_combout\,
	datac => \inst|cnt\(5),
	datad => \inst1|Add2~4_combout\,
	combout => \inst1|Add2~18_combout\);

-- Location: LCCOMB_X13_Y20_N4
\inst1|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~19_combout\ = (\inst|cnt\(5) & (((\inst1|Add2~2_combout\)))) # (!\inst|cnt\(5) & (\inst|cnt\(6) & (\inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|cnt\(6),
	datac => \inst|cnt\(0),
	datad => \inst1|Add2~2_combout\,
	combout => \inst1|Add2~19_combout\);

-- Location: LCCOMB_X13_Y20_N10
\inst1|rc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~6_combout\ = (\inst|cnt\(0) & \inst|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => \inst|cnt\(5),
	combout => \inst1|rc~6_combout\);

-- Location: LCCOMB_X12_Y20_N0
\inst1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst|cnt\(1) & (\inst1|rc~6_combout\ $ (VCC))) # (!\inst|cnt\(1) & (\inst1|rc~6_combout\ & VCC))
-- \inst1|Add3~3\ = CARRY((\inst|cnt\(1) & \inst1|rc~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datab => \inst1|rc~6_combout\,
	datad => VCC,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: LCCOMB_X12_Y20_N2
\inst1|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~4_combout\ = (\inst1|Add2~19_combout\ & ((\inst|cnt\(2) & (\inst1|Add3~3\ & VCC)) # (!\inst|cnt\(2) & (!\inst1|Add3~3\)))) # (!\inst1|Add2~19_combout\ & ((\inst|cnt\(2) & (!\inst1|Add3~3\)) # (!\inst|cnt\(2) & ((\inst1|Add3~3\) # (GND)))))
-- \inst1|Add3~5\ = CARRY((\inst1|Add2~19_combout\ & (!\inst|cnt\(2) & !\inst1|Add3~3\)) # (!\inst1|Add2~19_combout\ & ((!\inst1|Add3~3\) # (!\inst|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~19_combout\,
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst1|Add3~3\,
	combout => \inst1|Add3~4_combout\,
	cout => \inst1|Add3~5\);

-- Location: LCCOMB_X12_Y20_N4
\inst1|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = ((\inst|cnt\(3) $ (\inst1|Add2~18_combout\ $ (!\inst1|Add3~5\)))) # (GND)
-- \inst1|Add3~7\ = CARRY((\inst|cnt\(3) & ((\inst1|Add2~18_combout\) # (!\inst1|Add3~5\))) # (!\inst|cnt\(3) & (\inst1|Add2~18_combout\ & !\inst1|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst1|Add2~18_combout\,
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: LCCOMB_X12_Y20_N6
\inst1|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|Add2~17_combout\ & ((\inst|cnt\(3) & (\inst1|Add3~7\ & VCC)) # (!\inst|cnt\(3) & (!\inst1|Add3~7\)))) # (!\inst1|Add2~17_combout\ & ((\inst|cnt\(3) & (!\inst1|Add3~7\)) # (!\inst|cnt\(3) & ((\inst1|Add3~7\) # (GND)))))
-- \inst1|Add3~9\ = CARRY((\inst1|Add2~17_combout\ & (!\inst|cnt\(3) & !\inst1|Add3~7\)) # (!\inst1|Add2~17_combout\ & ((!\inst1|Add3~7\) # (!\inst|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~17_combout\,
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: LCCOMB_X12_Y20_N14
\inst1|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~19_combout\ = (\inst|cnt\(4) & ((\inst1|Add3~8_combout\))) # (!\inst|cnt\(4) & (\inst1|Add2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datac => \inst1|Add2~17_combout\,
	datad => \inst1|Add3~8_combout\,
	combout => \inst1|Add3~19_combout\);

-- Location: LCCOMB_X16_Y18_N22
\inst26|Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(5) = \inst|cnt\(5) $ (((\inst|cnt\(7) & \inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(4),
	combout => \inst26|Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X16_Y18_N20
\inst26|xp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|xp[1]~2_combout\ = \inst|cnt\(1) $ (((\inst|cnt\(3) & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst26|xp[1]~2_combout\);

-- Location: LCCOMB_X16_Y18_N30
\inst26|Mult0|auto_generated|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|_~13_combout\ = (!\inst|cnt\(4) & (!\inst|cnt\(0) & \inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(0),
	datad => \inst|cnt\(5),
	combout => \inst26|Mult0|auto_generated|_~13_combout\);

-- Location: LCCOMB_X13_Y18_N28
\inst26|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(1) = (\inst26|Mult0|auto_generated|_~13_combout\) # ((\inst|cnt\(4) & (\inst26|Mult0|auto_generated|le3a\(5) $ (\inst26|xp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst|cnt\(4),
	datac => \inst26|xp[1]~2_combout\,
	datad => \inst26|Mult0|auto_generated|_~13_combout\,
	combout => \inst26|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X16_Y18_N28
\inst26|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(0) = \inst|cnt\(5) $ (((\inst|cnt\(4) & (\inst|cnt\(0) $ (\inst|cnt\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(7),
	datad => \inst|cnt\(4),
	combout => \inst26|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X13_Y18_N4
\inst26|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~0_combout\ = (\inst26|Mult0|auto_generated|le3a\(0) & (\inst26|Mult0|auto_generated|le3a\(5) $ (VCC))) # (!\inst26|Mult0|auto_generated|le3a\(0) & (\inst26|Mult0|auto_generated|le3a\(5) & VCC))
-- \inst26|Mult0|auto_generated|op_3~1\ = CARRY((\inst26|Mult0|auto_generated|le3a\(0) & \inst26|Mult0|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(0),
	datab => \inst26|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	combout => \inst26|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X13_Y18_N6
\inst26|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~2_combout\ = (\inst26|Mult0|auto_generated|le3a\(1) & (!\inst26|Mult0|auto_generated|op_3~1\)) # (!\inst26|Mult0|auto_generated|le3a\(1) & ((\inst26|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst26|Mult0|auto_generated|op_3~3\ = CARRY((!\inst26|Mult0|auto_generated|op_3~1\) # (!\inst26|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~1\,
	combout => \inst26|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X14_Y18_N24
\inst26|xp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|xp[2]~1_combout\ = \inst|cnt\(2) $ (((\inst|cnt\(3) & ((\inst|cnt\(0)) # (\inst|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(3),
	combout => \inst26|xp[2]~1_combout\);

-- Location: LCCOMB_X14_Y18_N22
\inst26|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(2) = (\inst|cnt\(4) & (\inst26|xp[2]~1_combout\ $ (((\inst26|Mult0|auto_generated|le3a\(5)))))) # (!\inst|cnt\(4) & (((!\inst26|xp[1]~2_combout\ & \inst26|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst26|xp[2]~1_combout\,
	datac => \inst26|xp[1]~2_combout\,
	datad => \inst26|Mult0|auto_generated|le3a\(5),
	combout => \inst26|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X16_Y18_N0
\inst26|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(5) = (\inst|cnt\(7) & (!\inst|cnt\(6) & ((!\inst|cnt\(5)) # (!\inst|cnt\(4))))) # (!\inst|cnt\(7) & (((\inst|cnt\(5) & \inst|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(6),
	combout => \inst26|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X14_Y18_N4
\inst26|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~0_combout\ = (\inst26|Mult0|auto_generated|le3a\(2) & (\inst26|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst26|Mult0|auto_generated|le3a\(2) & (\inst26|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst26|Mult0|auto_generated|op_1~1\ = CARRY((\inst26|Mult0|auto_generated|le3a\(2) & \inst26|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(2),
	datab => \inst26|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst26|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X16_Y18_N26
\inst26|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|cs2a[1]~0_combout\ = \inst|cnt\(6) $ (((\inst|cnt\(5) & ((\inst|cnt\(4)) # (!\inst|cnt\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(6),
	combout => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X13_Y18_N2
\inst26|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(0) = \inst26|Mult0|auto_generated|le4a\(5) $ (((\inst|cnt\(0) & \inst26|Mult0|auto_generated|cs2a[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X13_Y18_N8
\inst26|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~4_combout\ = ((\inst26|Mult0|auto_generated|op_1~0_combout\ $ (\inst26|Mult0|auto_generated|le4a\(0) $ (!\inst26|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_3~5\ = CARRY((\inst26|Mult0|auto_generated|op_1~0_combout\ & ((\inst26|Mult0|auto_generated|le4a\(0)) # (!\inst26|Mult0|auto_generated|op_3~3\))) # (!\inst26|Mult0|auto_generated|op_1~0_combout\ & 
-- (\inst26|Mult0|auto_generated|le4a\(0) & !\inst26|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_1~0_combout\,
	datab => \inst26|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~3\,
	combout => \inst26|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X16_Y18_N24
\inst26|xp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|xp[3]~0_combout\ = (!\inst|cnt\(1) & (!\inst|cnt\(2) & (!\inst|cnt\(0) & \inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(3),
	combout => \inst26|xp[3]~0_combout\);

-- Location: LCCOMB_X14_Y18_N20
\inst26|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(3) = (\inst|cnt\(4) & ((\inst26|xp[3]~0_combout\ $ (\inst26|Mult0|auto_generated|le3a\(5))))) # (!\inst|cnt\(4) & (!\inst26|xp[2]~1_combout\ & ((\inst26|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst26|xp[2]~1_combout\,
	datac => \inst26|xp[3]~0_combout\,
	datad => \inst26|Mult0|auto_generated|le3a\(5),
	combout => \inst26|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X14_Y18_N6
\inst26|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~2_combout\ = (\inst26|Mult0|auto_generated|le3a\(3) & (!\inst26|Mult0|auto_generated|op_1~1\)) # (!\inst26|Mult0|auto_generated|le3a\(3) & ((\inst26|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst26|Mult0|auto_generated|op_1~3\ = CARRY((!\inst26|Mult0|auto_generated|op_1~1\) # (!\inst26|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~1\,
	combout => \inst26|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X13_Y18_N0
\inst26|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(1) = (\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst26|xp[1]~2_combout\ $ ((\inst26|Mult0|auto_generated|le4a\(5))))) # (!\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (((\inst26|Mult0|auto_generated|le4a\(5) & !\inst|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|xp[1]~2_combout\,
	datab => \inst26|Mult0|auto_generated|le4a\(5),
	datac => \inst|cnt\(0),
	datad => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X13_Y18_N10
\inst26|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~6_combout\ = (\inst26|Mult0|auto_generated|op_1~2_combout\ & ((\inst26|Mult0|auto_generated|le4a\(1) & (\inst26|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst26|Mult0|auto_generated|le4a\(1) & 
-- (!\inst26|Mult0|auto_generated|op_3~5\)))) # (!\inst26|Mult0|auto_generated|op_1~2_combout\ & ((\inst26|Mult0|auto_generated|le4a\(1) & (!\inst26|Mult0|auto_generated|op_3~5\)) # (!\inst26|Mult0|auto_generated|le4a\(1) & 
-- ((\inst26|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \inst26|Mult0|auto_generated|op_3~7\ = CARRY((\inst26|Mult0|auto_generated|op_1~2_combout\ & (!\inst26|Mult0|auto_generated|le4a\(1) & !\inst26|Mult0|auto_generated|op_3~5\)) # (!\inst26|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\inst26|Mult0|auto_generated|op_3~5\) # (!\inst26|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_1~2_combout\,
	datab => \inst26|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~5\,
	combout => \inst26|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X13_Y18_N26
\inst26|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Equal0~1_combout\ = (!\inst26|Mult0|auto_generated|op_3~2_combout\ & (!\inst26|Mult0|auto_generated|op_3~0_combout\ & (!\inst26|Mult0|auto_generated|op_3~4_combout\ & !\inst26|Mult0|auto_generated|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~2_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~0_combout\,
	datac => \inst26|Mult0|auto_generated|op_3~4_combout\,
	datad => \inst26|Mult0|auto_generated|op_3~6_combout\,
	combout => \inst26|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y18_N28
\inst26|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(0) = (\inst26|Mult0|auto_generated|le4a\(5) & \inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst|cnt\(0),
	combout => \inst26|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X14_Y18_N26
\inst26|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(2) = (\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst26|xp[2]~1_combout\ $ ((\inst26|Mult0|auto_generated|le4a\(5))))) # (!\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (((\inst26|Mult0|auto_generated|le4a\(5) & !\inst26|xp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst26|xp[2]~1_combout\,
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|xp[1]~2_combout\,
	combout => \inst26|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X14_Y18_N18
\inst26|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le3a\(4) = (\inst|cnt\(4) & (\inst|cnt\(5) $ ((\inst|cnt\(7))))) # (!\inst|cnt\(4) & (\inst|cnt\(5) & ((!\inst26|xp[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(4),
	datad => \inst26|xp[3]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X14_Y18_N8
\inst26|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~4_combout\ = ((\inst26|Mult0|auto_generated|le4a\(2) $ (\inst26|Mult0|auto_generated|le3a\(4) $ (!\inst26|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_1~5\ = CARRY((\inst26|Mult0|auto_generated|le4a\(2) & ((\inst26|Mult0|auto_generated|le3a\(4)) # (!\inst26|Mult0|auto_generated|op_1~3\))) # (!\inst26|Mult0|auto_generated|le4a\(2) & (\inst26|Mult0|auto_generated|le3a\(4) & 
-- !\inst26|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le4a\(2),
	datab => \inst26|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~3\,
	combout => \inst26|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X13_Y18_N12
\inst26|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~8_combout\ = ((\inst26|Mult0|auto_generated|le5a\(0) $ (\inst26|Mult0|auto_generated|op_1~4_combout\ $ (!\inst26|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_3~9\ = CARRY((\inst26|Mult0|auto_generated|le5a\(0) & ((\inst26|Mult0|auto_generated|op_1~4_combout\) # (!\inst26|Mult0|auto_generated|op_3~7\))) # (!\inst26|Mult0|auto_generated|le5a\(0) & 
-- (\inst26|Mult0|auto_generated|op_1~4_combout\ & !\inst26|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le5a\(0),
	datab => \inst26|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~7\,
	combout => \inst26|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X14_Y18_N30
\inst26|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(2) = (\inst26|Mult0|auto_generated|le4a\(5) & \inst26|xp[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|xp[2]~1_combout\,
	combout => \inst26|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X14_Y18_N2
\inst26|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(4) = (\inst26|Mult0|auto_generated|le4a\(5) & ((\inst26|Mult0|auto_generated|cs2a[1]~0_combout\) # (!\inst26|xp[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|xp[3]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X16_Y18_N2
\inst26|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(1) = (\inst26|Mult0|auto_generated|le4a\(5) & (\inst|cnt\(1) $ (((\inst|cnt\(3) & \inst|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(1),
	datad => \inst26|Mult0|auto_generated|le4a\(5),
	combout => \inst26|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X14_Y18_N16
\inst26|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le4a\(3) = (\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst26|Mult0|auto_generated|le4a\(5) $ (\inst26|xp[3]~0_combout\)))) # (!\inst26|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\inst26|xp[2]~1_combout\ & 
-- (\inst26|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst26|xp[2]~1_combout\,
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|xp[3]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X14_Y18_N10
\inst26|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~6_combout\ = (\inst26|Mult0|auto_generated|le5a\(1) & ((\inst26|Mult0|auto_generated|le4a\(3) & (\inst26|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst26|Mult0|auto_generated|le4a\(3) & 
-- (!\inst26|Mult0|auto_generated|op_1~5\)))) # (!\inst26|Mult0|auto_generated|le5a\(1) & ((\inst26|Mult0|auto_generated|le4a\(3) & (!\inst26|Mult0|auto_generated|op_1~5\)) # (!\inst26|Mult0|auto_generated|le4a\(3) & ((\inst26|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \inst26|Mult0|auto_generated|op_1~7\ = CARRY((\inst26|Mult0|auto_generated|le5a\(1) & (!\inst26|Mult0|auto_generated|le4a\(3) & !\inst26|Mult0|auto_generated|op_1~5\)) # (!\inst26|Mult0|auto_generated|le5a\(1) & ((!\inst26|Mult0|auto_generated|op_1~5\) # 
-- (!\inst26|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le5a\(1),
	datab => \inst26|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~5\,
	combout => \inst26|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X14_Y18_N12
\inst26|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~8_combout\ = ((\inst26|Mult0|auto_generated|le5a\(2) $ (\inst26|Mult0|auto_generated|le4a\(4) $ (!\inst26|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_1~9\ = CARRY((\inst26|Mult0|auto_generated|le5a\(2) & ((\inst26|Mult0|auto_generated|le4a\(4)) # (!\inst26|Mult0|auto_generated|op_1~7\))) # (!\inst26|Mult0|auto_generated|le5a\(2) & (\inst26|Mult0|auto_generated|le4a\(4) & 
-- !\inst26|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le5a\(2),
	datab => \inst26|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_1~7\,
	combout => \inst26|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst26|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X13_Y18_N14
\inst26|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~10_combout\ = (\inst26|Mult0|auto_generated|le3a\(5) & ((\inst26|Mult0|auto_generated|op_1~6_combout\ & (\inst26|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst26|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\inst26|Mult0|auto_generated|op_3~9\)))) # (!\inst26|Mult0|auto_generated|le3a\(5) & ((\inst26|Mult0|auto_generated|op_1~6_combout\ & (!\inst26|Mult0|auto_generated|op_3~9\)) # (!\inst26|Mult0|auto_generated|op_1~6_combout\ & 
-- ((\inst26|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst26|Mult0|auto_generated|op_3~11\ = CARRY((\inst26|Mult0|auto_generated|le3a\(5) & (!\inst26|Mult0|auto_generated|op_1~6_combout\ & !\inst26|Mult0|auto_generated|op_3~9\)) # (!\inst26|Mult0|auto_generated|le3a\(5) & 
-- ((!\inst26|Mult0|auto_generated|op_3~9\) # (!\inst26|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst26|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~9\,
	combout => \inst26|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X13_Y18_N16
\inst26|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~12_combout\ = ((\inst26|Mult0|auto_generated|le3a\(5) $ (\inst26|Mult0|auto_generated|op_1~8_combout\ $ (!\inst26|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst26|Mult0|auto_generated|op_3~13\ = CARRY((\inst26|Mult0|auto_generated|le3a\(5) & ((\inst26|Mult0|auto_generated|op_1~8_combout\) # (!\inst26|Mult0|auto_generated|op_3~11\))) # (!\inst26|Mult0|auto_generated|le3a\(5) & 
-- (\inst26|Mult0|auto_generated|op_1~8_combout\ & !\inst26|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datab => \inst26|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst26|Mult0|auto_generated|op_3~11\,
	combout => \inst26|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst26|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X14_Y18_N0
\inst26|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|le5a\(3) = (\inst26|Mult0|auto_generated|le4a\(5) & \inst26|xp[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|xp[3]~0_combout\,
	combout => \inst26|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X14_Y18_N14
\inst26|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_1~10_combout\ = \inst26|Mult0|auto_generated|le4a\(5) $ (\inst26|Mult0|auto_generated|op_1~9\ $ (!\inst26|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Mult0|auto_generated|le4a\(5),
	datad => \inst26|Mult0|auto_generated|le5a\(3),
	cin => \inst26|Mult0|auto_generated|op_1~9\,
	combout => \inst26|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X13_Y18_N18
\inst26|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mult0|auto_generated|op_3~14_combout\ = \inst26|Mult0|auto_generated|le3a\(5) $ (\inst26|Mult0|auto_generated|op_3~13\ $ (!\inst26|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|le3a\(5),
	datad => \inst26|Mult0|auto_generated|op_1~10_combout\,
	cin => \inst26|Mult0|auto_generated|op_3~13\,
	combout => \inst26|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X13_Y18_N24
\inst26|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Equal0~0_combout\ = (!\inst26|Mult0|auto_generated|op_3~8_combout\ & (!\inst26|Mult0|auto_generated|op_3~12_combout\ & (!\inst26|Mult0|auto_generated|op_3~10_combout\ & !\inst26|Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst26|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst26|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst26|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y18_N30
\inst26|rez_true[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|rez_true[7]~3_combout\ = (\inst26|Equal0~1_combout\ & ((\inst26|Equal0~0_combout\) # (\inst|cnt\(3) $ (!\inst|cnt\(7))))) # (!\inst26|Equal0~1_combout\ & (\inst|cnt\(3) $ ((!\inst|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(7),
	datac => \inst26|Equal0~1_combout\,
	datad => \inst26|Equal0~0_combout\,
	combout => \inst26|rez_true[7]~3_combout\);

-- Location: LCCOMB_X17_Y18_N16
\inst26|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|process_0~0_combout\ = \inst|cnt\(7) $ (\inst|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(7),
	datad => \inst|cnt\(3),
	combout => \inst26|process_0~0_combout\);

-- Location: LCCOMB_X13_Y18_N22
\inst26|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~0_combout\ = \inst26|Mult0|auto_generated|op_3~0_combout\ $ ((((\inst26|Equal0~1_combout\ & \inst26|Equal0~0_combout\)) # (!\inst26|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|process_0~0_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~0_combout\,
	datac => \inst26|Equal0~1_combout\,
	datad => \inst26|Equal0~0_combout\,
	combout => \inst26|Add2~0_combout\);

-- Location: LCCOMB_X12_Y18_N12
\inst26|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~1_combout\ = (\inst26|rez_true[7]~3_combout\ & (!\inst26|Add2~0_combout\ & VCC)) # (!\inst26|rez_true[7]~3_combout\ & (\inst26|Add2~0_combout\ $ (GND)))
-- \inst26|Add2~2\ = CARRY((!\inst26|rez_true[7]~3_combout\ & !\inst26|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Add2~0_combout\,
	datad => VCC,
	combout => \inst26|Add2~1_combout\,
	cout => \inst26|Add2~2\);

-- Location: LCCOMB_X12_Y18_N14
\inst26|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~3_combout\ = (\inst26|Add2~2\ & (\inst26|rez_true[7]~3_combout\ $ ((\inst26|Mult0|auto_generated|op_3~2_combout\)))) # (!\inst26|Add2~2\ & ((\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~2_combout\)) # (GND)))
-- \inst26|Add2~4\ = CARRY((\inst26|rez_true[7]~3_combout\ $ (\inst26|Mult0|auto_generated|op_3~2_combout\)) # (!\inst26|Add2~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~2_combout\,
	datad => VCC,
	cin => \inst26|Add2~2\,
	combout => \inst26|Add2~3_combout\,
	cout => \inst26|Add2~4\);

-- Location: LCCOMB_X12_Y18_N16
\inst26|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~5_combout\ = (\inst26|Add2~4\ & ((\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~4_combout\)))) # (!\inst26|Add2~4\ & (\inst26|rez_true[7]~3_combout\ $ (\inst26|Mult0|auto_generated|op_3~4_combout\ $ (GND))))
-- \inst26|Add2~6\ = CARRY((!\inst26|Add2~4\ & (\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~4_combout\,
	datad => VCC,
	cin => \inst26|Add2~4\,
	combout => \inst26|Add2~5_combout\,
	cout => \inst26|Add2~6\);

-- Location: LCCOMB_X12_Y18_N18
\inst26|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~7_combout\ = (\inst26|Add2~6\ & (\inst26|rez_true[7]~3_combout\ $ ((\inst26|Mult0|auto_generated|op_3~6_combout\)))) # (!\inst26|Add2~6\ & ((\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~6_combout\)) # (GND)))
-- \inst26|Add2~8\ = CARRY((\inst26|rez_true[7]~3_combout\ $ (\inst26|Mult0|auto_generated|op_3~6_combout\)) # (!\inst26|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~6_combout\,
	datad => VCC,
	cin => \inst26|Add2~6\,
	combout => \inst26|Add2~7_combout\,
	cout => \inst26|Add2~8\);

-- Location: LCCOMB_X12_Y18_N20
\inst26|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~9_combout\ = (\inst26|Add2~8\ & ((\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~8_combout\)))) # (!\inst26|Add2~8\ & (\inst26|rez_true[7]~3_combout\ $ (\inst26|Mult0|auto_generated|op_3~8_combout\ $ (GND))))
-- \inst26|Add2~10\ = CARRY((!\inst26|Add2~8\ & (\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~8_combout\,
	datad => VCC,
	cin => \inst26|Add2~8\,
	combout => \inst26|Add2~9_combout\,
	cout => \inst26|Add2~10\);

-- Location: LCCOMB_X16_Y20_N28
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst|cnt\(0)) # (\inst|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst1|rc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~1_combout\ = (\inst|cnt\(7) & (\inst|cnt\(3) $ (((\inst|cnt\(2)) # (\inst1|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(3),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|rc~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst1|rc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~2_combout\ = (\inst|cnt\(7) & (\inst|cnt\(2) $ (((\inst|cnt\(1)) # (\inst|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(0),
	combout => \inst1|rc~2_combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = ((\inst1|rc~2_combout\ $ (\inst|cnt\(3) $ (!\inst1|Add1~5\)))) # (GND)
-- \inst1|Add1~7\ = CARRY((\inst1|rc~2_combout\ & ((\inst|cnt\(3)) # (!\inst1|Add1~5\))) # (!\inst1|rc~2_combout\ & (\inst|cnt\(3) & !\inst1|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc~2_combout\,
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X16_Y20_N22
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst|cnt\(3) & ((\inst1|rc~1_combout\ & (\inst1|Add1~7\ & VCC)) # (!\inst1|rc~1_combout\ & (!\inst1|Add1~7\)))) # (!\inst|cnt\(3) & ((\inst1|rc~1_combout\ & (!\inst1|Add1~7\)) # (!\inst1|rc~1_combout\ & ((\inst1|Add1~7\) # 
-- (GND)))))
-- \inst1|Add1~9\ = CARRY((\inst|cnt\(3) & (!\inst1|rc~1_combout\ & !\inst1|Add1~7\)) # (!\inst|cnt\(3) & ((!\inst1|Add1~7\) # (!\inst1|rc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst1|rc~1_combout\,
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X16_Y20_N30
\inst1|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~13_combout\ = (\inst|cnt\(6) & (\inst1|Add1~8_combout\)) # (!\inst|cnt\(6) & ((\inst1|rc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datac => \inst1|Add1~8_combout\,
	datad => \inst1|rc~1_combout\,
	combout => \inst1|Add1~13_combout\);

-- Location: LCCOMB_X16_Y20_N2
\inst1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst|cnt\(6) & ((\inst1|Add1~6_combout\))) # (!\inst|cnt\(6) & (\inst1|rc~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datac => \inst1|rc~2_combout\,
	datad => \inst1|Add1~6_combout\,
	combout => \inst1|Add1~14_combout\);

-- Location: LCCOMB_X13_Y20_N22
\inst1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst|cnt\(3) & ((\inst1|Add1~14_combout\ & (\inst1|Add2~7\ & VCC)) # (!\inst1|Add1~14_combout\ & (!\inst1|Add2~7\)))) # (!\inst|cnt\(3) & ((\inst1|Add1~14_combout\ & (!\inst1|Add2~7\)) # (!\inst1|Add1~14_combout\ & 
-- ((\inst1|Add2~7\) # (GND)))))
-- \inst1|Add2~9\ = CARRY((\inst|cnt\(3) & (!\inst1|Add1~14_combout\ & !\inst1|Add2~7\)) # (!\inst|cnt\(3) & ((!\inst1|Add2~7\) # (!\inst1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst1|Add1~14_combout\,
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X13_Y20_N24
\inst1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = ((\inst|cnt\(3) $ (\inst1|Add1~13_combout\ $ (!\inst1|Add2~9\)))) # (GND)
-- \inst1|Add2~11\ = CARRY((\inst|cnt\(3) & ((\inst1|Add1~13_combout\) # (!\inst1|Add2~9\))) # (!\inst|cnt\(3) & (\inst1|Add1~13_combout\ & !\inst1|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst1|Add1~13_combout\,
	datad => VCC,
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\,
	cout => \inst1|Add2~11\);

-- Location: LCCOMB_X12_Y20_N22
\inst1|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~15_combout\ = (\inst|cnt\(5) & ((\inst1|Add2~10_combout\))) # (!\inst|cnt\(5) & (\inst1|Add1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst1|Add1~13_combout\,
	datad => \inst1|Add2~10_combout\,
	combout => \inst1|Add2~15_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~16_combout\ = (\inst|cnt\(5) & ((\inst1|Add2~8_combout\))) # (!\inst|cnt\(5) & (\inst1|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datac => \inst1|Add1~14_combout\,
	datad => \inst1|Add2~8_combout\,
	combout => \inst1|Add2~16_combout\);

-- Location: LCCOMB_X12_Y20_N8
\inst1|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = ((\inst|cnt\(3) $ (\inst1|Add2~16_combout\ $ (!\inst1|Add3~9\)))) # (GND)
-- \inst1|Add3~11\ = CARRY((\inst|cnt\(3) & ((\inst1|Add2~16_combout\) # (!\inst1|Add3~9\))) # (!\inst|cnt\(3) & (\inst1|Add2~16_combout\ & !\inst1|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst1|Add2~16_combout\,
	datad => VCC,
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\,
	cout => \inst1|Add3~11\);

-- Location: LCCOMB_X12_Y20_N10
\inst1|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~12_combout\ = (\inst1|Add2~15_combout\ & ((\inst|cnt\(3) & (\inst1|Add3~11\ & VCC)) # (!\inst|cnt\(3) & (!\inst1|Add3~11\)))) # (!\inst1|Add2~15_combout\ & ((\inst|cnt\(3) & (!\inst1|Add3~11\)) # (!\inst|cnt\(3) & ((\inst1|Add3~11\) # 
-- (GND)))))
-- \inst1|Add3~13\ = CARRY((\inst1|Add2~15_combout\ & (!\inst|cnt\(3) & !\inst1|Add3~11\)) # (!\inst1|Add2~15_combout\ & ((!\inst1|Add3~11\) # (!\inst|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~15_combout\,
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst1|Add3~11\,
	combout => \inst1|Add3~12_combout\,
	cout => \inst1|Add3~13\);

-- Location: LCCOMB_X12_Y20_N18
\inst1|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~17_combout\ = (\inst|cnt\(4) & ((\inst1|Add3~12_combout\))) # (!\inst|cnt\(4) & (\inst1|Add2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datac => \inst1|Add2~15_combout\,
	datad => \inst1|Add3~12_combout\,
	combout => \inst1|Add3~17_combout\);

-- Location: LCCOMB_X12_Y18_N22
\inst26|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~11_combout\ = (\inst26|Add2~10\ & (\inst26|rez_true[7]~3_combout\ $ ((\inst26|Mult0|auto_generated|op_3~10_combout\)))) # (!\inst26|Add2~10\ & ((\inst26|rez_true[7]~3_combout\ $ (!\inst26|Mult0|auto_generated|op_3~10_combout\)) # (GND)))
-- \inst26|Add2~12\ = CARRY((\inst26|rez_true[7]~3_combout\ $ (\inst26|Mult0|auto_generated|op_3~10_combout\)) # (!\inst26|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	cin => \inst26|Add2~10\,
	combout => \inst26|Add2~11_combout\,
	cout => \inst26|Add2~12\);

-- Location: LCCOMB_X12_Y18_N24
\inst26|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add2~13_combout\ = \inst26|rez_true[7]~3_combout\ $ (\inst26|Add2~12\ $ (\inst26|Mult0|auto_generated|op_3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~3_combout\,
	datad => \inst26|Mult0|auto_generated|op_3~12_combout\,
	cin => \inst26|Add2~12\,
	combout => \inst26|Add2~13_combout\);

-- Location: LCCOMB_X12_Y18_N30
\inst24|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~0_combout\ = (\inst1|Add3~19_combout\ & (\inst26|Add2~9_combout\ & (\inst1|Add3~17_combout\ $ (!\inst26|Add2~13_combout\)))) # (!\inst1|Add3~19_combout\ & (!\inst26|Add2~9_combout\ & (\inst1|Add3~17_combout\ $ (!\inst26|Add2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~19_combout\,
	datab => \inst26|Add2~9_combout\,
	datac => \inst1|Add3~17_combout\,
	datad => \inst26|Add2~13_combout\,
	combout => \inst24|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y20_N28
\inst1|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~18_combout\ = (\inst|cnt\(4) & (\inst1|Add3~10_combout\)) # (!\inst|cnt\(4) & ((\inst1|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datac => \inst1|Add3~10_combout\,
	datad => \inst1|Add2~16_combout\,
	combout => \inst1|Add3~18_combout\);

-- Location: LCCOMB_X13_Y20_N30
\inst1|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~22_combout\ = (\inst|cnt\(4) & (((\inst1|Add3~2_combout\)))) # (!\inst|cnt\(4) & (\inst|cnt\(5) & (\inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datab => \inst|cnt\(0),
	datac => \inst1|Add3~2_combout\,
	datad => \inst|cnt\(4),
	combout => \inst1|Add3~22_combout\);

-- Location: LCCOMB_X12_Y18_N2
\inst24|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~3_combout\ = (\inst1|Add3~22_combout\ & (\inst26|Add2~3_combout\ & (\inst|Equal0~0_combout\ $ (!\inst26|Add2~1_combout\)))) # (!\inst1|Add3~22_combout\ & (!\inst26|Add2~3_combout\ & (\inst|Equal0~0_combout\ $ (!\inst26|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~22_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst26|Add2~3_combout\,
	datad => \inst26|Add2~1_combout\,
	combout => \inst24|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst24|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~4_combout\ = (\inst24|Equal0~3_combout\ & (\inst1|Add3~18_combout\ $ (!\inst26|Add2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~18_combout\,
	datac => \inst26|Add2~11_combout\,
	datad => \inst24|Equal0~3_combout\,
	combout => \inst24|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y18_N20
\inst26|rez_true[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|rez_true[7]~2_combout\ = (\inst26|Mult0|auto_generated|op_3~14_combout\) # ((\inst26|process_0~0_combout\ & ((!\inst26|Equal0~0_combout\) # (!\inst26|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|process_0~0_combout\,
	datab => \inst26|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst26|Equal0~1_combout\,
	datad => \inst26|Equal0~0_combout\,
	combout => \inst26|rez_true[7]~2_combout\);

-- Location: LCCOMB_X16_Y20_N10
\inst1|rc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rc~0_combout\ = (\inst|cnt\(7) & (!\inst|cnt\(3) & ((\inst|cnt\(2)) # (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(3),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|rc~0_combout\);

-- Location: LCCOMB_X16_Y20_N24
\inst1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = \inst|cnt\(3) $ (\inst1|Add1~9\ $ (!\inst1|rc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => \inst1|rc~0_combout\,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\);

-- Location: LCCOMB_X16_Y20_N8
\inst1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst|cnt\(6) & ((\inst1|Add1~10_combout\))) # (!\inst|cnt\(6) & (\inst1|rc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rc~0_combout\,
	datab => \inst|cnt\(6),
	datad => \inst1|Add1~10_combout\,
	combout => \inst1|Add1~12_combout\);

-- Location: LCCOMB_X13_Y20_N26
\inst1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~12_combout\ = \inst|cnt\(3) $ (\inst1|Add2~11\ $ (\inst1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => \inst1|Add1~12_combout\,
	cin => \inst1|Add2~11\,
	combout => \inst1|Add2~12_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~14_combout\ = (\inst|cnt\(5) & (\inst1|Add2~12_combout\)) # (!\inst|cnt\(5) & ((\inst1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datac => \inst1|Add2~12_combout\,
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|Add2~14_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst1|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~14_combout\ = \inst|cnt\(3) $ (\inst1|Add3~13\ $ (!\inst1|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => \inst1|Add2~14_combout\,
	cin => \inst1|Add3~13\,
	combout => \inst1|Add3~14_combout\);

-- Location: LCCOMB_X12_Y18_N8
\inst1|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~16_combout\ = (\inst|cnt\(4) & ((\inst1|Add3~14_combout\))) # (!\inst|cnt\(4) & (\inst1|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datac => \inst1|Add2~14_combout\,
	datad => \inst1|Add3~14_combout\,
	combout => \inst1|Add3~16_combout\);

-- Location: LCCOMB_X12_Y20_N30
\inst1|Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~21_combout\ = (\inst|cnt\(4) & (\inst1|Add3~4_combout\)) # (!\inst|cnt\(4) & ((\inst1|Add2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add3~4_combout\,
	datac => \inst|cnt\(4),
	datad => \inst1|Add2~19_combout\,
	combout => \inst1|Add3~21_combout\);

-- Location: LCCOMB_X12_Y20_N24
\inst1|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~20_combout\ = (\inst|cnt\(4) & (\inst1|Add3~6_combout\)) # (!\inst|cnt\(4) & ((\inst1|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datac => \inst1|Add3~6_combout\,
	datad => \inst1|Add2~18_combout\,
	combout => \inst1|Add3~20_combout\);

-- Location: LCCOMB_X12_Y18_N0
\inst24|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~1_combout\ = (\inst1|Add3~21_combout\ & (\inst26|Add2~5_combout\ & (\inst1|Add3~20_combout\ $ (!\inst26|Add2~7_combout\)))) # (!\inst1|Add3~21_combout\ & (!\inst26|Add2~5_combout\ & (\inst1|Add3~20_combout\ $ (!\inst26|Add2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~21_combout\,
	datab => \inst26|Add2~5_combout\,
	datac => \inst1|Add3~20_combout\,
	datad => \inst26|Add2~7_combout\,
	combout => \inst24|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y18_N10
\inst24|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~2_combout\ = (\inst24|Equal0~1_combout\ & (\inst26|rez_true[7]~2_combout\ $ (!\inst1|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|rez_true[7]~2_combout\,
	datac => \inst1|Add3~16_combout\,
	datad => \inst24|Equal0~1_combout\,
	combout => \inst24|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y18_N4
\inst24|defect~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|defect~0_combout\ = (((\inst24|defect~q\) # (!\inst24|Equal0~2_combout\)) # (!\inst24|Equal0~4_combout\)) # (!\inst24|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Equal0~0_combout\,
	datab => \inst24|Equal0~4_combout\,
	datac => \inst24|defect~q\,
	datad => \inst24|Equal0~2_combout\,
	combout => \inst24|defect~0_combout\);

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

-- Location: FF_X12_Y18_N5
\inst24|defect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst24|defect~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|defect~q\);

-- Location: LCCOMB_X12_Y18_N26
\inst24|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~5_combout\ = \inst26|rez_true[7]~2_combout\ $ (((\inst|cnt\(4) & ((\inst1|Add3~14_combout\))) # (!\inst|cnt\(4) & (\inst1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst1|Add2~14_combout\,
	datac => \inst26|rez_true[7]~2_combout\,
	datad => \inst1|Add3~14_combout\,
	combout => \inst24|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y18_N6
\inst24|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Equal0~6_combout\ = (\inst24|Equal0~5_combout\) # (((!\inst24|Equal0~4_combout\) # (!\inst24|Equal0~0_combout\)) # (!\inst24|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Equal0~5_combout\,
	datab => \inst24|Equal0~1_combout\,
	datac => \inst24|Equal0~0_combout\,
	datad => \inst24|Equal0~4_combout\,
	combout => \inst24|Equal0~6_combout\);

-- Location: FF_X12_Y18_N7
\inst24|okey\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst24|Equal0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|okey~q\);

ww_defect <= \defect~output_o\;

ww_okey <= \okey~output_o\;

ww_finish <= \finish~output_o\;

ww_rez_test(7) <= \rez_test[7]~output_o\;

ww_rez_test(6) <= \rez_test[6]~output_o\;

ww_rez_test(5) <= \rez_test[5]~output_o\;

ww_rez_test(4) <= \rez_test[4]~output_o\;

ww_rez_test(3) <= \rez_test[3]~output_o\;

ww_rez_test(2) <= \rez_test[2]~output_o\;

ww_rez_test(1) <= \rez_test[1]~output_o\;

ww_rez_test(0) <= \rez_test[0]~output_o\;

ww_rez_true(7) <= \rez_true[7]~output_o\;

ww_rez_true(6) <= \rez_true[6]~output_o\;

ww_rez_true(5) <= \rez_true[5]~output_o\;

ww_rez_true(4) <= \rez_true[4]~output_o\;

ww_rez_true(3) <= \rez_true[3]~output_o\;

ww_rez_true(2) <= \rez_true[2]~output_o\;

ww_rez_true(1) <= \rez_true[1]~output_o\;

ww_rez_true(0) <= \rez_true[0]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(0) <= \x[0]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(0) <= \y[0]~output_o\;
END structure;


