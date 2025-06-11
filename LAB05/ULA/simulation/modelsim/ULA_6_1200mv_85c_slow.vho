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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/24/2025 11:28:57"

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
	flag_N : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	Sel : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	flag_Z : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- flag_N	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_Z	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_flag_N : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag_Z : std_logic;
SIGNAL \flag_N~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \flag_Z~output_o\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \inst8|inst3|inst2~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst3|inst2~2_combout\ : std_logic;
SIGNAL \inst8|inst3|inst2~4_combout\ : std_logic;
SIGNAL \inst8|inst2|inst2~2_combout\ : std_logic;
SIGNAL \inst8|inst2|inst2~3_combout\ : std_logic;
SIGNAL \inst8|inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst2~2_combout\ : std_logic;
SIGNAL \inst8|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~0_combout\ : std_logic;

BEGIN

flag_N <= ww_flag_N;
S <= ww_S;
ww_Sel <= Sel;
ww_A <= A;
ww_B <= B;
flag_Z <= ww_flag_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst9~0_combout\ <= NOT \inst9~0_combout\;

-- Location: IOOBUF_X34_Y3_N16
\flag_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst3|inst2~4_combout\,
	devoe => ww_devoe,
	o => \flag_N~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst3|inst2~4_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst2|inst2~3_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|inst2~2_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\flag_Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \flag_Z~output_o\);

-- Location: IOIBUF_X0_Y5_N22
\Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: LCCOMB_X2_Y1_N12
\inst8|inst3|inst2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst2~3_combout\ = (\A[3]~input_o\ & (\Sel[0]~input_o\ $ (((\Sel[1]~input_o\) # (!\B[3]~input_o\))))) # (!\A[3]~input_o\ & ((\Sel[0]~input_o\ & (\Sel[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst8|inst3|inst2~3_combout\);

-- Location: IOIBUF_X1_Y24_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X2_Y1_N16
\inst|inst4|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst4~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|inst4|inst4~0_combout\);

-- Location: LCCOMB_X2_Y1_N2
\inst8|inst3|inst2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst2~2_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\inst|inst4|inst4~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \inst|inst4|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|inst4|inst4~0_combout\,
	combout => \inst8|inst3|inst2~2_combout\);

-- Location: LCCOMB_X2_Y1_N18
\inst8|inst3|inst2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst2~4_combout\ = \inst8|inst3|inst2~3_combout\ $ (((\inst8|inst3|inst2~2_combout\ & (!\Sel[1]~input_o\ & !\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst3|inst2~3_combout\,
	datab => \inst8|inst3|inst2~2_combout\,
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst8|inst3|inst2~4_combout\);

-- Location: LCCOMB_X2_Y1_N22
\inst8|inst2|inst2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst2~2_combout\ = (\A[2]~input_o\ & (\Sel[0]~input_o\ $ (((\Sel[1]~input_o\) # (!\B[2]~input_o\))))) # (!\A[2]~input_o\ & ((\Sel[0]~input_o\ & (\Sel[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst8|inst2|inst2~2_combout\);

-- Location: LCCOMB_X2_Y1_N20
\inst8|inst2|inst2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst2|inst2~3_combout\ = \inst8|inst2|inst2~2_combout\ $ (((!\Sel[1]~input_o\ & (\inst|inst4|inst4~0_combout\ & !\Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \inst|inst4|inst4~0_combout\,
	datac => \inst8|inst2|inst2~2_combout\,
	datad => \Sel[0]~input_o\,
	combout => \inst8|inst2|inst2~3_combout\);

-- Location: LCCOMB_X2_Y1_N26
\inst8|inst1|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst2~1_combout\ = (\Sel[1]~input_o\) # (\Sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst8|inst1|inst2~1_combout\);

-- Location: LCCOMB_X2_Y1_N24
\inst8|inst1|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst2~0_combout\ = (\A[1]~input_o\ & (\Sel[0]~input_o\ $ (((\Sel[1]~input_o\) # (!\B[1]~input_o\))))) # (!\A[1]~input_o\ & ((\Sel[0]~input_o\ & (\Sel[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst8|inst1|inst2~0_combout\);

-- Location: LCCOMB_X2_Y1_N28
\inst8|inst1|inst2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst2~2_combout\ = \inst8|inst1|inst2~0_combout\ $ (((!\inst8|inst1|inst2~1_combout\ & (\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst2~1_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \inst8|inst1|inst2~0_combout\,
	combout => \inst8|inst1|inst2~2_combout\);

-- Location: LCCOMB_X2_Y1_N6
\inst8|inst|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|inst|inst2~0_combout\ = (\A[0]~input_o\ & (\Sel[0]~input_o\ $ (((\Sel[1]~input_o\) # (!\B[0]~input_o\))))) # (!\A[0]~input_o\ & ((\Sel[0]~input_o\ & (\Sel[1]~input_o\)) # (!\Sel[0]~input_o\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst8|inst|inst2~0_combout\);

-- Location: LCCOMB_X2_Y1_N0
\inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\inst8|inst|inst2~0_combout\) # ((\inst8|inst2|inst2~3_combout\) # ((\inst8|inst3|inst2~4_combout\) # (\inst8|inst1|inst2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst2~0_combout\,
	datab => \inst8|inst2|inst2~3_combout\,
	datac => \inst8|inst3|inst2~4_combout\,
	datad => \inst8|inst1|inst2~2_combout\,
	combout => \inst9~0_combout\);

ww_flag_N <= \flag_N~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_flag_Z <= \flag_Z~output_o\;
END structure;


