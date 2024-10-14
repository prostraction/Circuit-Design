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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/25/2021 12:10:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab13
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab13_vhd_vec_tst IS
END lab13_vhd_vec_tst;
ARCHITECTURE lab13_arch OF lab13_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL Q4 : STD_LOGIC;
SIGNAL Q5 : STD_LOGIC;
SIGNAL Q6 : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT lab13
	PORT (
	C : IN STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	Q4 : OUT STD_LOGIC;
	Q5 : OUT STD_LOGIC;
	Q6 : OUT STD_LOGIC;
	R : IN STD_LOGIC;
	S : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab13
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4,
	Q5 => Q5,
	Q6 => Q6,
	R => R,
	S => S
	);

-- C
t_prcs_C: PROCESS
BEGIN
	FOR i IN 1 TO 87
	LOOP
		C <= '0';
		WAIT FOR 10000 ps;
		C <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '1';
	WAIT FOR 20000 ps;
	R <= '0';
	WAIT FOR 820000 ps;
	R <= '1';
	WAIT FOR 10000 ps;
	R <= '0';
	WAIT FOR 790000 ps;
	R <= '1';
	WAIT FOR 20000 ps;
	R <= '0';
WAIT;
END PROCESS t_prcs_R;

-- S
t_prcs_S: PROCESS
BEGIN
	S <= '0';
	WAIT FOR 840000 ps;
	S <= '1';
	WAIT FOR 800000 ps;
	S <= '0';
WAIT;
END PROCESS t_prcs_S;
END lab13_arch;
