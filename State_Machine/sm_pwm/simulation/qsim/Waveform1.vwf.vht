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
-- Generated on "05/09/2022 11:00:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sm_pwm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sm_pwm_vhd_vec_tst IS
END sm_pwm_vhd_vec_tst;
ARCHITECTURE sm_pwm_arch OF sm_pwm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL baud : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL output : STD_LOGIC;
COMPONENT sm_pwm
	PORT (
	baud : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	output : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sm_pwm
	PORT MAP (
-- list connections between master ports and signals
	baud => baud,
	clk => clk,
	output => output
	);
-- baud[2]
t_prcs_baud_2: PROCESS
BEGIN
	baud(2) <= '0';
	WAIT FOR 560000 ps;
	baud(2) <= '1';
WAIT;
END PROCESS t_prcs_baud_2;
-- baud[1]
t_prcs_baud_1: PROCESS
BEGIN
	baud(1) <= '0';
	WAIT FOR 280000 ps;
	baud(1) <= '1';
	WAIT FOR 280000 ps;
	baud(1) <= '0';
	WAIT FOR 280000 ps;
	baud(1) <= '1';
WAIT;
END PROCESS t_prcs_baud_1;
-- baud[0]
t_prcs_baud_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		baud(0) <= '0';
		WAIT FOR 140000 ps;
		baud(0) <= '1';
		WAIT FOR 140000 ps;
	END LOOP;
	baud(0) <= '0';
	WAIT FOR 140000 ps;
	baud(0) <= '1';
WAIT;
END PROCESS t_prcs_baud_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END sm_pwm_arch;
