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

-- DATE "05/09/2022 11:00:40"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	sm_pwm IS
    PORT (
	clk : IN std_logic;
	baud : IN std_logic_vector(2 DOWNTO 0);
	output : BUFFER std_logic
	);
END sm_pwm;

-- Design Ports Information
-- output	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baud[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sm_pwm IS
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
SIGNAL ww_baud : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \baud[1]~input_o\ : std_logic;
SIGNAL \baud[2]~input_o\ : std_logic;
SIGNAL \baud[0]~input_o\ : std_logic;
SIGNAL \state.SE~DUPLICATE_q\ : std_logic;
SIGNAL \state.SF~q\ : std_logic;
SIGNAL \state.SG~q\ : std_logic;
SIGNAL \state.SA~0_combout\ : std_logic;
SIGNAL \state.SA~DUPLICATE_q\ : std_logic;
SIGNAL \state.SB~0_combout\ : std_logic;
SIGNAL \state.SB~q\ : std_logic;
SIGNAL \state.SC~q\ : std_logic;
SIGNAL \state.SD~feeder_combout\ : std_logic;
SIGNAL \state.SD~q\ : std_logic;
SIGNAL \state.SE~feeder_combout\ : std_logic;
SIGNAL \state.SE~q\ : std_logic;
SIGNAL \state.SA~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \output~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state.SA~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_baud[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_baud[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.SC~q\ : std_logic;
SIGNAL \ALT_INV_state.SE~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.SB~q\ : std_logic;
SIGNAL \ALT_INV_state.SA~q\ : std_logic;
SIGNAL \ALT_INV_state.SD~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.SG~q\ : std_logic;
SIGNAL \ALT_INV_state.SF~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_baud <= baud;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.SA~DUPLICATE_q\ <= NOT \state.SA~DUPLICATE_q\;
\ALT_INV_baud[0]~input_o\ <= NOT \baud[0]~input_o\;
\ALT_INV_baud[1]~input_o\ <= NOT \baud[1]~input_o\;
\ALT_INV_baud[2]~input_o\ <= NOT \baud[2]~input_o\;
\ALT_INV_Selector0~2_combout\ <= NOT \Selector0~2_combout\;
\ALT_INV_state.SC~q\ <= NOT \state.SC~q\;
\ALT_INV_state.SE~q\ <= NOT \state.SE~q\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_state.SB~q\ <= NOT \state.SB~q\;
\ALT_INV_state.SA~q\ <= NOT \state.SA~q\;
\ALT_INV_state.SD~q\ <= NOT \state.SD~q\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_state.SG~q\ <= NOT \state.SG~q\;
\ALT_INV_state.SF~q\ <= NOT \state.SF~q\;

-- Location: IOOBUF_X54_Y20_N39
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

-- Location: IOIBUF_X54_Y18_N61
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

-- Location: IOIBUF_X54_Y20_N55
\baud[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(1),
	o => \baud[1]~input_o\);

-- Location: IOIBUF_X54_Y20_N21
\baud[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(2),
	o => \baud[2]~input_o\);

-- Location: IOIBUF_X54_Y20_N4
\baud[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baud(0),
	o => \baud[0]~input_o\);

-- Location: FF_X53_Y20_N43
\state.SE~DUPLICATE\ : dffeas
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
	q => \state.SE~DUPLICATE_q\);

-- Location: FF_X53_Y20_N5
\state.SF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SE~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SF~q\);

-- Location: FF_X53_Y20_N53
\state.SG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.SF~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SG~q\);

-- Location: LABCELL_X53_Y20_N21
\state.SA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.SA~0_combout\ = ( !\state.SG~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.SG~q\,
	combout => \state.SA~0_combout\);

-- Location: FF_X53_Y20_N22
\state.SA~DUPLICATE\ : dffeas
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
	q => \state.SA~DUPLICATE_q\);

-- Location: LABCELL_X53_Y20_N0
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

-- Location: FF_X53_Y20_N2
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

-- Location: FF_X53_Y20_N26
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

-- Location: LABCELL_X53_Y20_N39
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

-- Location: FF_X53_Y20_N41
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

-- Location: LABCELL_X53_Y20_N42
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

-- Location: FF_X53_Y20_N44
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

-- Location: FF_X53_Y20_N23
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

-- Location: LABCELL_X53_Y20_N51
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \state.SA~q\ & ( \state.SC~q\ & ( (!\baud[2]~input_o\ & ((!\baud[1]~input_o\) # (!\baud[0]~input_o\))) ) ) ) # ( !\state.SA~q\ & ( \state.SC~q\ & ( (!\baud[1]~input_o\ & (!\baud[0]~input_o\ & !\baud[2]~input_o\)) ) ) ) # ( 
-- \state.SA~q\ & ( !\state.SC~q\ & ( (!\state.SE~q\) # ((!\baud[2]~input_o\) # ((!\baud[1]~input_o\ & !\baud[0]~input_o\))) ) ) ) # ( !\state.SA~q\ & ( !\state.SC~q\ & ( (!\baud[1]~input_o\ & !\baud[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000111111111111100010001000000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[1]~input_o\,
	datab => \ALT_INV_baud[0]~input_o\,
	datac => \ALT_INV_state.SE~q\,
	datad => \ALT_INV_baud[2]~input_o\,
	datae => \ALT_INV_state.SA~q\,
	dataf => \ALT_INV_state.SC~q\,
	combout => \Selector0~2_combout\);

-- Location: LABCELL_X53_Y20_N54
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\state.SF~q\ & ( \state.SG~q\ & ( !\baud[0]~input_o\ ) ) ) # ( !\state.SF~q\ & ( !\state.SG~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_baud[0]~input_o\,
	datae => \ALT_INV_state.SF~q\,
	dataf => \ALT_INV_state.SG~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X53_Y20_N9
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \state.SB~q\ & ( \state.SA~DUPLICATE_q\ & ( (!\baud[1]~input_o\ & !\baud[2]~input_o\) ) ) ) # ( !\state.SB~q\ & ( \state.SA~DUPLICATE_q\ & ( (!\state.SD~q\) # (!\baud[2]~input_o\) ) ) ) # ( \state.SB~q\ & ( 
-- !\state.SA~DUPLICATE_q\ & ( (!\baud[1]~input_o\ & !\baud[2]~input_o\) ) ) ) # ( !\state.SB~q\ & ( !\state.SA~DUPLICATE_q\ & ( !\baud[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011111111111100001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[1]~input_o\,
	datac => \ALT_INV_state.SD~q\,
	datad => \ALT_INV_baud[2]~input_o\,
	datae => \ALT_INV_state.SB~q\,
	dataf => \ALT_INV_state.SA~DUPLICATE_q\,
	combout => \Selector0~1_combout\);

-- Location: LABCELL_X53_Y20_N18
\Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = ( \Selector0~1_combout\ & ( (!\Selector0~2_combout\) # ((\baud[1]~input_o\ & (\baud[2]~input_o\ & !\Selector0~0_combout\))) ) ) # ( !\Selector0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110001111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_baud[1]~input_o\,
	datab => \ALT_INV_baud[2]~input_o\,
	datac => \ALT_INV_Selector0~2_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	dataf => \ALT_INV_Selector0~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X53_Y20_N19
\output~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output~reg0_q\);

-- Location: LABCELL_X26_Y29_N0
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


