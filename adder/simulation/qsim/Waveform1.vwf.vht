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
-- Generated on "01/07/2022 03:54:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL clk : STD_LOGIC;
SIGNAL cop : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL f2 : STD_LOGIC;
SIGNAL f3 : STD_LOGIC;
SIGNAL incr_i : STD_LOGIC;
SIGNAL ks1_res : STD_LOGIC_VECTOR(8 DOWNTO 1);
SIGNAL n : STD_LOGIC_VECTOR(8 DOWNTO 1);
SIGNAL next_state_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL priznak : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rb : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL s : STD_LOGIC_VECTOR(8 DOWNTO 1);
SIGNAL s_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL set : STD_LOGIC;
SIGNAL sko : STD_LOGIC;
SIGNAL sno : STD_LOGIC;
COMPONENT alu
	PORT (
	a : IN STD_LOGIC_VECTOR(4 DOWNTO 1);
	b : IN STD_LOGIC_VECTOR(4 DOWNTO 1);
	clk : IN STD_LOGIC;
	cop : IN STD_LOGIC;
	f1 : OUT STD_LOGIC;
	f2 : OUT STD_LOGIC;
	f3 : OUT STD_LOGIC;
	incr_i : OUT STD_LOGIC;
	ks1_res : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
	n : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
	next_state_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	priznak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rb : OUT STD_LOGIC_VECTOR(4 DOWNTO 1);
	s : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
	s_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	set : IN STD_LOGIC;
	sko : OUT STD_LOGIC;
	sno : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	cop => cop,
	f1 => f1,
	f2 => f2,
	f3 => f3,
	incr_i => incr_i,
	ks1_res => ks1_res,
	n => n,
	next_state_out => next_state_out,
	priznak => priznak,
	rb => rb,
	s => s,
	s_out => s_out,
	set => set,
	sko => sko,
	sno => sno
	);

-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;

-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;

-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;

-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
WAIT;
END PROCESS t_prcs_a_4;

-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;

-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;

-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;

-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- sno
t_prcs_sno: PROCESS
BEGIN
	sno <= '0';
WAIT;
END PROCESS t_prcs_sno;

-- set
t_prcs_set: PROCESS
BEGIN
	set <= '0';
WAIT;
END PROCESS t_prcs_set;
END alu_arch;
