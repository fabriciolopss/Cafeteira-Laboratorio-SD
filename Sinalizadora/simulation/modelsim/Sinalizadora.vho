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

-- DATE "07/06/2023 20:44:39"

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

ENTITY 	Sinalizadora IS
    PORT (
	reset : IN std_logic;
	entrada : IN std_logic_vector(5 DOWNTO 0);
	bebida : IN std_logic_vector(2 DOWNTO 0);
	tamanho : IN std_logic_vector(1 DOWNTO 0);
	temperatura : IN std_logic_vector(1 DOWNTO 0);
	acucar : IN std_logic;
	alerta_cheio : OUT std_logic;
	dar_troco : OUT std_logic;
	output_troco : OUT std_logic_vector(5 DOWNTO 0);
	output_bebida : OUT std_logic_vector(2 DOWNTO 0);
	output_temperatura : OUT std_logic_vector(1 DOWNTO 0);
	output_tamanho : OUT std_logic_vector(1 DOWNTO 0);
	output_acucar : OUT std_logic;
	output_dinheiro_guardado_momento : OUT std_logic_vector(5 DOWNTO 0);
	start : IN std_logic;
	clk : IN std_logic;
	cancelar : IN std_logic
	);
END Sinalizadora;

-- Design Ports Information
-- alerta_cheio	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dar_troco	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[1]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[3]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[4]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_troco[5]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_bebida[0]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_bebida[1]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_bebida[2]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_temperatura[0]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_temperatura[1]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_tamanho[0]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_tamanho[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_acucar	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_dinheiro_guardado_momento[0]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_dinheiro_guardado_momento[1]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_dinheiro_guardado_momento[2]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_dinheiro_guardado_momento[3]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_dinheiro_guardado_momento[4]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_dinheiro_guardado_momento[5]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- entrada[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- acucar	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cancelar	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bebida[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bebida[1]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bebida[2]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temperatura[0]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temperatura[1]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tamanho[0]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tamanho[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sinalizadora IS
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
SIGNAL ww_alerta_cheio : std_logic;
SIGNAL ww_dar_troco : std_logic;
SIGNAL ww_output_troco : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_output_bebida : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_temperatura : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_tamanho : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_acucar : std_logic;
SIGNAL ww_output_dinheiro_guardado_momento : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cancelar : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controladora_inst|state.S3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controladora_inst|state.S2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controladora_inst|state.S5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|decodificador|valor_bebida[0]~2_combout\ : std_logic;
SIGNAL \datapath|decodificador|comb~3_combout\ : std_logic;
SIGNAL \controladora_inst|state.S2~clkctrl_outclk\ : std_logic;
SIGNAL \controladora_inst|state.S5~clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cancelar~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \controladora_inst|Selector1~0_combout\ : std_logic;
SIGNAL \controladora_inst|Selector1~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \controladora_inst|state.S10~regout\ : std_logic;
SIGNAL \controladora_inst|state.S0~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S0~regout\ : std_logic;
SIGNAL \controladora_inst|Selector0~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S1~regout\ : std_logic;
SIGNAL \controladora_inst|next_state.S2~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S2~regout\ : std_logic;
SIGNAL \controladora_inst|next_state.S3~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S3~regout\ : std_logic;
SIGNAL \controladora_inst|next_state.S4~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S4~regout\ : std_logic;
SIGNAL \controladora_inst|next_state.S5~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S5~regout\ : std_logic;
SIGNAL \controladora_inst|next_state.S6~0_combout\ : std_logic;
SIGNAL \controladora_inst|state.S6~regout\ : std_logic;
SIGNAL \controladora_inst|state.S7~feeder_combout\ : std_logic;
SIGNAL \controladora_inst|state.S7~regout\ : std_logic;
SIGNAL \controladora_inst|state.S8~feeder_combout\ : std_logic;
SIGNAL \controladora_inst|state.S8~regout\ : std_logic;
SIGNAL \controladora_inst|state.S9~feeder_combout\ : std_logic;
SIGNAL \controladora_inst|state.S9~regout\ : std_logic;
SIGNAL \datapath|selet_tamanho|reg_saida~0_combout\ : std_logic;
SIGNAL \datapath|selet_bebida|reg_saida~1_combout\ : std_logic;
SIGNAL \datapath|selet_bebida|reg_saida~0_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[2]~0_combout\ : std_logic;
SIGNAL \datapath|selet_bebida|reg_saida~2_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[2]~1_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[2]~3_combout\ : std_logic;
SIGNAL \datapath|selet_tamanho|reg_saida~1_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[0]~4_combout\ : std_logic;
SIGNAL \datapath|decodificador|comb~1_combout\ : std_logic;
SIGNAL \datapath|decodificador|comb~0_combout\ : std_logic;
SIGNAL \datapath|somador|dinheiro_guardado[0]~0_combout\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[0]~0_combout\ : std_logic;
SIGNAL \datapath|somador|dinheiro_guardado[1]~1_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[1]~5_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[1]~6_combout\ : std_logic;
SIGNAL \datapath|decodificador|comb~2_combout\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[0]~1\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[1]~2_combout\ : std_logic;
SIGNAL \datapath|somador|dinheiro_guardado[2]~2_combout\ : std_logic;
SIGNAL \datapath|decodificador|valor_bebida[2]~7_combout\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[1]~3\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[2]~4_combout\ : std_logic;
SIGNAL \datapath|somador|LessThan0~0_combout\ : std_logic;
SIGNAL \datapath|somador|LessThan0~1_combout\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[2]~5\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[3]~6_combout\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[3]~7\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[4]~8_combout\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[4]~9\ : std_logic;
SIGNAL \datapath|sub_troco|valor_troco[5]~10_combout\ : std_logic;
SIGNAL \controladora_inst|state.S3~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|selet_temperatura|reg_saida~0_combout\ : std_logic;
SIGNAL \datapath|selet_temperatura|reg_saida~1_combout\ : std_logic;
SIGNAL \acucar~combout\ : std_logic;
SIGNAL \datapath|somador|dinheiro_guardado[3]~3_combout\ : std_logic;
SIGNAL \temperatura~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tamanho~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \entrada~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \bebida~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|selet_bebida|reg_saida\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|selet_tamanho|reg_saida\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath|decodificador|valor_bebida\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath|selet_temperatura|reg_saida\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_entrada <= entrada;
ww_bebida <= bebida;
ww_tamanho <= tamanho;
ww_temperatura <= temperatura;
ww_acucar <= acucar;
alerta_cheio <= ww_alerta_cheio;
dar_troco <= ww_dar_troco;
output_troco <= ww_output_troco;
output_bebida <= ww_output_bebida;
output_temperatura <= ww_output_temperatura;
output_tamanho <= ww_output_tamanho;
output_acucar <= ww_output_acucar;
output_dinheiro_guardado_momento <= ww_output_dinheiro_guardado_momento;
ww_start <= start;
ww_clk <= clk;
ww_cancelar <= cancelar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\controladora_inst|state.S3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controladora_inst|state.S3~regout\);

\controladora_inst|state.S2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controladora_inst|state.S2~regout\);

\controladora_inst|state.S5~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controladora_inst|state.S5~regout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCCOMB_X64_Y25_N10
\datapath|decodificador|valor_bebida[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[0]~2_combout\ = (\datapath|selet_bebida|reg_saida\(0) & ((\datapath|selet_bebida|reg_saida\(2)) # ((\datapath|selet_bebida|reg_saida\(1)) # (!\datapath|selet_tamanho|reg_saida\(0))))) # 
-- (!\datapath|selet_bebida|reg_saida\(0) & (!\datapath|selet_bebida|reg_saida\(2) & (\datapath|selet_tamanho|reg_saida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|selet_bebida|reg_saida\(0),
	datab => \datapath|selet_bebida|reg_saida\(2),
	datac => \datapath|selet_tamanho|reg_saida\(0),
	datad => \datapath|selet_bebida|reg_saida\(1),
	combout => \datapath|decodificador|valor_bebida[0]~2_combout\);

-- Location: LCCOMB_X64_Y25_N6
\datapath|decodificador|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|comb~3_combout\ = (\datapath|decodificador|valor_bebida[1]~6_combout\ & \datapath|decodificador|valor_bebida[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|decodificador|valor_bebida[1]~6_combout\,
	datad => \datapath|decodificador|valor_bebida[2]~1_combout\,
	combout => \datapath|decodificador|comb~3_combout\);

-- Location: CLKCTRL_G5
\controladora_inst|state.S2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controladora_inst|state.S2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controladora_inst|state.S2~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\controladora_inst|state.S5~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controladora_inst|state.S5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controladora_inst|state.S5~clkctrl_outclk\);

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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cancelar~I\ : cycloneii_io
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
	padio => ww_cancelar,
	combout => \cancelar~combout\);

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X64_Y19_N18
\controladora_inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector1~0_combout\ = (\controladora_inst|state.S2~regout\) # ((\controladora_inst|state.S3~regout\) # ((\controladora_inst|state.S5~regout\) # (\controladora_inst|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controladora_inst|state.S2~regout\,
	datab => \controladora_inst|state.S3~regout\,
	datac => \controladora_inst|state.S5~regout\,
	datad => \controladora_inst|state.S4~regout\,
	combout => \controladora_inst|Selector1~0_combout\);

-- Location: LCCOMB_X64_Y19_N20
\controladora_inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector1~1_combout\ = (\controladora_inst|state.S9~regout\) # ((\cancelar~combout\ & \controladora_inst|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cancelar~combout\,
	datac => \controladora_inst|state.S9~regout\,
	datad => \controladora_inst|Selector1~0_combout\,
	combout => \controladora_inst|Selector1~1_combout\);

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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G11
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X64_Y19_N21
\controladora_inst|state.S10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|Selector1~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S10~regout\);

-- Location: LCCOMB_X64_Y19_N10
\controladora_inst|state.S0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|state.S0~0_combout\ = !\controladora_inst|state.S10~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora_inst|state.S10~regout\,
	combout => \controladora_inst|state.S0~0_combout\);

-- Location: LCFF_X64_Y19_N11
\controladora_inst|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|state.S0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S0~regout\);

-- Location: LCCOMB_X64_Y19_N4
\controladora_inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|Selector0~0_combout\ = ((!\start~combout\ & \controladora_inst|state.S1~regout\)) # (!\controladora_inst|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \controladora_inst|state.S1~regout\,
	datad => \controladora_inst|state.S0~regout\,
	combout => \controladora_inst|Selector0~0_combout\);

-- Location: LCFF_X64_Y19_N5
\controladora_inst|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S1~regout\);

-- Location: LCCOMB_X64_Y19_N6
\controladora_inst|next_state.S2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|next_state.S2~0_combout\ = (\controladora_inst|state.S1~regout\ & \start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora_inst|state.S1~regout\,
	datad => \start~combout\,
	combout => \controladora_inst|next_state.S2~0_combout\);

-- Location: LCFF_X64_Y19_N7
\controladora_inst|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|next_state.S2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S2~regout\);

-- Location: LCCOMB_X64_Y19_N30
\controladora_inst|next_state.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|next_state.S3~0_combout\ = (!\cancelar~combout\ & \controladora_inst|state.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cancelar~combout\,
	datad => \controladora_inst|state.S2~regout\,
	combout => \controladora_inst|next_state.S3~0_combout\);

-- Location: LCFF_X64_Y19_N31
\controladora_inst|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|next_state.S3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S3~regout\);

-- Location: LCCOMB_X64_Y19_N22
\controladora_inst|next_state.S4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|next_state.S4~0_combout\ = (!\cancelar~combout\ & \controladora_inst|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cancelar~combout\,
	datad => \controladora_inst|state.S3~regout\,
	combout => \controladora_inst|next_state.S4~0_combout\);

-- Location: LCFF_X64_Y19_N23
\controladora_inst|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|next_state.S4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S4~regout\);

-- Location: LCCOMB_X64_Y19_N14
\controladora_inst|next_state.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|next_state.S5~0_combout\ = (!\cancelar~combout\ & \controladora_inst|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cancelar~combout\,
	datad => \controladora_inst|state.S4~regout\,
	combout => \controladora_inst|next_state.S5~0_combout\);

-- Location: LCFF_X64_Y19_N15
\controladora_inst|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|next_state.S5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S5~regout\);

-- Location: LCCOMB_X64_Y19_N28
\controladora_inst|next_state.S6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|next_state.S6~0_combout\ = (!\cancelar~combout\ & \controladora_inst|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cancelar~combout\,
	datac => \controladora_inst|state.S5~regout\,
	combout => \controladora_inst|next_state.S6~0_combout\);

-- Location: LCFF_X64_Y19_N29
\controladora_inst|state.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|next_state.S6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S6~regout\);

-- Location: LCCOMB_X64_Y19_N12
\controladora_inst|state.S7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|state.S7~feeder_combout\ = \controladora_inst|state.S6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controladora_inst|state.S6~regout\,
	combout => \controladora_inst|state.S7~feeder_combout\);

-- Location: LCFF_X64_Y19_N13
\controladora_inst|state.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|state.S7~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S7~regout\);

-- Location: LCCOMB_X64_Y19_N26
\controladora_inst|state.S8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|state.S8~feeder_combout\ = \controladora_inst|state.S7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controladora_inst|state.S7~regout\,
	combout => \controladora_inst|state.S8~feeder_combout\);

-- Location: LCFF_X64_Y19_N27
\controladora_inst|state.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|state.S8~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S8~regout\);

-- Location: LCCOMB_X64_Y19_N24
\controladora_inst|state.S9~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controladora_inst|state.S9~feeder_combout\ = \controladora_inst|state.S8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controladora_inst|state.S8~regout\,
	combout => \controladora_inst|state.S9~feeder_combout\);

-- Location: LCFF_X64_Y19_N25
\controladora_inst|state.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controladora_inst|state.S9~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controladora_inst|state.S9~regout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N26
\datapath|selet_tamanho|reg_saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_tamanho|reg_saida~0_combout\ = (\controladora_inst|state.S5~regout\ & \tamanho~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora_inst|state.S5~regout\,
	datad => \tamanho~combout\(0),
	combout => \datapath|selet_tamanho|reg_saida~0_combout\);

-- Location: LCFF_X64_Y25_N27
\datapath|selet_tamanho|reg_saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S5~clkctrl_outclk\,
	datain => \datapath|selet_tamanho|reg_saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_tamanho|reg_saida\(0));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N22
\datapath|selet_bebida|reg_saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_bebida|reg_saida~1_combout\ = (\bebida~combout\(1) & \controladora_inst|state.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bebida~combout\(1),
	datad => \controladora_inst|state.S2~regout\,
	combout => \datapath|selet_bebida|reg_saida~1_combout\);

-- Location: LCFF_X64_Y25_N23
\datapath|selet_bebida|reg_saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S2~clkctrl_outclk\,
	datain => \datapath|selet_bebida|reg_saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_bebida|reg_saida\(1));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N16
\datapath|selet_bebida|reg_saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_bebida|reg_saida~0_combout\ = (\bebida~combout\(0) & \controladora_inst|state.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bebida~combout\(0),
	datad => \controladora_inst|state.S2~regout\,
	combout => \datapath|selet_bebida|reg_saida~0_combout\);

-- Location: LCFF_X64_Y25_N17
\datapath|selet_bebida|reg_saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S2~clkctrl_outclk\,
	datain => \datapath|selet_bebida|reg_saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_bebida|reg_saida\(0));

-- Location: LCCOMB_X64_Y25_N14
\datapath|decodificador|valor_bebida[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[2]~0_combout\ = (!\datapath|selet_bebida|reg_saida\(0)) # (!\datapath|selet_bebida|reg_saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|selet_bebida|reg_saida\(1),
	datac => \datapath|selet_bebida|reg_saida\(0),
	combout => \datapath|decodificador|valor_bebida[2]~0_combout\);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N28
\datapath|selet_bebida|reg_saida~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_bebida|reg_saida~2_combout\ = (\bebida~combout\(2) & \controladora_inst|state.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bebida~combout\(2),
	datad => \controladora_inst|state.S2~regout\,
	combout => \datapath|selet_bebida|reg_saida~2_combout\);

-- Location: LCFF_X64_Y25_N29
\datapath|selet_bebida|reg_saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S2~clkctrl_outclk\,
	datain => \datapath|selet_bebida|reg_saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_bebida|reg_saida\(2));

-- Location: LCCOMB_X64_Y25_N12
\datapath|decodificador|valor_bebida[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[2]~1_combout\ = (\datapath|decodificador|valor_bebida[2]~0_combout\ & (((!\datapath|selet_tamanho|reg_saida\(0) & !\datapath|selet_bebida|reg_saida\(2))) # (!\datapath|selet_tamanho|reg_saida\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|selet_tamanho|reg_saida\(1),
	datab => \datapath|selet_tamanho|reg_saida\(0),
	datac => \datapath|decodificador|valor_bebida[2]~0_combout\,
	datad => \datapath|selet_bebida|reg_saida\(2),
	combout => \datapath|decodificador|valor_bebida[2]~1_combout\);

-- Location: LCCOMB_X64_Y25_N8
\datapath|decodificador|valor_bebida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[2]~3_combout\ = (!\datapath|selet_bebida|reg_saida\(2) & (!\datapath|selet_tamanho|reg_saida\(0) & !\datapath|selet_bebida|reg_saida\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|selet_bebida|reg_saida\(2),
	datac => \datapath|selet_tamanho|reg_saida\(0),
	datad => \datapath|selet_bebida|reg_saida\(1),
	combout => \datapath|decodificador|valor_bebida[2]~3_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N0
\datapath|selet_tamanho|reg_saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_tamanho|reg_saida~1_combout\ = (\controladora_inst|state.S5~regout\ & \tamanho~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controladora_inst|state.S5~regout\,
	datad => \tamanho~combout\(1),
	combout => \datapath|selet_tamanho|reg_saida~1_combout\);

-- Location: LCFF_X64_Y25_N1
\datapath|selet_tamanho|reg_saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S5~clkctrl_outclk\,
	datain => \datapath|selet_tamanho|reg_saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_tamanho|reg_saida\(1));

-- Location: LCCOMB_X64_Y25_N2
\datapath|decodificador|valor_bebida[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[0]~4_combout\ = (\datapath|selet_tamanho|reg_saida\(1) & (((!\datapath|selet_bebida|reg_saida\(0)) # (!\datapath|decodificador|valor_bebida[2]~3_combout\)))) # (!\datapath|selet_tamanho|reg_saida\(1) & 
-- (\datapath|decodificador|valor_bebida[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|decodificador|valor_bebida[0]~2_combout\,
	datab => \datapath|decodificador|valor_bebida[2]~3_combout\,
	datac => \datapath|selet_bebida|reg_saida\(0),
	datad => \datapath|selet_tamanho|reg_saida\(1),
	combout => \datapath|decodificador|valor_bebida[0]~4_combout\);

-- Location: LCCOMB_X64_Y29_N30
\datapath|decodificador|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|comb~1_combout\ = (\datapath|decodificador|valor_bebida[2]~1_combout\ & \datapath|decodificador|valor_bebida[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|decodificador|valor_bebida[2]~1_combout\,
	datac => \datapath|decodificador|valor_bebida[0]~4_combout\,
	combout => \datapath|decodificador|comb~1_combout\);

-- Location: LCCOMB_X64_Y29_N24
\datapath|decodificador|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|comb~0_combout\ = (\datapath|decodificador|valor_bebida[2]~1_combout\ & !\datapath|decodificador|valor_bebida[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|decodificador|valor_bebida[2]~1_combout\,
	datac => \datapath|decodificador|valor_bebida[0]~4_combout\,
	combout => \datapath|decodificador|comb~0_combout\);

-- Location: LCCOMB_X64_Y29_N12
\datapath|decodificador|valor_bebida[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida\(0) = (!\datapath|decodificador|comb~0_combout\ & ((\datapath|decodificador|comb~1_combout\) # (\datapath|decodificador|valor_bebida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|decodificador|comb~1_combout\,
	datac => \datapath|decodificador|comb~0_combout\,
	datad => \datapath|decodificador|valor_bebida\(0),
	combout => \datapath|decodificador|valor_bebida\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y29_N26
\datapath|somador|dinheiro_guardado[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador|dinheiro_guardado[0]~0_combout\ = (\entrada~combout\(0) & (((!\entrada~combout\(4)) # (!\entrada~combout\(5))) # (!\datapath|somador|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador|LessThan0~0_combout\,
	datab => \entrada~combout\(0),
	datac => \entrada~combout\(5),
	datad => \entrada~combout\(4),
	combout => \datapath|somador|dinheiro_guardado[0]~0_combout\);

-- Location: LCCOMB_X64_Y29_N0
\datapath|sub_troco|valor_troco[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub_troco|valor_troco[0]~0_combout\ = (\datapath|decodificador|valor_bebida\(0) & (\datapath|somador|dinheiro_guardado[0]~0_combout\ $ (VCC))) # (!\datapath|decodificador|valor_bebida\(0) & ((\datapath|somador|dinheiro_guardado[0]~0_combout\) # 
-- (GND)))
-- \datapath|sub_troco|valor_troco[0]~1\ = CARRY((\datapath|somador|dinheiro_guardado[0]~0_combout\) # (!\datapath|decodificador|valor_bebida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|decodificador|valor_bebida\(0),
	datab => \datapath|somador|dinheiro_guardado[0]~0_combout\,
	datad => VCC,
	combout => \datapath|sub_troco|valor_troco[0]~0_combout\,
	cout => \datapath|sub_troco|valor_troco[0]~1\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y29_N16
\datapath|somador|dinheiro_guardado[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador|dinheiro_guardado[1]~1_combout\ = (\entrada~combout\(1)) # ((\datapath|somador|LessThan0~0_combout\ & (\entrada~combout\(5) & \entrada~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador|LessThan0~0_combout\,
	datab => \entrada~combout\(1),
	datac => \entrada~combout\(5),
	datad => \entrada~combout\(4),
	combout => \datapath|somador|dinheiro_guardado[1]~1_combout\);

-- Location: LCCOMB_X64_Y25_N24
\datapath|decodificador|valor_bebida[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[1]~5_combout\ = (\datapath|selet_bebida|reg_saida\(2)) # ((!\datapath|selet_bebida|reg_saida\(0) & \datapath|selet_tamanho|reg_saida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|selet_bebida|reg_saida\(0),
	datab => \datapath|selet_tamanho|reg_saida\(0),
	datad => \datapath|selet_bebida|reg_saida\(2),
	combout => \datapath|decodificador|valor_bebida[1]~5_combout\);

-- Location: LCCOMB_X64_Y25_N18
\datapath|decodificador|valor_bebida[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[1]~6_combout\ = (\datapath|decodificador|valor_bebida[1]~5_combout\ & (!\datapath|selet_bebida|reg_saida\(0) & (!\datapath|selet_tamanho|reg_saida\(1) & \datapath|selet_bebida|reg_saida\(1)))) # 
-- (!\datapath|decodificador|valor_bebida[1]~5_combout\ & (!\datapath|selet_bebida|reg_saida\(1) & ((!\datapath|selet_tamanho|reg_saida\(1)) # (!\datapath|selet_bebida|reg_saida\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|selet_bebida|reg_saida\(0),
	datab => \datapath|selet_tamanho|reg_saida\(1),
	datac => \datapath|decodificador|valor_bebida[1]~5_combout\,
	datad => \datapath|selet_bebida|reg_saida\(1),
	combout => \datapath|decodificador|valor_bebida[1]~6_combout\);

-- Location: LCCOMB_X64_Y25_N20
\datapath|decodificador|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|comb~2_combout\ = (!\datapath|decodificador|valor_bebida[1]~6_combout\ & \datapath|decodificador|valor_bebida[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|decodificador|valor_bebida[1]~6_combout\,
	datad => \datapath|decodificador|valor_bebida[2]~1_combout\,
	combout => \datapath|decodificador|comb~2_combout\);

-- Location: LCCOMB_X64_Y25_N30
\datapath|decodificador|valor_bebida[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida\(1) = (!\datapath|decodificador|comb~2_combout\ & ((\datapath|decodificador|comb~3_combout\) # (\datapath|decodificador|valor_bebida\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|decodificador|comb~3_combout\,
	datac => \datapath|decodificador|comb~2_combout\,
	datad => \datapath|decodificador|valor_bebida\(1),
	combout => \datapath|decodificador|valor_bebida\(1));

-- Location: LCCOMB_X64_Y29_N2
\datapath|sub_troco|valor_troco[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub_troco|valor_troco[1]~2_combout\ = (\datapath|somador|dinheiro_guardado[1]~1_combout\ & ((\datapath|decodificador|valor_bebida\(1) & (!\datapath|sub_troco|valor_troco[0]~1\)) # (!\datapath|decodificador|valor_bebida\(1) & 
-- (\datapath|sub_troco|valor_troco[0]~1\ & VCC)))) # (!\datapath|somador|dinheiro_guardado[1]~1_combout\ & ((\datapath|decodificador|valor_bebida\(1) & ((\datapath|sub_troco|valor_troco[0]~1\) # (GND))) # (!\datapath|decodificador|valor_bebida\(1) & 
-- (!\datapath|sub_troco|valor_troco[0]~1\))))
-- \datapath|sub_troco|valor_troco[1]~3\ = CARRY((\datapath|somador|dinheiro_guardado[1]~1_combout\ & (\datapath|decodificador|valor_bebida\(1) & !\datapath|sub_troco|valor_troco[0]~1\)) # (!\datapath|somador|dinheiro_guardado[1]~1_combout\ & 
-- ((\datapath|decodificador|valor_bebida\(1)) # (!\datapath|sub_troco|valor_troco[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador|dinheiro_guardado[1]~1_combout\,
	datab => \datapath|decodificador|valor_bebida\(1),
	datad => VCC,
	cin => \datapath|sub_troco|valor_troco[0]~1\,
	combout => \datapath|sub_troco|valor_troco[1]~2_combout\,
	cout => \datapath|sub_troco|valor_troco[1]~3\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y29_N14
\datapath|somador|dinheiro_guardado[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador|dinheiro_guardado[2]~2_combout\ = (\entrada~combout\(2) & ((!\entrada~combout\(4)) # (!\entrada~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(2),
	datac => \entrada~combout\(5),
	datad => \entrada~combout\(4),
	combout => \datapath|somador|dinheiro_guardado[2]~2_combout\);

-- Location: LCCOMB_X64_Y25_N4
\datapath|decodificador|valor_bebida[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida[2]~7_combout\ = ((\datapath|selet_bebida|reg_saida\(0) & \datapath|selet_tamanho|reg_saida\(1))) # (!\datapath|decodificador|valor_bebida[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|selet_bebida|reg_saida\(0),
	datab => \datapath|selet_tamanho|reg_saida\(1),
	datac => \datapath|decodificador|valor_bebida[2]~3_combout\,
	combout => \datapath|decodificador|valor_bebida[2]~7_combout\);

-- Location: LCCOMB_X64_Y29_N22
\datapath|decodificador|valor_bebida[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|decodificador|valor_bebida\(2) = (\datapath|decodificador|valor_bebida[2]~7_combout\ & ((\datapath|decodificador|valor_bebida[2]~1_combout\) # (\datapath|decodificador|valor_bebida\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|decodificador|valor_bebida[2]~7_combout\,
	datac => \datapath|decodificador|valor_bebida[2]~1_combout\,
	datad => \datapath|decodificador|valor_bebida\(2),
	combout => \datapath|decodificador|valor_bebida\(2));

-- Location: LCCOMB_X64_Y29_N4
\datapath|sub_troco|valor_troco[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub_troco|valor_troco[2]~4_combout\ = ((\datapath|somador|dinheiro_guardado[2]~2_combout\ $ (\datapath|decodificador|valor_bebida\(2) $ (\datapath|sub_troco|valor_troco[1]~3\)))) # (GND)
-- \datapath|sub_troco|valor_troco[2]~5\ = CARRY((\datapath|somador|dinheiro_guardado[2]~2_combout\ & ((!\datapath|sub_troco|valor_troco[1]~3\) # (!\datapath|decodificador|valor_bebida\(2)))) # (!\datapath|somador|dinheiro_guardado[2]~2_combout\ & 
-- (!\datapath|decodificador|valor_bebida\(2) & !\datapath|sub_troco|valor_troco[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|somador|dinheiro_guardado[2]~2_combout\,
	datab => \datapath|decodificador|valor_bebida\(2),
	datad => VCC,
	cin => \datapath|sub_troco|valor_troco[1]~3\,
	combout => \datapath|sub_troco|valor_troco[2]~4_combout\,
	cout => \datapath|sub_troco|valor_troco[2]~5\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y29_N20
\datapath|somador|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador|LessThan0~0_combout\ = (\entrada~combout\(3)) # ((\entrada~combout\(2)) # ((\entrada~combout\(1) & \entrada~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(3),
	datab => \entrada~combout\(1),
	datac => \entrada~combout\(0),
	datad => \entrada~combout\(2),
	combout => \datapath|somador|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y29_N28
\datapath|somador|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador|LessThan0~1_combout\ = (\entrada~combout\(5) & (\datapath|somador|LessThan0~0_combout\ & \entrada~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(5),
	datac => \datapath|somador|LessThan0~0_combout\,
	datad => \entrada~combout\(4),
	combout => \datapath|somador|LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y29_N6
\datapath|sub_troco|valor_troco[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub_troco|valor_troco[3]~6_combout\ = (\entrada~combout\(3) & ((\datapath|somador|LessThan0~1_combout\ & (!\datapath|sub_troco|valor_troco[2]~5\)) # (!\datapath|somador|LessThan0~1_combout\ & (\datapath|sub_troco|valor_troco[2]~5\ & VCC)))) # 
-- (!\entrada~combout\(3) & (((!\datapath|sub_troco|valor_troco[2]~5\))))
-- \datapath|sub_troco|valor_troco[3]~7\ = CARRY((!\datapath|sub_troco|valor_troco[2]~5\ & ((\datapath|somador|LessThan0~1_combout\) # (!\entrada~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(3),
	datab => \datapath|somador|LessThan0~1_combout\,
	datad => VCC,
	cin => \datapath|sub_troco|valor_troco[2]~5\,
	combout => \datapath|sub_troco|valor_troco[3]~6_combout\,
	cout => \datapath|sub_troco|valor_troco[3]~7\);

-- Location: LCCOMB_X64_Y29_N8
\datapath|sub_troco|valor_troco[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub_troco|valor_troco[4]~8_combout\ = (\entrada~combout\(4) & ((GND) # (!\datapath|sub_troco|valor_troco[3]~7\))) # (!\entrada~combout\(4) & (\datapath|sub_troco|valor_troco[3]~7\ $ (GND)))
-- \datapath|sub_troco|valor_troco[4]~9\ = CARRY((\entrada~combout\(4)) # (!\datapath|sub_troco|valor_troco[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(4),
	datad => VCC,
	cin => \datapath|sub_troco|valor_troco[3]~7\,
	combout => \datapath|sub_troco|valor_troco[4]~8_combout\,
	cout => \datapath|sub_troco|valor_troco[4]~9\);

-- Location: LCCOMB_X64_Y29_N10
\datapath|sub_troco|valor_troco[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|sub_troco|valor_troco[5]~10_combout\ = \entrada~combout\(5) $ (!\datapath|sub_troco|valor_troco[4]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(5),
	cin => \datapath|sub_troco|valor_troco[4]~9\,
	combout => \datapath|sub_troco|valor_troco[5]~10_combout\);

-- Location: CLKCTRL_G4
\controladora_inst|state.S3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controladora_inst|state.S3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controladora_inst|state.S3~clkctrl_outclk\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y19_N8
\datapath|selet_temperatura|reg_saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_temperatura|reg_saida~0_combout\ = (\temperatura~combout\(0) & \controladora_inst|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temperatura~combout\(0),
	datad => \controladora_inst|state.S3~regout\,
	combout => \datapath|selet_temperatura|reg_saida~0_combout\);

-- Location: LCFF_X64_Y19_N9
\datapath|selet_temperatura|reg_saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S3~clkctrl_outclk\,
	datain => \datapath|selet_temperatura|reg_saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_temperatura|reg_saida\(0));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y19_N16
\datapath|selet_temperatura|reg_saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|selet_temperatura|reg_saida~1_combout\ = (\temperatura~combout\(1) & \controladora_inst|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temperatura~combout\(1),
	datad => \controladora_inst|state.S3~regout\,
	combout => \datapath|selet_temperatura|reg_saida~1_combout\);

-- Location: LCFF_X64_Y19_N17
\datapath|selet_temperatura|reg_saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controladora_inst|state.S3~clkctrl_outclk\,
	datain => \datapath|selet_temperatura|reg_saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|selet_temperatura|reg_saida\(1));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y29_N18
\datapath|somador|dinheiro_guardado[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|somador|dinheiro_guardado[3]~3_combout\ = (\entrada~combout\(3) & (((!\entrada~combout\(4)) # (!\datapath|somador|LessThan0~0_combout\)) # (!\entrada~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(3),
	datab => \entrada~combout\(5),
	datac => \datapath|somador|LessThan0~0_combout\,
	datad => \entrada~combout\(4),
	combout => \datapath|somador|dinheiro_guardado[3]~3_combout\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alerta_cheio~I\ : cycloneii_io
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
	datain => \controladora_inst|state.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alerta_cheio);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dar_troco~I\ : cycloneii_io
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
	datain => \controladora_inst|state.S10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dar_troco);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \datapath|sub_troco|valor_troco[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(0));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \datapath|sub_troco|valor_troco[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(1));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \datapath|sub_troco|valor_troco[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(2));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \datapath|sub_troco|valor_troco[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(3));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \datapath|sub_troco|valor_troco[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(4));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \datapath|sub_troco|valor_troco[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_troco(5));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_bebida[0]~I\ : cycloneii_io
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
	datain => \datapath|selet_bebida|reg_saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_bebida(0));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_bebida[1]~I\ : cycloneii_io
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
	datain => \datapath|selet_bebida|reg_saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_bebida(1));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_bebida[2]~I\ : cycloneii_io
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
	datain => \datapath|selet_bebida|reg_saida\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_bebida(2));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_temperatura[0]~I\ : cycloneii_io
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
	datain => \datapath|selet_temperatura|reg_saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_temperatura(0));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_temperatura[1]~I\ : cycloneii_io
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
	datain => \datapath|selet_temperatura|reg_saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_temperatura(1));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_tamanho[0]~I\ : cycloneii_io
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
	datain => \datapath|selet_tamanho|reg_saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_tamanho(0));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_tamanho[1]~I\ : cycloneii_io
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
	datain => \datapath|selet_tamanho|reg_saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_tamanho(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_acucar~I\ : cycloneii_io
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
	padio => ww_output_acucar);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_dinheiro_guardado_momento[0]~I\ : cycloneii_io
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
	datain => \datapath|somador|dinheiro_guardado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_dinheiro_guardado_momento(0));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_dinheiro_guardado_momento[1]~I\ : cycloneii_io
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
	datain => \datapath|somador|dinheiro_guardado[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_dinheiro_guardado_momento(1));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_dinheiro_guardado_momento[2]~I\ : cycloneii_io
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
	datain => \datapath|somador|dinheiro_guardado[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_dinheiro_guardado_momento(2));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_dinheiro_guardado_momento[3]~I\ : cycloneii_io
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
	datain => \datapath|somador|dinheiro_guardado[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_dinheiro_guardado_momento(3));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_dinheiro_guardado_momento[4]~I\ : cycloneii_io
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
	datain => \entrada~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_dinheiro_guardado_momento(4));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_dinheiro_guardado_momento[5]~I\ : cycloneii_io
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
	datain => \entrada~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_dinheiro_guardado_momento(5));
END structure;


