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

-- DATE "01/15/2022 01:15:01"

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

ENTITY 	alu IS
    PORT (
	sko : OUT std_logic;
	clk : IN std_logic;
	set : IN std_logic;
	cop : IN std_logic;
	sno : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	next_state_out : OUT std_logic_vector(1 DOWNTO 0);
	priznak : OUT std_logic_vector(1 DOWNTO 0);
	rc : OUT std_logic_vector(7 DOWNTO 0);
	s_out : OUT std_logic_vector(1 DOWNTO 0);
	x : OUT std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic_vector(6 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- sko	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_state_out[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- priznak[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[7]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[5]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rc[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_out[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cop	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sno	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
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
SIGNAL ww_set : std_logic;
SIGNAL ww_cop : std_logic;
SIGNAL ww_sno : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_next_state_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_priznak : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|Selector5~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sko~output_o\ : std_logic;
SIGNAL \next_state_out[1]~output_o\ : std_logic;
SIGNAL \next_state_out[0]~output_o\ : std_logic;
SIGNAL \priznak[1]~output_o\ : std_logic;
SIGNAL \priznak[0]~output_o\ : std_logic;
SIGNAL \rc[7]~output_o\ : std_logic;
SIGNAL \rc[6]~output_o\ : std_logic;
SIGNAL \rc[5]~output_o\ : std_logic;
SIGNAL \rc[4]~output_o\ : std_logic;
SIGNAL \rc[3]~output_o\ : std_logic;
SIGNAL \rc[2]~output_o\ : std_logic;
SIGNAL \rc[1]~output_o\ : std_logic;
SIGNAL \rc[0]~output_o\ : std_logic;
SIGNAL \s_out[1]~output_o\ : std_logic;
SIGNAL \s_out[0]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \sno~input_o\ : std_logic;
SIGNAL \inst3|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|state.s1~feeder_combout\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.s1~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|state.s0~q\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Selector5~1clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|i~2_combout\ : std_logic;
SIGNAL \inst3|rc[3]~0_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst|comb~0_combout\ : std_logic;
SIGNAL \inst3|i~1_combout\ : std_logic;
SIGNAL \inst3|i~0_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|state.s2~q\ : std_logic;
SIGNAL \inst3|Equal10~0_combout\ : std_logic;
SIGNAL \cop~input_o\ : std_logic;
SIGNAL \inst3|rc~3_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|rc~7_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|rc~8_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|rc~9_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|rc~2_combout\ : std_logic;
SIGNAL \inst3|rc~4_combout\ : std_logic;
SIGNAL \inst3|rc~5_combout\ : std_logic;
SIGNAL \inst3|rc~6_combout\ : std_logic;
SIGNAL \inst3|Equal9~0_combout\ : std_logic;
SIGNAL \inst3|rc~1_combout\ : std_logic;
SIGNAL \inst3|Equal9~1_combout\ : std_logic;
SIGNAL \inst|sko~0_combout\ : std_logic;
SIGNAL \inst|next_state_out[1]~0_combout\ : std_logic;
SIGNAL \inst|next_state_out[0]~1_combout\ : std_logic;
SIGNAL \inst|s_out[1]~0_combout\ : std_logic;
SIGNAL \inst|s_out[0]~1_combout\ : std_logic;
SIGNAL \inst3|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|rc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|rb\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|ra\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_s_out[0]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_out[1]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_next_state_out[1]~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ALT_INV_set~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sko <= ww_sko;
ww_clk <= clk;
ww_set <= set;
ww_cop <= cop;
ww_sno <= sno;
ww_a <= a;
ww_b <= b;
next_state_out <= ww_next_state_out;
priznak <= ww_priznak;
rc <= ww_rc;
s_out <= ww_s_out;
x <= ww_x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|Selector5~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Selector5~1_combout\);

\set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_s_out[0]~1_combout\ <= NOT \inst|s_out[0]~1_combout\;
\inst|ALT_INV_s_out[1]~0_combout\ <= NOT \inst|s_out[1]~0_combout\;
\inst|ALT_INV_next_state_out[1]~0_combout\ <= NOT \inst|next_state_out[1]~0_combout\;
\inst3|ALT_INV_Equal8~0_combout\ <= NOT \inst3|Equal8~0_combout\;
\ALT_INV_set~inputclkctrl_outclk\ <= NOT \set~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\sko~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sko~0_combout\,
	devoe => ww_devoe,
	o => \sko~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\next_state_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_next_state_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \next_state_out[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\next_state_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|next_state_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \next_state_out[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\priznak[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \priznak[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\priznak[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \priznak[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\rc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(7),
	devoe => ww_devoe,
	o => \rc[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\rc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(6),
	devoe => ww_devoe,
	o => \rc[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\rc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(5),
	devoe => ww_devoe,
	o => \rc[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\rc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(4),
	devoe => ww_devoe,
	o => \rc[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\rc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(3),
	devoe => ww_devoe,
	o => \rc[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\rc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(2),
	devoe => ww_devoe,
	o => \rc[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\rc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(1),
	devoe => ww_devoe,
	o => \rc[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\rc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rc\(0),
	devoe => ww_devoe,
	o => \rc[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\s_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_s_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \s_out[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\s_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_s_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \s_out[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Equal9~1_combout\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Equal8~0_combout\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y\(4),
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y\(1),
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|y\(0),
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

-- Location: IOIBUF_X0_Y6_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\sno~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sno,
	o => \sno~input_o\);

-- Location: LCCOMB_X1_Y10_N2
\inst3|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal8~0_combout\ = (\inst3|i\(0)) # ((\inst3|i\(1)) # (!\inst3|i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(0),
	datac => \inst3|i\(2),
	datad => \inst3|i\(1),
	combout => \inst3|Equal8~0_combout\);

-- Location: LCCOMB_X2_Y10_N6
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|state.s2~q\ & ((\inst3|Equal8~0_combout\) # ((\sno~input_o\ & !\inst|state.s0~q\)))) # (!\inst|state.s2~q\ & (\sno~input_o\ & (!\inst|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s2~q\,
	datab => \sno~input_o\,
	datac => \inst|state.s0~q\,
	datad => \inst3|Equal8~0_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X2_Y10_N2
\inst|state.s1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.s1~feeder_combout\ = \inst|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector1~0_combout\,
	combout => \inst|state.s1~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: CLKCTRL_G4
\set~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set~inputclkctrl_outclk\);

-- Location: FF_X2_Y10_N3
\inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|state.s1~feeder_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s1~q\);

-- Location: LCCOMB_X1_Y10_N14
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst3|i\(2) & (!\inst3|i\(0) & !\inst3|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(2),
	datac => \inst3|i\(0),
	datad => \inst3|i\(1),
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X2_Y10_N28
\inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|state.s1~q\ & (((!\inst|Selector0~0_combout\)))) # (!\inst|state.s1~q\ & ((\inst|state.s2~q\ & ((!\inst|Selector0~0_combout\))) # (!\inst|state.s2~q\ & (\sno~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \sno~input_o\,
	datac => \inst|state.s2~q\,
	datad => \inst|Selector0~0_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: FF_X2_Y10_N9
\inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Selector0~1_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s0~q\);

-- Location: LCCOMB_X2_Y10_N30
\inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\sno~input_o\ & !\inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sno~input_o\,
	datac => \inst|state.s0~q\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X1_Y10_N0
\inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = ((\inst3|Mux0~1_combout\) # (!\inst3|Equal8~0_combout\)) # (!\inst|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datac => \inst3|Mux0~1_combout\,
	datad => \inst3|Equal8~0_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: CLKCTRL_G3
\inst|Selector5~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Selector5~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Selector5~1clkctrl_outclk\);

-- Location: LCCOMB_X2_Y10_N12
\inst|y[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y\(0) = (GLOBAL(\inst|Selector5~1clkctrl_outclk\) & ((\inst|Selector1~1_combout\))) # (!GLOBAL(\inst|Selector5~1clkctrl_outclk\) & (\inst|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datac => \inst|Selector1~1_combout\,
	datad => \inst|Selector5~1clkctrl_outclk\,
	combout => \inst|y\(0));

-- Location: LCCOMB_X2_Y10_N8
\inst3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (!\inst|y\(0) & (\inst|y\(4) & !\inst|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datab => \inst|y\(4),
	datad => \inst|y\(1),
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\inst3|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|i~2_combout\ = (\inst3|Equal2~0_combout\ & (\inst3|i\(2) $ (((\inst3|i\(1) & \inst3|i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(1),
	datab => \inst3|i\(0),
	datac => \inst3|i\(2),
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|i~2_combout\);

-- Location: LCCOMB_X2_Y10_N4
\inst3|rc[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc[3]~0_combout\ = (!\inst|y\(1) & (\inst|y\(4) $ (\inst|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y\(1),
	datac => \inst|y\(4),
	datad => \inst|y\(0),
	combout => \inst3|rc[3]~0_combout\);

-- Location: FF_X1_Y10_N31
\inst3|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|i~2_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|i\(2));

-- Location: LCCOMB_X2_Y10_N16
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|state.s2~q\ & ((\inst3|i\(0)) # ((\inst3|i\(1)) # (!\inst3|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(0),
	datab => \inst3|i\(2),
	datac => \inst3|i\(1),
	datad => \inst|state.s2~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X2_Y10_N14
\inst|y[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y\(4) = (GLOBAL(\inst|Selector5~1clkctrl_outclk\) & (\inst|Selector4~0_combout\)) # (!GLOBAL(\inst|Selector5~1clkctrl_outclk\) & ((\inst|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector4~0_combout\,
	datac => \inst|y\(4),
	datad => \inst|Selector5~1clkctrl_outclk\,
	combout => \inst|y\(4));

-- Location: LCCOMB_X2_Y10_N0
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst|y\(1) & (!\inst|y\(4) & \inst|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y\(1),
	datac => \inst|y\(4),
	datad => \inst|y\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: FF_X1_Y10_N25
\inst3|rb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \b[2]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rb\(2));

-- Location: IOIBUF_X0_Y23_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: FF_X1_Y10_N23
\inst3|rb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rb\(3));

-- Location: IOIBUF_X0_Y23_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: FF_X1_Y10_N9
\inst3|rb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \b[1]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rb\(1));

-- Location: IOIBUF_X0_Y23_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: FF_X1_Y10_N7
\inst3|rb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \b[0]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rb\(0));

-- Location: LCCOMB_X1_Y10_N6
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst3|i\(1) & (((\inst3|i\(0))))) # (!\inst3|i\(1) & ((\inst3|i\(0) & (\inst3|rb\(1))) # (!\inst3|i\(0) & ((\inst3|rb\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(1),
	datab => \inst3|rb\(1),
	datac => \inst3|rb\(0),
	datad => \inst3|i\(0),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y10_N22
\inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\inst3|i\(1) & ((\inst3|Mux0~0_combout\ & ((\inst3|rb\(3)))) # (!\inst3|Mux0~0_combout\ & (\inst3|rb\(2))))) # (!\inst3|i\(1) & (((\inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(1),
	datab => \inst3|rb\(2),
	datac => \inst3|rb\(3),
	datad => \inst3|Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y10_N4
\inst|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~0_combout\ = ((!\inst3|Mux0~1_combout\ & !\inst3|Equal8~0_combout\)) # (!\inst|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~1_combout\,
	datac => \inst3|Equal8~0_combout\,
	datad => \inst|state.s1~q\,
	combout => \inst|comb~0_combout\);

-- Location: LCCOMB_X1_Y10_N16
\inst|y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y\(1) = (!\inst|comb~0_combout\ & ((\inst3|Mux0~1_combout\) # (\inst|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comb~0_combout\,
	datac => \inst3|Mux0~1_combout\,
	datad => \inst|y\(1),
	combout => \inst|y\(1));

-- Location: LCCOMB_X1_Y10_N26
\inst3|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|i~1_combout\ = (!\inst|y\(1) & (!\inst|y\(0) & (!\inst3|i\(0) & \inst|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(1),
	datab => \inst|y\(0),
	datac => \inst3|i\(0),
	datad => \inst|y\(4),
	combout => \inst3|i~1_combout\);

-- Location: FF_X1_Y10_N27
\inst3|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|i~1_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|i\(0));

-- Location: LCCOMB_X1_Y10_N12
\inst3|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|i~0_combout\ = (\inst3|Equal2~0_combout\ & (\inst3|i\(0) $ (\inst3|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|i\(0),
	datac => \inst3|i\(1),
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|i~0_combout\);

-- Location: FF_X1_Y10_N13
\inst3|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|i~0_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|i\(1));

-- Location: LCCOMB_X1_Y10_N28
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|state.s1~q\ & ((\inst3|i\(1)) # ((\inst3|i\(0)) # (!\inst3|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(1),
	datab => \inst|state.s1~q\,
	datac => \inst3|i\(2),
	datad => \inst3|i\(0),
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X2_Y10_N27
\inst|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Selector5~0_combout\,
	clrn => \ALT_INV_set~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s2~q\);

-- Location: LCCOMB_X1_Y10_N24
\inst3|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal10~0_combout\ = (\inst3|i\(1) & (!\inst3|i\(2) & \inst3|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|i\(1),
	datab => \inst3|i\(2),
	datad => \inst3|i\(0),
	combout => \inst3|Equal10~0_combout\);

-- Location: IOIBUF_X7_Y24_N1
\cop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cop,
	o => \cop~input_o\);

-- Location: LCCOMB_X3_Y10_N30
\inst3|rc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~3_combout\ = (\inst|y\(0) & (!\inst|y\(1) & !\inst|y\(4))) # (!\inst|y\(0) & (\inst|y\(1) $ (\inst|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datac => \inst|y\(1),
	datad => \inst|y\(4),
	combout => \inst3|rc~3_combout\);

-- Location: LCCOMB_X3_Y10_N24
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (!\inst|y\(0) & (\inst|y\(1) & !\inst|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datac => \inst|y\(1),
	datad => \inst|y\(4),
	combout => \inst3|Equal1~0_combout\);

-- Location: IOIBUF_X7_Y0_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X2_Y10_N25
\inst3|ra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ra\(3));

-- Location: IOIBUF_X1_Y0_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X2_Y10_N23
\inst3|ra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ra\(2));

-- Location: IOIBUF_X7_Y24_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X2_Y10_N21
\inst3|ra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ra\(1));

-- Location: IOIBUF_X13_Y0_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X2_Y10_N19
\inst3|ra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	ena => \inst3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ra\(0));

-- Location: LCCOMB_X2_Y10_N18
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst3|rc\(4) & (\inst3|ra\(0) $ (VCC))) # (!\inst3|rc\(4) & (\inst3|ra\(0) & VCC))
-- \inst3|Add0~1\ = CARRY((\inst3|rc\(4) & \inst3|ra\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc\(4),
	datab => \inst3|ra\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X2_Y10_N20
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|rc\(5) & ((\inst3|ra\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst3|ra\(1) & (!\inst3|Add0~1\)))) # (!\inst3|rc\(5) & ((\inst3|ra\(1) & (!\inst3|Add0~1\)) # (!\inst3|ra\(1) & ((\inst3|Add0~1\) # (GND)))))
-- \inst3|Add0~3\ = CARRY((\inst3|rc\(5) & (!\inst3|ra\(1) & !\inst3|Add0~1\)) # (!\inst3|rc\(5) & ((!\inst3|Add0~1\) # (!\inst3|ra\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc\(5),
	datab => \inst3|ra\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X2_Y10_N22
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = ((\inst3|ra\(2) $ (\inst3|rc\(6) $ (!\inst3|Add0~3\)))) # (GND)
-- \inst3|Add0~5\ = CARRY((\inst3|ra\(2) & ((\inst3|rc\(6)) # (!\inst3|Add0~3\))) # (!\inst3|ra\(2) & (\inst3|rc\(6) & !\inst3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ra\(2),
	datab => \inst3|rc\(6),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X2_Y10_N24
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = \inst3|ra\(3) $ (\inst3|Add0~5\ $ (\inst3|rc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ra\(3),
	datad => \inst3|rc\(7),
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\);

-- Location: LCCOMB_X2_Y10_N10
\inst3|rc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~7_combout\ = (\inst3|rc~3_combout\ & (\inst3|Equal1~0_combout\ & ((\inst3|Add0~6_combout\)))) # (!\inst3|rc~3_combout\ & ((\inst3|rc\(7)) # ((\inst3|Equal1~0_combout\ & \inst3|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc~3_combout\,
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|rc\(7),
	datad => \inst3|Add0~6_combout\,
	combout => \inst3|rc~7_combout\);

-- Location: FF_X2_Y10_N11
\inst3|rc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(7));

-- Location: LCCOMB_X3_Y10_N28
\inst3|rc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~8_combout\ = (\inst3|Equal2~0_combout\ & (\inst3|rc\(7))) # (!\inst3|Equal2~0_combout\ & (((\inst3|Equal1~0_combout\ & \inst3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc\(7),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|Equal2~0_combout\,
	datad => \inst3|Add0~4_combout\,
	combout => \inst3|rc~8_combout\);

-- Location: FF_X3_Y10_N29
\inst3|rc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~8_combout\,
	ena => \inst3|rc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(6));

-- Location: LCCOMB_X3_Y10_N2
\inst3|rc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~9_combout\ = (\inst3|Equal2~0_combout\ & (\inst3|rc\(6))) # (!\inst3|Equal2~0_combout\ & (((\inst3|Equal1~0_combout\ & \inst3|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc\(6),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|Equal2~0_combout\,
	datad => \inst3|Add0~2_combout\,
	combout => \inst3|rc~9_combout\);

-- Location: FF_X3_Y10_N3
\inst3|rc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~9_combout\,
	ena => \inst3|rc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(5));

-- Location: LCCOMB_X3_Y10_N6
\inst3|rc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~2_combout\ = (\inst3|Equal2~0_combout\ & (\inst3|rc\(5))) # (!\inst3|Equal2~0_combout\ & (((\inst3|Add0~0_combout\ & \inst3|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc\(5),
	datab => \inst3|Add0~0_combout\,
	datac => \inst3|Equal2~0_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|rc~2_combout\);

-- Location: FF_X3_Y10_N7
\inst3|rc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~2_combout\,
	ena => \inst3|rc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(4));

-- Location: LCCOMB_X3_Y10_N16
\inst3|rc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~4_combout\ = (!\inst|y\(0) & (\inst|y\(4) & (!\inst|y\(1) & \inst3|rc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datab => \inst|y\(4),
	datac => \inst|y\(1),
	datad => \inst3|rc\(4),
	combout => \inst3|rc~4_combout\);

-- Location: FF_X3_Y10_N17
\inst3|rc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~4_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(3));

-- Location: LCCOMB_X3_Y10_N26
\inst3|rc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~5_combout\ = (!\inst|y\(0) & (\inst3|rc\(3) & (!\inst|y\(1) & \inst|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datab => \inst3|rc\(3),
	datac => \inst|y\(1),
	datad => \inst|y\(4),
	combout => \inst3|rc~5_combout\);

-- Location: FF_X3_Y10_N27
\inst3|rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~5_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(2));

-- Location: LCCOMB_X3_Y10_N20
\inst3|rc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~6_combout\ = (!\inst|y\(0) & (\inst3|rc\(2) & (!\inst|y\(1) & \inst|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datab => \inst3|rc\(2),
	datac => \inst|y\(1),
	datad => \inst|y\(4),
	combout => \inst3|rc~6_combout\);

-- Location: FF_X3_Y10_N21
\inst3|rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~6_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(1));

-- Location: LCCOMB_X3_Y10_N22
\inst3|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal9~0_combout\ = (\inst3|rc\(4) & (\inst3|rc\(3) & (\inst3|rc\(2) & \inst3|rc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rc\(4),
	datab => \inst3|rc\(3),
	datac => \inst3|rc\(2),
	datad => \inst3|rc\(1),
	combout => \inst3|Equal9~0_combout\);

-- Location: LCCOMB_X3_Y10_N0
\inst3|rc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rc~1_combout\ = (!\inst|y\(0) & (\inst3|rc\(1) & (!\inst|y\(1) & \inst|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|y\(0),
	datab => \inst3|rc\(1),
	datac => \inst|y\(1),
	datad => \inst|y\(4),
	combout => \inst3|rc~1_combout\);

-- Location: FF_X3_Y10_N1
\inst3|rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|rc~1_combout\,
	ena => \inst3|rc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rc\(0));

-- Location: LCCOMB_X3_Y10_N12
\inst3|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal9~1_combout\ = (\inst3|Equal9~0_combout\ & \inst3|rc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal9~0_combout\,
	datad => \inst3|rc\(0),
	combout => \inst3|Equal9~1_combout\);

-- Location: LCCOMB_X3_Y10_N18
\inst|sko~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sko~0_combout\ = (\inst|state.s2~q\ & ((\inst3|Equal10~0_combout\) # ((!\cop~input_o\ & !\inst3|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s2~q\,
	datab => \inst3|Equal10~0_combout\,
	datac => \cop~input_o\,
	datad => \inst3|Equal9~1_combout\,
	combout => \inst|sko~0_combout\);

-- Location: LCCOMB_X2_Y10_N26
\inst|next_state_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state_out[1]~0_combout\ = (\inst|Selector1~0_combout\) # (!\inst|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~1_combout\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|next_state_out[1]~0_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst|next_state_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state_out[0]~1_combout\ = (!\inst|state.s1~q\ & ((\inst|state.s2~q\ & ((\inst3|Equal8~0_combout\))) # (!\inst|state.s2~q\ & (\sno~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sno~input_o\,
	datab => \inst3|Equal8~0_combout\,
	datac => \inst|state.s1~q\,
	datad => \inst|state.s2~q\,
	combout => \inst|next_state_out[0]~1_combout\);

-- Location: LCCOMB_X1_Y10_N18
\inst|s_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_out[1]~0_combout\ = (\inst|state.s1~q\) # (!\inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.s0~q\,
	datad => \inst|state.s1~q\,
	combout => \inst|s_out[1]~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\inst|s_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_out[0]~1_combout\ = (\inst|state.s2~q\) # (!\inst|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.s0~q\,
	datad => \inst|state.s2~q\,
	combout => \inst|s_out[0]~1_combout\);

ww_sko <= \sko~output_o\;

ww_next_state_out(1) <= \next_state_out[1]~output_o\;

ww_next_state_out(0) <= \next_state_out[0]~output_o\;

ww_priznak(1) <= \priznak[1]~output_o\;

ww_priznak(0) <= \priznak[0]~output_o\;

ww_rc(7) <= \rc[7]~output_o\;

ww_rc(6) <= \rc[6]~output_o\;

ww_rc(5) <= \rc[5]~output_o\;

ww_rc(4) <= \rc[4]~output_o\;

ww_rc(3) <= \rc[3]~output_o\;

ww_rc(2) <= \rc[2]~output_o\;

ww_rc(1) <= \rc[1]~output_o\;

ww_rc(0) <= \rc[0]~output_o\;

ww_s_out(1) <= \s_out[1]~output_o\;

ww_s_out(0) <= \s_out[0]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(0) <= \x[0]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(0) <= \y[0]~output_o\;
END structure;


