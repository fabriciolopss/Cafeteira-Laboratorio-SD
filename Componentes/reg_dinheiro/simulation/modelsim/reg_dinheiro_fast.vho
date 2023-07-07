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

-- DATE "07/06/2023 20:41:45"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg_dinheiro IS
    PORT (
	clk : IN std_logic;
	reset_reg : IN std_logic;
	enable : IN std_logic;
	dinheiro_guardado_reg : IN std_logic_vector(5 DOWNTO 0);
	dinheiro_registrado_reg : OUT std_logic_vector(5 DOWNTO 0)
	);
END reg_dinheiro;

-- Design Ports Information
-- dinheiro_registrado_reg[0]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinheiro_registrado_reg[1]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinheiro_registrado_reg[2]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinheiro_registrado_reg[3]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinheiro_registrado_reg[4]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinheiro_registrado_reg[5]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinheiro_guardado_reg[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_reg	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinheiro_guardado_reg[1]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinheiro_guardado_reg[2]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinheiro_guardado_reg[3]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinheiro_guardado_reg[4]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinheiro_guardado_reg[5]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF reg_dinheiro IS
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
SIGNAL ww_reset_reg : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_dinheiro_guardado_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_dinheiro_registrado_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dinheiro_registrado_reg[0]~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \dinheiro_registrado_reg[0]~reg0feeder_combout\ : std_logic;
SIGNAL \reset_reg~combout\ : std_logic;
SIGNAL \reset_reg~clkctrl_outclk\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[0]~1_combout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[0]~reg0_regout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[1]~reg0_regout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[2]~reg0_regout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[3]~reg0feeder_combout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[3]~reg0_regout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[4]~reg0_regout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[5]~reg0feeder_combout\ : std_logic;
SIGNAL \dinheiro_registrado_reg[5]~reg0_regout\ : std_logic;
SIGNAL \dinheiro_guardado_reg~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_reg <= reset_reg;
ww_enable <= enable;
ww_dinheiro_guardado_reg <= dinheiro_guardado_reg;
dinheiro_registrado_reg <= ww_dinheiro_registrado_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_reg~combout\);

-- Location: LCCOMB_X64_Y22_N12
\dinheiro_registrado_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[0]~0_combout\ = (\dinheiro_guardado_reg~combout\(3)) # ((\dinheiro_guardado_reg~combout\(0)) # ((\dinheiro_guardado_reg~combout\(2)) # (\dinheiro_guardado_reg~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinheiro_guardado_reg~combout\(3),
	datab => \dinheiro_guardado_reg~combout\(0),
	datac => \dinheiro_guardado_reg~combout\(2),
	datad => \dinheiro_guardado_reg~combout\(1),
	combout => \dinheiro_registrado_reg[0]~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinheiro_guardado_reg[0]~I\ : cycloneii_io
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
	padio => ww_dinheiro_guardado_reg(0),
	combout => \dinheiro_guardado_reg~combout\(0));

-- Location: LCCOMB_X64_Y22_N0
\dinheiro_registrado_reg[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[0]~reg0feeder_combout\ = \dinheiro_guardado_reg~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dinheiro_guardado_reg~combout\(0),
	combout => \dinheiro_registrado_reg[0]~reg0feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_reg~I\ : cycloneii_io
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
	padio => ww_reset_reg,
	combout => \reset_reg~combout\);

-- Location: CLKCTRL_G1
\reset_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_reg~clkctrl_outclk\);

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinheiro_guardado_reg[4]~I\ : cycloneii_io
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
	padio => ww_dinheiro_guardado_reg(4),
	combout => \dinheiro_guardado_reg~combout\(4));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinheiro_guardado_reg[5]~I\ : cycloneii_io
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
	padio => ww_dinheiro_guardado_reg(5),
	combout => \dinheiro_guardado_reg~combout\(5));

-- Location: LCCOMB_X64_Y22_N6
\dinheiro_registrado_reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[0]~1_combout\ = (\enable~combout\ & ((\dinheiro_registrado_reg[0]~0_combout\) # ((\dinheiro_guardado_reg~combout\(4)) # (\dinheiro_guardado_reg~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinheiro_registrado_reg[0]~0_combout\,
	datab => \dinheiro_guardado_reg~combout\(4),
	datac => \enable~combout\,
	datad => \dinheiro_guardado_reg~combout\(5),
	combout => \dinheiro_registrado_reg[0]~1_combout\);

-- Location: LCFF_X64_Y22_N1
\dinheiro_registrado_reg[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dinheiro_registrado_reg[0]~reg0feeder_combout\,
	aclr => \reset_reg~clkctrl_outclk\,
	ena => \dinheiro_registrado_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dinheiro_registrado_reg[0]~reg0_regout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinheiro_guardado_reg[1]~I\ : cycloneii_io
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
	padio => ww_dinheiro_guardado_reg(1),
	combout => \dinheiro_guardado_reg~combout\(1));

-- Location: LCCOMB_X64_Y22_N2
\dinheiro_registrado_reg[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[1]~reg0feeder_combout\ = \dinheiro_guardado_reg~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dinheiro_guardado_reg~combout\(1),
	combout => \dinheiro_registrado_reg[1]~reg0feeder_combout\);

-- Location: LCFF_X64_Y22_N3
\dinheiro_registrado_reg[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dinheiro_registrado_reg[1]~reg0feeder_combout\,
	aclr => \reset_reg~clkctrl_outclk\,
	ena => \dinheiro_registrado_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dinheiro_registrado_reg[1]~reg0_regout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinheiro_guardado_reg[2]~I\ : cycloneii_io
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
	padio => ww_dinheiro_guardado_reg(2),
	combout => \dinheiro_guardado_reg~combout\(2));

-- Location: LCCOMB_X64_Y22_N20
\dinheiro_registrado_reg[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[2]~reg0feeder_combout\ = \dinheiro_guardado_reg~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dinheiro_guardado_reg~combout\(2),
	combout => \dinheiro_registrado_reg[2]~reg0feeder_combout\);

-- Location: LCFF_X64_Y22_N21
\dinheiro_registrado_reg[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dinheiro_registrado_reg[2]~reg0feeder_combout\,
	aclr => \reset_reg~clkctrl_outclk\,
	ena => \dinheiro_registrado_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dinheiro_registrado_reg[2]~reg0_regout\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinheiro_guardado_reg[3]~I\ : cycloneii_io
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
	padio => ww_dinheiro_guardado_reg(3),
	combout => \dinheiro_guardado_reg~combout\(3));

-- Location: LCCOMB_X64_Y22_N22
\dinheiro_registrado_reg[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[3]~reg0feeder_combout\ = \dinheiro_guardado_reg~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dinheiro_guardado_reg~combout\(3),
	combout => \dinheiro_registrado_reg[3]~reg0feeder_combout\);

-- Location: LCFF_X64_Y22_N23
\dinheiro_registrado_reg[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dinheiro_registrado_reg[3]~reg0feeder_combout\,
	aclr => \reset_reg~clkctrl_outclk\,
	ena => \dinheiro_registrado_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dinheiro_registrado_reg[3]~reg0_regout\);

-- Location: LCFF_X64_Y22_N9
\dinheiro_registrado_reg[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dinheiro_guardado_reg~combout\(4),
	aclr => \reset_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \dinheiro_registrado_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dinheiro_registrado_reg[4]~reg0_regout\);

-- Location: LCCOMB_X64_Y22_N18
\dinheiro_registrado_reg[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dinheiro_registrado_reg[5]~reg0feeder_combout\ = \dinheiro_guardado_reg~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dinheiro_guardado_reg~combout\(5),
	combout => \dinheiro_registrado_reg[5]~reg0feeder_combout\);

-- Location: LCFF_X64_Y22_N19
\dinheiro_registrado_reg[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dinheiro_registrado_reg[5]~reg0feeder_combout\,
	aclr => \reset_reg~clkctrl_outclk\,
	ena => \dinheiro_registrado_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dinheiro_registrado_reg[5]~reg0_regout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dinheiro_registrado_reg[0]~I\ : cycloneii_io
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
	datain => \dinheiro_registrado_reg[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dinheiro_registrado_reg(0));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dinheiro_registrado_reg[1]~I\ : cycloneii_io
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
	datain => \dinheiro_registrado_reg[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dinheiro_registrado_reg(1));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dinheiro_registrado_reg[2]~I\ : cycloneii_io
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
	datain => \dinheiro_registrado_reg[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dinheiro_registrado_reg(2));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dinheiro_registrado_reg[3]~I\ : cycloneii_io
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
	datain => \dinheiro_registrado_reg[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dinheiro_registrado_reg(3));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dinheiro_registrado_reg[4]~I\ : cycloneii_io
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
	datain => \dinheiro_registrado_reg[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dinheiro_registrado_reg(4));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dinheiro_registrado_reg[5]~I\ : cycloneii_io
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
	datain => \dinheiro_registrado_reg[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dinheiro_registrado_reg(5));
END structure;


