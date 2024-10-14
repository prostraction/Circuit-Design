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

-- DATE "07/10/2020 12:42:11"

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

ENTITY 	avtomat_myra IS
    PORT (
	tay1 : OUT std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	tay3 : OUT std_logic;
	CLRN : IN std_logic;
	tay2 : OUT std_logic;
	CLK : IN std_logic;
	ENA : IN std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic;
	y3 : OUT std_logic
	);
END avtomat_myra;

-- Design Ports Information
-- tay1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tay3	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tay2	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLRN	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF avtomat_myra IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tay1 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_tay3 : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_tay2 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL \CLRN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tay1~output_o\ : std_logic;
SIGNAL \tay3~output_o\ : std_logic;
SIGNAL \tay2~output_o\ : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \y3~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \inst32~0_combout\ : std_logic;
SIGNAL \inst40~0_combout\ : std_logic;
SIGNAL \inst32~1_combout\ : std_logic;
SIGNAL \CLRN~input_o\ : std_logic;
SIGNAL \CLRN~inputclkctrl_outclk\ : std_logic;
SIGNAL \ENA~input_o\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst42~0_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst39~combout\ : std_logic;
SIGNAL \inst41~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

tay1 <= ww_tay1;
ww_x1 <= x1;
ww_x2 <= x2;
tay3 <= ww_tay3;
ww_CLRN <= CLRN;
tay2 <= ww_tay2;
ww_CLK <= CLK;
ww_ENA <= ENA;
y1 <= ww_y1;
y2 <= ww_y2;
y3 <= ww_y3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLRN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLRN~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N2
\tay1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \tay1~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\tay3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \tay3~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\tay2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \tay2~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\y1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39~combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\y2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40~0_combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\y3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41~0_combout\,
	devoe => ww_devoe,
	o => \y3~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N22
\x2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\x1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\inst32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32~0_combout\ = (\inst3~q\ & ((\inst9~q\) # ((!\x1~input_o\ & \inst~q\)))) # (!\inst3~q\ & (((\inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \inst3~q\,
	datac => \inst9~q\,
	datad => \inst~q\,
	combout => \inst32~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\inst40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40~0_combout\ = (!\inst~q\ & (\inst9~q\ $ (\inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datac => \inst3~q\,
	datad => \inst~q\,
	combout => \inst40~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\inst32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32~1_combout\ = (\x2~input_o\ & ((\x1~input_o\) # ((!\inst40~0_combout\)))) # (!\x2~input_o\ & (!\inst32~0_combout\ & ((\x1~input_o\) # (!\inst40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \x1~input_o\,
	datac => \inst32~0_combout\,
	datad => \inst40~0_combout\,
	combout => \inst32~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\CLRN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLRN,
	o => \CLRN~input_o\);

-- Location: CLKCTRL_G4
\CLRN~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLRN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLRN~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\ENA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENA,
	o => \ENA~input_o\);

-- Location: FF_X1_Y4_N27
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst32~1_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X1_Y4_N16
\inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\x2~input_o\ & (((!\inst9~q\) # (!\inst3~q\)))) # (!\x2~input_o\ & (\x1~input_o\ $ ((\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x2~input_o\,
	datac => \inst3~q\,
	datad => \inst9~q\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = \inst3~0_combout\ $ (((\inst~q\) # (!\inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datac => \inst~q\,
	datad => \inst3~0_combout\,
	combout => \inst3~1_combout\);

-- Location: FF_X1_Y4_N9
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~1_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X1_Y4_N20
\inst42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42~0_combout\ = (!\inst9~q\ & !\inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9~q\,
	datad => \inst~q\,
	combout => \inst42~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\x2~input_o\ & (((\x1~input_o\ & !\inst42~0_combout\)))) # (!\x2~input_o\ & (\inst3~q\ & (!\x1~input_o\ & \inst42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \inst3~q\,
	datac => \x1~input_o\,
	datad => \inst42~0_combout\,
	combout => \inst~0_combout\);

-- Location: FF_X1_Y4_N25
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst~0_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	ena => \ENA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X1_Y4_N18
inst39 : cycloneive_lcell_comb
-- Equation(s):
-- \inst39~combout\ = (\inst3~q\ & ((\inst9~q\))) # (!\inst3~q\ & (!\inst~q\ & !\inst9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst~q\,
	datad => \inst9~q\,
	combout => \inst39~combout\);

-- Location: LCCOMB_X1_Y4_N30
\inst41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41~0_combout\ = \inst~q\ $ (\inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	datad => \inst9~q\,
	combout => \inst41~0_combout\);

ww_tay1 <= \tay1~output_o\;

ww_tay3 <= \tay3~output_o\;

ww_tay2 <= \tay2~output_o\;

ww_y1 <= \y1~output_o\;

ww_y2 <= \y2~output_o\;

ww_y3 <= \y3~output_o\;
END structure;


