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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/21/2022 21:43:56"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	semaforo IS
    PORT (
	clk : IN std_logic;
	resetn : IN std_logic;
	av_princ : OUT std_logic_vector(0 TO 2);
	av_sec : OUT std_logic_vector(0 TO 2)
	);
END semaforo;

-- Design Ports Information
-- av_princ[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- av_princ[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- av_princ[0]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- av_sec[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- av_sec[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- av_sec[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF semaforo IS
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
SIGNAL ww_resetn : std_logic;
SIGNAL ww_av_princ : std_logic_vector(0 TO 2);
SIGNAL ww_av_sec : std_logic_vector(0 TO 2);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \resetn~clkctrl_outclk\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \y.C~regout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \y.D~0_combout\ : std_logic;
SIGNAL \y.D~regout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \y.A~0_combout\ : std_logic;
SIGNAL \y.A~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \y.B~regout\ : std_logic;
SIGNAL \av_princ~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_av_princ~0_combout\ : std_logic;
SIGNAL \ALT_INV_y.A~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_resetn <= resetn;
av_princ <= ww_av_princ;
av_sec <= ww_av_sec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \resetn~combout\);
\ALT_INV_av_princ~0_combout\ <= NOT \av_princ~0_combout\;
\ALT_INV_y.A~regout\ <= NOT \y.A~regout\;

-- Location: LCCOMB_X42_Y26_N24
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!count(1) & (!count(2) & (!count(0) & \y.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(0),
	datad => \y.D~regout\,
	combout => \Selector0~2_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y26_N16
\count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = (count(0) & (((\y.A~regout\)))) # (!count(0) & ((count(1)) # ((\y.C~regout\ & \y.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \y.C~regout\,
	datac => count(1),
	datad => \y.A~regout\,
	combout => \count[0]~0_combout\);

-- Location: LCCOMB_X42_Y26_N26
\count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = (\y.A~regout\ & ((\Selector1~4_combout\) # ((!count(2) & !\count[0]~0_combout\)))) # (!\y.A~regout\ & (!count(2) & (\count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.A~regout\,
	datab => count(2),
	datac => \count[0]~0_combout\,
	datad => \Selector1~4_combout\,
	combout => \count[0]~1_combout\);

-- Location: LCCOMB_X42_Y26_N20
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\count[0]~1_combout\ & (count(0) $ (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datac => count(1),
	datad => \count[0]~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: CLKCTRL_G1
\resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~clkctrl_outclk\);

-- Location: LCFF_X42_Y26_N21
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X42_Y26_N30
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!count(0) & !\count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	datad => \count[0]~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X42_Y26_N31
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X42_Y26_N2
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(2) $ (((count(1) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => count(2),
	datad => count(0),
	combout => \Add0~0_combout\);

-- Location: LCFF_X42_Y26_N3
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X42_Y26_N18
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\y.D~regout\ & (!count(2) & (!count(0) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.D~regout\,
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X42_Y26_N8
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\y.B~regout\ & ((\Selector2~0_combout\) # ((\y.C~regout\ & \Selector0~1_combout\)))) # (!\y.B~regout\ & (((\y.C~regout\ & \Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.B~regout\,
	datab => \Selector2~0_combout\,
	datac => \y.C~regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCFF_X42_Y26_N9
\y.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.C~regout\);

-- Location: LCCOMB_X42_Y26_N22
\Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (count(0) & (\y.C~regout\ & (!count(1) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \y.C~regout\,
	datac => count(1),
	datad => count(2),
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X42_Y26_N12
\Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (count(2)) # ((\Selector1~0_combout\) # ((!\y.B~regout\ & \Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \y.B~regout\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X42_Y26_N14
\y.D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y.D~0_combout\ = (\Selector1~5_combout\ & ((\y.D~regout\))) # (!\Selector1~5_combout\ & (\Selector1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~4_combout\,
	datac => \y.D~regout\,
	datad => \Selector1~5_combout\,
	combout => \y.D~0_combout\);

-- Location: LCFF_X42_Y26_N15
\y.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y.D~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.D~regout\);

-- Location: LCCOMB_X42_Y26_N4
\Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\y.D~regout\ & (!count(1) & !count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y.D~regout\,
	datac => count(1),
	datad => count(0),
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X42_Y26_N10
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\y.C~regout\ & (((count(1))))) # (!\y.C~regout\ & ((count(0)) # ((\y.A~regout\ & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.C~regout\,
	datab => \y.A~regout\,
	datac => count(1),
	datad => count(0),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X42_Y26_N6
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (count(2)) # ((\Selector0~0_combout\) # ((!\y.B~regout\ & \Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \y.B~regout\,
	datac => \Selector1~3_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X42_Y26_N0
\y.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y.A~0_combout\ = (\Selector0~1_combout\ & ((\y.A~regout\))) # (!\Selector0~1_combout\ & (!\Selector0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datac => \y.A~regout\,
	datad => \Selector0~1_combout\,
	combout => \y.A~0_combout\);

-- Location: LCFF_X42_Y26_N1
\y.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \y.A~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.A~regout\);

-- Location: LCCOMB_X42_Y26_N28
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (count(1) & (((\y.A~regout\) # (count(0))))) # (!count(1) & (!\y.C~regout\ & ((count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y.C~regout\,
	datab => \y.A~regout\,
	datac => count(1),
	datad => count(0),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X43_Y26_N28
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!count(0) & (count(1) & !\y.A~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datac => count(1),
	datad => \y.A~regout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X43_Y26_N8
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (count(2) & (((\y.B~regout\)))) # (!count(2) & ((\Selector1~1_combout\) # ((\Selector1~0_combout\ & \y.B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Selector1~0_combout\,
	datac => \y.B~regout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCFF_X43_Y26_N9
\y.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y.B~regout\);

-- Location: LCCOMB_X43_Y26_N26
\av_princ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \av_princ~0_combout\ = (\y.B~regout\) # (!\y.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y.B~regout\,
	datad => \y.A~regout\,
	combout => \av_princ~0_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\av_princ[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_av_princ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_av_princ(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\av_princ[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y.B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_av_princ(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\av_princ[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_y.A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_av_princ(0));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\av_sec[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \av_princ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_av_sec(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\av_sec[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y.D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_av_sec(1));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\av_sec[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_av_sec(0));
END structure;


