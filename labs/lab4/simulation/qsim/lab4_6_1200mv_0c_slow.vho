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

-- DATE "12/19/2020 22:26:43"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4 IS
    PORT (
	q1 : OUT std_logic;
	C : IN std_logic;
	Dp : IN std_logic;
	b3 : IN std_logic;
	y1 : IN std_logic;
	y2 : IN std_logic;
	b2 : IN std_logic;
	b1 : IN std_logic;
	q2 : OUT std_logic;
	q3 : OUT std_logic
	);
END lab4;

-- Design Ports Information
-- q1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q3	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dp	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Dp : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_q2 : std_logic;
SIGNAL ww_q3 : std_logic;
SIGNAL \C~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q1~output_o\ : std_logic;
SIGNAL \q2~output_o\ : std_logic;
SIGNAL \q3~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \y1~input_o\ : std_logic;
SIGNAL \y2~input_o\ : std_logic;
SIGNAL \inst4|inst3~2_combout\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \Dp~input_o\ : std_logic;
SIGNAL \inst3|inst3~1_combout\ : std_logic;
SIGNAL \inst3|inst3~2_combout\ : std_logic;
SIGNAL \C~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst3~3_combout\ : std_logic;
SIGNAL \inst3|inst1~1_combout\ : std_logic;
SIGNAL \inst3|inst4~combout\ : std_logic;
SIGNAL \inst3|inst8~1_combout\ : std_logic;
SIGNAL \inst3|inst8~2_combout\ : std_logic;
SIGNAL \inst3|inst8~3_combout\ : std_logic;
SIGNAL \inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst3|inst9~combout\ : std_logic;
SIGNAL \inst4|inst3~1_combout\ : std_logic;
SIGNAL \inst4|inst3~3_combout\ : std_logic;
SIGNAL \inst4|inst3~4_combout\ : std_logic;
SIGNAL \inst4|inst1~1_combout\ : std_logic;
SIGNAL \inst4|inst4~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst4~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

q1 <= ww_q1;
ww_C <= C;
ww_Dp <= Dp;
ww_b3 <= b3;
ww_y1 <= y1;
ww_y2 <= y2;
ww_b2 <= b2;
ww_b1 <= b1;
q2 <= ww_q2;
q3 <= ww_q3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C~input_o\);
\inst3|ALT_INV_inst4~combout\ <= NOT \inst3|inst4~combout\;
\inst3|ALT_INV_inst9~combout\ <= NOT \inst3|inst9~combout\;
\inst4|ALT_INV_inst4~combout\ <= NOT \inst4|inst4~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N2
\q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \q1~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_inst9~combout\,
	devoe => ww_devoe,
	o => \q2~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\q3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \q3~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\y1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y1,
	o => \y1~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\y2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y2,
	o => \y2~input_o\);

-- Location: LCCOMB_X1_Y11_N6
\inst4|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3~2_combout\ = (!\y1~input_o\ & \y2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y1~input_o\,
	datac => \y2~input_o\,
	combout => \inst4|inst3~2_combout\);

-- Location: IOIBUF_X0_Y6_N22
\b2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\b3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\Dp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dp,
	o => \Dp~input_o\);

-- Location: LCCOMB_X1_Y11_N10
\inst3|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3~1_combout\ = (!\y2~input_o\ & ((\y1~input_o\ & (\b3~input_o\)) # (!\y1~input_o\ & ((\Dp~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y1~input_o\,
	datab => \b3~input_o\,
	datac => \y2~input_o\,
	datad => \Dp~input_o\,
	combout => \inst3|inst3~1_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst3|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3~2_combout\ = (\inst3|inst3~1_combout\) # ((\inst4|inst3~2_combout\ & (\inst3|inst4~combout\ $ (!\b3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3~1_combout\,
	datab => \inst3|inst4~combout\,
	datac => \inst4|inst3~2_combout\,
	datad => \b3~input_o\,
	combout => \inst3|inst3~2_combout\);

-- Location: CLKCTRL_G2
\C~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N26
\inst3|inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3~3_combout\ = (\inst3|inst3~2_combout\ & ((\inst3|inst3~3_combout\) # ((\inst3|inst1~1_combout\) # (!GLOBAL(\C~inputclkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3~2_combout\,
	datab => \inst3|inst3~3_combout\,
	datac => \inst3|inst1~1_combout\,
	datad => \C~inputclkctrl_outclk\,
	combout => \inst3|inst3~3_combout\);

-- Location: LCCOMB_X1_Y11_N4
\inst3|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst1~1_combout\ = (\C~input_o\ & ((\inst3|inst3~3_combout\) # (\inst3|inst1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \inst3|inst3~3_combout\,
	datac => \inst3|inst1~1_combout\,
	combout => \inst3|inst1~1_combout\);

-- Location: LCCOMB_X1_Y11_N8
\inst3|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4~combout\ = (!\inst3|inst1~1_combout\ & ((\inst3|inst4~combout\) # ((!\inst3|inst3~3_combout\ & \C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4~combout\,
	datab => \inst3|inst1~1_combout\,
	datac => \inst3|inst3~3_combout\,
	datad => \C~input_o\,
	combout => \inst3|inst4~combout\);

-- Location: LCCOMB_X1_Y11_N18
\inst3|inst8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst8~1_combout\ = (!\y2~input_o\ & ((\y1~input_o\ & ((\b2~input_o\))) # (!\y1~input_o\ & (!\inst3|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y2~input_o\,
	datab => \inst3|inst4~combout\,
	datac => \y1~input_o\,
	datad => \b2~input_o\,
	combout => \inst3|inst8~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\inst3|inst8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst8~2_combout\ = (\inst3|inst8~1_combout\) # ((\inst4|inst3~2_combout\ & (\b2~input_o\ $ (!\inst3|inst9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \inst4|inst3~2_combout\,
	datac => \inst3|inst8~1_combout\,
	datad => \inst3|inst9~combout\,
	combout => \inst3|inst8~2_combout\);

-- Location: LCCOMB_X1_Y11_N30
\inst3|inst8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst8~3_combout\ = (\inst3|inst8~2_combout\ & ((\inst3|inst8~3_combout\) # ((\inst3|inst6~1_combout\) # (!GLOBAL(\C~inputclkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst8~3_combout\,
	datab => \inst3|inst6~1_combout\,
	datac => \inst3|inst8~2_combout\,
	datad => \C~inputclkctrl_outclk\,
	combout => \inst3|inst8~3_combout\);

-- Location: LCCOMB_X1_Y11_N0
\inst3|inst6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst6~1_combout\ = (\C~input_o\ & ((\inst3|inst6~1_combout\) # (\inst3|inst8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \inst3|inst6~1_combout\,
	datad => \inst3|inst8~3_combout\,
	combout => \inst3|inst6~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst3|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9~combout\ = (!\inst3|inst6~1_combout\ & ((\inst3|inst9~combout\) # ((!\inst3|inst8~3_combout\ & \C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst6~1_combout\,
	datab => \inst3|inst9~combout\,
	datac => \inst3|inst8~3_combout\,
	datad => \C~input_o\,
	combout => \inst3|inst9~combout\);

-- Location: LCCOMB_X1_Y11_N12
\inst4|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3~1_combout\ = (!\y2~input_o\ & ((\y1~input_o\ & ((\b1~input_o\))) # (!\y1~input_o\ & (!\inst3|inst9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y1~input_o\,
	datab => \inst3|inst9~combout\,
	datac => \y2~input_o\,
	datad => \b1~input_o\,
	combout => \inst4|inst3~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\inst4|inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3~3_combout\ = (\inst4|inst3~1_combout\) # ((\inst4|inst3~2_combout\ & (\b1~input_o\ $ (!\inst4|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => \inst4|inst3~2_combout\,
	datac => \inst4|inst3~1_combout\,
	datad => \inst4|inst4~combout\,
	combout => \inst4|inst3~3_combout\);

-- Location: LCCOMB_X1_Y11_N2
\inst4|inst3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3~4_combout\ = (\inst4|inst3~3_combout\ & ((\inst4|inst3~4_combout\) # ((\inst4|inst1~1_combout\) # (!GLOBAL(\C~inputclkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3~4_combout\,
	datab => \inst4|inst1~1_combout\,
	datac => \inst4|inst3~3_combout\,
	datad => \C~inputclkctrl_outclk\,
	combout => \inst4|inst3~4_combout\);

-- Location: LCCOMB_X1_Y11_N22
\inst4|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1~1_combout\ = (\C~input_o\ & ((\inst4|inst3~4_combout\) # (\inst4|inst1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \inst4|inst3~4_combout\,
	datad => \inst4|inst1~1_combout\,
	combout => \inst4|inst1~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst4|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst4~combout\ = (!\inst4|inst1~1_combout\ & ((\inst4|inst4~combout\) # ((\C~input_o\ & !\inst4|inst3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1~1_combout\,
	datab => \inst4|inst4~combout\,
	datac => \C~input_o\,
	datad => \inst4|inst3~4_combout\,
	combout => \inst4|inst4~combout\);

ww_q1 <= \q1~output_o\;

ww_q2 <= \q2~output_o\;

ww_q3 <= \q3~output_o\;
END structure;


