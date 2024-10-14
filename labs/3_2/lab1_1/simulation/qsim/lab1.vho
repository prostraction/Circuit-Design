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

-- DATE "03/19/2021 11:15:21"

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

ENTITY 	lab1 IS
    PORT (
	Q1 : OUT std_logic;
	R : IN std_logic;
	C : IN std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	Q4 : OUT std_logic
	);
END lab1;

-- Design Ports Information
-- Q1	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL \R~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \C~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1~0_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \R~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \ALT_INV_C~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_R~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q1 <= ww_Q1;
ww_R <= R;
ww_C <= C;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\R~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \R~input_o\);

\C~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C~input_o\);
\ALT_INV_C~inputclkctrl_outclk\ <= NOT \C~inputclkctrl_outclk\;
\ALT_INV_R~inputclkctrl_outclk\ <= NOT \R~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N16
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Q3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Q4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

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

-- Location: LCCOMB_X1_Y21_N12
\inst1|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1~0_combout\ = !\inst1|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1~q\,
	combout => \inst1|inst1~0_combout\);

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

-- Location: CLKCTRL_G4
\R~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R~inputclkctrl_outclk\);

-- Location: FF_X1_Y21_N13
\inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst1|inst1~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1~q\);

-- Location: LCCOMB_X1_Y21_N2
\inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = (\inst1|inst1~q\) # (!\inst1|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst~q\,
	datad => \inst1|inst1~q\,
	combout => \inst1|inst~0_combout\);

-- Location: FF_X1_Y21_N3
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst1|inst~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X1_Y21_N20
\inst|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = \inst|inst1~q\ $ (((!\inst1|inst1~q\) # (!\inst1|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst~q\,
	datac => \inst|inst1~q\,
	datad => \inst1|inst1~q\,
	combout => \inst|inst1~0_combout\);

-- Location: FF_X1_Y21_N21
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst|inst1~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X1_Y21_N14
\inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\inst1|inst1~q\ & ((\inst1|inst~q\ & ((\inst|inst~q\) # (!\inst|inst1~q\))) # (!\inst1|inst~q\ & (!\inst|inst~q\)))) # (!\inst1|inst1~q\ & (((!\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1~q\,
	datab => \inst1|inst~q\,
	datac => \inst|inst~q\,
	datad => \inst|inst1~q\,
	combout => \inst|inst~0_combout\);

-- Location: FF_X1_Y21_N15
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_C~inputclkctrl_outclk\,
	d => \inst|inst~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q3 <= \Q3~output_o\;

ww_Q4 <= \Q4~output_o\;
END structure;


