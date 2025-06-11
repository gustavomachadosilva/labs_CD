-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/23/2025 18:55:04"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	S : OUT std_logic_vector(7 DOWNTO 0);
	Sel : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- S[7]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst16|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst14~combout\ : std_logic;
SIGNAL \inst3|inst16|inst1|inst1~combout\ : std_logic;
SIGNAL \inst3|inst19~combout\ : std_logic;
SIGNAL \inst2|inst5|inst1~0_combout\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst3|inst20~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst3|inst13~combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst3|inst12~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst3|inst4~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst3|inst5~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst3|inst7~combout\ : std_logic;
SIGNAL \inst3|inst16|inst3|inst1~combout\ : std_logic;
SIGNAL \inst3|inst17|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst10~combout\ : std_logic;
SIGNAL \inst3|inst16|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst11~combout\ : std_logic;
SIGNAL \inst3|inst17|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst15~combout\ : std_logic;
SIGNAL \inst3|inst21|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst7|inst1~combout\ : std_logic;
SIGNAL \inst3|inst17|inst3|inst1~combout\ : std_logic;
SIGNAL \inst3|inst17|inst1|inst1~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst3|inst8~combout\ : std_logic;
SIGNAL \inst3|inst21|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst21|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst21|inst2|inst1~2_combout\ : std_logic;
SIGNAL \inst4|inst6|inst1~combout\ : std_logic;
SIGNAL \inst3|inst21|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst5|inst1~combout\ : std_logic;
SIGNAL \inst3|inst21|inst|inst1~combout\ : std_logic;
SIGNAL \inst4|inst4|inst1~combout\ : std_logic;
SIGNAL \inst3|inst18~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst4~0_combout\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst2~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst2~2_combout\ : std_logic;
SIGNAL \inst4|inst3|inst2~3_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst3|inst9~combout\ : std_logic;
SIGNAL \inst2|inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst2~0_combout\ : std_logic;

BEGIN

S <= ww_S;
ww_Sel <= Sel;
ww_A <= A;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X16_Y10_N8
\inst3|inst16|inst3|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst3|inst4~0_combout\ = (\inst3|inst5~combout\ & ((\inst3|inst7~combout\) # ((\inst3|inst9~combout\ & \inst3|inst4~combout\)))) # (!\inst3|inst5~combout\ & (\inst3|inst9~combout\ & (\inst3|inst4~combout\ & \inst3|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9~combout\,
	datab => \inst3|inst4~combout\,
	datac => \inst3|inst5~combout\,
	datad => \inst3|inst7~combout\,
	combout => \inst3|inst16|inst3|inst4~0_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst3|inst14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14~combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst3|inst14~combout\);

-- Location: LCCOMB_X13_Y8_N18
\inst3|inst16|inst1|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst1|inst1~combout\ = \inst3|inst16|inst3|inst4~0_combout\ $ (\inst3|inst10~combout\ $ (((\B[0]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst16|inst3|inst4~0_combout\,
	datab => \inst3|inst10~combout\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst16|inst1|inst1~combout\);

-- Location: LCCOMB_X13_Y9_N6
\inst3|inst19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst19~combout\ = (\B[3]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst3|inst19~combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst2|inst5|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst5|inst1~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst2|inst5|inst1~0_combout\);

-- Location: IOOBUF_X34_Y9_N23
\S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|inst1~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6|inst1~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst5|inst1~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst1~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst2~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst2~1_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|inst2~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X0_Y9_N1
\Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X13_Y9_N20
\inst3|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst20~combout\ = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst3|inst20~combout\);

-- Location: IOIBUF_X13_Y0_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X13_Y8_N8
\inst3|inst13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13~combout\ = (\B[2]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst3|inst13~combout\);

-- Location: IOIBUF_X13_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X13_Y8_N14
\inst3|inst12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst12~combout\ = (\A[0]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst3|inst12~combout\);

-- Location: IOIBUF_X13_Y24_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X16_Y10_N24
\inst3|inst4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst4~combout\ = (\A[1]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst3|inst4~combout\);

-- Location: IOIBUF_X34_Y10_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X16_Y10_N30
\inst3|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst5~combout\ = (\A[2]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst3|inst5~combout\);

-- Location: IOIBUF_X0_Y10_N22
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X16_Y10_N20
\inst3|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst7~combout\ = (\A[1]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst3|inst7~combout\);

-- Location: LCCOMB_X16_Y10_N18
\inst3|inst16|inst3|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst3|inst1~combout\ = \inst3|inst5~combout\ $ (\inst3|inst7~combout\ $ (((\inst3|inst9~combout\ & \inst3|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9~combout\,
	datab => \inst3|inst4~combout\,
	datac => \inst3|inst5~combout\,
	datad => \inst3|inst7~combout\,
	combout => \inst3|inst16|inst3|inst1~combout\);

-- Location: LCCOMB_X13_Y8_N20
\inst3|inst17|inst3|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst17|inst3|inst4~0_combout\ = (\inst3|inst16|inst1|inst1~combout\ & ((\inst3|inst13~combout\) # ((\inst3|inst12~combout\ & \inst3|inst16|inst3|inst1~combout\)))) # (!\inst3|inst16|inst1|inst1~combout\ & (\inst3|inst13~combout\ & 
-- (\inst3|inst12~combout\ & \inst3|inst16|inst3|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst16|inst1|inst1~combout\,
	datab => \inst3|inst13~combout\,
	datac => \inst3|inst12~combout\,
	datad => \inst3|inst16|inst3|inst1~combout\,
	combout => \inst3|inst17|inst3|inst4~0_combout\);

-- Location: LCCOMB_X13_Y8_N16
\inst3|inst10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst10~combout\ = (\B[1]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst3|inst10~combout\);

-- Location: LCCOMB_X13_Y8_N26
\inst3|inst16|inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst1|inst4~0_combout\ = (\inst3|inst16|inst3|inst4~0_combout\ & ((\inst3|inst10~combout\) # ((\B[0]~input_o\ & \A[3]~input_o\)))) # (!\inst3|inst16|inst3|inst4~0_combout\ & (\inst3|inst10~combout\ & (\B[0]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst16|inst3|inst4~0_combout\,
	datab => \inst3|inst10~combout\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst16|inst1|inst4~0_combout\);

-- Location: LCCOMB_X13_Y8_N28
\inst3|inst11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst11~combout\ = (\B[1]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst3|inst11~combout\);

-- Location: LCCOMB_X13_Y8_N6
\inst3|inst17|inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst17|inst1|inst4~0_combout\ = (\inst3|inst14~combout\ & ((\inst3|inst17|inst3|inst4~0_combout\) # (\inst3|inst16|inst1|inst4~0_combout\ $ (\inst3|inst11~combout\)))) # (!\inst3|inst14~combout\ & (\inst3|inst17|inst3|inst4~0_combout\ & 
-- (\inst3|inst16|inst1|inst4~0_combout\ $ (\inst3|inst11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst14~combout\,
	datab => \inst3|inst17|inst3|inst4~0_combout\,
	datac => \inst3|inst16|inst1|inst4~0_combout\,
	datad => \inst3|inst11~combout\,
	combout => \inst3|inst17|inst1|inst4~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\inst3|inst15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst15~combout\ = (\B[2]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	combout => \inst3|inst15~combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst3|inst21|inst2|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21|inst2|inst4~0_combout\ = (\inst3|inst21|inst1|inst4~0_combout\ & ((\inst3|inst20~combout\) # ((\inst3|inst17|inst1|inst4~0_combout\ & \inst3|inst15~combout\)))) # (!\inst3|inst21|inst1|inst4~0_combout\ & (\inst3|inst20~combout\ & 
-- (\inst3|inst17|inst1|inst4~0_combout\ & \inst3|inst15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst21|inst1|inst4~0_combout\,
	datab => \inst3|inst20~combout\,
	datac => \inst3|inst17|inst1|inst4~0_combout\,
	datad => \inst3|inst15~combout\,
	combout => \inst3|inst21|inst2|inst4~0_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst4|inst7|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst7|inst1~combout\ = (\Sel[1]~input_o\ & \inst3|inst21|inst2|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sel[1]~input_o\,
	datad => \inst3|inst21|inst2|inst4~0_combout\,
	combout => \inst4|inst7|inst1~combout\);

-- Location: LCCOMB_X13_Y8_N24
\inst3|inst17|inst3|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst17|inst3|inst1~combout\ = \inst3|inst16|inst1|inst1~combout\ $ (\inst3|inst13~combout\ $ (((\inst3|inst12~combout\ & \inst3|inst16|inst3|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst16|inst1|inst1~combout\,
	datab => \inst3|inst13~combout\,
	datac => \inst3|inst12~combout\,
	datad => \inst3|inst16|inst3|inst1~combout\,
	combout => \inst3|inst17|inst3|inst1~combout\);

-- Location: LCCOMB_X13_Y8_N30
\inst3|inst17|inst1|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst17|inst1|inst1~combout\ = \inst3|inst14~combout\ $ (\inst3|inst17|inst3|inst4~0_combout\ $ (\inst3|inst16|inst1|inst4~0_combout\ $ (\inst3|inst11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst14~combout\,
	datab => \inst3|inst17|inst3|inst4~0_combout\,
	datac => \inst3|inst16|inst1|inst4~0_combout\,
	datad => \inst3|inst11~combout\,
	combout => \inst3|inst17|inst1|inst1~combout\);

-- Location: IOIBUF_X13_Y0_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X13_Y8_N12
\inst3|inst8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst8~combout\ = (\A[1]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst3|inst8~combout\);

-- Location: LCCOMB_X13_Y8_N0
\inst3|inst21|inst3|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21|inst3|inst4~0_combout\ = (\inst3|inst17|inst1|inst1~combout\ & ((\inst3|inst8~combout\) # ((\inst3|inst18~combout\ & \inst3|inst17|inst3|inst1~combout\)))) # (!\inst3|inst17|inst1|inst1~combout\ & (\inst3|inst18~combout\ & 
-- (\inst3|inst17|inst3|inst1~combout\ & \inst3|inst8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst18~combout\,
	datab => \inst3|inst17|inst3|inst1~combout\,
	datac => \inst3|inst17|inst1|inst1~combout\,
	datad => \inst3|inst8~combout\,
	combout => \inst3|inst21|inst3|inst4~0_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst3|inst21|inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21|inst1|inst4~0_combout\ = (\inst3|inst19~combout\ & ((\inst3|inst21|inst3|inst4~0_combout\) # (\inst3|inst17|inst1|inst4~0_combout\ $ (\inst3|inst15~combout\)))) # (!\inst3|inst19~combout\ & (\inst3|inst21|inst3|inst4~0_combout\ & 
-- (\inst3|inst17|inst1|inst4~0_combout\ $ (\inst3|inst15~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst19~combout\,
	datab => \inst3|inst21|inst3|inst4~0_combout\,
	datac => \inst3|inst17|inst1|inst4~0_combout\,
	datad => \inst3|inst15~combout\,
	combout => \inst3|inst21|inst1|inst4~0_combout\);

-- Location: LCCOMB_X13_Y9_N0
\inst3|inst21|inst2|inst1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21|inst2|inst1~2_combout\ = (\A[3]~input_o\ & (\B[3]~input_o\ $ (((\inst3|inst17|inst1|inst4~0_combout\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst17|inst1|inst4~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst3|inst21|inst2|inst1~2_combout\);

-- Location: LCCOMB_X13_Y9_N14
\inst4|inst6|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst6|inst1~combout\ = (\Sel[1]~input_o\ & (\inst3|inst21|inst1|inst4~0_combout\ $ (\inst3|inst21|inst2|inst1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst21|inst1|inst4~0_combout\,
	datac => \Sel[1]~input_o\,
	datad => \inst3|inst21|inst2|inst1~2_combout\,
	combout => \inst4|inst6|inst1~combout\);

-- Location: LCCOMB_X13_Y9_N8
\inst3|inst21|inst1|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21|inst1|inst1~0_combout\ = (\B[3]~input_o\ & (\A[2]~input_o\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst3|inst21|inst1|inst1~0_combout\);

-- Location: LCCOMB_X13_Y9_N26
\inst4|inst5|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst5|inst1~combout\ = (\Sel[1]~input_o\ & (\inst3|inst17|inst1|inst4~0_combout\ $ (\inst3|inst21|inst3|inst4~0_combout\ $ (\inst3|inst21|inst1|inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst17|inst1|inst4~0_combout\,
	datab => \inst3|inst21|inst3|inst4~0_combout\,
	datac => \inst3|inst21|inst1|inst1~0_combout\,
	datad => \Sel[1]~input_o\,
	combout => \inst4|inst5|inst1~combout\);

-- Location: LCCOMB_X13_Y8_N2
\inst3|inst21|inst|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst21|inst|inst1~combout\ = (\B[3]~input_o\ & (\A[0]~input_o\ & \inst3|inst17|inst3|inst1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst3|inst17|inst3|inst1~combout\,
	combout => \inst3|inst21|inst|inst1~combout\);

-- Location: LCCOMB_X13_Y8_N4
\inst4|inst4|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1~combout\ = (\Sel[1]~input_o\ & (\inst3|inst17|inst1|inst1~combout\ $ (\inst3|inst21|inst|inst1~combout\ $ (\inst3|inst8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst17|inst1|inst1~combout\,
	datab => \inst3|inst21|inst|inst1~combout\,
	datac => \Sel[1]~input_o\,
	datad => \inst3|inst8~combout\,
	combout => \inst4|inst4|inst1~combout\);

-- Location: LCCOMB_X13_Y8_N10
\inst3|inst18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst18~combout\ = (\B[3]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst3|inst18~combout\);

-- Location: LCCOMB_X16_Y10_N4
\inst2|inst2|inst1|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst1~0_combout\ = (\B[1]~input_o\ & ((\A[0]~input_o\) # ((\A[1]~input_o\) # (\B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst2|inst2|inst1|inst1~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst|inst3|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst4~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst3|inst4~0_combout\);

-- Location: IOIBUF_X13_Y24_N8
\Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: LCCOMB_X16_Y10_N16
\inst4|inst3|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2~0_combout\ = (\Sel[0]~input_o\ & (\inst2|inst2|inst1|inst1~0_combout\)) # (!\Sel[0]~input_o\ & ((\inst|inst3|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst1|inst1~0_combout\,
	datac => \inst|inst3|inst4~0_combout\,
	datad => \Sel[0]~input_o\,
	combout => \inst4|inst3|inst2~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst4|inst3|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2~1_combout\ = (\B[2]~input_o\ & ((\inst4|inst3|inst2~0_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\inst4|inst3|inst2~0_combout\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \inst4|inst3|inst2~0_combout\,
	datad => \A[2]~input_o\,
	combout => \inst4|inst3|inst2~1_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst4|inst3|inst2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2~2_combout\ = \B[3]~input_o\ $ (\inst4|inst3|inst2~1_combout\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \inst4|inst3|inst2~1_combout\,
	datac => \A[3]~input_o\,
	combout => \inst4|inst3|inst2~2_combout\);

-- Location: LCCOMB_X13_Y8_N22
\inst4|inst3|inst2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2~3_combout\ = (\Sel[1]~input_o\ & (\inst3|inst18~combout\ $ (((\inst3|inst17|inst3|inst1~combout\))))) # (!\Sel[1]~input_o\ & (((\inst4|inst3|inst2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst18~combout\,
	datab => \Sel[1]~input_o\,
	datac => \inst4|inst3|inst2~2_combout\,
	datad => \inst3|inst17|inst3|inst1~combout\,
	combout => \inst4|inst3|inst2~3_combout\);

-- Location: LCCOMB_X16_Y10_N12
\inst4|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2~0_combout\ = \inst2|inst5|inst1~0_combout\ $ (((\Sel[0]~input_o\ & (\inst2|inst2|inst1|inst1~0_combout\)) # (!\Sel[0]~input_o\ & ((\inst|inst3|inst4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|inst1~0_combout\,
	datab => \inst2|inst2|inst1|inst1~0_combout\,
	datac => \inst|inst3|inst4~0_combout\,
	datad => \Sel[0]~input_o\,
	combout => \inst4|inst2|inst2~0_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst4|inst2|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2~1_combout\ = (\Sel[1]~input_o\ & (\inst3|inst12~combout\ $ ((\inst3|inst16|inst3|inst1~combout\)))) # (!\Sel[1]~input_o\ & (((\inst4|inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst12~combout\,
	datab => \inst3|inst16|inst3|inst1~combout\,
	datac => \Sel[1]~input_o\,
	datad => \inst4|inst2|inst2~0_combout\,
	combout => \inst4|inst2|inst2~1_combout\);

-- Location: LCCOMB_X16_Y10_N26
\inst3|inst9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9~combout\ = (\B[1]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst3|inst9~combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst2|inst4|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst1~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst2|inst4|inst1~0_combout\);

-- Location: LCCOMB_X16_Y10_N2
\inst4|inst1|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst2~0_combout\ = \inst2|inst4|inst1~0_combout\ $ (((\B[0]~input_o\ & ((\Sel[0]~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Sel[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \inst2|inst4|inst1~0_combout\,
	combout => \inst4|inst1|inst2~0_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst4|inst1|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst2~1_combout\ = (\Sel[1]~input_o\ & (\inst3|inst9~combout\ $ ((\inst3|inst4~combout\)))) # (!\Sel[1]~input_o\ & (((\inst4|inst1|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9~combout\,
	datab => \inst3|inst4~combout\,
	datac => \Sel[1]~input_o\,
	datad => \inst4|inst1|inst2~0_combout\,
	combout => \inst4|inst1|inst2~1_combout\);

-- Location: LCCOMB_X16_Y10_N22
\inst4|inst|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2~0_combout\ = (\Sel[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\))) # (!\Sel[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\ $ (\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst4|inst|inst2~0_combout\);

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


