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

-- DATE "07/29/2022 22:02:13"

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
	CLK : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END divisor_frequencia;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador|Add0~2_combout\ : std_logic;
SIGNAL \contador|Add0~4_combout\ : std_logic;
SIGNAL \contador|Add0~24_combout\ : std_logic;
SIGNAL \contador|Equal0~0_combout\ : std_logic;
SIGNAL \contador|count~3_combout\ : std_logic;
SIGNAL \contador|count~6_combout\ : std_logic;
SIGNAL \contador|count~8_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \contador|Add0~0_combout\ : std_logic;
SIGNAL \contador|Add0~1\ : std_logic;
SIGNAL \contador|Add0~3\ : std_logic;
SIGNAL \contador|Add0~5\ : std_logic;
SIGNAL \contador|Add0~6_combout\ : std_logic;
SIGNAL \contador|Add0~7\ : std_logic;
SIGNAL \contador|Add0~8_combout\ : std_logic;
SIGNAL \contador|Add0~9\ : std_logic;
SIGNAL \contador|Add0~10_combout\ : std_logic;
SIGNAL \contador|count~5_combout\ : std_logic;
SIGNAL \contador|Add0~15\ : std_logic;
SIGNAL \contador|Add0~16_combout\ : std_logic;
SIGNAL \contador|Add0~17\ : std_logic;
SIGNAL \contador|Add0~19\ : std_logic;
SIGNAL \contador|Add0~20_combout\ : std_logic;
SIGNAL \contador|Add0~21\ : std_logic;
SIGNAL \contador|Add0~22_combout\ : std_logic;
SIGNAL \contador|count~9_combout\ : std_logic;
SIGNAL \contador|count~7_combout\ : std_logic;
SIGNAL \contador|Add0~33\ : std_logic;
SIGNAL \contador|Add0~34_combout\ : std_logic;
SIGNAL \contador|Add0~35\ : std_logic;
SIGNAL \contador|Add0~37\ : std_logic;
SIGNAL \contador|Add0~39\ : std_logic;
SIGNAL \contador|Add0~40_combout\ : std_logic;
SIGNAL \contador|count~12_combout\ : std_logic;
SIGNAL \contador|Add0~41\ : std_logic;
SIGNAL \contador|Add0~43\ : std_logic;
SIGNAL \contador|Add0~44_combout\ : std_logic;
SIGNAL \contador|count~10_combout\ : std_logic;
SIGNAL \contador|Add0~45\ : std_logic;
SIGNAL \contador|Add0~47\ : std_logic;
SIGNAL \contador|Add0~48_combout\ : std_logic;
SIGNAL \contador|count~0_combout\ : std_logic;
SIGNAL \contador|count~2_combout\ : std_logic;
SIGNAL \contador|Add0~23\ : std_logic;
SIGNAL \contador|Add0~25\ : std_logic;
SIGNAL \contador|Add0~26_combout\ : std_logic;
SIGNAL \contador|count~4_combout\ : std_logic;
SIGNAL \contador|Add0~27\ : std_logic;
SIGNAL \contador|Add0~29\ : std_logic;
SIGNAL \contador|Add0~30_combout\ : std_logic;
SIGNAL \contador|Add0~31\ : std_logic;
SIGNAL \contador|Add0~32_combout\ : std_logic;
SIGNAL \contador|Add0~38_combout\ : std_logic;
SIGNAL \contador|Add0~36_combout\ : std_logic;
SIGNAL \contador|Equal0~5_combout\ : std_logic;
SIGNAL \contador|Equal0~7_combout\ : std_logic;
SIGNAL \contador|count~11_combout\ : std_logic;
SIGNAL \contador|Add0~42_combout\ : std_logic;
SIGNAL \contador|Add0~46_combout\ : std_logic;
SIGNAL \contador|Equal0~6_combout\ : std_logic;
SIGNAL \contador|Add0~11\ : std_logic;
SIGNAL \contador|Add0~12_combout\ : std_logic;
SIGNAL \contador|count~1_combout\ : std_logic;
SIGNAL \contador|Add0~13\ : std_logic;
SIGNAL \contador|Add0~14_combout\ : std_logic;
SIGNAL \contador|Equal0~1_combout\ : std_logic;
SIGNAL \contador|Add0~28_combout\ : std_logic;
SIGNAL \contador|Equal0~3_combout\ : std_logic;
SIGNAL \contador|Add0~18_combout\ : std_logic;
SIGNAL \contador|Equal0~2_combout\ : std_logic;
SIGNAL \contador|Equal0~4_combout\ : std_logic;
SIGNAL \KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \contador|tmp~2_combout\ : std_logic;
SIGNAL \contador|tmp~3_combout\ : std_logic;
SIGNAL \contador|tmp~4_combout\ : std_logic;
SIGNAL \contador|tmp~5_combout\ : std_logic;
SIGNAL \contador|Add1~0_combout\ : std_logic;
SIGNAL \contador|tmp~7_combout\ : std_logic;
SIGNAL \contador|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \contador|tmp~8_combout\ : std_logic;
SIGNAL \contador|tmp~6_combout\ : std_logic;
SIGNAL \segmentos|Mux6~0_combout\ : std_logic;
SIGNAL \segmentos|Mux5~0_combout\ : std_logic;
SIGNAL \segmentos|Mux4~0_combout\ : std_logic;
SIGNAL \segmentos|Mux3~0_combout\ : std_logic;
SIGNAL \segmentos|Mux2~0_combout\ : std_logic;
SIGNAL \segmentos|Mux1~0_combout\ : std_logic;
SIGNAL \segmentos|Mux0~0_combout\ : std_logic;
SIGNAL \contador|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \contador|LEDG\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \segmentos|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\KEY[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY~combout\(1));
\ALT_INV_KEY[1]~clkctrl_outclk\ <= NOT \KEY[1]~clkctrl_outclk\;
\ALT_INV_CLK~clkctrl_outclk\ <= NOT \CLK~clkctrl_outclk\;
\segmentos|ALT_INV_Mux0~0_combout\ <= NOT \segmentos|Mux0~0_combout\;

-- Location: LCCOMB_X31_Y26_N10
\contador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~2_combout\ = (\contador|count\(1) & (!\contador|Add0~1\)) # (!\contador|count\(1) & ((\contador|Add0~1\) # (GND)))
-- \contador|Add0~3\ = CARRY((!\contador|Add0~1\) # (!\contador|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(1),
	datad => VCC,
	cin => \contador|Add0~1\,
	combout => \contador|Add0~2_combout\,
	cout => \contador|Add0~3\);

-- Location: LCCOMB_X31_Y26_N12
\contador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~4_combout\ = (\contador|count\(2) & (\contador|Add0~3\ $ (GND))) # (!\contador|count\(2) & (!\contador|Add0~3\ & VCC))
-- \contador|Add0~5\ = CARRY((\contador|count\(2) & !\contador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(2),
	datad => VCC,
	cin => \contador|Add0~3\,
	combout => \contador|Add0~4_combout\,
	cout => \contador|Add0~5\);

-- Location: LCCOMB_X31_Y25_N0
\contador|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~24_combout\ = (\contador|count\(12) & (\contador|Add0~23\ $ (GND))) # (!\contador|count\(12) & (!\contador|Add0~23\ & VCC))
-- \contador|Add0~25\ = CARRY((\contador|count\(12) & !\contador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(12),
	datad => VCC,
	cin => \contador|Add0~23\,
	combout => \contador|Add0~24_combout\,
	cout => \contador|Add0~25\);

-- Location: LCFF_X31_Y26_N11
\contador|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~2_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(1));

-- Location: LCFF_X31_Y26_N13
\contador|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~4_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(2));

-- Location: LCCOMB_X30_Y26_N16
\contador|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~0_combout\ = (!\contador|Add0~0_combout\ & (!\contador|Add0~2_combout\ & (!\contador|Add0~4_combout\ & !\contador|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~0_combout\,
	datab => \contador|Add0~2_combout\,
	datac => \contador|Add0~4_combout\,
	datad => \contador|Add0~6_combout\,
	combout => \contador|Equal0~0_combout\);

-- Location: LCFF_X31_Y26_N17
\contador|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~8_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(4));

-- Location: LCFF_X31_Y26_N23
\contador|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~14_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(7));

-- Location: LCFF_X31_Y26_N27
\contador|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~18_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(9));

-- Location: LCFF_X30_Y25_N31
\contador|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~3_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(12));

-- Location: LCFF_X30_Y25_N3
\contador|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~6_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(16));

-- Location: LCFF_X30_Y25_N15
\contador|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~8_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(19));

-- Location: LCFF_X31_Y25_N23
\contador|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~46_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(23));

-- Location: LCCOMB_X30_Y25_N30
\contador|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~3_combout\ = (\contador|Add0~24_combout\ & (((\contador|count~0_combout\) # (!\contador|Equal0~6_combout\)) # (!\contador|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~24_combout\,
	datab => \contador|Equal0~4_combout\,
	datac => \contador|Equal0~6_combout\,
	datad => \contador|count~0_combout\,
	combout => \contador|count~3_combout\);

-- Location: LCCOMB_X30_Y25_N2
\contador|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~6_combout\ = (\contador|Add0~32_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|Add0~32_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~6_combout\);

-- Location: LCCOMB_X30_Y25_N14
\contador|count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~8_combout\ = (\contador|Add0~38_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|Add0~38_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~8_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y26_N8
\contador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~0_combout\ = \contador|count\(0) $ (VCC)
-- \contador|Add0~1\ = CARRY(\contador|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(0),
	datad => VCC,
	combout => \contador|Add0~0_combout\,
	cout => \contador|Add0~1\);

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

-- Location: LCFF_X31_Y26_N9
\contador|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~0_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(0));

-- Location: LCCOMB_X31_Y26_N14
\contador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~6_combout\ = (\contador|count\(3) & (!\contador|Add0~5\)) # (!\contador|count\(3) & ((\contador|Add0~5\) # (GND)))
-- \contador|Add0~7\ = CARRY((!\contador|Add0~5\) # (!\contador|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(3),
	datad => VCC,
	cin => \contador|Add0~5\,
	combout => \contador|Add0~6_combout\,
	cout => \contador|Add0~7\);

-- Location: LCFF_X31_Y26_N15
\contador|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~6_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(3));

-- Location: LCCOMB_X31_Y26_N16
\contador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~8_combout\ = (\contador|count\(4) & (\contador|Add0~7\ $ (GND))) # (!\contador|count\(4) & (!\contador|Add0~7\ & VCC))
-- \contador|Add0~9\ = CARRY((\contador|count\(4) & !\contador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(4),
	datad => VCC,
	cin => \contador|Add0~7\,
	combout => \contador|Add0~8_combout\,
	cout => \contador|Add0~9\);

-- Location: LCFF_X31_Y26_N19
\contador|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~10_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(5));

-- Location: LCCOMB_X31_Y26_N18
\contador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~10_combout\ = (\contador|count\(5) & (!\contador|Add0~9\)) # (!\contador|count\(5) & ((\contador|Add0~9\) # (GND)))
-- \contador|Add0~11\ = CARRY((!\contador|Add0~9\) # (!\contador|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(5),
	datad => VCC,
	cin => \contador|Add0~9\,
	combout => \contador|Add0~10_combout\,
	cout => \contador|Add0~11\);

-- Location: LCCOMB_X30_Y25_N22
\contador|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~5_combout\ = (\contador|Add0~28_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~28_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~5_combout\);

-- Location: LCFF_X30_Y25_N23
\contador|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~5_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(14));

-- Location: LCCOMB_X31_Y26_N22
\contador|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~14_combout\ = (\contador|count\(7) & (!\contador|Add0~13\)) # (!\contador|count\(7) & ((\contador|Add0~13\) # (GND)))
-- \contador|Add0~15\ = CARRY((!\contador|Add0~13\) # (!\contador|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(7),
	datad => VCC,
	cin => \contador|Add0~13\,
	combout => \contador|Add0~14_combout\,
	cout => \contador|Add0~15\);

-- Location: LCCOMB_X31_Y26_N24
\contador|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~16_combout\ = (\contador|count\(8) & (\contador|Add0~15\ $ (GND))) # (!\contador|count\(8) & (!\contador|Add0~15\ & VCC))
-- \contador|Add0~17\ = CARRY((\contador|count\(8) & !\contador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(8),
	datad => VCC,
	cin => \contador|Add0~15\,
	combout => \contador|Add0~16_combout\,
	cout => \contador|Add0~17\);

-- Location: LCFF_X31_Y26_N25
\contador|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~16_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(8));

-- Location: LCCOMB_X31_Y26_N26
\contador|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~18_combout\ = (\contador|count\(9) & (!\contador|Add0~17\)) # (!\contador|count\(9) & ((\contador|Add0~17\) # (GND)))
-- \contador|Add0~19\ = CARRY((!\contador|Add0~17\) # (!\contador|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(9),
	datad => VCC,
	cin => \contador|Add0~17\,
	combout => \contador|Add0~18_combout\,
	cout => \contador|Add0~19\);

-- Location: LCCOMB_X31_Y26_N28
\contador|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~20_combout\ = (\contador|count\(10) & (\contador|Add0~19\ $ (GND))) # (!\contador|count\(10) & (!\contador|Add0~19\ & VCC))
-- \contador|Add0~21\ = CARRY((\contador|count\(10) & !\contador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(10),
	datad => VCC,
	cin => \contador|Add0~19\,
	combout => \contador|Add0~20_combout\,
	cout => \contador|Add0~21\);

-- Location: LCFF_X31_Y26_N29
\contador|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~20_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(10));

-- Location: LCCOMB_X31_Y26_N30
\contador|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~22_combout\ = (\contador|count\(11) & (!\contador|Add0~21\)) # (!\contador|count\(11) & ((\contador|Add0~21\) # (GND)))
-- \contador|Add0~23\ = CARRY((!\contador|Add0~21\) # (!\contador|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(11),
	datad => VCC,
	cin => \contador|Add0~21\,
	combout => \contador|Add0~22_combout\,
	cout => \contador|Add0~23\);

-- Location: LCCOMB_X30_Y25_N8
\contador|count~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~9_combout\ = (\contador|Add0~48_combout\ & (((!\contador|Equal0~6_combout\) # (!\contador|Equal0~4_combout\)) # (!\contador|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~5_combout\,
	datab => \contador|Equal0~4_combout\,
	datac => \contador|Equal0~6_combout\,
	datad => \contador|Add0~48_combout\,
	combout => \contador|count~9_combout\);

-- Location: LCFF_X30_Y25_N9
\contador|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~9_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(24));

-- Location: LCCOMB_X30_Y25_N16
\contador|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~7_combout\ = (\contador|Add0~36_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~36_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~7_combout\);

-- Location: LCFF_X30_Y25_N17
\contador|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~7_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(18));

-- Location: LCCOMB_X31_Y25_N8
\contador|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~32_combout\ = (\contador|count\(16) & (\contador|Add0~31\ $ (GND))) # (!\contador|count\(16) & (!\contador|Add0~31\ & VCC))
-- \contador|Add0~33\ = CARRY((\contador|count\(16) & !\contador|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(16),
	datad => VCC,
	cin => \contador|Add0~31\,
	combout => \contador|Add0~32_combout\,
	cout => \contador|Add0~33\);

-- Location: LCCOMB_X31_Y25_N10
\contador|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~34_combout\ = (\contador|count\(17) & (!\contador|Add0~33\)) # (!\contador|count\(17) & ((\contador|Add0~33\) # (GND)))
-- \contador|Add0~35\ = CARRY((!\contador|Add0~33\) # (!\contador|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(17),
	datad => VCC,
	cin => \contador|Add0~33\,
	combout => \contador|Add0~34_combout\,
	cout => \contador|Add0~35\);

-- Location: LCFF_X31_Y25_N11
\contador|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~34_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(17));

-- Location: LCCOMB_X31_Y25_N12
\contador|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~36_combout\ = (\contador|count\(18) & (\contador|Add0~35\ $ (GND))) # (!\contador|count\(18) & (!\contador|Add0~35\ & VCC))
-- \contador|Add0~37\ = CARRY((\contador|count\(18) & !\contador|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(18),
	datad => VCC,
	cin => \contador|Add0~35\,
	combout => \contador|Add0~36_combout\,
	cout => \contador|Add0~37\);

-- Location: LCCOMB_X31_Y25_N14
\contador|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~38_combout\ = (\contador|count\(19) & (!\contador|Add0~37\)) # (!\contador|count\(19) & ((\contador|Add0~37\) # (GND)))
-- \contador|Add0~39\ = CARRY((!\contador|Add0~37\) # (!\contador|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(19),
	datad => VCC,
	cin => \contador|Add0~37\,
	combout => \contador|Add0~38_combout\,
	cout => \contador|Add0~39\);

-- Location: LCCOMB_X31_Y25_N16
\contador|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~40_combout\ = (\contador|count\(20) & (\contador|Add0~39\ $ (GND))) # (!\contador|count\(20) & (!\contador|Add0~39\ & VCC))
-- \contador|Add0~41\ = CARRY((\contador|count\(20) & !\contador|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(20),
	datad => VCC,
	cin => \contador|Add0~39\,
	combout => \contador|Add0~40_combout\,
	cout => \contador|Add0~41\);

-- Location: LCCOMB_X30_Y25_N26
\contador|count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~12_combout\ = (\contador|Add0~40_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|Add0~40_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~12_combout\);

-- Location: LCFF_X30_Y25_N27
\contador|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~12_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(20));

-- Location: LCCOMB_X31_Y25_N18
\contador|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~42_combout\ = (\contador|count\(21) & (!\contador|Add0~41\)) # (!\contador|count\(21) & ((\contador|Add0~41\) # (GND)))
-- \contador|Add0~43\ = CARRY((!\contador|Add0~41\) # (!\contador|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(21),
	datad => VCC,
	cin => \contador|Add0~41\,
	combout => \contador|Add0~42_combout\,
	cout => \contador|Add0~43\);

-- Location: LCCOMB_X31_Y25_N20
\contador|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~44_combout\ = (\contador|count\(22) & (\contador|Add0~43\ $ (GND))) # (!\contador|count\(22) & (!\contador|Add0~43\ & VCC))
-- \contador|Add0~45\ = CARRY((\contador|count\(22) & !\contador|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(22),
	datad => VCC,
	cin => \contador|Add0~43\,
	combout => \contador|Add0~44_combout\,
	cout => \contador|Add0~45\);

-- Location: LCCOMB_X30_Y25_N18
\contador|count~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~10_combout\ = (\contador|Add0~44_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|Add0~44_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~10_combout\);

-- Location: LCFF_X30_Y25_N19
\contador|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~10_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(22));

-- Location: LCCOMB_X31_Y25_N22
\contador|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~46_combout\ = (\contador|count\(23) & (!\contador|Add0~45\)) # (!\contador|count\(23) & ((\contador|Add0~45\) # (GND)))
-- \contador|Add0~47\ = CARRY((!\contador|Add0~45\) # (!\contador|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|count\(23),
	datad => VCC,
	cin => \contador|Add0~45\,
	combout => \contador|Add0~46_combout\,
	cout => \contador|Add0~47\);

-- Location: LCCOMB_X31_Y25_N24
\contador|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~48_combout\ = \contador|Add0~47\ $ (!\contador|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \contador|count\(24),
	cin => \contador|Add0~47\,
	combout => \contador|Add0~48_combout\);

-- Location: LCCOMB_X30_Y25_N0
\contador|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~0_combout\ = (!\contador|Equal0~5_combout\) # (!\contador|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|Add0~48_combout\,
	datad => \contador|Equal0~5_combout\,
	combout => \contador|count~0_combout\);

-- Location: LCCOMB_X31_Y26_N0
\contador|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~2_combout\ = (\contador|Add0~22_combout\ & (((\contador|count~0_combout\) # (!\contador|Equal0~6_combout\)) # (!\contador|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~4_combout\,
	datab => \contador|Add0~22_combout\,
	datac => \contador|Equal0~6_combout\,
	datad => \contador|count~0_combout\,
	combout => \contador|count~2_combout\);

-- Location: LCFF_X31_Y26_N1
\contador|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~2_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(11));

-- Location: LCCOMB_X31_Y25_N2
\contador|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~26_combout\ = (\contador|count\(13) & (!\contador|Add0~25\)) # (!\contador|count\(13) & ((\contador|Add0~25\) # (GND)))
-- \contador|Add0~27\ = CARRY((!\contador|Add0~25\) # (!\contador|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(13),
	datad => VCC,
	cin => \contador|Add0~25\,
	combout => \contador|Add0~26_combout\,
	cout => \contador|Add0~27\);

-- Location: LCCOMB_X30_Y25_N28
\contador|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~4_combout\ = (\contador|Add0~26_combout\ & (((\contador|count~0_combout\) # (!\contador|Equal0~4_combout\)) # (!\contador|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~6_combout\,
	datab => \contador|Add0~26_combout\,
	datac => \contador|Equal0~4_combout\,
	datad => \contador|count~0_combout\,
	combout => \contador|count~4_combout\);

-- Location: LCFF_X30_Y25_N29
\contador|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~4_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(13));

-- Location: LCCOMB_X31_Y25_N4
\contador|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~28_combout\ = (\contador|count\(14) & (\contador|Add0~27\ $ (GND))) # (!\contador|count\(14) & (!\contador|Add0~27\ & VCC))
-- \contador|Add0~29\ = CARRY((\contador|count\(14) & !\contador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(14),
	datad => VCC,
	cin => \contador|Add0~27\,
	combout => \contador|Add0~28_combout\,
	cout => \contador|Add0~29\);

-- Location: LCCOMB_X31_Y25_N6
\contador|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~30_combout\ = (\contador|count\(15) & (!\contador|Add0~29\)) # (!\contador|count\(15) & ((\contador|Add0~29\) # (GND)))
-- \contador|Add0~31\ = CARRY((!\contador|Add0~29\) # (!\contador|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(15),
	datad => VCC,
	cin => \contador|Add0~29\,
	combout => \contador|Add0~30_combout\,
	cout => \contador|Add0~31\);

-- Location: LCFF_X31_Y25_N7
\contador|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|Add0~30_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(15));

-- Location: LCCOMB_X31_Y25_N28
\contador|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~5_combout\ = (!\contador|Add0~34_combout\ & (\contador|Add0~32_combout\ & (\contador|Add0~38_combout\ & \contador|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~34_combout\,
	datab => \contador|Add0~32_combout\,
	datac => \contador|Add0~38_combout\,
	datad => \contador|Add0~36_combout\,
	combout => \contador|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y25_N6
\contador|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~7_combout\ = (\contador|Add0~48_combout\ & (\contador|Equal0~5_combout\ & (\contador|Equal0~4_combout\ & \contador|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~48_combout\,
	datab => \contador|Equal0~5_combout\,
	datac => \contador|Equal0~4_combout\,
	datad => \contador|Equal0~6_combout\,
	combout => \contador|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y25_N24
\contador|count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~11_combout\ = (\contador|Add0~42_combout\ & !\contador|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|Add0~42_combout\,
	datad => \contador|Equal0~7_combout\,
	combout => \contador|count~11_combout\);

-- Location: LCFF_X30_Y25_N25
\contador|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~11_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(21));

-- Location: LCCOMB_X31_Y25_N30
\contador|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~6_combout\ = (\contador|Add0~40_combout\ & (\contador|Add0~42_combout\ & (\contador|Add0~44_combout\ & !\contador|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~40_combout\,
	datab => \contador|Add0~42_combout\,
	datac => \contador|Add0~44_combout\,
	datad => \contador|Add0~46_combout\,
	combout => \contador|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y26_N20
\contador|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add0~12_combout\ = (\contador|count\(6) & (\contador|Add0~11\ $ (GND))) # (!\contador|count\(6) & (!\contador|Add0~11\ & VCC))
-- \contador|Add0~13\ = CARRY((\contador|count\(6) & !\contador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|count\(6),
	datad => VCC,
	cin => \contador|Add0~11\,
	combout => \contador|Add0~12_combout\,
	cout => \contador|Add0~13\);

-- Location: LCCOMB_X31_Y26_N4
\contador|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|count~1_combout\ = (\contador|Add0~12_combout\ & (((\contador|count~0_combout\) # (!\contador|Equal0~6_combout\)) # (!\contador|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~4_combout\,
	datab => \contador|Equal0~6_combout\,
	datac => \contador|Add0~12_combout\,
	datad => \contador|count~0_combout\,
	combout => \contador|count~1_combout\);

-- Location: LCFF_X31_Y26_N5
\contador|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|count~1_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|count\(6));

-- Location: LCCOMB_X31_Y26_N6
\contador|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~1_combout\ = (\contador|Add0~12_combout\ & (!\contador|Add0~8_combout\ & (!\contador|Add0~10_combout\ & !\contador|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~12_combout\,
	datab => \contador|Add0~8_combout\,
	datac => \contador|Add0~10_combout\,
	datad => \contador|Add0~14_combout\,
	combout => \contador|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y25_N26
\contador|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~3_combout\ = (\contador|Add0~24_combout\ & (\contador|Add0~26_combout\ & (\contador|Add0~28_combout\ & !\contador|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~24_combout\,
	datab => \contador|Add0~26_combout\,
	datac => \contador|Add0~28_combout\,
	datad => \contador|Add0~30_combout\,
	combout => \contador|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y26_N2
\contador|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~2_combout\ = (!\contador|Add0~16_combout\ & (!\contador|Add0~18_combout\ & (!\contador|Add0~20_combout\ & \contador|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~16_combout\,
	datab => \contador|Add0~18_combout\,
	datac => \contador|Add0~20_combout\,
	datad => \contador|Add0~22_combout\,
	combout => \contador|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y25_N4
\contador|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Equal0~4_combout\ = (\contador|Equal0~0_combout\ & (\contador|Equal0~1_combout\ & (\contador|Equal0~3_combout\ & \contador|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~0_combout\,
	datab => \contador|Equal0~1_combout\,
	datac => \contador|Equal0~3_combout\,
	datad => \contador|Equal0~2_combout\,
	combout => \contador|Equal0~4_combout\);

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

-- Location: LCFF_X32_Y25_N25
\contador|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|tmp~3_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(0));

-- Location: LCCOMB_X32_Y25_N0
\contador|tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~2_combout\ = ((!\contador|Equal0~6_combout\) # (!\contador|Equal0~5_combout\)) # (!\contador|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Add0~48_combout\,
	datab => \contador|Equal0~5_combout\,
	datad => \contador|Equal0~6_combout\,
	combout => \contador|tmp~2_combout\);

-- Location: LCCOMB_X32_Y25_N24
\contador|tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~3_combout\ = \contador|tmp\(0) $ (((\contador|Equal0~4_combout\ & !\contador|tmp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|Equal0~4_combout\,
	datac => \contador|tmp\(0),
	datad => \contador|tmp~2_combout\,
	combout => \contador|tmp~3_combout\);

-- Location: LCFF_X32_Y25_N1
\contador|LEDG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	sdata => \contador|tmp~3_combout\,
	sload => VCC,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|LEDG\(0));

-- Location: LCCOMB_X32_Y25_N26
\contador|tmp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~4_combout\ = ((!\contador|Equal0~5_combout\) # (!\contador|Add0~48_combout\)) # (!\contador|tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(0),
	datab => \contador|Add0~48_combout\,
	datad => \contador|Equal0~5_combout\,
	combout => \contador|tmp~4_combout\);

-- Location: LCCOMB_X32_Y25_N14
\contador|tmp~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~5_combout\ = \contador|tmp\(1) $ (((\contador|Equal0~6_combout\ & (!\contador|tmp~4_combout\ & \contador|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~6_combout\,
	datab => \contador|tmp~4_combout\,
	datac => \contador|tmp\(1),
	datad => \contador|Equal0~4_combout\,
	combout => \contador|tmp~5_combout\);

-- Location: LCFF_X32_Y25_N15
\contador|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|tmp~5_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(1));

-- Location: LCCOMB_X32_Y25_N18
\contador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|Add1~0_combout\ = (\contador|tmp\(0) & \contador|tmp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|tmp\(0),
	datad => \contador|tmp\(1),
	combout => \contador|Add1~0_combout\);

-- Location: LCFF_X30_Y25_N21
\contador|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|tmp~7_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(3));

-- Location: LCCOMB_X30_Y25_N20
\contador|tmp~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~7_combout\ = \contador|tmp\(3) $ (((\contador|tmp\(2) & (\contador|Add1~0_combout\ & \contador|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(2),
	datab => \contador|Add1~0_combout\,
	datac => \contador|tmp\(3),
	datad => \contador|Equal0~7_combout\,
	combout => \contador|tmp~7_combout\);

-- Location: LCFF_X30_Y25_N1
\contador|LEDG[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	sdata => \contador|tmp~7_combout\,
	sload => VCC,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|LEDG\(3));

-- Location: LCCOMB_X32_Y25_N16
\contador|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp[2]~feeder_combout\ = \contador|tmp~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador|tmp~6_combout\,
	combout => \contador|tmp[2]~feeder_combout\);

-- Location: LCFF_X32_Y25_N17
\contador|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|tmp[2]~feeder_combout\,
	aclr => \ALT_INV_KEY[1]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|tmp\(2));

-- Location: LCCOMB_X32_Y25_N12
\contador|tmp~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~8_combout\ = (((!\contador|Equal0~5_combout\) # (!\contador|tmp\(0))) # (!\contador|Add0~48_combout\)) # (!\contador|tmp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|tmp\(1),
	datab => \contador|Add0~48_combout\,
	datac => \contador|tmp\(0),
	datad => \contador|Equal0~5_combout\,
	combout => \contador|tmp~8_combout\);

-- Location: LCCOMB_X32_Y25_N28
\contador|tmp~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador|tmp~6_combout\ = \contador|tmp\(2) $ (((\contador|Equal0~6_combout\ & (\contador|Equal0~4_combout\ & !\contador|tmp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|Equal0~6_combout\,
	datab => \contador|tmp\(2),
	datac => \contador|Equal0~4_combout\,
	datad => \contador|tmp~8_combout\,
	combout => \contador|tmp~6_combout\);

-- Location: LCFF_X32_Y25_N29
\contador|LEDG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	datain => \contador|tmp~6_combout\,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|LEDG\(2));

-- Location: LCFF_X32_Y25_N27
\contador|LEDG[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~clkctrl_outclk\,
	sdata => \contador|tmp~5_combout\,
	sload => VCC,
	ena => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador|LEDG\(1));

-- Location: LCCOMB_X32_Y25_N30
\segmentos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux6~0_combout\ = (\contador|LEDG\(3) & (\contador|LEDG\(0) & (\contador|LEDG\(2) $ (\contador|LEDG\(1))))) # (!\contador|LEDG\(3) & (!\contador|LEDG\(1) & (\contador|LEDG\(0) $ (\contador|LEDG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(0),
	datab => \contador|LEDG\(3),
	datac => \contador|LEDG\(2),
	datad => \contador|LEDG\(1),
	combout => \segmentos|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y25_N10
\segmentos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux5~0_combout\ = (\contador|LEDG\(1) & ((\contador|LEDG\(0) & ((\contador|LEDG\(3)))) # (!\contador|LEDG\(0) & (\contador|LEDG\(2))))) # (!\contador|LEDG\(1) & (\contador|LEDG\(2) & (\contador|LEDG\(0) $ (\contador|LEDG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(1),
	datab => \contador|LEDG\(2),
	datac => \contador|LEDG\(0),
	datad => \contador|LEDG\(3),
	combout => \segmentos|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y25_N8
\segmentos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux4~0_combout\ = (\contador|LEDG\(3) & (\contador|LEDG\(2) & ((\contador|LEDG\(1)) # (!\contador|LEDG\(0))))) # (!\contador|LEDG\(3) & (!\contador|LEDG\(0) & (!\contador|LEDG\(2) & \contador|LEDG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(0),
	datab => \contador|LEDG\(3),
	datac => \contador|LEDG\(2),
	datad => \contador|LEDG\(1),
	combout => \segmentos|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y25_N10
\segmentos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux3~0_combout\ = (\contador|LEDG\(1) & (\contador|LEDG\(0) & ((\contador|LEDG\(2))))) # (!\contador|LEDG\(1) & (!\contador|LEDG\(3) & (\contador|LEDG\(0) $ (\contador|LEDG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(0),
	datab => \contador|LEDG\(3),
	datac => \contador|LEDG\(2),
	datad => \contador|LEDG\(1),
	combout => \segmentos|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y25_N12
\segmentos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux2~0_combout\ = (\contador|LEDG\(1) & (((\contador|LEDG\(0) & !\contador|LEDG\(3))))) # (!\contador|LEDG\(1) & ((\contador|LEDG\(2) & ((!\contador|LEDG\(3)))) # (!\contador|LEDG\(2) & (\contador|LEDG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(1),
	datab => \contador|LEDG\(2),
	datac => \contador|LEDG\(0),
	datad => \contador|LEDG\(3),
	combout => \segmentos|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y25_N20
\segmentos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux1~0_combout\ = (\contador|LEDG\(0) & (\contador|LEDG\(3) $ (((\contador|LEDG\(1)) # (!\contador|LEDG\(2)))))) # (!\contador|LEDG\(0) & (((!\contador|LEDG\(2) & \contador|LEDG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(0),
	datab => \contador|LEDG\(3),
	datac => \contador|LEDG\(2),
	datad => \contador|LEDG\(1),
	combout => \segmentos|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y25_N22
\segmentos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segmentos|Mux0~0_combout\ = (\contador|LEDG\(0) & ((\contador|LEDG\(3)) # (\contador|LEDG\(2) $ (\contador|LEDG\(1))))) # (!\contador|LEDG\(0) & ((\contador|LEDG\(1)) # (\contador|LEDG\(3) $ (\contador|LEDG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|LEDG\(0),
	datab => \contador|LEDG\(3),
	datac => \contador|LEDG\(2),
	datad => \contador|LEDG\(1),
	combout => \segmentos|Mux0~0_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(0));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


