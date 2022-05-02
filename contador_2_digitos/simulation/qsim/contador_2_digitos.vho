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

-- DATE "04/11/2022 14:33:35"

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
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	contador_2_digitos IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	count : OUT STD.STANDARD.integer range 0 TO 100
	);
END contador_2_digitos;

-- Design Ports Information
-- count[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_2_digitos IS
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
SIGNAL ww_count : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count_process:digit_2[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count_process:digit_2[0]~q\ : std_logic;
SIGNAL \count_process:temp[0]~0_combout\ : std_logic;
SIGNAL \count_process:temp[0]~q\ : std_logic;
SIGNAL \digit_2~1_combout\ : std_logic;
SIGNAL \digit_1~3_combout\ : std_logic;
SIGNAL \count_process:digit_1[0]~q\ : std_logic;
SIGNAL \count_process:digit_2[2]~q\ : std_logic;
SIGNAL \count_process:digit_2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \count_process:digit_2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \digit_2~0_combout\ : std_logic;
SIGNAL \count_process:digit_2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \count_process:digit_1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \digit_1~2_combout\ : std_logic;
SIGNAL \count_process:digit_1[1]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \count_process:digit_2[3]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \digit_1~0_combout\ : std_logic;
SIGNAL \count_process:digit_1[2]~q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \digit_1~1_combout\ : std_logic;
SIGNAL \count_process:digit_1[3]~q\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \count_process:digit_2[1]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \count_process:temp[1]~q\ : std_logic;
SIGNAL \count_process:temp[2]~q\ : std_logic;
SIGNAL \count_process:temp[3]~q\ : std_logic;
SIGNAL \count_process:temp[4]~q\ : std_logic;
SIGNAL \count_process:temp[5]~q\ : std_logic;
SIGNAL \count_process:temp[6]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~24_combout\ : std_logic;
SIGNAL \ALT_INV_digit_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_digit_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_digit_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[0]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_1[3]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_1[2]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_1[1]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_1[0]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[1]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[2]~q\ : std_logic;
SIGNAL \ALT_INV_count_process:digit_2[3]~q\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
count <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_count));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count_process:digit_1[0]~DUPLICATE_q\ <= NOT \count_process:digit_1[0]~DUPLICATE_q\;
\ALT_INV_count_process:digit_2[1]~DUPLICATE_q\ <= NOT \count_process:digit_2[1]~DUPLICATE_q\;
\ALT_INV_count_process:digit_2[2]~DUPLICATE_q\ <= NOT \count_process:digit_2[2]~DUPLICATE_q\;
\ALT_INV_count_process:digit_2[3]~DUPLICATE_q\ <= NOT \count_process:digit_2[3]~DUPLICATE_q\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add2~24_combout\ <= NOT \Add2~24_combout\;
\ALT_INV_digit_1~2_combout\ <= NOT \digit_1~2_combout\;
\ALT_INV_digit_1~1_combout\ <= NOT \digit_1~1_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_digit_1~0_combout\ <= NOT \digit_1~0_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_count_process:digit_2[0]~q\ <= NOT \count_process:digit_2[0]~q\;
\ALT_INV_count_process:digit_1[3]~q\ <= NOT \count_process:digit_1[3]~q\;
\ALT_INV_count_process:digit_1[2]~q\ <= NOT \count_process:digit_1[2]~q\;
\ALT_INV_count_process:digit_1[1]~q\ <= NOT \count_process:digit_1[1]~q\;
\ALT_INV_count_process:digit_1[0]~q\ <= NOT \count_process:digit_1[0]~q\;
\ALT_INV_count_process:digit_2[1]~q\ <= NOT \count_process:digit_2[1]~q\;
\ALT_INV_count_process:digit_2[2]~q\ <= NOT \count_process:digit_2[2]~q\;
\ALT_INV_count_process:digit_2[3]~q\ <= NOT \count_process:digit_2[3]~q\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;

-- Location: IOOBUF_X89_Y37_N22
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[0]~q\,
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X89_Y38_N56
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[1]~q\,
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X89_Y38_N5
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[2]~q\,
	devoe => ww_devoe,
	o => ww_count(2));

-- Location: IOOBUF_X89_Y38_N22
\count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[3]~q\,
	devoe => ww_devoe,
	o => ww_count(3));

-- Location: IOOBUF_X89_Y37_N5
\count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[4]~q\,
	devoe => ww_devoe,
	o => ww_count(4));

-- Location: IOOBUF_X89_Y37_N39
\count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[5]~q\,
	devoe => ww_devoe,
	o => ww_count(5));

-- Location: IOOBUF_X89_Y38_N39
\count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_process:temp[6]~q\,
	devoe => ww_devoe,
	o => ww_count(6));

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

-- Location: LABCELL_X88_Y37_N30
\count_process:digit_2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_process:digit_2[0]~0_combout\ = ( !\count_process:digit_2[0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_process:digit_2[0]~q\,
	combout => \count_process:digit_2[0]~0_combout\);

-- Location: IOIBUF_X89_Y37_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X87_Y37_N32
\count_process:digit_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \count_process:digit_2[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[0]~q\);

-- Location: LABCELL_X88_Y37_N51
\count_process:temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_process:temp[0]~0_combout\ = ( !\count_process:digit_2[0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_process:digit_2[0]~q\,
	combout => \count_process:temp[0]~0_combout\);

-- Location: FF_X88_Y37_N52
\count_process:temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \count_process:temp[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[0]~q\);

-- Location: MLABCELL_X87_Y37_N54
\digit_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit_2~1_combout\ = ( \Equal0~0_combout\ & ( !\count_process:digit_2[0]~q\ $ (\count_process:digit_2[1]~q\) ) ) # ( !\Equal0~0_combout\ & ( !\count_process:digit_2[0]~q\ $ (!\count_process:digit_2[1]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count_process:digit_2[0]~q\,
	datad => \ALT_INV_count_process:digit_2[1]~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \digit_2~1_combout\);

-- Location: MLABCELL_X87_Y37_N33
\digit_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit_1~3_combout\ = !\Equal0~0_combout\ $ (!\count_process:digit_1[0]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_count_process:digit_1[0]~q\,
	combout => \digit_1~3_combout\);

-- Location: FF_X87_Y37_N35
\count_process:digit_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_1~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_1[0]~q\);

-- Location: FF_X87_Y37_N22
\count_process:digit_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[2]~q\);

-- Location: FF_X87_Y37_N55
\count_process:digit_2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y37_N39
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( \count_process:digit_2[1]~DUPLICATE_q\ & ( \count_process:digit_2[0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count_process:digit_2[0]~q\,
	dataf => \ALT_INV_count_process:digit_2[1]~DUPLICATE_q\,
	combout => \Add1~1_combout\);

-- Location: MLABCELL_X87_Y37_N21
\Add1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = ( \Add1~1_combout\ & ( !\count_process:digit_2[2]~q\ ) ) # ( !\Add1~1_combout\ & ( \count_process:digit_2[2]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count_process:digit_2[2]~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X87_Y37_N23
\count_process:digit_2[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y37_N36
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( \count_process:digit_2[3]~DUPLICATE_q\ & ( (!\count_process:digit_2[0]~q\) # ((!\count_process:digit_2[2]~DUPLICATE_q\) # (!\count_process:digit_2[1]~q\)) ) ) # ( !\count_process:digit_2[3]~DUPLICATE_q\ & ( 
-- (\count_process:digit_2[0]~q\ & (\count_process:digit_2[2]~DUPLICATE_q\ & \count_process:digit_2[1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count_process:digit_2[0]~q\,
	datac => \ALT_INV_count_process:digit_2[2]~DUPLICATE_q\,
	datad => \ALT_INV_count_process:digit_2[1]~q\,
	dataf => \ALT_INV_count_process:digit_2[3]~DUPLICATE_q\,
	combout => \Add1~0_combout\);

-- Location: MLABCELL_X87_Y37_N42
\digit_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit_2~0_combout\ = ( \Equal0~0_combout\ & ( !\Add1~0_combout\ ) ) # ( !\Equal0~0_combout\ & ( \Add1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \digit_2~0_combout\);

-- Location: FF_X87_Y37_N44
\count_process:digit_2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[3]~DUPLICATE_q\);

-- Location: FF_X87_Y37_N34
\count_process:digit_1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_1~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_1[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y37_N24
\digit_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit_1~2_combout\ = ( \count_process:digit_1[1]~q\ & ( \count_process:digit_1[0]~DUPLICATE_q\ & ( ((!\count_process:digit_2[3]~DUPLICATE_q\) # ((!\count_process:digit_2[0]~q\) # (\count_process:digit_2[1]~DUPLICATE_q\))) # 
-- (\count_process:digit_2[2]~DUPLICATE_q\) ) ) ) # ( !\count_process:digit_1[1]~q\ & ( \count_process:digit_1[0]~DUPLICATE_q\ & ( (!\count_process:digit_2[2]~DUPLICATE_q\ & (\count_process:digit_2[3]~DUPLICATE_q\ & (\count_process:digit_2[0]~q\ & 
-- !\count_process:digit_2[1]~DUPLICATE_q\))) ) ) ) # ( \count_process:digit_1[1]~q\ & ( !\count_process:digit_1[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_process:digit_2[2]~DUPLICATE_q\,
	datab => \ALT_INV_count_process:digit_2[3]~DUPLICATE_q\,
	datac => \ALT_INV_count_process:digit_2[0]~q\,
	datad => \ALT_INV_count_process:digit_2[1]~DUPLICATE_q\,
	datae => \ALT_INV_count_process:digit_1[1]~q\,
	dataf => \ALT_INV_count_process:digit_1[0]~DUPLICATE_q\,
	combout => \digit_1~2_combout\);

-- Location: FF_X87_Y37_N41
\count_process:digit_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \digit_1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_1[1]~q\);

-- Location: MLABCELL_X87_Y37_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !\Equal0~0_combout\ $ (!\count_process:digit_2[0]~q\ $ (\count_process:digit_2[1]~DUPLICATE_q\)) ) + ( !\Equal0~0_combout\ $ (!\count_process:digit_1[0]~DUPLICATE_q\) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !\Equal0~0_combout\ $ (!\count_process:digit_2[0]~q\ $ (\count_process:digit_2[1]~DUPLICATE_q\)) ) + ( !\Equal0~0_combout\ $ (!\count_process:digit_1[0]~DUPLICATE_q\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_count_process:digit_2[0]~q\,
	datad => \ALT_INV_count_process:digit_2[1]~DUPLICATE_q\,
	dataf => \ALT_INV_count_process:digit_1[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X87_Y37_N3
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\count_process:digit_2[2]~DUPLICATE_q\ $ (!\Add1~1_combout\) ) + ( !\count_process:digit_1[1]~q\ $ (((!\Equal0~0_combout\) # (!\count_process:digit_1[0]~q\))) ) + ( \Add2~2\ ))
-- \Add2~22\ = CARRY(( !\count_process:digit_2[2]~DUPLICATE_q\ $ (!\Add1~1_combout\) ) + ( !\count_process:digit_1[1]~q\ $ (((!\Equal0~0_combout\) # (!\count_process:digit_1[0]~q\))) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100001000100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_count_process:digit_1[0]~q\,
	datac => \ALT_INV_count_process:digit_2[2]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_count_process:digit_1[1]~q\,
	cin => \Add2~2\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X87_Y37_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \Add2~21_sumout\ & ( (\count_process:digit_2[0]~q\ & !\Add2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_process:digit_2[0]~q\,
	datac => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \Equal1~0_combout\);

-- Location: FF_X87_Y37_N43
\count_process:digit_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[3]~q\);

-- Location: MLABCELL_X87_Y37_N45
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \count_process:digit_1[0]~q\ & ( \count_process:digit_1[1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count_process:digit_1[1]~q\,
	dataf => \ALT_INV_count_process:digit_1[0]~q\,
	combout => \Add0~0_combout\);

-- Location: LABCELL_X88_Y37_N42
\digit_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit_1~0_combout\ = ( \count_process:digit_1[2]~q\ & ( \Add0~0_combout\ & ( (((!\count_process:digit_2[0]~q\) # (!\count_process:digit_2[3]~q\)) # (\count_process:digit_2[1]~DUPLICATE_q\)) # (\count_process:digit_2[2]~q\) ) ) ) # ( 
-- !\count_process:digit_1[2]~q\ & ( \Add0~0_combout\ & ( (!\count_process:digit_2[2]~q\ & (!\count_process:digit_2[1]~DUPLICATE_q\ & (\count_process:digit_2[0]~q\ & \count_process:digit_2[3]~q\))) ) ) ) # ( \count_process:digit_1[2]~q\ & ( !\Add0~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_process:digit_2[2]~q\,
	datab => \ALT_INV_count_process:digit_2[1]~DUPLICATE_q\,
	datac => \ALT_INV_count_process:digit_2[0]~q\,
	datad => \ALT_INV_count_process:digit_2[3]~q\,
	datae => \ALT_INV_count_process:digit_1[2]~q\,
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \digit_1~0_combout\);

-- Location: FF_X87_Y37_N20
\count_process:digit_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \digit_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_1[2]~q\);

-- Location: MLABCELL_X87_Y37_N51
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \count_process:digit_1[0]~q\ & ( (\count_process:digit_1[1]~q\ & \count_process:digit_1[2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count_process:digit_1[1]~q\,
	datad => \ALT_INV_count_process:digit_1[2]~q\,
	dataf => \ALT_INV_count_process:digit_1[0]~q\,
	combout => \Add0~1_combout\);

-- Location: MLABCELL_X87_Y37_N27
\digit_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit_1~1_combout\ = ( \count_process:digit_1[3]~q\ & ( \Add0~1_combout\ & ( ((!\count_process:digit_2[3]~DUPLICATE_q\) # ((!\count_process:digit_2[0]~q\) # (\count_process:digit_2[1]~DUPLICATE_q\))) # (\count_process:digit_2[2]~DUPLICATE_q\) ) ) ) # ( 
-- !\count_process:digit_1[3]~q\ & ( \Add0~1_combout\ & ( (!\count_process:digit_2[2]~DUPLICATE_q\ & (\count_process:digit_2[3]~DUPLICATE_q\ & (!\count_process:digit_2[1]~DUPLICATE_q\ & \count_process:digit_2[0]~q\))) ) ) ) # ( \count_process:digit_1[3]~q\ & 
-- ( !\Add0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_process:digit_2[2]~DUPLICATE_q\,
	datab => \ALT_INV_count_process:digit_2[3]~DUPLICATE_q\,
	datac => \ALT_INV_count_process:digit_2[1]~DUPLICATE_q\,
	datad => \ALT_INV_count_process:digit_2[0]~q\,
	datae => \ALT_INV_count_process:digit_1[3]~q\,
	dataf => \ALT_INV_Add0~1_combout\,
	combout => \digit_1~1_combout\);

-- Location: FF_X87_Y37_N29
\count_process:digit_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_1[3]~q\);

-- Location: MLABCELL_X87_Y37_N30
\Add2~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ( \Equal0~0_combout\ & ( (\count_process:digit_1[3]~q\ & (!\Add1~0_combout\ & (!\count_process:digit_1[2]~q\ $ (!\Add0~0_combout\)))) ) ) # ( !\Equal0~0_combout\ & ( (\count_process:digit_1[2]~q\ & (\count_process:digit_1[3]~q\ & 
-- \Add1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_process:digit_1[2]~q\,
	datab => \ALT_INV_count_process:digit_1[3]~q\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Add2~24_combout\);

-- Location: MLABCELL_X87_Y37_N6
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\Equal0~0_combout\ $ (!\count_process:digit_1[0]~q\) ) + ( !\Add1~0_combout\ $ (!\count_process:digit_1[2]~q\ $ (((\Equal0~0_combout\ & !\Add0~0_combout\)))) ) + ( \Add2~22\ ))
-- \Add2~6\ = CARRY(( !\Equal0~0_combout\ $ (!\count_process:digit_1[0]~q\) ) + ( !\Add1~0_combout\ $ (!\count_process:digit_1[2]~q\ $ (((\Equal0~0_combout\ & !\Add0~0_combout\)))) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111000110001100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_count_process:digit_1[0]~q\,
	dataf => \ALT_INV_count_process:digit_1[2]~q\,
	cin => \Add2~22\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X87_Y37_N9
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\digit_1~1_combout\ $ (((!\digit_1~0_combout\) # (!\Equal0~0_combout\ $ (\Add1~0_combout\)))) ) + ( \digit_1~2_combout\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\digit_1~1_combout\ $ (((!\digit_1~0_combout\) # (!\Equal0~0_combout\ $ (\Add1~0_combout\)))) ) + ( \digit_1~2_combout\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000011011111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_digit_1~0_combout\,
	datad => \ALT_INV_digit_1~1_combout\,
	dataf => \ALT_INV_digit_1~2_combout\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X87_Y37_N12
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \Add2~24_combout\ ) + ( !\count_process:digit_1[2]~q\ $ (((!\Equal0~0_combout\) # ((!\count_process:digit_1[0]~q\) # (!\count_process:digit_1[1]~q\)))) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \Add2~24_combout\ ) + ( !\count_process:digit_1[2]~q\ $ (((!\Equal0~0_combout\) # ((!\count_process:digit_1[0]~q\) # (!\count_process:digit_1[1]~q\)))) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_count_process:digit_1[2]~q\,
	datac => \ALT_INV_count_process:digit_1[0]~q\,
	datad => \ALT_INV_Add2~24_combout\,
	dataf => \ALT_INV_count_process:digit_1[1]~q\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X87_Y37_N15
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\count_process:digit_1[3]~q\ $ (((!\Equal0~0_combout\) # ((!\count_process:digit_1[2]~q\) # (!\Add0~0_combout\)))) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_count_process:digit_1[2]~q\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_count_process:digit_1[3]~q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\);

-- Location: MLABCELL_X87_Y37_N57
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Add2~17_sumout\ & ( (\Equal1~0_combout\ & (\Add2~13_sumout\ & (!\Add2~9_sumout\ & !\Add2~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Add2~13_sumout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add2~5_sumout\,
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \Equal1~1_combout\);

-- Location: FF_X87_Y37_N56
\count_process:digit_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \digit_2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:digit_2[1]~q\);

-- Location: MLABCELL_X87_Y37_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \count_process:digit_2[0]~q\ & ( (!\count_process:digit_2[1]~q\ & (\count_process:digit_2[3]~DUPLICATE_q\ & !\count_process:digit_2[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count_process:digit_2[1]~q\,
	datab => \ALT_INV_count_process:digit_2[3]~DUPLICATE_q\,
	datac => \ALT_INV_count_process:digit_2[2]~DUPLICATE_q\,
	dataf => \ALT_INV_count_process:digit_2[0]~q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X87_Y37_N2
\count_process:temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[1]~q\);

-- Location: FF_X87_Y37_N4
\count_process:temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[2]~q\);

-- Location: FF_X87_Y37_N8
\count_process:temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[3]~q\);

-- Location: FF_X87_Y37_N11
\count_process:temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[4]~q\);

-- Location: FF_X87_Y37_N49
\count_process:temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \Add2~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[5]~q\);

-- Location: FF_X87_Y37_N16
\count_process:temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_process:temp[6]~q\);

-- Location: LABCELL_X27_Y62_N3
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


