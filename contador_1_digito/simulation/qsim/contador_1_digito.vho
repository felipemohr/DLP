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

-- DATE "04/06/2022 15:16:02"

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

ENTITY 	contador_1_digito IS
    PORT (
	CLK : IN std_logic;
	digit : OUT STD.STANDARD.integer range 0 TO 9
	);
END contador_1_digito;

-- Design Ports Information
-- digit[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_1_digito IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count:temp[0]~q\ : std_logic;
SIGNAL \count:temp[0]~0_combout\ : std_logic;
SIGNAL \count:temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count:temp[2]~q\ : std_logic;
SIGNAL \count:temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count:temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \count:temp[3]~q\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \count:temp[1]~q\ : std_logic;
SIGNAL \count:temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count:temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count:temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count:temp[3]~q\ : std_logic;
SIGNAL \ALT_INV_count:temp[2]~q\ : std_logic;
SIGNAL \ALT_INV_count:temp[1]~q\ : std_logic;
SIGNAL \ALT_INV_count:temp[0]~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
digit <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_digit));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count:temp[2]~DUPLICATE_q\ <= NOT \count:temp[2]~DUPLICATE_q\;
\ALT_INV_count:temp[1]~DUPLICATE_q\ <= NOT \count:temp[1]~DUPLICATE_q\;
\ALT_INV_count:temp[3]~q\ <= NOT \count:temp[3]~q\;
\ALT_INV_count:temp[2]~q\ <= NOT \count:temp[2]~q\;
\ALT_INV_count:temp[1]~q\ <= NOT \count:temp[1]~q\;
\ALT_INV_count:temp[0]~q\ <= NOT \count:temp[0]~q\;

-- Location: IOOBUF_X89_Y36_N5
\digit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count:temp[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_digit(0));

-- Location: IOOBUF_X89_Y36_N56
\digit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count:temp[1]~q\,
	devoe => ww_devoe,
	o => ww_digit(1));

-- Location: IOOBUF_X89_Y36_N39
\digit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count:temp[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_digit(2));

-- Location: IOOBUF_X89_Y36_N22
\digit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count:temp[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_digit(3));

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: FF_X88_Y36_N50
\count:temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \count:temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[0]~q\);

-- Location: LABCELL_X88_Y36_N48
\count:temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count:temp[0]~0_combout\ = ( !\count:temp[0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_count:temp[0]~q\,
	combout => \count:temp[0]~0_combout\);

-- Location: FF_X88_Y36_N49
\count:temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \count:temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[0]~DUPLICATE_q\);

-- Location: FF_X88_Y36_N28
\count:temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[2]~q\);

-- Location: FF_X88_Y36_N14
\count:temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y36_N27
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \count:temp[2]~q\ & ( \count:temp[1]~DUPLICATE_q\ & ( !\count:temp[0]~q\ ) ) ) # ( !\count:temp[2]~q\ & ( \count:temp[1]~DUPLICATE_q\ & ( \count:temp[0]~q\ ) ) ) # ( \count:temp[2]~q\ & ( !\count:temp[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_count:temp[0]~q\,
	datae => \ALT_INV_count:temp[2]~q\,
	dataf => \ALT_INV_count:temp[1]~DUPLICATE_q\,
	combout => \Add0~0_combout\);

-- Location: FF_X88_Y36_N29
\count:temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y36_N57
\temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = ( \count:temp[3]~q\ & ( \count:temp[2]~q\ & ( (!\count:temp[1]~DUPLICATE_q\) # (!\count:temp[0]~q\) ) ) ) # ( !\count:temp[3]~q\ & ( \count:temp[2]~q\ & ( (\count:temp[1]~DUPLICATE_q\ & \count:temp[0]~q\) ) ) ) # ( \count:temp[3]~q\ & ( 
-- !\count:temp[2]~q\ & ( (!\count:temp[0]~q\) # (\count:temp[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count:temp[1]~DUPLICATE_q\,
	datad => \ALT_INV_count:temp[0]~q\,
	datae => \ALT_INV_count:temp[3]~q\,
	dataf => \ALT_INV_count:temp[2]~q\,
	combout => \temp~1_combout\);

-- Location: FF_X88_Y36_N58
\count:temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \temp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[3]~q\);

-- Location: LABCELL_X88_Y36_N12
\temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = ( \count:temp[1]~q\ & ( \count:temp[3]~q\ & ( !\count:temp[0]~q\ ) ) ) # ( !\count:temp[1]~q\ & ( \count:temp[3]~q\ & ( (\count:temp[2]~DUPLICATE_q\ & \count:temp[0]~q\) ) ) ) # ( \count:temp[1]~q\ & ( !\count:temp[3]~q\ & ( 
-- !\count:temp[0]~q\ ) ) ) # ( !\count:temp[1]~q\ & ( !\count:temp[3]~q\ & ( \count:temp[0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000101000001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count:temp[2]~DUPLICATE_q\,
	datac => \ALT_INV_count:temp[0]~q\,
	datae => \ALT_INV_count:temp[1]~q\,
	dataf => \ALT_INV_count:temp[3]~q\,
	combout => \temp~0_combout\);

-- Location: FF_X88_Y36_N13
\count:temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[1]~q\);

-- Location: FF_X88_Y36_N59
\count:temp[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \temp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count:temp[3]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y31_N0
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


