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

-- DATE "03/25/2021 12:10:04"

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

ENTITY 	lab13 IS
    PORT (
	Q6 : OUT std_logic;
	C : IN std_logic;
	R : IN std_logic;
	S : IN std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q3 : OUT std_logic
	);
END lab13;

-- Design Ports Information
-- Q6	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL \Q6~output_o\ : std_logic;
SIGNAL \Q5~output_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst|inst3|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst3~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst5~combout\ : std_logic;
SIGNAL \inst|inst4|inst3~combout\ : std_logic;
SIGNAL \inst|inst4|inst1~1_combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \inst|inst3|inst8~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst8~2_combout\ : std_logic;
SIGNAL \inst|inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst9~combout\ : std_logic;
SIGNAL \inst|inst3|inst3~4_combout\ : std_logic;
SIGNAL \inst|inst3|inst3~3_combout\ : std_logic;
SIGNAL \inst|inst3|inst3~6_combout\ : std_logic;
SIGNAL \inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst3~5_combout\ : std_logic;
SIGNAL \inst|inst3|inst1~1_combout\ : std_logic;
SIGNAL \inst|inst3|inst4~combout\ : std_logic;
SIGNAL \inst39|inst3|inst2~combout\ : std_logic;
SIGNAL \inst38|inst~0_combout\ : std_logic;
SIGNAL \inst39|inst4|inst3~1_combout\ : std_logic;
SIGNAL \inst39|inst4|inst4~combout\ : std_logic;
SIGNAL \inst39|inst4|inst3~2_combout\ : std_logic;
SIGNAL \inst39|inst4|inst1~1_combout\ : std_logic;
SIGNAL \inst39|inst4|inst2~combout\ : std_logic;
SIGNAL \inst39|inst4|inst5~combout\ : std_logic;
SIGNAL \inst39|inst3|inst8~2_combout\ : std_logic;
SIGNAL \inst39|inst3|inst8~1_combout\ : std_logic;
SIGNAL \inst39|inst3|inst8~3_combout\ : std_logic;
SIGNAL \inst39|inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst39|inst3|inst10~0_combout\ : std_logic;
SIGNAL \inst39|inst3|inst9~combout\ : std_logic;
SIGNAL \inst39|inst3|inst3~1_combout\ : std_logic;
SIGNAL \inst39|inst3|inst3~2_combout\ : std_logic;
SIGNAL \inst39|inst3|inst1~1_combout\ : std_logic;
SIGNAL \inst39|inst3|inst4~combout\ : std_logic;
SIGNAL \inst|inst4|inst4~combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \inst39|inst4|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst39|inst3|ALT_INV_inst9~combout\ : std_logic;
SIGNAL \inst39|inst3|ALT_INV_inst4~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q6 <= ww_Q6;
ww_C <= C;
ww_R <= R;
ww_S <= S;
Q5 <= ww_Q5;
Q4 <= ww_Q4;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q3 <= ww_Q3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inst3|ALT_INV_inst4~combout\ <= NOT \inst|inst3|inst4~combout\;
\inst|inst3|ALT_INV_inst9~combout\ <= NOT \inst|inst3|inst9~combout\;
\inst39|inst4|ALT_INV_inst4~combout\ <= NOT \inst39|inst4|inst4~combout\;
\inst39|inst3|ALT_INV_inst9~combout\ <= NOT \inst39|inst3|inst9~combout\;
\inst39|inst3|ALT_INV_inst4~combout\ <= NOT \inst39|inst3|inst4~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\Q6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|inst3|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \Q6~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Q5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|inst3|ALT_INV_inst9~combout\,
	devoe => ww_devoe,
	o => \Q5~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Q4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|inst4|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst9~combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst4~combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Q3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X1_Y17_N22
\inst|inst3|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst10~0_combout\ = (!\R~input_o\ & (((\inst|inst3|inst8~2_combout\) # (\inst|inst3|inst6~1_combout\)) # (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \C~input_o\,
	datac => \inst|inst3|inst8~2_combout\,
	datad => \inst|inst3|inst6~1_combout\,
	combout => \inst|inst3|inst10~0_combout\);

-- Location: LCCOMB_X1_Y17_N24
\inst|inst4|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3~1_combout\ = (!\R~input_o\ & (((\inst|inst4|inst3~combout\) # (\inst|inst4|inst1~1_combout\)) # (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \C~input_o\,
	datac => \inst|inst4|inst3~combout\,
	datad => \inst|inst4|inst1~1_combout\,
	combout => \inst|inst4|inst3~1_combout\);

-- Location: LCCOMB_X2_Y17_N24
\inst|inst4|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst5~combout\ = (\inst|inst4|inst3~1_combout\ & ((\inst|inst4|inst1~1_combout\) # (\inst|inst4|inst5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst3~1_combout\,
	datac => \inst|inst4|inst1~1_combout\,
	datad => \inst|inst4|inst5~combout\,
	combout => \inst|inst4|inst5~combout\);

-- Location: LCCOMB_X1_Y17_N4
\inst|inst4|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3~combout\ = (!\inst|inst4|inst5~combout\ & \inst|inst4|inst3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|inst5~combout\,
	datad => \inst|inst4|inst3~1_combout\,
	combout => \inst|inst4|inst3~combout\);

-- Location: LCCOMB_X1_Y17_N6
\inst|inst4|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst1~1_combout\ = (!\R~input_o\ & (\C~input_o\ & ((\inst|inst4|inst3~combout\) # (\inst|inst4|inst1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \C~input_o\,
	datac => \inst|inst4|inst3~combout\,
	datad => \inst|inst4|inst1~1_combout\,
	combout => \inst|inst4|inst1~1_combout\);

-- Location: IOIBUF_X0_Y11_N22
\S~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X1_Y17_N16
\inst|inst3|inst8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst8~1_combout\ = (\inst|inst4|inst5~combout\ & ((\S~input_o\ $ (!\inst|inst3|inst9~combout\)))) # (!\inst|inst4|inst5~combout\ & ((\inst|inst4|inst1~1_combout\) # (\S~input_o\ $ (\inst|inst3|inst9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst1~1_combout\,
	datab => \inst|inst4|inst5~combout\,
	datac => \S~input_o\,
	datad => \inst|inst3|inst9~combout\,
	combout => \inst|inst3|inst8~1_combout\);

-- Location: LCCOMB_X1_Y17_N30
\inst|inst3|inst8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst8~2_combout\ = (\inst|inst3|inst10~0_combout\ & \inst|inst3|inst8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst10~0_combout\,
	datad => \inst|inst3|inst8~1_combout\,
	combout => \inst|inst3|inst8~2_combout\);

-- Location: LCCOMB_X1_Y17_N2
\inst|inst3|inst6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst6~1_combout\ = (!\R~input_o\ & (\C~input_o\ & ((\inst|inst3|inst8~2_combout\) # (\inst|inst3|inst6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \C~input_o\,
	datac => \inst|inst3|inst8~2_combout\,
	datad => \inst|inst3|inst6~1_combout\,
	combout => \inst|inst3|inst6~1_combout\);

-- Location: LCCOMB_X1_Y17_N12
\inst|inst3|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst9~combout\ = (!\inst|inst3|inst6~1_combout\ & ((\inst|inst3|inst9~combout\) # (!\inst|inst3|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst6~1_combout\,
	datac => \inst|inst3|inst10~0_combout\,
	datad => \inst|inst3|inst9~combout\,
	combout => \inst|inst3|inst9~combout\);

-- Location: LCCOMB_X1_Y17_N26
\inst|inst3|inst3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3~4_combout\ = (\inst|inst4|inst5~combout\ & (\inst|inst3|inst4~combout\ $ (((!\inst|inst3|inst9~combout\ & \S~input_o\))))) # (!\inst|inst4|inst5~combout\ & (\inst|inst3|inst4~combout\ & (\inst|inst3|inst9~combout\ $ (!\S~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst9~combout\,
	datab => \inst|inst3|inst4~combout\,
	datac => \S~input_o\,
	datad => \inst|inst4|inst5~combout\,
	combout => \inst|inst3|inst3~4_combout\);

-- Location: LCCOMB_X1_Y17_N20
\inst|inst3|inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3~3_combout\ = (\inst|inst3|inst9~combout\ & (!\inst|inst3|inst4~combout\ & (!\S~input_o\ & !\inst|inst4|inst5~combout\))) # (!\inst|inst3|inst9~combout\ & (\inst|inst3|inst4~combout\ & (\S~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst9~combout\,
	datab => \inst|inst3|inst4~combout\,
	datac => \S~input_o\,
	datad => \inst|inst4|inst5~combout\,
	combout => \inst|inst3|inst3~3_combout\);

-- Location: LCCOMB_X1_Y17_N14
\inst|inst3|inst3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3~6_combout\ = (\inst|inst4|inst1~1_combout\) # ((\S~input_o\ & \inst|inst4|inst5~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst1~1_combout\,
	datac => \S~input_o\,
	datad => \inst|inst4|inst5~combout\,
	combout => \inst|inst3|inst3~6_combout\);

-- Location: LCCOMB_X1_Y17_N18
\inst|inst3|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst5~0_combout\ = (!\R~input_o\ & (((\inst|inst3|inst3~5_combout\) # (\inst|inst3|inst1~1_combout\)) # (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \C~input_o\,
	datac => \inst|inst3|inst3~5_combout\,
	datad => \inst|inst3|inst1~1_combout\,
	combout => \inst|inst3|inst5~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\inst|inst3|inst3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3~5_combout\ = (\inst|inst3|inst5~0_combout\ & ((\inst|inst3|inst3~4_combout\ & (\inst|inst3|inst3~3_combout\)) # (!\inst|inst3|inst3~4_combout\ & ((\inst|inst3|inst3~6_combout\) # (!\inst|inst3|inst3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst3~4_combout\,
	datab => \inst|inst3|inst3~3_combout\,
	datac => \inst|inst3|inst3~6_combout\,
	datad => \inst|inst3|inst5~0_combout\,
	combout => \inst|inst3|inst3~5_combout\);

-- Location: LCCOMB_X1_Y17_N10
\inst|inst3|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1~1_combout\ = (!\R~input_o\ & (\C~input_o\ & ((\inst|inst3|inst3~5_combout\) # (\inst|inst3|inst1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \C~input_o\,
	datac => \inst|inst3|inst3~5_combout\,
	datad => \inst|inst3|inst1~1_combout\,
	combout => \inst|inst3|inst1~1_combout\);

-- Location: LCCOMB_X1_Y17_N28
\inst|inst3|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst4~combout\ = (!\inst|inst3|inst1~1_combout\ & ((\inst|inst3|inst4~combout\) # (!\inst|inst3|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst1~1_combout\,
	datab => \inst|inst3|inst5~0_combout\,
	datad => \inst|inst3|inst4~combout\,
	combout => \inst|inst3|inst4~combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst39|inst3|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst2~combout\ = (!\inst39|inst3|inst1~1_combout\ & (!\inst39|inst3|inst3~2_combout\ & (\inst|inst3|inst4~combout\ $ (!\S~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst4~combout\,
	datab => \S~input_o\,
	datac => \inst39|inst3|inst1~1_combout\,
	datad => \inst39|inst3|inst3~2_combout\,
	combout => \inst39|inst3|inst2~combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst38|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst~0_combout\ = \S~input_o\ $ (\inst|inst3|inst4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \inst|inst3|inst4~combout\,
	combout => \inst38|inst~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\inst39|inst4|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst4|inst3~1_combout\ = (\S~input_o\ & (((!\inst39|inst3|inst2~combout\ & !\inst39|inst3|inst4~combout\)))) # (!\S~input_o\ & (\inst39|inst3|inst9~combout\ & ((\inst39|inst3|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst9~combout\,
	datab => \inst39|inst3|inst2~combout\,
	datac => \S~input_o\,
	datad => \inst39|inst3|inst4~combout\,
	combout => \inst39|inst4|inst3~1_combout\);

-- Location: LCCOMB_X1_Y11_N22
\inst39|inst4|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst4|inst4~combout\ = (!\inst39|inst4|inst1~1_combout\ & ((\R~input_o\) # ((\inst39|inst4|inst4~combout\) # (\inst39|inst4|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \inst39|inst4|inst4~combout\,
	datac => \inst39|inst4|inst1~1_combout\,
	datad => \inst39|inst4|inst2~combout\,
	combout => \inst39|inst4|inst4~combout\);

-- Location: LCCOMB_X1_Y11_N8
\inst39|inst4|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst4|inst3~2_combout\ = (!\inst39|inst4|inst3~1_combout\ & (!\inst39|inst4|inst2~combout\ & (\inst39|inst4|inst4~combout\ & !\R~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst4|inst3~1_combout\,
	datab => \inst39|inst4|inst2~combout\,
	datac => \inst39|inst4|inst4~combout\,
	datad => \R~input_o\,
	combout => \inst39|inst4|inst3~2_combout\);

-- Location: LCCOMB_X1_Y11_N30
\inst39|inst4|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst4|inst1~1_combout\ = (!\inst38|inst~0_combout\ & (!\R~input_o\ & ((\inst39|inst4|inst1~1_combout\) # (\inst39|inst4|inst3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst4|inst1~1_combout\,
	datab => \inst39|inst4|inst3~2_combout\,
	datac => \inst38|inst~0_combout\,
	datad => \R~input_o\,
	combout => \inst39|inst4|inst1~1_combout\);

-- Location: LCCOMB_X1_Y11_N0
\inst39|inst4|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst4|inst2~combout\ = (!\inst39|inst4|inst1~1_combout\ & (!\inst39|inst4|inst3~2_combout\ & (\inst|inst3|inst4~combout\ $ (!\S~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst4~combout\,
	datab => \S~input_o\,
	datac => \inst39|inst4|inst1~1_combout\,
	datad => \inst39|inst4|inst3~2_combout\,
	combout => \inst39|inst4|inst2~combout\);

-- Location: LCCOMB_X1_Y11_N4
\inst39|inst4|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst4|inst5~combout\ = (!\inst39|inst4|inst2~combout\ & (!\inst39|inst4|inst4~combout\ & !\R~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst39|inst4|inst2~combout\,
	datac => \inst39|inst4|inst4~combout\,
	datad => \R~input_o\,
	combout => \inst39|inst4|inst5~combout\);

-- Location: LCCOMB_X1_Y11_N18
\inst39|inst3|inst8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst8~2_combout\ = (\S~input_o\ & (((!\inst39|inst3|inst9~combout\ & \inst39|inst4|inst5~combout\)) # (!\inst39|inst3|inst4~combout\))) # (!\S~input_o\ & ((\inst39|inst3|inst4~combout\ & (\inst39|inst3|inst9~combout\)) # 
-- (!\inst39|inst3|inst4~combout\ & ((\inst39|inst4|inst5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst9~combout\,
	datab => \inst39|inst4|inst5~combout\,
	datac => \S~input_o\,
	datad => \inst39|inst3|inst4~combout\,
	combout => \inst39|inst3|inst8~2_combout\);

-- Location: LCCOMB_X1_Y11_N2
\inst39|inst3|inst8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst8~1_combout\ = ((\inst39|inst3|inst9~combout\ $ (\S~input_o\)) # (!\inst39|inst3|inst4~combout\)) # (!\inst39|inst4|inst4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst9~combout\,
	datab => \inst39|inst4|inst4~combout\,
	datac => \S~input_o\,
	datad => \inst39|inst3|inst4~combout\,
	combout => \inst39|inst3|inst8~1_combout\);

-- Location: LCCOMB_X1_Y11_N6
\inst39|inst3|inst8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst8~3_combout\ = (!\inst39|inst3|inst8~2_combout\ & (\inst39|inst3|inst8~1_combout\ & \inst39|inst3|inst10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst39|inst3|inst8~2_combout\,
	datac => \inst39|inst3|inst8~1_combout\,
	datad => \inst39|inst3|inst10~0_combout\,
	combout => \inst39|inst3|inst8~3_combout\);

-- Location: LCCOMB_X2_Y11_N18
\inst39|inst3|inst6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst6~1_combout\ = (!\inst38|inst~0_combout\ & (!\R~input_o\ & ((\inst39|inst3|inst8~3_combout\) # (\inst39|inst3|inst6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst~0_combout\,
	datab => \R~input_o\,
	datac => \inst39|inst3|inst8~3_combout\,
	datad => \inst39|inst3|inst6~1_combout\,
	combout => \inst39|inst3|inst6~1_combout\);

-- Location: LCCOMB_X2_Y11_N4
\inst39|inst3|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst10~0_combout\ = (!\R~input_o\ & ((\inst38|inst~0_combout\) # ((\inst39|inst3|inst8~3_combout\) # (\inst39|inst3|inst6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst~0_combout\,
	datab => \R~input_o\,
	datac => \inst39|inst3|inst8~3_combout\,
	datad => \inst39|inst3|inst6~1_combout\,
	combout => \inst39|inst3|inst10~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\inst39|inst3|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst9~combout\ = (!\inst39|inst3|inst6~1_combout\ & ((\inst39|inst3|inst9~combout\) # (!\inst39|inst3|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst10~0_combout\,
	datac => \inst39|inst3|inst9~combout\,
	datad => \inst39|inst3|inst6~1_combout\,
	combout => \inst39|inst3|inst9~combout\);

-- Location: LCCOMB_X1_Y11_N26
\inst39|inst3|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst3~1_combout\ = (\inst39|inst3|inst9~combout\ & (!\S~input_o\ & ((!\inst39|inst4|inst5~combout\)))) # (!\inst39|inst3|inst9~combout\ & (\S~input_o\ & (!\inst39|inst4|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst9~combout\,
	datab => \S~input_o\,
	datac => \inst39|inst4|inst4~combout\,
	datad => \inst39|inst4|inst5~combout\,
	combout => \inst39|inst3|inst3~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\inst39|inst3|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst3~2_combout\ = (\inst39|inst3|inst4~combout\ & (!\inst39|inst3|inst2~combout\ & (\inst39|inst3|inst3~1_combout\ & !\R~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst4~combout\,
	datab => \inst39|inst3|inst2~combout\,
	datac => \inst39|inst3|inst3~1_combout\,
	datad => \R~input_o\,
	combout => \inst39|inst3|inst3~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst39|inst3|inst1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst1~1_combout\ = (!\inst38|inst~0_combout\ & (!\R~input_o\ & ((\inst39|inst3|inst3~2_combout\) # (\inst39|inst3|inst1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst3~2_combout\,
	datab => \inst38|inst~0_combout\,
	datac => \inst39|inst3|inst1~1_combout\,
	datad => \R~input_o\,
	combout => \inst39|inst3|inst1~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\inst39|inst3|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst3|inst4~combout\ = (!\inst39|inst3|inst1~1_combout\ & ((\inst39|inst3|inst4~combout\) # ((\R~input_o\) # (\inst39|inst3|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst3|inst4~combout\,
	datab => \R~input_o\,
	datac => \inst39|inst3|inst1~1_combout\,
	datad => \inst39|inst3|inst2~combout\,
	combout => \inst39|inst3|inst4~combout\);

-- Location: LCCOMB_X1_Y17_N0
\inst|inst4|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst4~combout\ = (\inst|inst4|inst1~1_combout\) # (\inst|inst4|inst5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst1~1_combout\,
	datad => \inst|inst4|inst5~combout\,
	combout => \inst|inst4|inst4~combout\);

ww_Q6 <= \Q6~output_o\;

ww_Q5 <= \Q5~output_o\;

ww_Q4 <= \Q4~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q3 <= \Q3~output_o\;
END structure;


