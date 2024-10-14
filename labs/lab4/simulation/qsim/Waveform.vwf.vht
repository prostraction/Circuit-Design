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
-- Generated on "12/19/2020 22:32:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab4_vhd_vec_tst IS
END lab4_vhd_vec_tst;
ARCHITECTURE lab4_arch OF lab4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL Dp : STD_LOGIC;
SIGNAL q1 : STD_LOGIC;
SIGNAL q2 : STD_LOGIC;
SIGNAL q3 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL y2 : STD_LOGIC;
COMPONENT lab4
	PORT (
	b1 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	b3 : IN STD_LOGIC;
	C : IN STD_LOGIC;
	Dp : IN STD_LOGIC;
	q1 : OUT STD_LOGIC;
	q2 : OUT STD_LOGIC;
	q3 : OUT STD_LOGIC;
	y1 : IN STD_LOGIC;
	y2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab4
	PORT MAP (
-- list connections between master ports and signals
	b1 => b1,
	b2 => b2,
	b3 => b3,
	C => C,
	Dp => Dp,
	q1 => q1,
	q2 => q2,
	q3 => q3,
	y1 => y1,
	y2 => y2
	);

-- y2
t_prcs_y2: PROCESS
BEGIN
	y2 <= '1';
	WAIT FOR 240000 ps;
	y2 <= '0';
	WAIT FOR 240000 ps;
	y2 <= '1';
	WAIT FOR 240000 ps;
	y2 <= '0';
WAIT;
END PROCESS t_prcs_y2;

-- y1
t_prcs_y1: PROCESS
BEGIN
	y1 <= '1';
	WAIT FOR 480000 ps;
	y1 <= '0';
WAIT;
END PROCESS t_prcs_y1;

-- Dp
t_prcs_Dp: PROCESS
BEGIN
	Dp <= '0';
	WAIT FOR 860000 ps;
	Dp <= '1';
WAIT;
END PROCESS t_prcs_Dp;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 50000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- b3
t_prcs_b3: PROCESS
BEGIN
	b3 <= '0';
	WAIT FOR 360000 ps;
	b3 <= '1';
	WAIT FOR 240000 ps;
	b3 <= '0';
WAIT;
END PROCESS t_prcs_b3;

-- b2
t_prcs_b2: PROCESS
BEGIN
	b2 <= '0';
	WAIT FOR 300000 ps;
	b2 <= '1';
	WAIT FOR 60000 ps;
	b2 <= '0';
	WAIT FOR 60000 ps;
	b2 <= '1';
	WAIT FOR 120000 ps;
	b2 <= '0';
	WAIT FOR 60000 ps;
	b2 <= '1';
	WAIT FOR 60000 ps;
	b2 <= '0';
WAIT;
END PROCESS t_prcs_b2;

-- b1
t_prcs_b1: PROCESS
BEGIN
	b1 <= '0';
	WAIT FOR 270000 ps;
	b1 <= '1';
	WAIT FOR 30000 ps;
	b1 <= '0';
	WAIT FOR 30000 ps;
	b1 <= '1';
	WAIT FOR 30000 ps;
	b1 <= '0';
	WAIT FOR 30000 ps;
	b1 <= '1';
	WAIT FOR 30000 ps;
	b1 <= '0';
	WAIT FOR 30000 ps;
	b1 <= '1';
	WAIT FOR 60000 ps;
	b1 <= '0';
	WAIT FOR 30000 ps;
	b1 <= '1';
	WAIT FOR 30000 ps;
	b1 <= '0';
	WAIT FOR 30000 ps;
	b1 <= '1';
	WAIT FOR 30000 ps;
	b1 <= '0';
	WAIT FOR 30000 ps;
	b1 <= '1';
	WAIT FOR 30000 ps;
	b1 <= '0';
WAIT;
END PROCESS t_prcs_b1;
END lab4_arch;
