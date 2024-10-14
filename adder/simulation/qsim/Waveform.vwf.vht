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
-- Generated on "01/05/2022 18:55:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          block_oper
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY block_oper_vhd_vec_tst IS
END block_oper_vhd_vec_tst;
ARCHITECTURE block_oper_arch OF block_oper_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL clk : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL f2 : STD_LOGIC;
SIGNAL f3 : STD_LOGIC;
SIGNAL ks1_res : STD_LOGIC_VECTOR(8 DOWNTO 1);
SIGNAL n : STD_LOGIC_VECTOR(8 DOWNTO 1);
SIGNAL priznak : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rb : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL s : STD_LOGIC_VECTOR(8 DOWNTO 1);
SIGNAL y : STD_LOGIC_VECTOR(10 DOWNTO 1);
COMPONENT block_oper
	PORT (
	a : IN STD_LOGIC_VECTOR(4 DOWNTO 1);
	b : IN STD_LOGIC_VECTOR(4 DOWNTO 1);
	clk : IN STD_LOGIC;
	f1 : OUT STD_LOGIC;
	f2 : OUT STD_LOGIC;
	f3 : OUT STD_LOGIC;
	ks1_res : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
	n : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
	priznak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rb : OUT STD_LOGIC_VECTOR(4 DOWNTO 1);
	s : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
	y : IN STD_LOGIC_VECTOR(10 DOWNTO 1)
	);
END COMPONENT;
BEGIN
	i1 : block_oper
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	f1 => f1,
	f2 => f2,
	f3 => f3,
	ks1_res => ks1_res,
	n => n,
	priznak => priznak,
	rb => rb,
	s => s,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
	WAIT FOR 70000 ps;
	a(4) <= '1';
	WAIT FOR 10000 ps;
	a(4) <= '0';
	WAIT FOR 60000 ps;
	a(4) <= '1';
	WAIT FOR 10000 ps;
	a(4) <= '0';
	WAIT FOR 180000 ps;
	a(4) <= '1';
	WAIT FOR 10000 ps;
	a(4) <= '0';
WAIT;
END PROCESS t_prcs_a_4;

-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
	WAIT FOR 130000 ps;
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
	WAIT FOR 60000 ps;
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
	WAIT FOR 30000 ps;
	a(3) <= '1';
	WAIT FOR 10000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;

-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 70000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
	WAIT FOR 60000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
	WAIT FOR 140000 ps;
	a(2) <= '1';
	WAIT FOR 10000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;

-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '1';
	WAIT FOR 10000 ps;
	a(1) <= '0';
	WAIT FOR 240000 ps;
	a(1) <= '1';
	WAIT FOR 10000 ps;
	a(1) <= '0';
	WAIT FOR 110000 ps;
	a(1) <= '1';
	WAIT FOR 10000 ps;
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;

-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
	WAIT FOR 140000 ps;
	b(4) <= '1';
	WAIT FOR 10000 ps;
	b(4) <= '0';
	WAIT FOR 100000 ps;
	b(4) <= '1';
	WAIT FOR 10000 ps;
	b(4) <= '0';
	WAIT FOR 30000 ps;
	b(4) <= '1';
	WAIT FOR 10000 ps;
	b(4) <= '0';
	WAIT FOR 30000 ps;
	b(4) <= '1';
	WAIT FOR 10000 ps;
	b(4) <= '0';
	WAIT FOR 30000 ps;
	b(4) <= '1';
	WAIT FOR 10000 ps;
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;

-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
	WAIT FOR 210000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
	WAIT FOR 30000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
	WAIT FOR 70000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
	WAIT FOR 30000 ps;
	b(3) <= '1';
	WAIT FOR 10000 ps;
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;

-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
	WAIT FOR 60000 ps;
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
	WAIT FOR 170000 ps;
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
	WAIT FOR 30000 ps;
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
	WAIT FOR 30000 ps;
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
	WAIT FOR 30000 ps;
	b(2) <= '1';
	WAIT FOR 10000 ps;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;

-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
	WAIT FOR 60000 ps;
	b(1) <= '1';
	WAIT FOR 10000 ps;
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;

-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 60000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 60000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 60000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 30000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 30000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 30000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
	WAIT FOR 30000 ps;
	y(1) <= '1';
	WAIT FOR 10000 ps;
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;

-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 60000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 60000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 60000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 30000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 30000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 30000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
	WAIT FOR 30000 ps;
	y(2) <= '1';
	WAIT FOR 10000 ps;
	y(2) <= '0';
WAIT;
END PROCESS t_prcs_y_2;

-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 10000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 10000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 20000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 10000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 10000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 20000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 10000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 40000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 30000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 30000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 30000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
	WAIT FOR 30000 ps;
	y(3) <= '1';
	WAIT FOR 10000 ps;
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;

-- y[4]
t_prcs_y_4: PROCESS
BEGIN
	y(4) <= '0';
	WAIT FOR 30000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 10000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 40000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 10000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 90000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 30000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 30000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 30000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
	WAIT FOR 30000 ps;
	y(4) <= '1';
	WAIT FOR 10000 ps;
	y(4) <= '0';
WAIT;
END PROCESS t_prcs_y_4;

-- y[5]
t_prcs_y_5: PROCESS
BEGIN
	y(5) <= '0';
	WAIT FOR 150000 ps;
	y(5) <= '1';
	WAIT FOR 10000 ps;
	y(5) <= '0';
	WAIT FOR 10000 ps;
	y(5) <= '1';
	WAIT FOR 10000 ps;
	y(5) <= '0';
WAIT;
END PROCESS t_prcs_y_5;

-- y[6]
t_prcs_y_6: PROCESS
BEGIN
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 20000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 20000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 10000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 20000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 30000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 30000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 30000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
	WAIT FOR 30000 ps;
	y(6) <= '1';
	WAIT FOR 10000 ps;
	y(6) <= '0';
WAIT;
END PROCESS t_prcs_y_6;

-- y[7]
t_prcs_y_7: PROCESS
BEGIN
	y(7) <= '1';
	WAIT FOR 60000 ps;
	y(7) <= '0';
	WAIT FOR 10000 ps;
	y(7) <= '1';
	WAIT FOR 60000 ps;
	y(7) <= '0';
	WAIT FOR 10000 ps;
	y(7) <= '1';
	WAIT FOR 60000 ps;
	y(7) <= '0';
	WAIT FOR 10000 ps;
	y(7) <= '1';
	WAIT FOR 20000 ps;
	y(7) <= '0';
	WAIT FOR 30000 ps;
	y(7) <= '1';
	WAIT FOR 10000 ps;
	y(7) <= '0';
	WAIT FOR 30000 ps;
	y(7) <= '1';
	WAIT FOR 10000 ps;
	y(7) <= '0';
	WAIT FOR 30000 ps;
	y(7) <= '1';
	WAIT FOR 10000 ps;
	y(7) <= '0';
	WAIT FOR 30000 ps;
	y(7) <= '1';
	WAIT FOR 20000 ps;
	y(7) <= '0';
WAIT;
END PROCESS t_prcs_y_7;

-- y[8]
t_prcs_y_8: PROCESS
BEGIN
	y(8) <= '1';
	WAIT FOR 10000 ps;
	y(8) <= '0';
	WAIT FOR 60000 ps;
	y(8) <= '1';
	WAIT FOR 10000 ps;
	y(8) <= '0';
	WAIT FOR 60000 ps;
	y(8) <= '1';
	WAIT FOR 10000 ps;
	y(8) <= '0';
	WAIT FOR 60000 ps;
	y(8) <= '1';
	WAIT FOR 10000 ps;
	y(8) <= '0';
	WAIT FOR 170000 ps;
	y(8) <= '1';
	WAIT FOR 10000 ps;
	y(8) <= '0';
WAIT;
END PROCESS t_prcs_y_8;

-- y[9]
t_prcs_y_9: PROCESS
BEGIN
	y(9) <= '1';
	WAIT FOR 210000 ps;
	y(9) <= '0';
	WAIT FOR 220000 ps;
	y(9) <= '1';
WAIT;
END PROCESS t_prcs_y_9;

-- y[10]
t_prcs_y_10: PROCESS
BEGIN
	y(10) <= '0';
	WAIT FOR 230000 ps;
	y(10) <= '1';
	WAIT FOR 10000 ps;
	y(10) <= '0';
	WAIT FOR 30000 ps;
	y(10) <= '1';
	WAIT FOR 10000 ps;
	y(10) <= '0';
	WAIT FOR 30000 ps;
	y(10) <= '1';
	WAIT FOR 10000 ps;
	y(10) <= '0';
	WAIT FOR 30000 ps;
	y(10) <= '1';
	WAIT FOR 10000 ps;
	y(10) <= '0';
	WAIT FOR 40000 ps;
	y(10) <= '1';
	WAIT FOR 10000 ps;
	y(10) <= '0';
WAIT;
END PROCESS t_prcs_y_10;
END block_oper_arch;
