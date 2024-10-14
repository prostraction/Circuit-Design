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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
-- CREATED		"Mon Nov 23 02:11:50 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab1 IS 
	PORT
	(
		nSA :  IN  STD_LOGIC;
		E1 :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		E2 :  IN  STD_LOGIC;
		nRA :  IN  STD_LOGIC;
		pin_name1 :  INOUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC
	);
END lab1;

ARCHITECTURE bdf_type OF lab1 IS 

COMPONENT k155la4
	PORT(01 : IN STD_LOGIC;
		 02 : IN STD_LOGIC;
		 13 : IN STD_LOGIC;
		 03 : IN STD_LOGIC;
		 04 : IN STD_LOGIC;
		 05 : IN STD_LOGIC;
		 09 : IN STD_LOGIC;
		 10 : IN STD_LOGIC;
		 11 : IN STD_LOGIC;
		 12 : OUT STD_LOGIC;
		 06 : OUT STD_LOGIC;
		 08 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT k155la3
	PORT(01 : IN STD_LOGIC;
		 02 : IN STD_LOGIC;
		 04 : IN STD_LOGIC;
		 05 : IN STD_LOGIC;
		 09 : IN STD_LOGIC;
		 10 : IN STD_LOGIC;
		 12 : IN STD_LOGIC;
		 13 : IN STD_LOGIC;
		 03 : OUT STD_LOGIC;
		 06 : OUT STD_LOGIC;
		 08 : OUT STD_LOGIC;
		 11 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	nQ1 :  STD_LOGIC;
SIGNAL	nQ2 :  STD_LOGIC;
SIGNAL	nR :  STD_LOGIC;
SIGNAL	nS :  STD_LOGIC;
SIGNAL	Q_ALTERA_SYNTHESIZED1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 
Q2 <= SYNTHESIZED_WIRE_2;
SYNTHESIZED_WIRE_15 <= '0';



b2v_inst : k155la4
PORT MAP(01 => nQ2,
		 02 => nSA,
		 13 => SYNTHESIZED_WIRE_0,
		 03 => Q_ALTERA_SYNTHESIZED1,
		 04 => nR,
		 05 => nRA,
		 09 => SYNTHESIZED_WIRE_1,
		 10 => SYNTHESIZED_WIRE_2,
		 11 => nRA,
		 12 => SYNTHESIZED_WIRE_2,
		 06 => nQ1,
		 08 => nQ2);


b2v_inst10 : k155la3
PORT MAP(01 => SYNTHESIZED_WIRE_14,
		 02 => Q_ALTERA_SYNTHESIZED1,
		 04 => nQ1,
		 05 => SYNTHESIZED_WIRE_14,
		 09 => SYNTHESIZED_WIRE_15,
		 10 => SYNTHESIZED_WIRE_15,
		 12 => SYNTHESIZED_WIRE_15,
		 13 => SYNTHESIZED_WIRE_15,
		 03 => SYNTHESIZED_WIRE_0,
		 06 => SYNTHESIZED_WIRE_1);


b2v_inst11 : k155la3
PORT MAP(01 => C,
		 02 => C,
		 04 => E2,
		 05 => E2,
		 09 => E1,
		 10 => E1,
		 12 => SYNTHESIZED_WIRE_15,
		 13 => SYNTHESIZED_WIRE_15,
		 03 => SYNTHESIZED_WIRE_14,
		 06 => SYNTHESIZED_WIRE_12,
		 08 => SYNTHESIZED_WIRE_16);



b2v_inst9 : k155la4
PORT MAP(01 => E2,
		 02 => E2,
		 13 => E2,
		 03 => nSA,
		 04 => nQ1,
		 05 => nS,
		 09 => SYNTHESIZED_WIRE_16,
		 10 => SYNTHESIZED_WIRE_12,
		 11 => SYNTHESIZED_WIRE_16,
		 12 => nS,
		 06 => Q_ALTERA_SYNTHESIZED1,
		 08 => nR);

Q1 <= Q_ALTERA_SYNTHESIZED1;

END bdf_type;