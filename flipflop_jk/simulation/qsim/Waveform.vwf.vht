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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/27/2022 13:04:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flipflop_jk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flipflop_jk_vhd_vec_tst IS
END flipflop_jk_vhd_vec_tst;
ARCHITECTURE flipflop_jk_arch OF flipflop_jk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL q_bar : STD_LOGIC;
COMPONENT flipflop_jk
	PORT (
	clk : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	q : BUFFER STD_LOGIC;
	q_bar : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flipflop_jk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	j => j,
	k => k,
	q => q,
	q_bar => q_bar
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- j
t_prcs_j: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		j <= '0';
		WAIT FOR 15000 ps;
		j <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	j <= '0';
WAIT;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	k <= '0';
WAIT;
END PROCESS t_prcs_k;
END flipflop_jk_arch;
