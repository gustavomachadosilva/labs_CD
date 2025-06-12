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

-- DATE "06/12/2025 07:32:46"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CounterBCD IS
    PORT (
	ClkOut : OUT std_logic;
	ClkIn : IN std_logic;
	Reset : IN std_logic;
	Display1 : OUT std_logic_vector(6 DOWNTO 0);
	D : IN std_logic_vector(7 DOWNTO 0);
	Sel : IN std_logic_vector(1 DOWNTO 0);
	Display2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END CounterBCD;

-- Design Ports Information
-- ClkOut	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display2[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClkIn	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterBCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ClkOut : std_logic;
SIGNAL ww_ClkIn : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|inst2|inst12~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClkOut~output_o\ : std_logic;
SIGNAL \Display1[6]~output_o\ : std_logic;
SIGNAL \Display1[5]~output_o\ : std_logic;
SIGNAL \Display1[4]~output_o\ : std_logic;
SIGNAL \Display1[3]~output_o\ : std_logic;
SIGNAL \Display1[2]~output_o\ : std_logic;
SIGNAL \Display1[1]~output_o\ : std_logic;
SIGNAL \Display1[0]~output_o\ : std_logic;
SIGNAL \Display2[6]~output_o\ : std_logic;
SIGNAL \Display2[5]~output_o\ : std_logic;
SIGNAL \Display2[4]~output_o\ : std_logic;
SIGNAL \Display2[3]~output_o\ : std_logic;
SIGNAL \Display2[2]~output_o\ : std_logic;
SIGNAL \Display2[1]~output_o\ : std_logic;
SIGNAL \Display2[0]~output_o\ : std_logic;
SIGNAL \ClkIn~input_o\ : std_logic;
SIGNAL \inst3|inst|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst3|inst|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst1~q\ : std_logic;
SIGNAL \inst3|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst2~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst2~q\ : std_logic;
SIGNAL \inst3|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst3~q\ : std_logic;
SIGNAL \inst3|inst|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst8~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst8~q\ : std_logic;
SIGNAL \inst3|inst|inst10~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst10~q\ : std_logic;
SIGNAL \inst3|inst|inst14~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst14~q\ : std_logic;
SIGNAL \inst3|inst|inst12~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst12~q\ : std_logic;
SIGNAL \inst3|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst~q\ : std_logic;
SIGNAL \inst3|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst1~q\ : std_logic;
SIGNAL \inst3|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst2~q\ : std_logic;
SIGNAL \inst3|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst3~q\ : std_logic;
SIGNAL \inst3|inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst8~feeder_combout\ : std_logic;
SIGNAL \inst3|inst1|inst8~q\ : std_logic;
SIGNAL \inst3|inst1|inst10~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst10~q\ : std_logic;
SIGNAL \inst3|inst1|inst14~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst14~feeder_combout\ : std_logic;
SIGNAL \inst3|inst1|inst14~q\ : std_logic;
SIGNAL \inst3|inst1|inst12~0_combout\ : std_logic;
SIGNAL \inst3|inst1|inst12~q\ : std_logic;
SIGNAL \inst3|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst2|inst~q\ : std_logic;
SIGNAL \inst3|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst1~q\ : std_logic;
SIGNAL \inst3|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst2~q\ : std_logic;
SIGNAL \inst3|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3~q\ : std_logic;
SIGNAL \inst3|inst2|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst8~feeder_combout\ : std_logic;
SIGNAL \inst3|inst2|inst8~q\ : std_logic;
SIGNAL \inst3|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst10~q\ : std_logic;
SIGNAL \inst3|inst2|inst14~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst14~q\ : std_logic;
SIGNAL \inst3|inst2|inst12~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst12~q\ : std_logic;
SIGNAL \inst3|inst2|inst12~clkctrl_outclk\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \inst|inst8|inst3~0_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \inst|inst11|inst6~0_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst|inst4|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst~_wirecell_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \inst|inst8|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst8|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst14~combout\ : std_logic;
SIGNAL \inst|inst13~combout\ : std_logic;
SIGNAL \inst|inst11|inst2~combout\ : std_logic;
SIGNAL \inst|inst11|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst|inst19~combout\ : std_logic;
SIGNAL \inst|inst8|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst16|inst2~combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \inst|inst16|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst16|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \inst|inst26~combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \inst|inst22|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst24~combout\ : std_logic;
SIGNAL \inst|inst22|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst22|inst6~2_combout\ : std_logic;
SIGNAL \inst|inst21~q\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \inst|inst34|inst6~0_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \inst|inst28|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst31~combout\ : std_logic;
SIGNAL \inst|inst28|inst2~combout\ : std_logic;
SIGNAL \inst|inst28|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst27~q\ : std_logic;
SIGNAL \inst|inst37~combout\ : std_logic;
SIGNAL \inst|inst34|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst34|inst2~1_combout\ : std_logic;
SIGNAL \inst|inst34|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst|inst44~combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \inst|inst40|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst42~combout\ : std_logic;
SIGNAL \inst|inst40|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst40|inst6~2_combout\ : std_logic;
SIGNAL \inst|inst39~q\ : std_logic;
SIGNAL \inst2|inst6|inst7~combout\ : std_logic;
SIGNAL \inst2|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst16~0_combout\ : std_logic;
SIGNAL \inst2|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst7~combout\ : std_logic;
SIGNAL \inst1|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst16~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst3|ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \inst2|inst4|ALT_INV_inst2~0_combout\ : std_logic;

BEGIN

ClkOut <= ww_ClkOut;
ww_ClkIn <= ClkIn;
ww_Reset <= Reset;
Display1 <= ww_Display1;
ww_D <= D;
ww_Sel <= Sel;
Display2 <= ww_Display2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|inst2|inst12~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|inst2|inst12~q\);
\inst1|inst3|ALT_INV_inst8~0_combout\ <= NOT \inst1|inst3|inst8~0_combout\;
\inst1|inst4|ALT_INV_inst2~0_combout\ <= NOT \inst1|inst4|inst2~0_combout\;
\inst2|inst3|ALT_INV_inst8~0_combout\ <= NOT \inst2|inst3|inst8~0_combout\;
\inst2|inst4|ALT_INV_inst2~0_combout\ <= NOT \inst2|inst4|inst2~0_combout\;

-- Location: IOOBUF_X23_Y29_N9
\ClkOut~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst2|inst12~q\,
	devoe => ww_devoe,
	o => \ClkOut~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Display1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6|inst7~combout\,
	devoe => ww_devoe,
	o => \Display1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Display1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5|inst4~0_combout\,
	devoe => ww_devoe,
	o => \Display1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Display1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4|ALT_INV_inst2~0_combout\,
	devoe => ww_devoe,
	o => \Display1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Display1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3|ALT_INV_inst8~0_combout\,
	devoe => ww_devoe,
	o => \Display1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Display1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|inst16~0_combout\,
	devoe => ww_devoe,
	o => \Display1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Display1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|inst7~0_combout\,
	devoe => ww_devoe,
	o => \Display1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Display1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \Display1[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Display2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|inst7~combout\,
	devoe => ww_devoe,
	o => \Display2[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Display2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|inst4~0_combout\,
	devoe => ww_devoe,
	o => \Display2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Display2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|ALT_INV_inst2~0_combout\,
	devoe => ww_devoe,
	o => \Display2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Display2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3|ALT_INV_inst8~0_combout\,
	devoe => ww_devoe,
	o => \Display2[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Display2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst16~0_combout\,
	devoe => ww_devoe,
	o => \Display2[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Display2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst7~0_combout\,
	devoe => ww_devoe,
	o => \Display2[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Display2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \Display2[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\ClkIn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ClkIn,
	o => \ClkIn~input_o\);

-- Location: LCCOMB_X16_Y21_N10
\inst3|inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst~0_combout\ = !\inst3|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst~q\,
	combout => \inst3|inst|inst~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\inst3|inst|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst~feeder_combout\ = \inst3|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst~0_combout\,
	combout => \inst3|inst|inst~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X16_Y21_N25
\inst3|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkIn~input_o\,
	d => \inst3|inst|inst~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst~q\);

-- Location: LCCOMB_X16_Y21_N26
\inst3|inst|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst1~0_combout\ = !\inst3|inst|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|inst1~q\,
	combout => \inst3|inst|inst1~0_combout\);

-- Location: FF_X16_Y21_N9
\inst3|inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst~q\,
	asdata => \inst3|inst|inst1~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst1~q\);

-- Location: LCCOMB_X15_Y21_N12
\inst3|inst|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2~0_combout\ = !\inst3|inst|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst2~q\,
	combout => \inst3|inst|inst2~0_combout\);

-- Location: LCCOMB_X15_Y21_N10
\inst3|inst|inst2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2~feeder_combout\ = \inst3|inst|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst2~0_combout\,
	combout => \inst3|inst|inst2~feeder_combout\);

-- Location: FF_X15_Y21_N11
\inst3|inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst1~q\,
	d => \inst3|inst|inst2~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst2~q\);

-- Location: LCCOMB_X15_Y21_N30
\inst3|inst|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3~0_combout\ = !\inst3|inst|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst3~q\,
	combout => \inst3|inst|inst3~0_combout\);

-- Location: FF_X15_Y21_N23
\inst3|inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst2~q\,
	asdata => \inst3|inst|inst3~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst3~q\);

-- Location: LCCOMB_X14_Y23_N24
\inst3|inst|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst8~0_combout\ = !\inst3|inst|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst8~q\,
	combout => \inst3|inst|inst8~0_combout\);

-- Location: LCCOMB_X14_Y23_N10
\inst3|inst|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst8~feeder_combout\ = \inst3|inst|inst8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst8~0_combout\,
	combout => \inst3|inst|inst8~feeder_combout\);

-- Location: FF_X14_Y23_N11
\inst3|inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst3~q\,
	d => \inst3|inst|inst8~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst8~q\);

-- Location: LCCOMB_X14_Y23_N26
\inst3|inst|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst10~0_combout\ = !\inst3|inst|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|inst10~q\,
	combout => \inst3|inst|inst10~0_combout\);

-- Location: FF_X14_Y23_N9
\inst3|inst|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst8~q\,
	asdata => \inst3|inst|inst10~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst10~q\);

-- Location: LCCOMB_X17_Y23_N0
\inst3|inst|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst14~0_combout\ = !\inst3|inst|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst14~q\,
	combout => \inst3|inst|inst14~0_combout\);

-- Location: FF_X17_Y23_N13
\inst3|inst|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst10~q\,
	asdata => \inst3|inst|inst14~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst14~q\);

-- Location: LCCOMB_X17_Y23_N26
\inst3|inst|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|inst12~0_combout\ = !\inst3|inst|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst12~q\,
	combout => \inst3|inst|inst12~0_combout\);

-- Location: FF_X17_Y23_N31
\inst3|inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst14~q\,
	asdata => \inst3|inst|inst12~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst12~q\);

-- Location: LCCOMB_X16_Y22_N16
\inst3|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst~0_combout\ = !\inst3|inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1|inst~q\,
	combout => \inst3|inst1|inst~0_combout\);

-- Location: FF_X16_Y22_N1
\inst3|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst12~q\,
	asdata => \inst3|inst1|inst~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst~q\);

-- Location: LCCOMB_X16_Y22_N26
\inst3|inst1|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst1~0_combout\ = !\inst3|inst1|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1|inst1~q\,
	combout => \inst3|inst1|inst1~0_combout\);

-- Location: FF_X16_Y22_N23
\inst3|inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst~q\,
	asdata => \inst3|inst1|inst1~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst1~q\);

-- Location: LCCOMB_X15_Y23_N18
\inst3|inst1|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst2~0_combout\ = !\inst3|inst1|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1|inst2~q\,
	combout => \inst3|inst1|inst2~0_combout\);

-- Location: FF_X15_Y23_N17
\inst3|inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst1~q\,
	asdata => \inst3|inst1|inst2~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst2~q\);

-- Location: LCCOMB_X15_Y23_N26
\inst3|inst1|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst3~0_combout\ = !\inst3|inst1|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst1|inst3~q\,
	combout => \inst3|inst1|inst3~0_combout\);

-- Location: FF_X15_Y23_N9
\inst3|inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst2~q\,
	asdata => \inst3|inst1|inst3~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst3~q\);

-- Location: LCCOMB_X16_Y23_N14
\inst3|inst1|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst8~0_combout\ = !\inst3|inst1|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst1|inst8~q\,
	combout => \inst3|inst1|inst8~0_combout\);

-- Location: LCCOMB_X16_Y23_N30
\inst3|inst1|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst8~feeder_combout\ = \inst3|inst1|inst8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst1|inst8~0_combout\,
	combout => \inst3|inst1|inst8~feeder_combout\);

-- Location: FF_X16_Y23_N31
\inst3|inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst3~q\,
	d => \inst3|inst1|inst8~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst8~q\);

-- Location: LCCOMB_X16_Y23_N26
\inst3|inst1|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst10~0_combout\ = !\inst3|inst1|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst1|inst10~q\,
	combout => \inst3|inst1|inst10~0_combout\);

-- Location: FF_X16_Y23_N1
\inst3|inst1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst8~q\,
	asdata => \inst3|inst1|inst10~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst10~q\);

-- Location: LCCOMB_X16_Y24_N22
\inst3|inst1|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst14~0_combout\ = !\inst3|inst1|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|inst14~q\,
	combout => \inst3|inst1|inst14~0_combout\);

-- Location: LCCOMB_X16_Y24_N6
\inst3|inst1|inst14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst14~feeder_combout\ = \inst3|inst1|inst14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|inst14~0_combout\,
	combout => \inst3|inst1|inst14~feeder_combout\);

-- Location: FF_X16_Y24_N7
\inst3|inst1|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst10~q\,
	d => \inst3|inst1|inst14~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst14~q\);

-- Location: LCCOMB_X16_Y24_N26
\inst3|inst1|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst12~0_combout\ = !\inst3|inst1|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1|inst12~q\,
	combout => \inst3|inst1|inst12~0_combout\);

-- Location: FF_X16_Y24_N31
\inst3|inst1|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst14~q\,
	asdata => \inst3|inst1|inst12~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst12~q\);

-- Location: LCCOMB_X17_Y24_N22
\inst3|inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst~0_combout\ = !\inst3|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst~q\,
	combout => \inst3|inst2|inst~0_combout\);

-- Location: LCCOMB_X17_Y24_N10
\inst3|inst2|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst~feeder_combout\ = \inst3|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst2|inst~0_combout\,
	combout => \inst3|inst2|inst~feeder_combout\);

-- Location: FF_X17_Y24_N11
\inst3|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst1|inst12~q\,
	d => \inst3|inst2|inst~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst~q\);

-- Location: LCCOMB_X19_Y24_N4
\inst3|inst2|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst1~0_combout\ = !\inst3|inst2|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst1~q\,
	combout => \inst3|inst2|inst1~0_combout\);

-- Location: FF_X19_Y24_N3
\inst3|inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst~q\,
	asdata => \inst3|inst2|inst1~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst1~q\);

-- Location: LCCOMB_X19_Y24_N26
\inst3|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst2~0_combout\ = !\inst3|inst2|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst2~q\,
	combout => \inst3|inst2|inst2~0_combout\);

-- Location: FF_X19_Y24_N23
\inst3|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst1~q\,
	asdata => \inst3|inst2|inst2~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst2~q\);

-- Location: LCCOMB_X17_Y24_N4
\inst3|inst2|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3~0_combout\ = !\inst3|inst2|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst3~q\,
	combout => \inst3|inst2|inst3~0_combout\);

-- Location: FF_X17_Y24_N1
\inst3|inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst2~q\,
	asdata => \inst3|inst2|inst3~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst3~q\);

-- Location: LCCOMB_X17_Y25_N0
\inst3|inst2|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst8~0_combout\ = !\inst3|inst2|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst8~q\,
	combout => \inst3|inst2|inst8~0_combout\);

-- Location: LCCOMB_X17_Y25_N12
\inst3|inst2|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst8~feeder_combout\ = \inst3|inst2|inst8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|inst8~0_combout\,
	combout => \inst3|inst2|inst8~feeder_combout\);

-- Location: FF_X17_Y25_N13
\inst3|inst2|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst3~q\,
	d => \inst3|inst2|inst8~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst8~q\);

-- Location: LCCOMB_X17_Y25_N26
\inst3|inst2|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst10~0_combout\ = !\inst3|inst2|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst10~q\,
	combout => \inst3|inst2|inst10~0_combout\);

-- Location: FF_X17_Y25_N9
\inst3|inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst8~q\,
	asdata => \inst3|inst2|inst10~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst10~q\);

-- Location: LCCOMB_X19_Y25_N0
\inst3|inst2|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst14~0_combout\ = !\inst3|inst2|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst14~q\,
	combout => \inst3|inst2|inst14~0_combout\);

-- Location: FF_X19_Y25_N17
\inst3|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst10~q\,
	asdata => \inst3|inst2|inst14~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst14~q\);

-- Location: LCCOMB_X19_Y25_N8
\inst3|inst2|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst12~0_combout\ = !\inst3|inst2|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst12~q\,
	combout => \inst3|inst2|inst12~0_combout\);

-- Location: FF_X19_Y25_N5
\inst3|inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst14~q\,
	asdata => \inst3|inst2|inst12~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst12~q\);

-- Location: CLKCTRL_G13
\inst3|inst2|inst12~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|inst2|inst12~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|inst2|inst12~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N1
\Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: LCCOMB_X22_Y28_N16
\inst|inst8|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst3~0_combout\ = (\Sel[1]~input_o\ & \Sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst|inst8|inst3~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X23_Y28_N14
\inst|inst11|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst6~0_combout\ = (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\inst|inst2~q\)) # (!\Sel[0]~input_o\ & ((\D[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \D[2]~input_o\,
	combout => \inst|inst11|inst6~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X23_Y28_N12
\inst|inst4|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst4|inst6~0_combout\ = (\Sel[0]~input_o\ & (\inst|inst~q\)) # (!\Sel[0]~input_o\ & ((\D[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sel[0]~input_o\,
	datac => \inst|inst~q\,
	datad => \D[0]~input_o\,
	combout => \inst|inst4|inst6~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\inst|inst~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~_wirecell_combout\ = !\inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst~q\,
	combout => \inst|inst~_wirecell_combout\);

-- Location: FF_X23_Y28_N13
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst4|inst6~0_combout\,
	asdata => \inst|inst~_wirecell_combout\,
	sload => \Sel[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: IOIBUF_X0_Y27_N1
\D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X23_Y28_N0
\inst|inst8|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst6~0_combout\ = \inst|inst1~q\ $ (((\Sel[1]~input_o\ & \inst|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sel[1]~input_o\,
	datac => \inst|inst~q\,
	datad => \inst|inst1~q\,
	combout => \inst|inst8|inst6~0_combout\);

-- Location: LCCOMB_X23_Y28_N18
\inst|inst8|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst6~1_combout\ = (\Sel[1]~input_o\ & ((\Sel[0]~input_o\ $ (\inst|inst8|inst6~0_combout\)))) # (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\inst|inst8|inst6~0_combout\))) # (!\Sel[0]~input_o\ & (\D[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \inst|inst8|inst6~0_combout\,
	combout => \inst|inst8|inst6~1_combout\);

-- Location: FF_X23_Y28_N19
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X23_Y28_N30
\inst|inst14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14~combout\ = \inst|inst2~q\ $ (((\inst|inst~q\) # (\inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datac => \inst|inst~q\,
	datad => \inst|inst1~q\,
	combout => \inst|inst14~combout\);

-- Location: LCCOMB_X23_Y28_N20
\inst|inst13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst13~combout\ = (\inst|inst~q\ & \inst|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~q\,
	datad => \inst|inst1~q\,
	combout => \inst|inst13~combout\);

-- Location: LCCOMB_X23_Y28_N2
\inst|inst11|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst2~combout\ = (\Sel[1]~input_o\ & (!\Sel[0]~input_o\ & (\inst|inst2~q\ $ (\inst|inst13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \inst|inst13~combout\,
	combout => \inst|inst11|inst2~combout\);

-- Location: LCCOMB_X23_Y28_N24
\inst|inst11|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst6~1_combout\ = (\inst|inst11|inst6~0_combout\) # ((\inst|inst11|inst2~combout\) # ((\inst|inst8|inst3~0_combout\ & !\inst|inst14~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst3~0_combout\,
	datab => \inst|inst11|inst6~0_combout\,
	datac => \inst|inst14~combout\,
	datad => \inst|inst11|inst2~combout\,
	combout => \inst|inst11|inst6~1_combout\);

-- Location: FF_X23_Y28_N25
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst11|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X23_Y28_N4
\inst|inst19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19~combout\ = \inst|inst5~q\ $ (((\inst|inst2~q\) # ((!\inst|inst~q\ & !\inst|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst5~q\,
	datad => \inst|inst1~q\,
	combout => \inst|inst19~combout\);

-- Location: LCCOMB_X22_Y28_N24
\inst|inst8|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8|inst2~0_combout\ = (\Sel[1]~input_o\ & !\Sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst|inst8|inst2~0_combout\);

-- Location: LCCOMB_X23_Y28_N26
\inst|inst16|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16|inst2~combout\ = (\inst|inst8|inst2~0_combout\ & (\inst|inst5~q\ $ (((\inst|inst2~q\ & \inst|inst13~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst8|inst2~0_combout\,
	datac => \inst|inst5~q\,
	datad => \inst|inst13~combout\,
	combout => \inst|inst16|inst2~combout\);

-- Location: IOIBUF_X0_Y23_N8
\D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X24_Y28_N6
\inst|inst16|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16|inst6~0_combout\ = (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\inst|inst5~q\))) # (!\Sel[0]~input_o\ & (\D[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \inst|inst5~q\,
	combout => \inst|inst16|inst6~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\inst|inst16|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16|inst6~1_combout\ = (\inst|inst16|inst2~combout\) # ((\inst|inst16|inst6~0_combout\) # ((\inst|inst8|inst3~0_combout\ & !\inst|inst19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst3~0_combout\,
	datab => \inst|inst19~combout\,
	datac => \inst|inst16|inst2~combout\,
	datad => \inst|inst16|inst6~0_combout\,
	combout => \inst|inst16|inst6~1_combout\);

-- Location: FF_X23_Y28_N9
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst16|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: LCCOMB_X23_Y28_N28
\inst|inst26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst26~combout\ = (\inst|inst5~q\) # ((!\inst|inst2~q\ & ((\inst|inst1~q\) # (\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst1~q\,
	datac => \inst|inst5~q\,
	datad => \inst|inst~q\,
	combout => \inst|inst26~combout\);

-- Location: IOIBUF_X0_Y27_N22
\D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X23_Y28_N10
\inst|inst22|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst22|inst6~0_combout\ = (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\inst|inst21~q\))) # (!\Sel[0]~input_o\ & (\D[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \Sel[0]~input_o\,
	datad => \inst|inst21~q\,
	combout => \inst|inst22|inst6~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst|inst24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst24~combout\ = (\inst|inst~q\ & (\inst|inst2~q\ & (\inst|inst5~q\ & \inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst5~q\,
	datad => \inst|inst1~q\,
	combout => \inst|inst24~combout\);

-- Location: LCCOMB_X23_Y28_N16
\inst|inst22|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst22|inst6~1_combout\ = (\inst|inst22|inst6~0_combout\) # ((\inst|inst8|inst2~0_combout\ & (\inst|inst21~q\ $ (\inst|inst24~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datab => \inst|inst8|inst2~0_combout\,
	datac => \inst|inst22|inst6~0_combout\,
	datad => \inst|inst24~combout\,
	combout => \inst|inst22|inst6~1_combout\);

-- Location: LCCOMB_X23_Y28_N6
\inst|inst22|inst6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst22|inst6~2_combout\ = (\inst|inst22|inst6~1_combout\) # ((\inst|inst8|inst3~0_combout\ & (\inst|inst26~combout\ $ (!\inst|inst21~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst3~0_combout\,
	datab => \inst|inst26~combout\,
	datac => \inst|inst21~q\,
	datad => \inst|inst22|inst6~1_combout\,
	combout => \inst|inst22|inst6~2_combout\);

-- Location: FF_X23_Y28_N7
\inst|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst22|inst6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21~q\);

-- Location: IOIBUF_X0_Y25_N15
\D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X22_Y28_N22
\inst|inst34|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst34|inst6~0_combout\ = (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & (\inst|inst33~q\)) # (!\Sel[0]~input_o\ & ((\D[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \inst|inst33~q\,
	datac => \Sel[1]~input_o\,
	datad => \D[6]~input_o\,
	combout => \inst|inst34|inst6~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X22_Y28_N12
\inst|inst28|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst28|inst6~0_combout\ = (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\inst|inst27~q\))) # (!\Sel[0]~input_o\ & (\D[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \D[5]~input_o\,
	datac => \inst|inst27~q\,
	datad => \Sel[0]~input_o\,
	combout => \inst|inst28|inst6~0_combout\);

-- Location: LCCOMB_X22_Y28_N30
\inst|inst31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst31~combout\ = \inst|inst27~q\ $ (((\inst|inst21~q\) # (!\inst|inst26~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datac => \inst|inst27~q\,
	datad => \inst|inst26~combout\,
	combout => \inst|inst31~combout\);

-- Location: LCCOMB_X22_Y28_N18
\inst|inst28|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst28|inst2~combout\ = (\inst|inst8|inst2~0_combout\ & (\inst|inst27~q\ $ (((\inst|inst21~q\ & \inst|inst24~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datab => \inst|inst8|inst2~0_combout\,
	datac => \inst|inst27~q\,
	datad => \inst|inst24~combout\,
	combout => \inst|inst28|inst2~combout\);

-- Location: LCCOMB_X22_Y28_N14
\inst|inst28|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst28|inst6~1_combout\ = (\inst|inst28|inst6~0_combout\) # ((\inst|inst28|inst2~combout\) # ((\inst|inst8|inst3~0_combout\ & !\inst|inst31~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|inst6~0_combout\,
	datab => \inst|inst8|inst3~0_combout\,
	datac => \inst|inst31~combout\,
	datad => \inst|inst28|inst2~combout\,
	combout => \inst|inst28|inst6~1_combout\);

-- Location: FF_X22_Y28_N15
\inst|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst28|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst27~q\);

-- Location: LCCOMB_X22_Y28_N26
\inst|inst37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst37~combout\ = \inst|inst33~q\ $ (((\inst|inst27~q\) # ((!\inst|inst21~q\ & \inst|inst26~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datab => \inst|inst33~q\,
	datac => \inst|inst27~q\,
	datad => \inst|inst26~combout\,
	combout => \inst|inst37~combout\);

-- Location: LCCOMB_X22_Y28_N20
\inst|inst34|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst34|inst2~0_combout\ = (\inst|inst21~q\ & (!\Sel[0]~input_o\ & (\inst|inst27~q\ & \inst|inst24~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datab => \Sel[0]~input_o\,
	datac => \inst|inst27~q\,
	datad => \inst|inst24~combout\,
	combout => \inst|inst34|inst2~0_combout\);

-- Location: LCCOMB_X22_Y28_N10
\inst|inst34|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst34|inst2~1_combout\ = (\Sel[1]~input_o\ & (!\Sel[0]~input_o\ & (\inst|inst33~q\ $ (\inst|inst34|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \Sel[0]~input_o\,
	datac => \inst|inst33~q\,
	datad => \inst|inst34|inst2~0_combout\,
	combout => \inst|inst34|inst2~1_combout\);

-- Location: LCCOMB_X22_Y28_N8
\inst|inst34|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst34|inst6~1_combout\ = (\inst|inst34|inst6~0_combout\) # ((\inst|inst34|inst2~1_combout\) # ((\inst|inst8|inst3~0_combout\ & !\inst|inst37~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst34|inst6~0_combout\,
	datab => \inst|inst8|inst3~0_combout\,
	datac => \inst|inst37~combout\,
	datad => \inst|inst34|inst2~1_combout\,
	combout => \inst|inst34|inst6~1_combout\);

-- Location: FF_X22_Y28_N9
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst34|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: LCCOMB_X22_Y28_N6
\inst|inst44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst44~combout\ = (\inst|inst33~q\) # ((!\inst|inst27~q\ & ((\inst|inst21~q\) # (!\inst|inst26~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datab => \inst|inst33~q\,
	datac => \inst|inst27~q\,
	datad => \inst|inst26~combout\,
	combout => \inst|inst44~combout\);

-- Location: IOIBUF_X0_Y26_N8
\D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X22_Y28_N4
\inst|inst40|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst6~0_combout\ = (!\Sel[1]~input_o\ & ((\Sel[0]~input_o\ & ((\inst|inst39~q\))) # (!\Sel[0]~input_o\ & (\D[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \D[7]~input_o\,
	datac => \Sel[1]~input_o\,
	datad => \inst|inst39~q\,
	combout => \inst|inst40|inst6~0_combout\);

-- Location: LCCOMB_X22_Y28_N2
\inst|inst42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst42~combout\ = (\inst|inst21~q\ & (\inst|inst27~q\ & (\inst|inst33~q\ & \inst|inst24~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst24~combout\,
	combout => \inst|inst42~combout\);

-- Location: LCCOMB_X22_Y28_N28
\inst|inst40|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst6~1_combout\ = (\inst|inst40|inst6~0_combout\) # ((\inst|inst8|inst2~0_combout\ & (\inst|inst39~q\ $ (\inst|inst42~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst2~0_combout\,
	datab => \inst|inst39~q\,
	datac => \inst|inst40|inst6~0_combout\,
	datad => \inst|inst42~combout\,
	combout => \inst|inst40|inst6~1_combout\);

-- Location: LCCOMB_X22_Y28_N0
\inst|inst40|inst6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst40|inst6~2_combout\ = (\inst|inst40|inst6~1_combout\) # ((\inst|inst8|inst3~0_combout\ & (\inst|inst44~combout\ $ (!\inst|inst39~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst44~combout\,
	datab => \inst|inst8|inst3~0_combout\,
	datac => \inst|inst39~q\,
	datad => \inst|inst40|inst6~1_combout\,
	combout => \inst|inst40|inst6~2_combout\);

-- Location: FF_X22_Y28_N1
\inst|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|inst12~clkctrl_outclk\,
	d => \inst|inst40|inst6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst39~q\);

-- Location: LCCOMB_X21_Y28_N16
\inst2|inst6|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst6|inst7~combout\ = (\inst|inst21~q\ & (!\inst|inst39~q\ & (\inst|inst27~q\ $ (!\inst|inst33~q\)))) # (!\inst|inst21~q\ & (!\inst|inst27~q\ & (\inst|inst39~q\ $ (!\inst|inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst6|inst7~combout\);

-- Location: LCCOMB_X21_Y28_N26
\inst2|inst5|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst5|inst4~0_combout\ = (\inst|inst27~q\ & (!\inst|inst39~q\ & ((\inst|inst21~q\) # (!\inst|inst33~q\)))) # (!\inst|inst27~q\ & (\inst|inst21~q\ & (\inst|inst39~q\ $ (!\inst|inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst5|inst4~0_combout\);

-- Location: LCCOMB_X21_Y28_N4
\inst2|inst4|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst2~0_combout\ = (\inst|inst27~q\ & ((\inst|inst39~q\) # ((!\inst|inst21~q\)))) # (!\inst|inst27~q\ & ((\inst|inst33~q\ & (\inst|inst39~q\)) # (!\inst|inst33~q\ & ((!\inst|inst21~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst4|inst2~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\inst2|inst3|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst8~0_combout\ = (\inst|inst27~q\ & ((\inst|inst33~q\ & ((!\inst|inst21~q\))) # (!\inst|inst33~q\ & ((\inst|inst21~q\) # (!\inst|inst39~q\))))) # (!\inst|inst27~q\ & ((\inst|inst39~q\) # (\inst|inst33~q\ $ (!\inst|inst21~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst3|inst8~0_combout\);

-- Location: LCCOMB_X21_Y28_N0
\inst2|inst2|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst16~0_combout\ = (\inst|inst39~q\ & (\inst|inst33~q\ & ((\inst|inst27~q\) # (!\inst|inst21~q\)))) # (!\inst|inst39~q\ & (\inst|inst27~q\ & (!\inst|inst33~q\ & !\inst|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst2|inst16~0_combout\);

-- Location: LCCOMB_X21_Y28_N22
\inst2|inst1|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst7~0_combout\ = (\inst|inst39~q\ & ((\inst|inst21~q\ & (\inst|inst27~q\)) # (!\inst|inst21~q\ & ((\inst|inst33~q\))))) # (!\inst|inst39~q\ & (\inst|inst33~q\ & (\inst|inst27~q\ $ (\inst|inst21~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst1|inst7~0_combout\);

-- Location: LCCOMB_X21_Y28_N12
\inst2|inst|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1~0_combout\ = (\inst|inst39~q\ & (\inst|inst21~q\ & (\inst|inst27~q\ $ (\inst|inst33~q\)))) # (!\inst|inst39~q\ & (!\inst|inst27~q\ & (\inst|inst33~q\ $ (\inst|inst21~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst27~q\,
	datac => \inst|inst33~q\,
	datad => \inst|inst21~q\,
	combout => \inst2|inst|inst1~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\inst1|inst6|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst7~combout\ = (\inst|inst~q\ & (!\inst|inst5~q\ & (\inst|inst2~q\ $ (!\inst|inst1~q\)))) # (!\inst|inst~q\ & (!\inst|inst1~q\ & (\inst|inst2~q\ $ (!\inst|inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst6|inst7~combout\);

-- Location: LCCOMB_X24_Y28_N22
\inst1|inst5|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst4~0_combout\ = (\inst|inst~q\ & (\inst|inst5~q\ $ (((\inst|inst1~q\) # (!\inst|inst2~q\))))) # (!\inst|inst~q\ & (!\inst|inst2~q\ & (\inst|inst1~q\ & !\inst|inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst5|inst4~0_combout\);

-- Location: LCCOMB_X24_Y28_N12
\inst1|inst4|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst2~0_combout\ = (\inst|inst1~q\ & (((\inst|inst5~q\)) # (!\inst|inst~q\))) # (!\inst|inst1~q\ & ((\inst|inst2~q\ & ((\inst|inst5~q\))) # (!\inst|inst2~q\ & (!\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst4|inst2~0_combout\);

-- Location: LCCOMB_X24_Y28_N10
\inst1|inst3|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|inst8~0_combout\ = (\inst|inst1~q\ & ((\inst|inst~q\ & (!\inst|inst2~q\)) # (!\inst|inst~q\ & ((\inst|inst2~q\) # (!\inst|inst5~q\))))) # (!\inst|inst1~q\ & ((\inst|inst5~q\) # (\inst|inst~q\ $ (!\inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst3|inst8~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\inst1|inst2|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst16~0_combout\ = (\inst|inst2~q\ & (\inst|inst5~q\ & ((\inst|inst1~q\) # (!\inst|inst~q\)))) # (!\inst|inst2~q\ & (!\inst|inst~q\ & (\inst|inst1~q\ & !\inst|inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst2|inst16~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\inst1|inst1|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst7~0_combout\ = (\inst|inst1~q\ & ((\inst|inst~q\ & ((\inst|inst5~q\))) # (!\inst|inst~q\ & (\inst|inst2~q\)))) # (!\inst|inst1~q\ & (\inst|inst2~q\ & (\inst|inst~q\ $ (\inst|inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst1|inst7~0_combout\);

-- Location: LCCOMB_X24_Y28_N4
\inst1|inst|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1~0_combout\ = (\inst|inst2~q\ & (!\inst|inst1~q\ & (\inst|inst~q\ $ (!\inst|inst5~q\)))) # (!\inst|inst2~q\ & (\inst|inst~q\ & (\inst|inst1~q\ $ (!\inst|inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst|inst2~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst5~q\,
	combout => \inst1|inst|inst1~0_combout\);

ww_ClkOut <= \ClkOut~output_o\;

ww_Display1(6) <= \Display1[6]~output_o\;

ww_Display1(5) <= \Display1[5]~output_o\;

ww_Display1(4) <= \Display1[4]~output_o\;

ww_Display1(3) <= \Display1[3]~output_o\;

ww_Display1(2) <= \Display1[2]~output_o\;

ww_Display1(1) <= \Display1[1]~output_o\;

ww_Display1(0) <= \Display1[0]~output_o\;

ww_Display2(6) <= \Display2[6]~output_o\;

ww_Display2(5) <= \Display2[5]~output_o\;

ww_Display2(4) <= \Display2[4]~output_o\;

ww_Display2(3) <= \Display2[3]~output_o\;

ww_Display2(2) <= \Display2[2]~output_o\;

ww_Display2(1) <= \Display2[1]~output_o\;

ww_Display2(0) <= \Display2[0]~output_o\;
END structure;


