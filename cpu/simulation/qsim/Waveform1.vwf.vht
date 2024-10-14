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
-- Generated on "01/21/2022 23:05:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_vhd_vec_tst IS
END cpu_vhd_vec_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_t : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b_t : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL cop_t : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL cx_test : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL pr_rc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sko : STD_LOGIC;
COMPONENT cpu
	PORT (
	a_t : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b_t : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	cop_t : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	cx_test : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	pr : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	pr_rc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sko : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	a_t => a_t,
	b_t => b_t,
	clk => clk,
	cop_t => cop_t,
	cx_test => cx_test,
	pr => pr,
	pr_rc => pr_rc,
	sko => sko
	);

-- a_t[3]
t_prcs_a_t_3: PROCESS
BEGIN
	a_t(3) <= '1';
	WAIT FOR 100000 ps;
	a_t(3) <= '0';
	WAIT FOR 280000 ps;
	a_t(3) <= '1';
	WAIT FOR 220000 ps;
	a_t(3) <= '0';
WAIT;
END PROCESS t_prcs_a_t_3;

-- a_t[2]
t_prcs_a_t_2: PROCESS
BEGIN
	a_t(2) <= '0';
	WAIT FOR 100000 ps;
	a_t(2) <= '1';
	WAIT FOR 280000 ps;
	a_t(2) <= '0';
	WAIT FOR 220000 ps;
	a_t(2) <= '1';
	WAIT FOR 399000 ps;
	a_t(2) <= '0';
WAIT;
END PROCESS t_prcs_a_t_2;

-- a_t[1]
t_prcs_a_t_1: PROCESS
BEGIN
	a_t(1) <= '1';
	WAIT FOR 100000 ps;
	a_t(1) <= '0';
	WAIT FOR 280000 ps;
	a_t(1) <= '1';
	WAIT FOR 220000 ps;
	a_t(1) <= '0';
WAIT;
END PROCESS t_prcs_a_t_1;

-- a_t[0]
t_prcs_a_t_0: PROCESS
BEGIN
	a_t(0) <= '0';
	WAIT FOR 100000 ps;
	a_t(0) <= '1';
	WAIT FOR 280000 ps;
	a_t(0) <= '0';
	WAIT FOR 220000 ps;
	a_t(0) <= '1';
	WAIT FOR 399000 ps;
	a_t(0) <= '0';
WAIT;
END PROCESS t_prcs_a_t_0;

-- b_t[3]
t_prcs_b_t_3: PROCESS
BEGIN
	b_t(3) <= '1';
	WAIT FOR 230000 ps;
	b_t(3) <= '0';
WAIT;
END PROCESS t_prcs_b_t_3;

-- b_t[2]
t_prcs_b_t_2: PROCESS
BEGIN
	b_t(2) <= '0';
	WAIT FOR 230000 ps;
	b_t(2) <= '1';
	WAIT FOR 370000 ps;
	b_t(2) <= '0';
	WAIT FOR 390000 ps;
	b_t(2) <= '1';
	WAIT FOR 9000 ps;
	b_t(2) <= '0';
WAIT;
END PROCESS t_prcs_b_t_2;

-- b_t[1]
t_prcs_b_t_1: PROCESS
BEGIN
	b_t(1) <= '1';
	WAIT FOR 230000 ps;
	b_t(1) <= '0';
	WAIT FOR 260000 ps;
	b_t(1) <= '1';
	WAIT FOR 310000 ps;
	b_t(1) <= '0';
WAIT;
END PROCESS t_prcs_b_t_1;

-- b_t[0]
t_prcs_b_t_0: PROCESS
BEGIN
	b_t(0) <= '1';
	WAIT FOR 230000 ps;
	b_t(0) <= '0';
	WAIT FOR 260000 ps;
	b_t(0) <= '1';
	WAIT FOR 310000 ps;
	b_t(0) <= '0';
WAIT;
END PROCESS t_prcs_b_t_0;

-- cop_t[1]
t_prcs_cop_t_1: PROCESS
BEGIN
	cop_t(1) <= '0';
	WAIT FOR 490000 ps;
	cop_t(1) <= '1';
	WAIT FOR 310000 ps;
	cop_t(1) <= '0';
WAIT;
END PROCESS t_prcs_cop_t_1;

-- cop_t[0]
t_prcs_cop_t_0: PROCESS
BEGIN
	cop_t(0) <= '1';
	WAIT FOR 999000 ps;
	cop_t(0) <= '0';
WAIT;
END PROCESS t_prcs_cop_t_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 4000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END cpu_arch;
