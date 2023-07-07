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

-- DATE "07/05/2023 17:33:00"

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

ENTITY 	MaquinaDeCafe IS
    PORT (
	reset : IN std_logic;
	entrada : IN std_logic_vector(5 DOWNTO 0);
	bebida : IN std_logic_vector(2 DOWNTO 0);
	tamanho : IN std_logic_vector(1 DOWNTO 0);
	temperatura : IN std_logic_vector(1 DOWNTO 0);
	acucar : IN std_logic;
	seletor_bebida : IN std_logic;
	seletor_tamanho : IN std_logic;
	seletor_temperatura : IN std_logic;
	bebida_resultado : OUT std_logic_vector(2 DOWNTO 0);
	tamanho_resultado : OUT std_logic_vector(1 DOWNTO 0);
	acucar_resultado : OUT std_logic;
	temperatura_resultado : OUT std_logic_vector(1 DOWNTO 0);
	output_troco : OUT std_logic_vector(5 DOWNTO 0)
	);
END MaquinaDeCafe;

-- Design Ports Information
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bebida_resultado[0]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bebida_resultado[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bebida_resultado[2]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tamanho_resultado[0]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tamanho_resultado[1]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- acucar_resultado	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- temperatura_resultado[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- temperatura_resultado[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[0]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[1]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[2]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[3]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[4]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[5]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bebida[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seletor_bebida	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bebida[1]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bebida[2]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tamanho[0]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seletor_tamanho	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tamanho[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- acucar	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temperatura[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- seletor_temperatura	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temperatura[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaDeCafe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrada : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_bebida : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tamanho : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_temperatura : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_acucar : std_logic;
SIGNAL ww_seletor_bebida : std_logic;
SIGNAL ww_seletor_tamanho : std_logic;
SIGNAL ww_seletor_temperatura : std_logic;
SIGNAL ww_bebida_resultado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_tamanho_resultado : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_acucar_resultado : std_logic;
SIGNAL ww_temperatura_resultado : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_troco : std_logic_vector(5 DOWNTO 0);
SIGNAL \decodificador|Equal13~1_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[0]~5_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[0]~6_combout\ : std_logic;
SIGNAL \decodificador|comb~0_combout\ : std_logic;
SIGNAL \decodificador|comb~1_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[1]~8_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[1]~9_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[1]~10_combout\ : std_logic;
SIGNAL \decodificador|comb~3_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[2]~11_combout\ : std_logic;
SIGNAL \decodificador|comb~5_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[1]~12_combout\ : std_logic;
SIGNAL \seletor_bebida~combout\ : std_logic;
SIGNAL \selet_bebida|saida[0]~0_combout\ : std_logic;
SIGNAL \selet_bebida|saida[1]~1_combout\ : std_logic;
SIGNAL \selet_bebida|saida[2]~2_combout\ : std_logic;
SIGNAL \seletor_tamanho~combout\ : std_logic;
SIGNAL \selet_bebida|saida[0]~3_combout\ : std_logic;
SIGNAL \selet_tamanho|saida[1]~0_combout\ : std_logic;
SIGNAL \acucar~combout\ : std_logic;
SIGNAL \seletor_temperatura~combout\ : std_logic;
SIGNAL \selet_temperatura|saida[0]~0_combout\ : std_logic;
SIGNAL \selet_temperatura|saida[1]~1_combout\ : std_logic;
SIGNAL \decodificador|Equal13~0_combout\ : std_logic;
SIGNAL \selet_bebida|saida[0]~4_combout\ : std_logic;
SIGNAL \selet_bebida|saida[0]~5_combout\ : std_logic;
SIGNAL \selet_bebida|saida[1]~6_combout\ : std_logic;
SIGNAL \selet_bebida|saida[1]~7_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[0]~7_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[2]~2_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[2]~3_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida[2]~4_combout\ : std_logic;
SIGNAL \decodificador|comb~2_combout\ : std_logic;
SIGNAL \somador|LessThan0~0_combout\ : std_logic;
SIGNAL \somador|dinheiro_guardado[0]~0_combout\ : std_logic;
SIGNAL \sub_troco|valor_troco[0]~0_combout\ : std_logic;
SIGNAL \decodificador|comb~4_combout\ : std_logic;
SIGNAL \somador|dinheiro_guardado[1]~1_combout\ : std_logic;
SIGNAL \sub_troco|valor_troco[0]~1\ : std_logic;
SIGNAL \sub_troco|valor_troco[1]~2_combout\ : std_logic;
SIGNAL \decodificador|comb~6_combout\ : std_logic;
SIGNAL \somador|dinheiro_guardado[2]~2_combout\ : std_logic;
SIGNAL \sub_troco|valor_troco[1]~3\ : std_logic;
SIGNAL \sub_troco|valor_troco[2]~4_combout\ : std_logic;
SIGNAL \somador|LessThan0~1_combout\ : std_logic;
SIGNAL \sub_troco|valor_troco[2]~5\ : std_logic;
SIGNAL \sub_troco|valor_troco[3]~6_combout\ : std_logic;
SIGNAL \sub_troco|valor_troco[3]~7\ : std_logic;
SIGNAL \sub_troco|valor_troco[4]~8_combout\ : std_logic;
SIGNAL \sub_troco|valor_troco[4]~9\ : std_logic;
SIGNAL \sub_troco|valor_troco[5]~10_combout\ : std_logic;
SIGNAL \decodificador|valor_bebida\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \temperatura~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tamanho~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \entrada~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \bebida~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_entrada <= entrada;
ww_bebida <= bebida;
ww_tamanho <= tamanho;
ww_temperatura <= temperatura;
ww_acucar <= acucar;
ww_seletor_bebida <= seletor_bebida;
ww_seletor_tamanho <= seletor_tamanho;
ww_seletor_temperatura <= seletor_temperatura;
bebida_resultado <= ww_bebida_resultado;
tamanho_resultado <= ww_tamanho_resultado;
acucar_resultado <= ww_acucar_resultado;
temperatura_resultado <= ww_temperatura_resultado;
output_troco <= ww_output_troco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y21_N16
\decodificador|Equal13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|Equal13~1_combout\ = (\tamanho~combout\(0)) # ((\decodificador|Equal13~0_combout\) # ((!\tamanho~combout\(1)) # (!\seletor_tamanho~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(0),
	datab => \decodificador|Equal13~0_combout\,
	datac => \seletor_tamanho~combout\,
	datad => \tamanho~combout\(1),
	combout => \decodificador|Equal13~1_combout\);

-- Location: LCCOMB_X64_Y21_N10
\decodificador|valor_bebida[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[0]~5_combout\ = (\bebida~combout\(0)) # ((\decodificador|Equal13~1_combout\ & (\selet_tamanho|saida[1]~0_combout\ & \bebida~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|Equal13~1_combout\,
	datab => \selet_tamanho|saida[1]~0_combout\,
	datac => \bebida~combout\(2),
	datad => \bebida~combout\(0),
	combout => \decodificador|valor_bebida[0]~5_combout\);

-- Location: LCCOMB_X64_Y21_N20
\decodificador|valor_bebida[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[0]~6_combout\ = (\selet_bebida|saida[0]~5_combout\ & (((\bebida~combout\(1) & !\bebida~combout\(2))) # (!\seletor_bebida~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bebida~combout\(1),
	datab => \selet_bebida|saida[0]~5_combout\,
	datac => \bebida~combout\(2),
	datad => \seletor_bebida~combout\,
	combout => \decodificador|valor_bebida[0]~6_combout\);

-- Location: LCCOMB_X64_Y21_N6
\decodificador|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~0_combout\ = (\decodificador|valor_bebida[2]~4_combout\ & (!\decodificador|valor_bebida[0]~6_combout\ & ((!\selet_bebida|saida[1]~1_combout\) # (!\decodificador|valor_bebida[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[0]~5_combout\,
	datab => \decodificador|valor_bebida[2]~4_combout\,
	datac => \decodificador|valor_bebida[0]~6_combout\,
	datad => \selet_bebida|saida[1]~1_combout\,
	combout => \decodificador|comb~0_combout\);

-- Location: LCCOMB_X64_Y21_N24
\decodificador|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~1_combout\ = (\decodificador|comb~0_combout\ & (((\bebida~combout\(1)) # (!\seletor_bebida~combout\)) # (!\selet_bebida|saida[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|comb~0_combout\,
	datab => \selet_bebida|saida[1]~7_combout\,
	datac => \bebida~combout\(1),
	datad => \seletor_bebida~combout\,
	combout => \decodificador|comb~1_combout\);

-- Location: LCCOMB_X64_Y20_N2
\decodificador|valor_bebida[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[1]~8_combout\ = (\bebida~combout\(0)) # ((\tamanho~combout\(1) & \seletor_tamanho~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(1),
	datab => \bebida~combout\(0),
	datad => \seletor_tamanho~combout\,
	combout => \decodificador|valor_bebida[1]~8_combout\);

-- Location: LCCOMB_X64_Y20_N12
\decodificador|valor_bebida[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[1]~9_combout\ = (\seletor_tamanho~combout\ & ((\bebida~combout\(0) & (\tamanho~combout\(1))) # (!\bebida~combout\(0) & ((\tamanho~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(1),
	datab => \bebida~combout\(0),
	datac => \tamanho~combout\(0),
	datad => \seletor_tamanho~combout\,
	combout => \decodificador|valor_bebida[1]~9_combout\);

-- Location: LCCOMB_X64_Y20_N30
\decodificador|valor_bebida[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[1]~10_combout\ = (\bebida~combout\(1) & ((\decodificador|valor_bebida[1]~8_combout\) # ((!\decodificador|valor_bebida[1]~9_combout\ & !\bebida~combout\(2))))) # (!\bebida~combout\(1) & 
-- ((\decodificador|valor_bebida[1]~9_combout\) # ((\bebida~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[1]~9_combout\,
	datab => \decodificador|valor_bebida[1]~8_combout\,
	datac => \bebida~combout\(2),
	datad => \bebida~combout\(1),
	combout => \decodificador|valor_bebida[1]~10_combout\);

-- Location: LCCOMB_X64_Y20_N24
\decodificador|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~3_combout\ = (!\decodificador|valor_bebida[1]~12_combout\ & \decodificador|valor_bebida[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[1]~12_combout\,
	datad => \decodificador|valor_bebida[2]~4_combout\,
	combout => \decodificador|comb~3_combout\);

-- Location: LCCOMB_X64_Y20_N20
\decodificador|valor_bebida[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[2]~11_combout\ = (\bebida~combout\(2)) # ((\bebida~combout\(1)) # ((\bebida~combout\(0) & \selet_tamanho|saida[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bebida~combout\(2),
	datab => \bebida~combout\(0),
	datac => \selet_tamanho|saida[1]~0_combout\,
	datad => \bebida~combout\(1),
	combout => \decodificador|valor_bebida[2]~11_combout\);

-- Location: LCCOMB_X64_Y20_N6
\decodificador|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~5_combout\ = (\decodificador|valor_bebida[2]~4_combout\ & (!\selet_bebida|saida[0]~3_combout\ & ((!\seletor_bebida~combout\) # (!\decodificador|valor_bebida[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[2]~11_combout\,
	datab => \decodificador|valor_bebida[2]~4_combout\,
	datac => \seletor_bebida~combout\,
	datad => \selet_bebida|saida[0]~3_combout\,
	combout => \decodificador|comb~5_combout\);

-- Location: LCCOMB_X64_Y20_N10
\decodificador|valor_bebida[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[1]~12_combout\ = (\seletor_bebida~combout\ & (((!\decodificador|valor_bebida[1]~10_combout\)))) # (!\seletor_bebida~combout\ & (((!\seletor_tamanho~combout\)) # (!\tamanho~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(0),
	datab => \decodificador|valor_bebida[1]~10_combout\,
	datac => \seletor_bebida~combout\,
	datad => \seletor_tamanho~combout\,
	combout => \decodificador|valor_bebida[1]~12_combout\);

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[0]~I\ : cycloneii_io
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
	padio => ww_entrada(0),
	combout => \entrada~combout\(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seletor_bebida~I\ : cycloneii_io
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
	padio => ww_seletor_bebida,
	combout => \seletor_bebida~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bebida[0]~I\ : cycloneii_io
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
	padio => ww_bebida(0),
	combout => \bebida~combout\(0));

-- Location: LCCOMB_X64_Y20_N16
\selet_bebida|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[0]~0_combout\ = (\seletor_bebida~combout\ & \bebida~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seletor_bebida~combout\,
	datad => \bebida~combout\(0),
	combout => \selet_bebida|saida[0]~0_combout\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bebida[1]~I\ : cycloneii_io
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
	padio => ww_bebida(1),
	combout => \bebida~combout\(1));

-- Location: LCCOMB_X64_Y21_N0
\selet_bebida|saida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[1]~1_combout\ = (\bebida~combout\(1) & \seletor_bebida~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bebida~combout\(1),
	datad => \seletor_bebida~combout\,
	combout => \selet_bebida|saida[1]~1_combout\);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bebida[2]~I\ : cycloneii_io
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
	padio => ww_bebida(2),
	combout => \bebida~combout\(2));

-- Location: LCCOMB_X64_Y21_N18
\selet_bebida|saida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[2]~2_combout\ = (\bebida~combout\(2) & \seletor_bebida~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bebida~combout\(2),
	datad => \seletor_bebida~combout\,
	combout => \selet_bebida|saida[2]~2_combout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tamanho[0]~I\ : cycloneii_io
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
	padio => ww_tamanho(0),
	combout => \tamanho~combout\(0));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seletor_tamanho~I\ : cycloneii_io
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
	padio => ww_seletor_tamanho,
	combout => \seletor_tamanho~combout\);

-- Location: LCCOMB_X64_Y20_N18
\selet_bebida|saida[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[0]~3_combout\ = (\tamanho~combout\(0) & \seletor_tamanho~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tamanho~combout\(0),
	datad => \seletor_tamanho~combout\,
	combout => \selet_bebida|saida[0]~3_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tamanho[1]~I\ : cycloneii_io
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
	padio => ww_tamanho(1),
	combout => \tamanho~combout\(1));

-- Location: LCCOMB_X64_Y21_N12
\selet_tamanho|saida[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_tamanho|saida[1]~0_combout\ = (\seletor_tamanho~combout\ & \tamanho~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seletor_tamanho~combout\,
	datad => \tamanho~combout\(1),
	combout => \selet_tamanho|saida[1]~0_combout\);

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\acucar~I\ : cycloneii_io
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
	padio => ww_acucar,
	combout => \acucar~combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\seletor_temperatura~I\ : cycloneii_io
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
	padio => ww_seletor_temperatura,
	combout => \seletor_temperatura~combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temperatura[0]~I\ : cycloneii_io
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
	padio => ww_temperatura(0),
	combout => \temperatura~combout\(0));

-- Location: LCCOMB_X34_Y35_N0
\selet_temperatura|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_temperatura|saida[0]~0_combout\ = (\seletor_temperatura~combout\ & \temperatura~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor_temperatura~combout\,
	datad => \temperatura~combout\(0),
	combout => \selet_temperatura|saida[0]~0_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temperatura[1]~I\ : cycloneii_io
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
	padio => ww_temperatura(1),
	combout => \temperatura~combout\(1));

-- Location: LCCOMB_X34_Y35_N2
\selet_temperatura|saida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_temperatura|saida[1]~1_combout\ = (\seletor_temperatura~combout\ & \temperatura~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor_temperatura~combout\,
	datac => \temperatura~combout\(1),
	combout => \selet_temperatura|saida[1]~1_combout\);

-- Location: LCCOMB_X64_Y21_N22
\decodificador|Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|Equal13~0_combout\ = ((\bebida~combout\(2)) # ((\bebida~combout\(1)) # (!\seletor_bebida~combout\))) # (!\bebida~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bebida~combout\(0),
	datab => \bebida~combout\(2),
	datac => \bebida~combout\(1),
	datad => \seletor_bebida~combout\,
	combout => \decodificador|Equal13~0_combout\);

-- Location: LCCOMB_X64_Y21_N26
\selet_bebida|saida[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[0]~4_combout\ = ((\tamanho~combout\(0) & ((\tamanho~combout\(1)))) # (!\tamanho~combout\(0) & ((\decodificador|Equal13~0_combout\) # (!\tamanho~combout\(1))))) # (!\seletor_tamanho~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(0),
	datab => \decodificador|Equal13~0_combout\,
	datac => \seletor_tamanho~combout\,
	datad => \tamanho~combout\(1),
	combout => \selet_bebida|saida[0]~4_combout\);

-- Location: LCCOMB_X64_Y21_N28
\selet_bebida|saida[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[0]~5_combout\ = (\seletor_tamanho~combout\ & ((\tamanho~combout\(0)) # (\tamanho~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(0),
	datac => \seletor_tamanho~combout\,
	datad => \tamanho~combout\(1),
	combout => \selet_bebida|saida[0]~5_combout\);

-- Location: LCCOMB_X64_Y21_N30
\selet_bebida|saida[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[1]~6_combout\ = (\bebida~combout\(0) & ((\selet_bebida|saida[0]~4_combout\) # ((\bebida~combout\(2))))) # (!\bebida~combout\(0) & (((!\bebida~combout\(2) & \selet_bebida|saida[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bebida~combout\(0),
	datab => \selet_bebida|saida[0]~4_combout\,
	datac => \bebida~combout\(2),
	datad => \selet_bebida|saida[0]~5_combout\,
	combout => \selet_bebida|saida[1]~6_combout\);

-- Location: LCCOMB_X64_Y21_N8
\selet_bebida|saida[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \selet_bebida|saida[1]~7_combout\ = (\bebida~combout\(2) & (\decodificador|Equal13~1_combout\ & ((\selet_bebida|saida[1]~6_combout\) # (\selet_tamanho|saida[1]~0_combout\)))) # (!\bebida~combout\(2) & (((\selet_bebida|saida[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|Equal13~1_combout\,
	datab => \selet_bebida|saida[1]~6_combout\,
	datac => \bebida~combout\(2),
	datad => \selet_tamanho|saida[1]~0_combout\,
	combout => \selet_bebida|saida[1]~7_combout\);

-- Location: LCCOMB_X64_Y21_N2
\decodificador|valor_bebida[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[0]~7_combout\ = (\decodificador|valor_bebida[0]~6_combout\) # ((\selet_bebida|saida[1]~7_combout\ & (!\bebida~combout\(1) & \seletor_bebida~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[0]~6_combout\,
	datab => \selet_bebida|saida[1]~7_combout\,
	datac => \bebida~combout\(1),
	datad => \seletor_bebida~combout\,
	combout => \decodificador|valor_bebida[0]~7_combout\);

-- Location: LCCOMB_X64_Y20_N28
\decodificador|valor_bebida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[2]~2_combout\ = (!\seletor_bebida~combout\ & (((!\tamanho~combout\(1)) # (!\seletor_tamanho~combout\)) # (!\tamanho~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tamanho~combout\(0),
	datab => \seletor_tamanho~combout\,
	datac => \seletor_bebida~combout\,
	datad => \tamanho~combout\(1),
	combout => \decodificador|valor_bebida[2]~2_combout\);

-- Location: LCCOMB_X64_Y20_N22
\decodificador|valor_bebida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[2]~3_combout\ = (((!\bebida~combout\(2) & !\tamanho~combout\(0))) # (!\tamanho~combout\(1))) # (!\seletor_tamanho~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bebida~combout\(2),
	datab => \seletor_tamanho~combout\,
	datac => \tamanho~combout\(0),
	datad => \tamanho~combout\(1),
	combout => \decodificador|valor_bebida[2]~3_combout\);

-- Location: LCCOMB_X64_Y20_N0
\decodificador|valor_bebida[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida[2]~4_combout\ = (\decodificador|valor_bebida[2]~2_combout\) # ((\decodificador|valor_bebida[2]~3_combout\ & ((!\bebida~combout\(1)) # (!\bebida~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bebida~combout\(0),
	datab => \decodificador|valor_bebida[2]~2_combout\,
	datac => \decodificador|valor_bebida[2]~3_combout\,
	datad => \bebida~combout\(1),
	combout => \decodificador|valor_bebida[2]~4_combout\);

-- Location: LCCOMB_X64_Y21_N4
\decodificador|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~2_combout\ = (\decodificador|valor_bebida[2]~4_combout\ & ((\decodificador|valor_bebida[0]~7_combout\) # ((\decodificador|valor_bebida[0]~5_combout\ & \selet_bebida|saida[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[0]~5_combout\,
	datab => \decodificador|valor_bebida[0]~7_combout\,
	datac => \decodificador|valor_bebida[2]~4_combout\,
	datad => \selet_bebida|saida[1]~1_combout\,
	combout => \decodificador|comb~2_combout\);

-- Location: LCCOMB_X64_Y21_N14
\decodificador|valor_bebida[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida\(0) = (!\decodificador|comb~1_combout\ & ((\decodificador|comb~2_combout\) # (\decodificador|valor_bebida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|comb~1_combout\,
	datab => \decodificador|comb~2_combout\,
	datac => \decodificador|valor_bebida\(0),
	combout => \decodificador|valor_bebida\(0));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[1]~I\ : cycloneii_io
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
	padio => ww_entrada(1),
	combout => \entrada~combout\(1));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[2]~I\ : cycloneii_io
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
	padio => ww_entrada(2),
	combout => \entrada~combout\(2));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[3]~I\ : cycloneii_io
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
	padio => ww_entrada(3),
	combout => \entrada~combout\(3));

-- Location: LCCOMB_X1_Y4_N0
\somador|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|LessThan0~0_combout\ = (\entrada~combout\(2)) # ((\entrada~combout\(3)) # ((\entrada~combout\(0) & \entrada~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(0),
	datab => \entrada~combout\(1),
	datac => \entrada~combout\(2),
	datad => \entrada~combout\(3),
	combout => \somador|LessThan0~0_combout\);

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[5]~I\ : cycloneii_io
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
	padio => ww_entrada(5),
	combout => \entrada~combout\(5));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[4]~I\ : cycloneii_io
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
	padio => ww_entrada(4),
	combout => \entrada~combout\(4));

-- Location: LCCOMB_X1_Y4_N2
\somador|dinheiro_guardado[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|dinheiro_guardado[0]~0_combout\ = (\entrada~combout\(0) & (((!\entrada~combout\(4)) # (!\entrada~combout\(5))) # (!\somador|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(0),
	datab => \somador|LessThan0~0_combout\,
	datac => \entrada~combout\(5),
	datad => \entrada~combout\(4),
	combout => \somador|dinheiro_guardado[0]~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\sub_troco|valor_troco[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_troco|valor_troco[0]~0_combout\ = (\decodificador|valor_bebida\(0) & (\somador|dinheiro_guardado[0]~0_combout\ $ (VCC))) # (!\decodificador|valor_bebida\(0) & ((\somador|dinheiro_guardado[0]~0_combout\) # (GND)))
-- \sub_troco|valor_troco[0]~1\ = CARRY((\somador|dinheiro_guardado[0]~0_combout\) # (!\decodificador|valor_bebida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida\(0),
	datab => \somador|dinheiro_guardado[0]~0_combout\,
	datad => VCC,
	combout => \sub_troco|valor_troco[0]~0_combout\,
	cout => \sub_troco|valor_troco[0]~1\);

-- Location: LCCOMB_X64_Y20_N26
\decodificador|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~4_combout\ = (\decodificador|valor_bebida[1]~12_combout\ & \decodificador|valor_bebida[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[1]~12_combout\,
	datad => \decodificador|valor_bebida[2]~4_combout\,
	combout => \decodificador|comb~4_combout\);

-- Location: LCCOMB_X64_Y20_N4
\decodificador|valor_bebida[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida\(1) = (!\decodificador|comb~3_combout\ & ((\decodificador|valor_bebida\(1)) # (\decodificador|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|comb~3_combout\,
	datac => \decodificador|valor_bebida\(1),
	datad => \decodificador|comb~4_combout\,
	combout => \decodificador|valor_bebida\(1));

-- Location: LCCOMB_X1_Y4_N4
\somador|dinheiro_guardado[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|dinheiro_guardado[1]~1_combout\ = (\entrada~combout\(1)) # ((\entrada~combout\(4) & (\entrada~combout\(5) & \somador|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(4),
	datab => \entrada~combout\(1),
	datac => \entrada~combout\(5),
	datad => \somador|LessThan0~0_combout\,
	combout => \somador|dinheiro_guardado[1]~1_combout\);

-- Location: LCCOMB_X1_Y4_N18
\sub_troco|valor_troco[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_troco|valor_troco[1]~2_combout\ = (\decodificador|valor_bebida\(1) & ((\somador|dinheiro_guardado[1]~1_combout\ & (!\sub_troco|valor_troco[0]~1\)) # (!\somador|dinheiro_guardado[1]~1_combout\ & ((\sub_troco|valor_troco[0]~1\) # (GND))))) # 
-- (!\decodificador|valor_bebida\(1) & ((\somador|dinheiro_guardado[1]~1_combout\ & (\sub_troco|valor_troco[0]~1\ & VCC)) # (!\somador|dinheiro_guardado[1]~1_combout\ & (!\sub_troco|valor_troco[0]~1\))))
-- \sub_troco|valor_troco[1]~3\ = CARRY((\decodificador|valor_bebida\(1) & ((!\sub_troco|valor_troco[0]~1\) # (!\somador|dinheiro_guardado[1]~1_combout\))) # (!\decodificador|valor_bebida\(1) & (!\somador|dinheiro_guardado[1]~1_combout\ & 
-- !\sub_troco|valor_troco[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida\(1),
	datab => \somador|dinheiro_guardado[1]~1_combout\,
	datad => VCC,
	cin => \sub_troco|valor_troco[0]~1\,
	combout => \sub_troco|valor_troco[1]~2_combout\,
	cout => \sub_troco|valor_troco[1]~3\);

-- Location: LCCOMB_X64_Y20_N8
\decodificador|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|comb~6_combout\ = (\decodificador|valor_bebida[2]~4_combout\ & ((\selet_bebida|saida[0]~3_combout\) # ((\decodificador|valor_bebida[2]~11_combout\ & \seletor_bebida~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida[2]~11_combout\,
	datab => \decodificador|valor_bebida[2]~4_combout\,
	datac => \seletor_bebida~combout\,
	datad => \selet_bebida|saida[0]~3_combout\,
	combout => \decodificador|comb~6_combout\);

-- Location: LCCOMB_X64_Y20_N14
\decodificador|valor_bebida[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodificador|valor_bebida\(2) = (!\decodificador|comb~5_combout\ & ((\decodificador|comb~6_combout\) # (\decodificador|valor_bebida\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|comb~5_combout\,
	datab => \decodificador|comb~6_combout\,
	datac => \decodificador|valor_bebida\(2),
	combout => \decodificador|valor_bebida\(2));

-- Location: LCCOMB_X1_Y4_N14
\somador|dinheiro_guardado[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|dinheiro_guardado[2]~2_combout\ = (\entrada~combout\(2) & (((!\somador|LessThan0~0_combout\) # (!\entrada~combout\(5))) # (!\entrada~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(4),
	datab => \entrada~combout\(5),
	datac => \entrada~combout\(2),
	datad => \somador|LessThan0~0_combout\,
	combout => \somador|dinheiro_guardado[2]~2_combout\);

-- Location: LCCOMB_X1_Y4_N20
\sub_troco|valor_troco[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_troco|valor_troco[2]~4_combout\ = ((\decodificador|valor_bebida\(2) $ (\somador|dinheiro_guardado[2]~2_combout\ $ (\sub_troco|valor_troco[1]~3\)))) # (GND)
-- \sub_troco|valor_troco[2]~5\ = CARRY((\decodificador|valor_bebida\(2) & (\somador|dinheiro_guardado[2]~2_combout\ & !\sub_troco|valor_troco[1]~3\)) # (!\decodificador|valor_bebida\(2) & ((\somador|dinheiro_guardado[2]~2_combout\) # 
-- (!\sub_troco|valor_troco[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \decodificador|valor_bebida\(2),
	datab => \somador|dinheiro_guardado[2]~2_combout\,
	datad => VCC,
	cin => \sub_troco|valor_troco[1]~3\,
	combout => \sub_troco|valor_troco[2]~4_combout\,
	cout => \sub_troco|valor_troco[2]~5\);

-- Location: LCCOMB_X1_Y4_N8
\somador|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|LessThan0~1_combout\ = (\entrada~combout\(4) & (\entrada~combout\(5) & \somador|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(4),
	datac => \entrada~combout\(5),
	datad => \somador|LessThan0~0_combout\,
	combout => \somador|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y4_N22
\sub_troco|valor_troco[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_troco|valor_troco[3]~6_combout\ = (\entrada~combout\(3) & ((\somador|LessThan0~1_combout\ & (!\sub_troco|valor_troco[2]~5\)) # (!\somador|LessThan0~1_combout\ & (\sub_troco|valor_troco[2]~5\ & VCC)))) # (!\entrada~combout\(3) & 
-- (((!\sub_troco|valor_troco[2]~5\))))
-- \sub_troco|valor_troco[3]~7\ = CARRY((!\sub_troco|valor_troco[2]~5\ & ((\somador|LessThan0~1_combout\) # (!\entrada~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(3),
	datab => \somador|LessThan0~1_combout\,
	datad => VCC,
	cin => \sub_troco|valor_troco[2]~5\,
	combout => \sub_troco|valor_troco[3]~6_combout\,
	cout => \sub_troco|valor_troco[3]~7\);

-- Location: LCCOMB_X1_Y4_N24
\sub_troco|valor_troco[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_troco|valor_troco[4]~8_combout\ = (\entrada~combout\(4) & ((GND) # (!\sub_troco|valor_troco[3]~7\))) # (!\entrada~combout\(4) & (\sub_troco|valor_troco[3]~7\ $ (GND)))
-- \sub_troco|valor_troco[4]~9\ = CARRY((\entrada~combout\(4)) # (!\sub_troco|valor_troco[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(4),
	datad => VCC,
	cin => \sub_troco|valor_troco[3]~7\,
	combout => \sub_troco|valor_troco[4]~8_combout\,
	cout => \sub_troco|valor_troco[4]~9\);

-- Location: LCCOMB_X1_Y4_N26
\sub_troco|valor_troco[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_troco|valor_troco[5]~10_combout\ = \entrada~combout\(5) $ (!\sub_troco|valor_troco[4]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(5),
	cin => \sub_troco|valor_troco[4]~9\,
	combout => \sub_troco|valor_troco[5]~10_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bebida_resultado[0]~I\ : cycloneii_io
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
	datain => \selet_bebida|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bebida_resultado(0));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bebida_resultado[1]~I\ : cycloneii_io
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
	datain => \selet_bebida|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bebida_resultado(1));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bebida_resultado[2]~I\ : cycloneii_io
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
	datain => \selet_bebida|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bebida_resultado(2));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tamanho_resultado[0]~I\ : cycloneii_io
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
	datain => \selet_bebida|saida[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tamanho_resultado(0));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tamanho_resultado[1]~I\ : cycloneii_io
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
	datain => \selet_tamanho|saida[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tamanho_resultado(1));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\acucar_resultado~I\ : cycloneii_io
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
	datain => \acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_acucar_resultado);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\temperatura_resultado[0]~I\ : cycloneii_io
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
	datain => \selet_temperatura|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_temperatura_resultado(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\temperatura_resultado[1]~I\ : cycloneii_io
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
	datain => \selet_temperatura|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_temperatura_resultado(1));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_troco[0]~I\ : cycloneii_io
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
	datain => \sub_troco|valor_troco[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(0));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_troco[1]~I\ : cycloneii_io
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
	datain => \sub_troco|valor_troco[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(1));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_troco[2]~I\ : cycloneii_io
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
	datain => \sub_troco|valor_troco[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(2));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_troco[3]~I\ : cycloneii_io
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
	datain => \sub_troco|valor_troco[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(3));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_troco[4]~I\ : cycloneii_io
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
	datain => \sub_troco|valor_troco[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(4));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_troco[5]~I\ : cycloneii_io
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
	datain => \sub_troco|valor_troco[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(5));
END structure;


