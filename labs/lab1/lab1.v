// Copyright (C) 2019  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
// CREATED		"Mon Nov 23 02:11:35 2020"

module lab1(
	nSA,
	E1,
	C,
	E2,
	nRA,
	Q2,
	Q1,
	pin_name1
);


input wire	nSA;
input wire	E1;
input wire	C;
input wire	E2;
input wire	nRA;
output wire	Q2;
output wire	Q1;
inout wire	pin_name1;

wire	nQ1;
wire	nQ2;
wire	nR;
wire	nS;
wire	Q_ALTERA_SYNTHESIZED1;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_12;

assign	Q2 = SYNTHESIZED_WIRE_2;
assign	SYNTHESIZED_WIRE_15 = 0;




K155LA4	b2v_inst(
	.01(nQ2),
	.02(nSA),
	.13(SYNTHESIZED_WIRE_0),
	.03(Q_ALTERA_SYNTHESIZED1),
	.04(nR),
	.05(nRA),
	.09(SYNTHESIZED_WIRE_1),
	.10(SYNTHESIZED_WIRE_2),
	.11(nRA),
	.12(SYNTHESIZED_WIRE_2),
	.06(nQ1),
	.08(nQ2));


K155LA3	b2v_inst10(
	.01(SYNTHESIZED_WIRE_14),
	.02(Q_ALTERA_SYNTHESIZED1),
	.04(nQ1),
	.05(SYNTHESIZED_WIRE_14),
	.09(SYNTHESIZED_WIRE_15),
	.10(SYNTHESIZED_WIRE_15),
	.12(SYNTHESIZED_WIRE_15),
	.13(SYNTHESIZED_WIRE_15),
	.03(SYNTHESIZED_WIRE_0),
	.06(SYNTHESIZED_WIRE_1)
	
	);


K155LA3	b2v_inst11(
	.01(C),
	.02(C),
	.04(E2),
	.05(E2),
	.09(E1),
	.10(E1),
	.12(SYNTHESIZED_WIRE_15),
	.13(SYNTHESIZED_WIRE_15),
	.03(SYNTHESIZED_WIRE_14),
	.06(SYNTHESIZED_WIRE_12),
	.08(SYNTHESIZED_WIRE_16)
	);



K155LA4	b2v_inst9(
	.01(E2),
	.02(E2),
	.13(E2),
	.03(nSA),
	.04(nQ1),
	.05(nS),
	.09(SYNTHESIZED_WIRE_16),
	.10(SYNTHESIZED_WIRE_12),
	.11(SYNTHESIZED_WIRE_16),
	.12(nS),
	.06(Q_ALTERA_SYNTHESIZED1),
	.08(nR));

assign	Q1 = Q_ALTERA_SYNTHESIZED1;

endmodule
