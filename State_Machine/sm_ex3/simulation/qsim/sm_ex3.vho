-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/07/2022 17:07:26"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sm_ex3 IS
    PORT (
	clk : IN std_logic;
	output : OUT std_logic
	);
END sm_ex3;

-- Design Ports Information
-- output	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sm_ex3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \state.SH~DUPLICATE_q\ : std_logic;
SIGNAL \state.SA~0_combout\ : std_logic;
SIGNAL \state.SA~q\ : std_logic;
SIGNAL \state.SB~0_combout\ : std_logic;
SIGNAL \state.SB~q\ : std_logic;
SIGNAL \state.SC~q\ : std_logic;
SIGNAL \state.SD~feeder_combout\ : std_logic;
SIGNAL \state.SD~q\ : std_logic;
SIGNAL \state.SE~feeder_combout\ : std_logic;
SIGNAL \state.SE~q\ : std_logic;
SIGNAL \state.SF~feeder_combout\ : std_logic;
SIGNAL \state.SF~q\ : std_logic;
SIGNAL \state.SG~feeder_combout\ : std_logic;
SIGNAL \state.SG~q\ : std_logic;
SIGNAL \state.SH~q\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \output~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state.SH~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.SC~q\ : std_logic;
SIGNAL \ALT_INV_state.SD~q\ : std_logic;
SIGNAL \ALT_INV_state.SE~q\ : std_logic;
SIGNAL \ALT_INV_state.SF~q\ : std_logic;
SIGNAL \ALT_INV_state.SH~q\ : std_logic;
SIGNAL \ALT_INV_state.SA~q\ : std_logic;

BEGIN

ww_clk <= clk;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.SH~DUPLICATE_q\ <= NOT \state.SH~DUPLICATE_q\;
\ALT_INV_state.SC~q\ <= NOT \state.SC~q\;
\ALT_INV_state.SD~q\ <= NOT \state.SD~q\;
\ALT_INV_state.SE~q\ <= NOT \state.SE~q\;
\ALT_INV_state.SF~q\ <= NOT \state.SF~q\;
\ALT_INV_state.SH~q\ <= NOT \state.SH~q\;
\ALT_INV_state.SA~q\ <= NOT \state.SA~q\;

-- Location: IOOBUF_X6_Y0_N36
\output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output~reg0_q\,
	devoe => ww_devoe,
	o => ww_output);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X6_Y2_N55
\state.SH~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SG~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SH~DUPLICATE_q\);

-- Location: MLABCELL_X6_Y2_N33
\state.SA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SA~0_combout\ = ( !\state.SH~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SH~DUPLICATE_q\,
	combout => \state.SA~0_combout\);

-- Location: FF_X6_Y2_N34
\state.SA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SA~q\);

-- Location: MLABCELL_X6_Y2_N57
\state.SB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SB~0_combout\ = ( !\state.SA~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SA~q\,
	combout => \state.SB~0_combout\);

-- Location: FF_X6_Y2_N59
\state.SB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SB~q\);

-- Location: FF_X6_Y2_N41
\state.SC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SB~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SC~q\);

-- Location: MLABCELL_X6_Y2_N12
\state.SD~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SD~feeder_combout\ = ( \state.SC~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SC~q\,
	combout => \state.SD~feeder_combout\);

-- Location: FF_X6_Y2_N14
\state.SD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SD~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SD~q\);

-- Location: MLABCELL_X6_Y2_N48
\state.SE~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SE~feeder_combout\ = ( \state.SD~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SD~q\,
	combout => \state.SE~feeder_combout\);

-- Location: FF_X6_Y2_N50
\state.SE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SE~q\);

-- Location: MLABCELL_X6_Y2_N15
\state.SF~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SF~feeder_combout\ = ( \state.SE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SE~q\,
	combout => \state.SF~feeder_combout\);

-- Location: FF_X6_Y2_N16
\state.SF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SF~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SF~q\);

-- Location: MLABCELL_X6_Y2_N36
\state.SG~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SG~feeder_combout\ = ( \state.SF~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SF~q\,
	combout => \state.SG~feeder_combout\);

-- Location: FF_X6_Y2_N38
\state.SG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SG~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SG~q\);

-- Location: FF_X6_Y2_N56
\state.SH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SG~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SH~q\);

-- Location: MLABCELL_X6_Y2_N30
\output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output~2_combout\ = ( \state.SA~q\ & ( !\state.SH~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.SH~q\,
	dataf => \ALT_INV_state.SA~q\,
	combout => \output~2_combout\);

-- Location: FF_X6_Y2_N32
\output~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output~reg0_q\);

-- Location: LABCELL_X17_Y52_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


