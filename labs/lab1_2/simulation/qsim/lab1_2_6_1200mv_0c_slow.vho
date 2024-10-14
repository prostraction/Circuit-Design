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

-- DATE "10/01/2020 00:12:50"

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

ENTITY 	lab1_2 IS
    PORT (
	f2 : OUT std_logic;
	X1 : IN std_logic;
	X2 : IN std_logic;
	X3 : IN std_logic;
	X4 : IN std_logic;
	f3 : OUT std_logic
	);
END lab1_2;

-- Design Ports Information
-- f2	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f3	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X4	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_X4 : std_logic;
SIGNAL ww_f3 : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \X4~input_o\ : std_logic;
SIGNAL \inst18|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_inst~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

f2 <= ww_f2;
ww_X1 <= X1;
ww_X2 <= X2;
ww_X3 <= X3;
ww_X4 <= X4;
f3 <= ww_f3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst18|ALT_INV_inst~0_combout\ <= NOT \inst18|inst~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\f2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|ALT_INV_inst~0_combout\,
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\f3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~0_combout\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\X3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\X2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\X1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\X4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X4,
	o => \X4~input_o\);

-- Location: LCCOMB_X5_Y6_N0
\inst18|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst~0_combout\ = (\X3~input_o\ & (!\X2~input_o\ & ((!\X4~input_o\)))) # (!\X3~input_o\ & (\X2~input_o\ $ ((\X1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3~input_o\,
	datab => \X2~input_o\,
	datac => \X1~input_o\,
	datad => \X4~input_o\,
	combout => \inst18|inst~0_combout\);

-- Location: LCCOMB_X5_Y6_N2
\inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~0_combout\ = (\X2~input_o\ & ((\X1~input_o\) # (\X3~input_o\ $ (!\X4~input_o\)))) # (!\X2~input_o\ & ((\X3~input_o\) # ((!\X1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3~input_o\,
	datab => \X2~input_o\,
	datac => \X1~input_o\,
	datad => \X4~input_o\,
	combout => \inst3|inst~0_combout\);

ww_f2 <= \f2~output_o\;

ww_f3 <= \f3~output_o\;
END structure;


