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

-- DATE "06/12/2025 07:29:40"

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

ENTITY 	LAB07 IS
    PORT (
	CLKOUT : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic
	);
END LAB07;

-- Design Ports Information
-- CLKOUT	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLKOUT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL \CLKOUT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst8~feeder_combout\ : std_logic;
SIGNAL \inst|inst8~q\ : std_logic;
SIGNAL \inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst10~q\ : std_logic;
SIGNAL \inst|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst14~feeder_combout\ : std_logic;
SIGNAL \inst|inst14~q\ : std_logic;
SIGNAL \inst|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst12~feeder_combout\ : std_logic;
SIGNAL \inst|inst12~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst1|inst1~q\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst2~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2~q\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst8~feeder_combout\ : std_logic;
SIGNAL \inst1|inst8~q\ : std_logic;
SIGNAL \inst1|inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst10~q\ : std_logic;
SIGNAL \inst1|inst14~0_combout\ : std_logic;
SIGNAL \inst1|inst14~feeder_combout\ : std_logic;
SIGNAL \inst1|inst14~q\ : std_logic;
SIGNAL \inst1|inst12~0_combout\ : std_logic;
SIGNAL \inst1|inst12~q\ : std_logic;
SIGNAL \inst2|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst2|inst~q\ : std_logic;
SIGNAL \inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst1~q\ : std_logic;
SIGNAL \inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst2~feeder_combout\ : std_logic;
SIGNAL \inst2|inst2~q\ : std_logic;
SIGNAL \inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst3~q\ : std_logic;
SIGNAL \inst2|inst8~0_combout\ : std_logic;
SIGNAL \inst2|inst8~feeder_combout\ : std_logic;
SIGNAL \inst2|inst8~q\ : std_logic;
SIGNAL \inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst2|inst10~feeder_combout\ : std_logic;
SIGNAL \inst2|inst10~q\ : std_logic;
SIGNAL \inst2|inst14~0_combout\ : std_logic;
SIGNAL \inst2|inst14~feeder_combout\ : std_logic;
SIGNAL \inst2|inst14~q\ : std_logic;
SIGNAL \inst2|inst12~0_combout\ : std_logic;
SIGNAL \inst2|inst12~q\ : std_logic;

BEGIN

CLKOUT <= ww_CLKOUT;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X23_Y29_N9
\CLKOUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst12~q\,
	devoe => ww_devoe,
	o => \CLKOUT~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X32_Y15_N0
\inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = !\inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst~q\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X32_Y15_N10
\inst|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~feeder_combout\ = \inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~0_combout\,
	combout => \inst|inst~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X32_Y15_N11
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|inst~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X32_Y15_N26
\inst|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = !\inst|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1~q\,
	combout => \inst|inst1~0_combout\);

-- Location: FF_X32_Y15_N5
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst~q\,
	asdata => \inst|inst1~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X31_Y15_N6
\inst|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = !\inst|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	combout => \inst|inst2~0_combout\);

-- Location: LCCOMB_X31_Y15_N10
\inst|inst2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2~feeder_combout\ = \inst|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~0_combout\,
	combout => \inst|inst2~feeder_combout\);

-- Location: FF_X31_Y15_N11
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~q\,
	d => \inst|inst2~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X31_Y15_N26
\inst|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = !\inst|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~q\,
	combout => \inst|inst3~0_combout\);

-- Location: FF_X31_Y15_N5
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst2~q\,
	asdata => \inst|inst3~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X30_Y15_N6
\inst|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = !\inst|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~q\,
	combout => \inst|inst8~0_combout\);

-- Location: LCCOMB_X30_Y15_N10
\inst|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8~feeder_combout\ = \inst|inst8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~0_combout\,
	combout => \inst|inst8~feeder_combout\);

-- Location: FF_X30_Y15_N11
\inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst3~q\,
	d => \inst|inst8~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~q\);

-- Location: LCCOMB_X30_Y15_N26
\inst|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~0_combout\ = !\inst|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst10~q\,
	combout => \inst|inst10~0_combout\);

-- Location: FF_X30_Y15_N17
\inst|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst8~q\,
	asdata => \inst|inst10~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10~q\);

-- Location: LCCOMB_X29_Y15_N0
\inst|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14~0_combout\ = !\inst|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14~q\,
	combout => \inst|inst14~0_combout\);

-- Location: LCCOMB_X29_Y15_N12
\inst|inst14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst14~feeder_combout\ = \inst|inst14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst14~0_combout\,
	combout => \inst|inst14~feeder_combout\);

-- Location: FF_X29_Y15_N13
\inst|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst10~q\,
	d => \inst|inst14~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst14~q\);

-- Location: LCCOMB_X29_Y15_N6
\inst|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12~0_combout\ = !\inst|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst12~q\,
	combout => \inst|inst12~0_combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst|inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12~feeder_combout\ = \inst|inst12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~0_combout\,
	combout => \inst|inst12~feeder_combout\);

-- Location: FF_X29_Y15_N15
\inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst14~q\,
	d => \inst|inst12~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12~q\);

-- Location: LCCOMB_X24_Y15_N0
\inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = !\inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	combout => \inst1|inst~0_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst1|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst~feeder_combout\ = \inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~0_combout\,
	combout => \inst1|inst~feeder_combout\);

-- Location: FF_X24_Y15_N29
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst12~q\,
	d => \inst1|inst~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X24_Y15_N26
\inst1|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1~0_combout\ = !\inst1|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1~q\,
	combout => \inst1|inst1~0_combout\);

-- Location: FF_X24_Y15_N31
\inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst~q\,
	asdata => \inst1|inst1~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1~q\);

-- Location: LCCOMB_X23_Y14_N24
\inst1|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = !\inst1|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2~q\,
	combout => \inst1|inst2~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst1|inst2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2~feeder_combout\ = \inst1|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~0_combout\,
	combout => \inst1|inst2~feeder_combout\);

-- Location: FF_X23_Y14_N11
\inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst1~q\,
	d => \inst1|inst2~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~q\);

-- Location: LCCOMB_X23_Y14_N26
\inst1|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = !\inst1|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~q\,
	combout => \inst1|inst3~0_combout\);

-- Location: FF_X23_Y14_N7
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst2~q\,
	asdata => \inst1|inst3~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: LCCOMB_X24_Y14_N0
\inst1|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst8~0_combout\ = !\inst1|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8~q\,
	combout => \inst1|inst8~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\inst1|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst8~feeder_combout\ = \inst1|inst8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst8~0_combout\,
	combout => \inst1|inst8~feeder_combout\);

-- Location: FF_X24_Y14_N13
\inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3~q\,
	d => \inst1|inst8~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8~q\);

-- Location: LCCOMB_X24_Y14_N26
\inst1|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10~0_combout\ = !\inst1|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst10~q\,
	combout => \inst1|inst10~0_combout\);

-- Location: FF_X24_Y14_N31
\inst1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst8~q\,
	asdata => \inst1|inst10~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10~q\);

-- Location: LCCOMB_X24_Y13_N10
\inst1|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14~0_combout\ = !\inst1|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14~q\,
	combout => \inst1|inst14~0_combout\);

-- Location: LCCOMB_X24_Y13_N6
\inst1|inst14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14~feeder_combout\ = \inst1|inst14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst14~0_combout\,
	combout => \inst1|inst14~feeder_combout\);

-- Location: FF_X24_Y13_N7
\inst1|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst10~q\,
	d => \inst1|inst14~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst14~q\);

-- Location: LCCOMB_X24_Y13_N26
\inst1|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst12~0_combout\ = !\inst1|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst12~q\,
	combout => \inst1|inst12~0_combout\);

-- Location: FF_X24_Y13_N5
\inst1|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst14~q\,
	asdata => \inst1|inst12~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst12~q\);

-- Location: LCCOMB_X23_Y13_N6
\inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst~0_combout\ = !\inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~q\,
	combout => \inst2|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst2|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst~feeder_combout\ = \inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~0_combout\,
	combout => \inst2|inst~feeder_combout\);

-- Location: FF_X23_Y13_N11
\inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst12~q\,
	d => \inst2|inst~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst~q\);

-- Location: LCCOMB_X23_Y13_N26
\inst2|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst1~0_combout\ = !\inst2|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1~q\,
	combout => \inst2|inst1~0_combout\);

-- Location: FF_X23_Y13_N25
\inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	asdata => \inst2|inst1~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1~q\);

-- Location: LCCOMB_X21_Y13_N20
\inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2~0_combout\ = !\inst2|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2~q\,
	combout => \inst2|inst2~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst2|inst2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2~feeder_combout\ = \inst2|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2~0_combout\,
	combout => \inst2|inst2~feeder_combout\);

-- Location: FF_X21_Y13_N25
\inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst1~q\,
	d => \inst2|inst2~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2~q\);

-- Location: LCCOMB_X21_Y13_N30
\inst2|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst3~0_combout\ = !\inst2|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3~q\,
	combout => \inst2|inst3~0_combout\);

-- Location: FF_X21_Y13_N27
\inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst2~q\,
	asdata => \inst2|inst3~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3~q\);

-- Location: LCCOMB_X20_Y13_N18
\inst2|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst8~0_combout\ = !\inst2|inst8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst8~q\,
	combout => \inst2|inst8~0_combout\);

-- Location: LCCOMB_X20_Y13_N22
\inst2|inst8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst8~feeder_combout\ = \inst2|inst8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst8~0_combout\,
	combout => \inst2|inst8~feeder_combout\);

-- Location: FF_X20_Y13_N23
\inst2|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst3~q\,
	d => \inst2|inst8~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8~q\);

-- Location: LCCOMB_X20_Y13_N6
\inst2|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10~0_combout\ = !\inst2|inst10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst10~q\,
	combout => \inst2|inst10~0_combout\);

-- Location: LCCOMB_X20_Y13_N10
\inst2|inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10~feeder_combout\ = \inst2|inst10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst10~0_combout\,
	combout => \inst2|inst10~feeder_combout\);

-- Location: FF_X20_Y13_N11
\inst2|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst8~q\,
	d => \inst2|inst10~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst10~q\);

-- Location: LCCOMB_X20_Y15_N6
\inst2|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst14~0_combout\ = !\inst2|inst14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst14~q\,
	combout => \inst2|inst14~0_combout\);

-- Location: LCCOMB_X20_Y15_N10
\inst2|inst14~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst14~feeder_combout\ = \inst2|inst14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst14~0_combout\,
	combout => \inst2|inst14~feeder_combout\);

-- Location: FF_X20_Y15_N11
\inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst10~q\,
	d => \inst2|inst14~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst14~q\);

-- Location: LCCOMB_X20_Y15_N4
\inst2|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12~0_combout\ = !\inst2|inst12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst12~q\,
	combout => \inst2|inst12~0_combout\);

-- Location: FF_X20_Y15_N5
\inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst14~q\,
	d => \inst2|inst12~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst12~q\);

ww_CLKOUT <= \CLKOUT~output_o\;
END structure;


