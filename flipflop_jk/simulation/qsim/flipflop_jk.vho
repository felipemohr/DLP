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

-- DATE "03/27/2022 13:04:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	flipflop_jk IS
    PORT (
	j : IN std_logic;
	k : IN std_logic;
	clk : IN std_logic;
	q : BUFFER STD.STANDARD.bit;
	q_bar : BUFFER STD.STANDARD.bit
	);
END flipflop_jk;

ARCHITECTURE structure OF flipflop_jk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_q_bar : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \q_bar~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \k~input_o\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \a[2]~1_combout\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q_bar~0_combout\ : std_logic;
SIGNAL \ALT_INV_q~1_combout\ : std_logic;
SIGNAL \ALT_INV_a[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_j~input_o\ : std_logic;
SIGNAL \ALT_INV_k~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_j <= j;
ww_k <= k;
ww_clk <= clk;
q <= IEEE.STD_LOGIC_1164.TO_BIT(ww_q);
q_bar <= IEEE.STD_LOGIC_1164.TO_BIT(ww_q_bar);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q~1_combout\ <= NOT \q~1_combout\;
\ALT_INV_a[2]~1_combout\ <= NOT \a[2]~1_combout\;
\ALT_INV_j~input_o\ <= NOT \j~input_o\;
\ALT_INV_k~input_o\ <= NOT \k~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

\q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q~1_combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

\q_bar~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q_bar~0_combout\,
	devoe => ww_devoe,
	o => \q_bar~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\k~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k,
	o => \k~input_o\);

\j~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j,
	o => \j~input_o\);

\a[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \a[2]~1_combout\ = ( \j~input_o\ & ( (!\clk~input_o\ & (((\a[2]~1_combout\)))) # (\clk~input_o\ & (!\q~1_combout\ & ((\k~input_o\) # (\a[2]~1_combout\)))) ) ) # ( !\j~input_o\ & ( ((!\q~1_combout\ & (\clk~input_o\ & \k~input_o\))) # (\a[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011100010111000001111001011110000111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_q~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_a[2]~1_combout\,
	datad => \ALT_INV_k~input_o\,
	datae => \ALT_INV_j~input_o\,
	combout => \a[2]~1_combout\);

\q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~1_combout\ = (!\clk~input_o\ & ((\a[2]~1_combout\))) # (\clk~input_o\ & (\q~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_q~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_a[2]~1_combout\,
	combout => \q~1_combout\);

\q_bar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_bar~0_combout\ = ((!\clk~input_o\ & \a[2]~1_combout\)) # (\q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_q~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_a[2]~1_combout\,
	combout => \q_bar~0_combout\);

ww_q <= \q~output_o\;

ww_q_bar <= \q_bar~output_o\;
END structure;


