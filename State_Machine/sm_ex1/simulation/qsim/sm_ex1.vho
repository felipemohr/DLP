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

-- DATE "05/04/2022 01:44:48"

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

ENTITY 	sm_ex1 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	count : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END sm_ex1;

-- Design Ports Information
-- count[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sm_ex1 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \state.SD~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.SD~q\ : std_logic;
SIGNAL \state.SE~feeder_combout\ : std_logic;
SIGNAL \state.SE~q\ : std_logic;
SIGNAL \state.SF~DUPLICATE_q\ : std_logic;
SIGNAL \state.SA~0_combout\ : std_logic;
SIGNAL \state.SA~DUPLICATE_q\ : std_logic;
SIGNAL \state.SB~0_combout\ : std_logic;
SIGNAL \state.SB~q\ : std_logic;
SIGNAL \state.SC~q\ : std_logic;
SIGNAL \state.SA~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \count[0]~reg0_q\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \count[1]~reg0_q\ : std_logic;
SIGNAL \state.SF~q\ : std_logic;
SIGNAL \state.SE~DUPLICATE_q\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \count[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state.SF~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.SE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.SA~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_state.SF~q\ : std_logic;
SIGNAL \ALT_INV_state.SD~q\ : std_logic;
SIGNAL \ALT_INV_state.SE~q\ : std_logic;
SIGNAL \ALT_INV_state.SC~q\ : std_logic;
SIGNAL \ALT_INV_state.SA~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.SF~DUPLICATE_q\ <= NOT \state.SF~DUPLICATE_q\;
\ALT_INV_state.SE~DUPLICATE_q\ <= NOT \state.SE~DUPLICATE_q\;
\ALT_INV_state.SA~DUPLICATE_q\ <= NOT \state.SA~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_state.SF~q\ <= NOT \state.SF~q\;
\ALT_INV_state.SD~q\ <= NOT \state.SD~q\;
\ALT_INV_state.SE~q\ <= NOT \state.SE~q\;
\ALT_INV_state.SC~q\ <= NOT \state.SC~q\;
\ALT_INV_state.SA~q\ <= NOT \state.SA~q\;

-- Location: IOOBUF_X89_Y9_N5
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X89_Y9_N56
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X89_Y9_N22
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_count(2));

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

-- Location: LABCELL_X88_Y9_N0
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

-- Location: IOIBUF_X89_Y9_N38
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y9_N2
\state.SD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SD~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SD~q\);

-- Location: LABCELL_X88_Y9_N3
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

-- Location: FF_X88_Y9_N5
\state.SE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SE~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SE~q\);

-- Location: FF_X88_Y9_N47
\state.SF~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SE~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SF~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N57
\state.SA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SA~0_combout\ = ( !\state.SF~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SF~DUPLICATE_q\,
	combout => \state.SA~0_combout\);

-- Location: FF_X88_Y9_N59
\state.SA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SA~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N36
\state.SB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SB~0_combout\ = ( !\state.SA~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SA~DUPLICATE_q\,
	combout => \state.SB~0_combout\);

-- Location: FF_X88_Y9_N38
\state.SB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SB~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SB~q\);

-- Location: FF_X88_Y9_N26
\state.SC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SB~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SC~q\);

-- Location: FF_X88_Y9_N58
\state.SA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SA~q\);

-- Location: LABCELL_X88_Y9_N54
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \state.SA~q\ & ( (!\state.SC~q\ & !\state.SE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.SC~q\,
	datad => \ALT_INV_state.SE~q\,
	dataf => \ALT_INV_state.SA~q\,
	combout => \WideOr0~combout\);

-- Location: FF_X88_Y9_N55
\count[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \WideOr0~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0]~reg0_q\);

-- Location: LABCELL_X88_Y9_N27
\count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~4_combout\ = ( \state.SD~q\ & ( \state.SC~q\ ) ) # ( !\state.SD~q\ & ( \state.SC~q\ ) ) # ( \state.SD~q\ & ( !\state.SC~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.SD~q\,
	dataf => \ALT_INV_state.SC~q\,
	combout => \count~4_combout\);

-- Location: FF_X88_Y9_N28
\count[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1]~reg0_q\);

-- Location: FF_X88_Y9_N46
\state.SF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SE~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SF~q\);

-- Location: FF_X88_Y9_N4
\state.SE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.SE~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SE~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N42
\count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~5_combout\ = ( \state.SF~q\ & ( \state.SE~DUPLICATE_q\ ) ) # ( !\state.SF~q\ & ( \state.SE~DUPLICATE_q\ ) ) # ( \state.SF~q\ & ( !\state.SE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.SF~q\,
	dataf => \ALT_INV_state.SE~DUPLICATE_q\,
	combout => \count~5_combout\);

-- Location: FF_X88_Y9_N43
\count[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2]~reg0_q\);

-- Location: LABCELL_X23_Y26_N0
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


