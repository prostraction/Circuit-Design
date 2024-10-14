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

-- DATE "01/05/2022 17:56:06"

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

ENTITY 	block_oper IS
    PORT (
	f3 : OUT std_logic;
	clk : IN std_logic;
	y : IN std_logic_vector(10 DOWNTO 1);
	n : OUT std_logic_vector(8 DOWNTO 1);
	a : IN std_logic_vector(4 DOWNTO 1);
	rb : OUT std_logic_vector(4 DOWNTO 1);
	b : IN std_logic_vector(4 DOWNTO 1);
	f1 : OUT std_logic;
	f2 : OUT std_logic;
	ks1_res : OUT std_logic_vector(8 DOWNTO 1);
	priznak : OUT std_logic_vector(1 DOWNTO 0);
	s : OUT std_logic_vector(8 DOWNTO 1)
	);
END block_oper;

-- Design Ports Information
-- f3	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[8]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[5]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rb[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rb[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rb[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rb[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[8]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ks1_res[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF block_oper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f3 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_y : std_logic_vector(10 DOWNTO 1);
SIGNAL ww_n : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_a : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_rb : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_f1 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_ks1_res : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_priznak : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(8 DOWNTO 1);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \n[8]~output_o\ : std_logic;
SIGNAL \n[7]~output_o\ : std_logic;
SIGNAL \n[6]~output_o\ : std_logic;
SIGNAL \n[5]~output_o\ : std_logic;
SIGNAL \n[4]~output_o\ : std_logic;
SIGNAL \n[3]~output_o\ : std_logic;
SIGNAL \n[2]~output_o\ : std_logic;
SIGNAL \n[1]~output_o\ : std_logic;
SIGNAL \rb[4]~output_o\ : std_logic;
SIGNAL \rb[3]~output_o\ : std_logic;
SIGNAL \rb[2]~output_o\ : std_logic;
SIGNAL \rb[1]~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \ks1_res[8]~output_o\ : std_logic;
SIGNAL \ks1_res[7]~output_o\ : std_logic;
SIGNAL \ks1_res[6]~output_o\ : std_logic;
SIGNAL \ks1_res[5]~output_o\ : std_logic;
SIGNAL \ks1_res[4]~output_o\ : std_logic;
SIGNAL \ks1_res[3]~output_o\ : std_logic;
SIGNAL \ks1_res[2]~output_o\ : std_logic;
SIGNAL \ks1_res[1]~output_o\ : std_logic;
SIGNAL \priznak[1]~output_o\ : std_logic;
SIGNAL \priznak[0]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \inst6|_~3_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst6|_~2_combout\ : std_logic;
SIGNAL \inst6|_~1_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \inst6|_~0_combout\ : std_logic;
SIGNAL \inst7|q[4]~4_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|q[3]~5_combout\ : std_logic;
SIGNAL \inst7|q[2]~6_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|q[1]~7_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst7|q[8]~0_combout\ : std_logic;
SIGNAL \inst7|q[7]~1_combout\ : std_logic;
SIGNAL \inst7|q[6]~2_combout\ : std_logic;
SIGNAL \inst7|q[5]~3_combout\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
SIGNAL \inst8|Add1~5\ : std_logic;
SIGNAL \inst8|Add1~6_combout\ : std_logic;
SIGNAL \inst11|state~2_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \inst11|state[8]~1_combout\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Add1~7\ : std_logic;
SIGNAL \inst8|Add1~8_combout\ : std_logic;
SIGNAL \inst11|state~3_combout\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Add1~9\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst11|state~8_combout\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add1~11\ : std_logic;
SIGNAL \inst8|Add1~12_combout\ : std_logic;
SIGNAL \inst11|state~7_combout\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Add1~13\ : std_logic;
SIGNAL \inst8|Add1~14_combout\ : std_logic;
SIGNAL \inst11|state~6_combout\ : std_logic;
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \inst11|state~4_combout\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst11|state~5_combout\ : std_logic;
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst11|state~0_combout\ : std_logic;
SIGNAL \inst14|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|Equal1~1_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \inst14|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|pr[0]~0_combout\ : std_logic;
SIGNAL \inst11|state\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \inst6|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|d\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst14|d\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

f3 <= ww_f3;
ww_clk <= clk;
ww_y <= y;
n <= ww_n;
ww_a <= a;
rb <= ww_rb;
ww_b <= b;
f1 <= ww_f1;
f2 <= ww_f2;
ks1_res <= ww_ks1_res;
priznak <= ww_priznak;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_Mux7~0_combout\ <= NOT \inst|Mux7~0_combout\;
\inst|ALT_INV_Mux6~0_combout\ <= NOT \inst|Mux6~0_combout\;
\inst|ALT_INV_Mux5~0_combout\ <= NOT \inst|Mux5~0_combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N16
\f3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|Equal1~1_combout\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\n[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(8),
	devoe => ww_devoe,
	o => \n[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\n[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(7),
	devoe => ww_devoe,
	o => \n[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\n[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(6),
	devoe => ww_devoe,
	o => \n[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\n[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(5),
	devoe => ww_devoe,
	o => \n[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\n[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(4),
	devoe => ww_devoe,
	o => \n[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(3),
	devoe => ww_devoe,
	o => \n[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(2),
	devoe => ww_devoe,
	o => \n[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|state\(1),
	devoe => ww_devoe,
	o => \n[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\rb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dffs\(3),
	devoe => ww_devoe,
	o => \rb[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\rb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dffs\(2),
	devoe => ww_devoe,
	o => \rb[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\rb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dffs\(1),
	devoe => ww_devoe,
	o => \rb[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\rb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dffs\(0),
	devoe => ww_devoe,
	o => \rb[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\f1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dffs\(3),
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\f2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dffs\(2),
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\ks1_res[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\ks1_res[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\ks1_res[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\ks1_res[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\ks1_res[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ks1_res[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ks1_res[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ks1_res[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \ks1_res[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\priznak[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|d\(1),
	devoe => ww_devoe,
	o => \priznak[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\priznak[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|d\(0),
	devoe => ww_devoe,
	o => \priznak[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~14_combout\,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~12_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~10_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~8_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~6_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~4_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~2_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Add1~0_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

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

-- Location: IOIBUF_X34_Y20_N8
\y[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\y[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\y[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: FF_X28_Y2_N15
\inst1|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[4]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|d\(4));

-- Location: IOIBUF_X30_Y24_N1
\y[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X28_Y2_N14
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst1|d\(4)))) # (!\y[4]~input_o\ & ((\inst1|d\(4)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst1|d\(4),
	datad => \y[5]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\y[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X28_Y2_N4
\inst6|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~3_combout\ = (\y[2]~input_o\ & ((\b[1]~input_o\))) # (!\y[2]~input_o\ & (\inst6|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datac => \inst6|dffs\(3),
	datad => \b[1]~input_o\,
	combout => \inst6|_~3_combout\);

-- Location: IOIBUF_X18_Y0_N15
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: FF_X29_Y2_N5
\inst6|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|_~3_combout\,
	sload => VCC,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dffs\(0));

-- Location: IOIBUF_X23_Y0_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X28_Y2_N26
\inst6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~2_combout\ = (\y[2]~input_o\ & ((\b[2]~input_o\))) # (!\y[2]~input_o\ & (\inst6|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datac => \inst6|dffs\(0),
	datad => \b[2]~input_o\,
	combout => \inst6|_~2_combout\);

-- Location: FF_X29_Y2_N31
\inst6|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|_~2_combout\,
	sload => VCC,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dffs\(1));

-- Location: LCCOMB_X28_Y2_N0
\inst6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~1_combout\ = (\y[2]~input_o\ & (\b[3]~input_o\)) # (!\y[2]~input_o\ & ((\inst6|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \inst6|dffs\(1),
	datad => \y[2]~input_o\,
	combout => \inst6|_~1_combout\);

-- Location: FF_X29_Y2_N1
\inst6|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|_~1_combout\,
	sload => VCC,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dffs\(2));

-- Location: IOIBUF_X28_Y24_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X28_Y2_N8
\inst6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~0_combout\ = (\y[2]~input_o\ & ((\b[4]~input_o\))) # (!\y[2]~input_o\ & (\inst6|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \inst6|dffs\(2),
	datac => \b[4]~input_o\,
	combout => \inst6|_~0_combout\);

-- Location: FF_X28_Y2_N9
\inst6|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|_~0_combout\,
	ena => \y[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dffs\(3));

-- Location: LCCOMB_X28_Y2_N6
\inst7|q[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[4]~4_combout\ = (\y[9]~input_o\ & ((\inst11|state\(4)))) # (!\y[9]~input_o\ & (\inst6|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|dffs\(3),
	datad => \inst11|state\(4),
	combout => \inst7|q[4]~4_combout\);

-- Location: IOIBUF_X25_Y0_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X29_Y2_N27
\inst1|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|d\(3));

-- Location: LCCOMB_X29_Y2_N26
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst1|d\(3)))) # (!\y[4]~input_o\ & ((\inst1|d\(3)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst1|d\(3),
	datad => \y[5]~input_o\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y2_N0
\inst7|q[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[3]~5_combout\ = (\y[9]~input_o\ & ((\inst11|state\(3)))) # (!\y[9]~input_o\ & (\inst6|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|dffs\(2),
	datad => \inst11|state\(3),
	combout => \inst7|q[3]~5_combout\);

-- Location: LCCOMB_X29_Y2_N28
\inst7|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[2]~6_combout\ = (\y[9]~input_o\ & ((\inst11|state\(2)))) # (!\y[9]~input_o\ & (\inst6|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|dffs\(1),
	datad => \inst11|state\(2),
	combout => \inst7|q[2]~6_combout\);

-- Location: IOIBUF_X16_Y0_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X28_Y2_N29
\inst1|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|d\(2));

-- Location: LCCOMB_X28_Y2_N28
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst1|d\(2)))) # (!\y[4]~input_o\ & ((\inst1|d\(2)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst1|d\(2),
	datad => \y[5]~input_o\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y2_N6
\inst7|q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[1]~7_combout\ = (\y[9]~input_o\ & ((\inst11|state\(1)))) # (!\y[9]~input_o\ & (\inst6|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|dffs\(0),
	datad => \inst11|state\(1),
	combout => \inst7|q[1]~7_combout\);

-- Location: IOIBUF_X30_Y0_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X29_Y2_N3
\inst1|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	ena => \y[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|d\(1));

-- Location: LCCOMB_X29_Y2_N2
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\y[4]~input_o\ & ((\y[5]~input_o\) # (!\inst1|d\(1)))) # (!\y[4]~input_o\ & ((\inst1|d\(1)) # (!\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \inst1|d\(1),
	datad => \y[5]~input_o\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y2_N8
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst7|q[1]~7_combout\ & (\inst|Mux7~0_combout\ $ (GND))) # (!\inst7|q[1]~7_combout\ & (!\inst|Mux7~0_combout\ & VCC))
-- \inst8|Add0~1\ = CARRY((\inst7|q[1]~7_combout\ & !\inst|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|q[1]~7_combout\,
	datab => \inst|Mux7~0_combout\,
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X29_Y2_N10
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst7|q[2]~6_combout\ & ((\inst|Mux6~0_combout\ & (!\inst8|Add0~1\)) # (!\inst|Mux6~0_combout\ & (\inst8|Add0~1\ & VCC)))) # (!\inst7|q[2]~6_combout\ & ((\inst|Mux6~0_combout\ & ((\inst8|Add0~1\) # (GND))) # 
-- (!\inst|Mux6~0_combout\ & (!\inst8|Add0~1\))))
-- \inst8|Add0~3\ = CARRY((\inst7|q[2]~6_combout\ & (\inst|Mux6~0_combout\ & !\inst8|Add0~1\)) # (!\inst7|q[2]~6_combout\ & ((\inst|Mux6~0_combout\) # (!\inst8|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|q[2]~6_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X29_Y2_N12
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = ((\inst|Mux5~0_combout\ $ (\inst7|q[3]~5_combout\ $ (\inst8|Add0~3\)))) # (GND)
-- \inst8|Add0~5\ = CARRY((\inst|Mux5~0_combout\ & (\inst7|q[3]~5_combout\ & !\inst8|Add0~3\)) # (!\inst|Mux5~0_combout\ & ((\inst7|q[3]~5_combout\) # (!\inst8|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst7|q[3]~5_combout\,
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X29_Y2_N14
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst|Mux0~0_combout\ & ((\inst7|q[4]~4_combout\ & (!\inst8|Add0~5\)) # (!\inst7|q[4]~4_combout\ & ((\inst8|Add0~5\) # (GND))))) # (!\inst|Mux0~0_combout\ & ((\inst7|q[4]~4_combout\ & (\inst8|Add0~5\ & VCC)) # 
-- (!\inst7|q[4]~4_combout\ & (!\inst8|Add0~5\))))
-- \inst8|Add0~7\ = CARRY((\inst|Mux0~0_combout\ & ((!\inst8|Add0~5\) # (!\inst7|q[4]~4_combout\))) # (!\inst|Mux0~0_combout\ & (!\inst7|q[4]~4_combout\ & !\inst8|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst7|q[4]~4_combout\,
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X28_Y2_N22
\inst7|q[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[8]~0_combout\ = (\y[9]~input_o\ & ((\inst11|state\(8)))) # (!\y[9]~input_o\ & (\inst6|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|dffs\(3),
	datad => \inst11|state\(8),
	combout => \inst7|q[8]~0_combout\);

-- Location: LCCOMB_X29_Y2_N4
\inst7|q[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[7]~1_combout\ = (\y[9]~input_o\ & (\inst11|state\(7))) # (!\y[9]~input_o\ & ((\inst6|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datab => \inst11|state\(7),
	datad => \inst6|dffs\(3),
	combout => \inst7|q[7]~1_combout\);

-- Location: LCCOMB_X29_Y2_N30
\inst7|q[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[6]~2_combout\ = (\y[9]~input_o\ & (\inst11|state\(6))) # (!\y[9]~input_o\ & ((\inst6|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state\(6),
	datab => \y[9]~input_o\,
	datad => \inst6|dffs\(3),
	combout => \inst7|q[6]~2_combout\);

-- Location: LCCOMB_X28_Y2_N20
\inst7|q[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|q[5]~3_combout\ = (\y[9]~input_o\ & ((\inst11|state\(5)))) # (!\y[9]~input_o\ & (\inst6|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[9]~input_o\,
	datac => \inst6|dffs\(3),
	datad => \inst11|state\(5),
	combout => \inst7|q[5]~3_combout\);

-- Location: LCCOMB_X29_Y2_N16
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = ((\inst|Mux0~0_combout\ $ (\inst7|q[5]~3_combout\ $ (\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~9\ = CARRY((\inst|Mux0~0_combout\ & (\inst7|q[5]~3_combout\ & !\inst8|Add0~7\)) # (!\inst|Mux0~0_combout\ & ((\inst7|q[5]~3_combout\) # (!\inst8|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst7|q[5]~3_combout\,
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X29_Y2_N18
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst|Mux0~0_combout\ & ((\inst7|q[6]~2_combout\ & (!\inst8|Add0~9\)) # (!\inst7|q[6]~2_combout\ & ((\inst8|Add0~9\) # (GND))))) # (!\inst|Mux0~0_combout\ & ((\inst7|q[6]~2_combout\ & (\inst8|Add0~9\ & VCC)) # 
-- (!\inst7|q[6]~2_combout\ & (!\inst8|Add0~9\))))
-- \inst8|Add0~11\ = CARRY((\inst|Mux0~0_combout\ & ((!\inst8|Add0~9\) # (!\inst7|q[6]~2_combout\))) # (!\inst|Mux0~0_combout\ & (!\inst7|q[6]~2_combout\ & !\inst8|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst7|q[6]~2_combout\,
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X29_Y2_N20
\inst8|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = ((\inst7|q[7]~1_combout\ $ (\inst|Mux0~0_combout\ $ (\inst8|Add0~11\)))) # (GND)
-- \inst8|Add0~13\ = CARRY((\inst7|q[7]~1_combout\ & ((!\inst8|Add0~11\) # (!\inst|Mux0~0_combout\))) # (!\inst7|q[7]~1_combout\ & (!\inst|Mux0~0_combout\ & !\inst8|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|q[7]~1_combout\,
	datab => \inst|Mux0~0_combout\,
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: LCCOMB_X29_Y2_N22
\inst8|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst|Mux0~0_combout\ & ((\inst7|q[8]~0_combout\ & (!\inst8|Add0~13\)) # (!\inst7|q[8]~0_combout\ & ((\inst8|Add0~13\) # (GND))))) # (!\inst|Mux0~0_combout\ & ((\inst7|q[8]~0_combout\ & (\inst8|Add0~13\ & VCC)) # 
-- (!\inst7|q[8]~0_combout\ & (!\inst8|Add0~13\))))
-- \inst8|Add0~15\ = CARRY((\inst|Mux0~0_combout\ & ((!\inst8|Add0~13\) # (!\inst7|q[8]~0_combout\))) # (!\inst|Mux0~0_combout\ & (!\inst7|q[8]~0_combout\ & !\inst8|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst7|q[8]~0_combout\,
	datad => VCC,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: LCCOMB_X29_Y2_N24
\inst8|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = !\inst8|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~16_combout\);

-- Location: LCCOMB_X30_Y2_N4
\inst8|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst8|Add0~0_combout\ & (\inst8|Add0~16_combout\ $ (VCC))) # (!\inst8|Add0~0_combout\ & (\inst8|Add0~16_combout\ & VCC))
-- \inst8|Add1~1\ = CARRY((\inst8|Add0~0_combout\ & \inst8|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst8|Add0~16_combout\,
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

-- Location: LCCOMB_X30_Y2_N6
\inst8|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~2_combout\ = (\inst8|Add0~2_combout\ & (!\inst8|Add1~1\)) # (!\inst8|Add0~2_combout\ & ((\inst8|Add1~1\) # (GND)))
-- \inst8|Add1~3\ = CARRY((!\inst8|Add1~1\) # (!\inst8|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~2_combout\,
	datad => VCC,
	cin => \inst8|Add1~1\,
	combout => \inst8|Add1~2_combout\,
	cout => \inst8|Add1~3\);

-- Location: LCCOMB_X30_Y2_N8
\inst8|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~4_combout\ = (\inst8|Add0~4_combout\ & (\inst8|Add1~3\ $ (GND))) # (!\inst8|Add0~4_combout\ & (!\inst8|Add1~3\ & VCC))
-- \inst8|Add1~5\ = CARRY((\inst8|Add0~4_combout\ & !\inst8|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~4_combout\,
	datad => VCC,
	cin => \inst8|Add1~3\,
	combout => \inst8|Add1~4_combout\,
	cout => \inst8|Add1~5\);

-- Location: LCCOMB_X30_Y2_N10
\inst8|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~6_combout\ = (\inst8|Add0~6_combout\ & (!\inst8|Add1~5\)) # (!\inst8|Add0~6_combout\ & ((\inst8|Add1~5\) # (GND)))
-- \inst8|Add1~7\ = CARRY((!\inst8|Add1~5\) # (!\inst8|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~6_combout\,
	datad => VCC,
	cin => \inst8|Add1~5\,
	combout => \inst8|Add1~6_combout\,
	cout => \inst8|Add1~7\);

-- Location: LCCOMB_X30_Y2_N26
\inst11|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~2_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~6_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \inst11|state\(3),
	datac => \y[8]~input_o\,
	datad => \inst8|Add1~6_combout\,
	combout => \inst11|state~2_combout\);

-- Location: IOIBUF_X34_Y18_N15
\y[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X33_Y18_N24
\inst11|state[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state[8]~1_combout\ = (\y[7]~input_o\) # (\y[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[7]~input_o\,
	datad => \y[8]~input_o\,
	combout => \inst11|state[8]~1_combout\);

-- Location: FF_X30_Y2_N27
\inst11|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~2_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(4));

-- Location: LCCOMB_X30_Y2_N12
\inst8|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~8_combout\ = (\inst8|Add0~8_combout\ & (\inst8|Add1~7\ $ (GND))) # (!\inst8|Add0~8_combout\ & (!\inst8|Add1~7\ & VCC))
-- \inst8|Add1~9\ = CARRY((\inst8|Add0~8_combout\ & !\inst8|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~8_combout\,
	datad => VCC,
	cin => \inst8|Add1~7\,
	combout => \inst8|Add1~8_combout\,
	cout => \inst8|Add1~9\);

-- Location: LCCOMB_X30_Y2_N20
\inst11|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~3_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~8_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \inst11|state\(4),
	datac => \y[8]~input_o\,
	datad => \inst8|Add1~8_combout\,
	combout => \inst11|state~3_combout\);

-- Location: FF_X30_Y2_N21
\inst11|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~3_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(5));

-- Location: LCCOMB_X30_Y2_N14
\inst8|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~10_combout\ = (\inst8|Add0~10_combout\ & (!\inst8|Add1~9\)) # (!\inst8|Add0~10_combout\ & ((\inst8|Add1~9\) # (GND)))
-- \inst8|Add1~11\ = CARRY((!\inst8|Add1~9\) # (!\inst8|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~10_combout\,
	datad => VCC,
	cin => \inst8|Add1~9\,
	combout => \inst8|Add1~10_combout\,
	cout => \inst8|Add1~11\);

-- Location: LCCOMB_X30_Y2_N2
\inst11|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~8_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~10_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \inst11|state\(5),
	datac => \inst8|Add1~10_combout\,
	datad => \y[6]~input_o\,
	combout => \inst11|state~8_combout\);

-- Location: FF_X30_Y2_N3
\inst11|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~8_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(6));

-- Location: LCCOMB_X30_Y2_N16
\inst8|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~12_combout\ = (\inst8|Add0~12_combout\ & (\inst8|Add1~11\ $ (GND))) # (!\inst8|Add0~12_combout\ & (!\inst8|Add1~11\ & VCC))
-- \inst8|Add1~13\ = CARRY((\inst8|Add0~12_combout\ & !\inst8|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~12_combout\,
	datad => VCC,
	cin => \inst8|Add1~11\,
	combout => \inst8|Add1~12_combout\,
	cout => \inst8|Add1~13\);

-- Location: LCCOMB_X30_Y2_N0
\inst11|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~7_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~12_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \inst11|state\(6),
	datac => \y[8]~input_o\,
	datad => \inst8|Add1~12_combout\,
	combout => \inst11|state~7_combout\);

-- Location: FF_X30_Y2_N1
\inst11|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~7_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(7));

-- Location: LCCOMB_X30_Y2_N18
\inst8|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~14_combout\ = \inst8|Add1~13\ $ (\inst8|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~14_combout\,
	cin => \inst8|Add1~13\,
	combout => \inst8|Add1~14_combout\);

-- Location: LCCOMB_X30_Y2_N30
\inst11|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~6_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~14_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \inst11|state\(7),
	datac => \y[8]~input_o\,
	datad => \inst8|Add1~14_combout\,
	combout => \inst11|state~6_combout\);

-- Location: FF_X30_Y2_N31
\inst11|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~6_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(8));

-- Location: LCCOMB_X30_Y2_N22
\inst11|state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~4_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~0_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \inst11|state\(8),
	datac => \inst8|Add1~0_combout\,
	datad => \y[6]~input_o\,
	combout => \inst11|state~4_combout\);

-- Location: FF_X30_Y2_N23
\inst11|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~4_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(1));

-- Location: LCCOMB_X30_Y2_N28
\inst11|state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~5_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~2_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[8]~input_o\,
	datac => \inst11|state\(1),
	datad => \inst8|Add1~2_combout\,
	combout => \inst11|state~5_combout\);

-- Location: FF_X30_Y2_N29
\inst11|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~5_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(2));

-- Location: LCCOMB_X30_Y2_N24
\inst11|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state~0_combout\ = (!\y[8]~input_o\ & ((\y[6]~input_o\ & ((\inst8|Add1~4_combout\))) # (!\y[6]~input_o\ & (\inst11|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[8]~input_o\,
	datab => \inst11|state\(2),
	datac => \inst8|Add1~4_combout\,
	datad => \y[6]~input_o\,
	combout => \inst11|state~0_combout\);

-- Location: FF_X30_Y2_N25
\inst11|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst11|state~0_combout\,
	ena => \inst11|state[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state\(3));

-- Location: LCCOMB_X31_Y2_N12
\inst14|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal1~0_combout\ = (\inst11|state\(1) & (\inst11|state\(5) & (\inst11|state\(4) & \inst11|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state\(1),
	datab => \inst11|state\(5),
	datac => \inst11|state\(4),
	datad => \inst11|state\(2),
	combout => \inst14|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y2_N14
\inst14|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal1~1_combout\ = (\inst11|state\(3) & \inst14|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|state\(3),
	datad => \inst14|Equal1~0_combout\,
	combout => \inst14|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y2_N28
\inst14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = (\inst11|state\(4)) # (\inst11|state\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|state\(4),
	datad => \inst11|state\(5),
	combout => \inst14|Equal0~0_combout\);

-- Location: IOIBUF_X34_Y17_N15
\y[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: FF_X31_Y2_N29
\inst14|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Equal0~0_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|d\(1));

-- Location: LCCOMB_X32_Y2_N24
\inst14|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~1_combout\ = (!\inst11|state\(2) & !\inst11|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state\(2),
	datac => \inst11|state\(1),
	combout => \inst14|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y2_N6
\inst14|pr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|pr[0]~0_combout\ = (\inst11|state\(5) & (((!\inst11|state\(4))))) # (!\inst11|state\(5) & ((\inst11|state\(3)) # ((\inst11|state\(4)) # (!\inst14|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state\(3),
	datab => \inst11|state\(5),
	datac => \inst11|state\(4),
	datad => \inst14|Equal0~1_combout\,
	combout => \inst14|pr[0]~0_combout\);

-- Location: FF_X31_Y2_N7
\inst14|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|pr[0]~0_combout\,
	ena => \y[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|d\(0));

ww_f3 <= \f3~output_o\;

ww_n(8) <= \n[8]~output_o\;

ww_n(7) <= \n[7]~output_o\;

ww_n(6) <= \n[6]~output_o\;

ww_n(5) <= \n[5]~output_o\;

ww_n(4) <= \n[4]~output_o\;

ww_n(3) <= \n[3]~output_o\;

ww_n(2) <= \n[2]~output_o\;

ww_n(1) <= \n[1]~output_o\;

ww_rb(4) <= \rb[4]~output_o\;

ww_rb(3) <= \rb[3]~output_o\;

ww_rb(2) <= \rb[2]~output_o\;

ww_rb(1) <= \rb[1]~output_o\;

ww_f1 <= \f1~output_o\;

ww_f2 <= \f2~output_o\;

ww_ks1_res(8) <= \ks1_res[8]~output_o\;

ww_ks1_res(7) <= \ks1_res[7]~output_o\;

ww_ks1_res(6) <= \ks1_res[6]~output_o\;

ww_ks1_res(5) <= \ks1_res[5]~output_o\;

ww_ks1_res(4) <= \ks1_res[4]~output_o\;

ww_ks1_res(3) <= \ks1_res[3]~output_o\;

ww_ks1_res(2) <= \ks1_res[2]~output_o\;

ww_ks1_res(1) <= \ks1_res[1]~output_o\;

ww_priznak(1) <= \priznak[1]~output_o\;

ww_priznak(0) <= \priznak[0]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;
END structure;


