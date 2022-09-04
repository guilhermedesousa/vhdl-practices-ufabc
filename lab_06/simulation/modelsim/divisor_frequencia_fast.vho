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

-- DATE "07/29/2022 21:37:02"

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

ENTITY 	divisor_frequencia IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END divisor_frequencia;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF divisor_frequencia IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~clkctrl_outclk\ : std_logic;
SIGNAL \contador|tmp[0]~3_combout\ : std_logic;
SIGNAL \KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \contador|tmp[1]~0_combout\ : std_logic;
SIGNAL \contador|tmp[2]~1_combout\ : std_logic;
SIGNAL \contador|tmp[3]~2_combout\ : std_logic;
SIGNAL \segmentos|Mux6~0_combout\ : std_logic;
SIGNAL \segmentos|Mux5~0_combout\ : std_logic;
SIGNAL \segmentos|Mux4~0_combout\ : std_logic;
SIGNAL \segmentos|Mux3~0_combout\ : std_logic;
SIGNAL \segmentos|Mux2~0_combout\ : std_logic;
SIGNAL \segmentos|Mux1~0_combout\ : std_logic;
SIGNAL \segmentos|Mux0~0_combout\ : std_logic;
SIGNAL \contador|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \segmentos|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KEY[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(0));

\KEY[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(1));
\ALT_INV_KEY[1]~clkctrl_outclk\ <= NOT \KEY[1]~clkctrl_outclk\;
\segmentos|ALT_INV_Mux0~0_combout\ <= NOT \segmentos|Mux0~0_combout\;

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: CLKCTRL_G3
\KEY[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N12
\contador|tmp[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp[0]~3_combout\ = !\contador|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|tmp\(0),
	combout => \contador|tmp[0]~3_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: CLKCTRL_G1
\KEY[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~clkctrl_outclk\);

-- Location: LCFF_X1_Y4_N13
\contador|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[0]~clkctrl_outclk\,
	datain => \contador|tmp[0]~3_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(0));

-- Location: LCCOMB_X1_Y4_N30
\contador|tmp[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp[1]~0_combout\ = \contador|tmp\(1) $ (\contador|tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|tmp\(1),
	datad => \contador|tmp\(0),
	combout => \contador|tmp[1]~0_combout\);

-- Location: LCFF_X1_Y4_N31
\contador|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[0]~clkctrl_outclk\,
	datain => \contador|tmp[1]~0_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(1));

-- Location: LCCOMB_X1_Y4_N24
\contador|tmp[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp[2]~1_combout\ = \contador|tmp\(2) $ (((\contador|tmp\(1) & \contador|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(2),
	datad => \contador|tmp\(0),
	combout => \contador|tmp[2]~1_combout\);

-- Location: LCFF_X1_Y4_N25
\contador|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[0]~clkctrl_outclk\,
	datain => \contador|tmp[2]~1_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(2));

-- Location: LCCOMB_X1_Y4_N18
\contador|tmp[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp[3]~2_combout\ = \contador|tmp\(3) $ (((\contador|tmp\(2) & (\contador|tmp\(1) & \contador|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(3),
	datad => \contador|tmp\(0),
	combout => \contador|tmp[3]~2_combout\);

-- Location: LCFF_X1_Y4_N19
\contador|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[0]~clkctrl_outclk\,
	datain => \contador|tmp[3]~2_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(3));

-- Location: LCCOMB_X1_Y4_N20
\segmentos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux6~0_combout\ = (\contador|tmp\(2) & (!\contador|tmp\(1) & (\contador|tmp\(0) $ (!\contador|tmp\(3))))) # (!\contador|tmp\(2) & (\contador|tmp\(0) & (\contador|tmp\(1) $ (!\contador|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y4_N6
\segmentos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux5~0_combout\ = (\contador|tmp\(1) & ((\contador|tmp\(0) & ((\contador|tmp\(3)))) # (!\contador|tmp\(0) & (\contador|tmp\(2))))) # (!\contador|tmp\(1) & (\contador|tmp\(2) & (\contador|tmp\(0) $ (\contador|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\segmentos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux4~0_combout\ = (\contador|tmp\(2) & (\contador|tmp\(3) & ((\contador|tmp\(1)) # (!\contador|tmp\(0))))) # (!\contador|tmp\(2) & (\contador|tmp\(1) & (!\contador|tmp\(0) & !\contador|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y4_N10
\segmentos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux3~0_combout\ = (\contador|tmp\(1) & (\contador|tmp\(2) & (\contador|tmp\(0)))) # (!\contador|tmp\(1) & (!\contador|tmp\(3) & (\contador|tmp\(2) $ (\contador|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\segmentos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux2~0_combout\ = (\contador|tmp\(1) & (((\contador|tmp\(0) & !\contador|tmp\(3))))) # (!\contador|tmp\(1) & ((\contador|tmp\(2) & ((!\contador|tmp\(3)))) # (!\contador|tmp\(2) & (\contador|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\segmentos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux1~0_combout\ = (\contador|tmp\(0) & (\contador|tmp\(3) $ (((\contador|tmp\(1)) # (!\contador|tmp\(2)))))) # (!\contador|tmp\(0) & (!\contador|tmp\(2) & (\contador|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\segmentos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux0~0_combout\ = (\contador|tmp\(0) & ((\contador|tmp\(3)) # (\contador|tmp\(2) $ (\contador|tmp\(1))))) # (!\contador|tmp\(0) & ((\contador|tmp\(1)) # (\contador|tmp\(2) $ (\contador|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|tmp\(1),
	datac => \contador|tmp\(0),
	datad => \contador|tmp\(3),
	combout => \segmentos|Mux0~0_combout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \segmentos|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \segmentos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \segmentos|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \segmentos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \segmentos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \segmentos|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \segmentos|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


