library ieee;
use ieee.std_logic_1164.all;

entity Sinalizadora is
  port (
    reset : in std_logic;
    entrada : in std_logic_vector(5 downto 0);
    bebida : in std_logic_vector(2 downto 0);
    tamanho : in std_logic_vector(1 downto 0);
    temperatura : in std_logic_vector(1 downto 0);
    acucar : in std_logic;
    alerta_cheio : out std_logic;
    dar_troco : out std_logic;
    output_troco : out std_logic_vector(5 downto 0);
	 output_bebida : out std_logic_vector(2 downto 0);
	 output_temperatura : out std_logic_vector(1 downto 0);
	 output_tamanho: out std_logic_vector(1 downto 0);
	 output_acucar: out std_logic;
	 output_dinheiro_guardado_momento: out std_logic_vector(5 downto 0);
    start : in std_logic;
    clk : in std_logic;
    cancelar : in std_logic
  );
end entity Sinalizadora;

architecture Behavioral of Sinalizadora is
  component MaquinaDeCafe is
    port (
        reset: in std_logic;
		  clk: in std_logic;
        entrada: in std_logic_vector(5 downto 0);
        bebida: in std_logic_vector(2 downto 0);
        tamanho: in std_logic_vector(1 downto 0);
		  temperatura: in std_logic_vector(1 downto 0);
		  acucar: in std_logic;
		  seletor_bebida: in std_logic;
		  seletor_tamanho: in std_logic;
		  seletor_temperatura: in std_logic;
		  bebida_resultado: out std_logic_vector(2 downto 0);
		  tamanho_resultado: out std_logic_vector(1 downto 0);
		  acucar_resultado: out std_logic;
		  temperatura_resultado: out std_logic_vector(1 downto 0);
		  output_compra_valida: out std_logic;
		  output_dinheiro_guardado: out std_logic_vector(5 downto 0);
        output_troco: out std_logic_vector(5 downto 0)
    );
  end component MaquinaDeCafe;

  component Controladora is
    port (
      start : in std_logic;
      seleciona_bebida: out std_logic;
      seleciona_tamanho: out std_logic;
      seleciona_temperatura: out std_logic;
      seleciona_acucar: out std_logic;
      colocar_dinheiro: out std_logic;
      preparar: out std_logic;
      alerta_cheio: out std_logic;
      dar_troco: out std_logic;
      reset: in std_logic;
      clk: in std_logic;
      cancelar: in std_logic;
      validade_compra: in std_logic
    );
  end component Controladora;

  signal bebida_signal: std_logic;
  signal tamanho_signal: std_logic;
  signal temperatura_signal: std_logic;
  signal acucar_signal: std_logic;
  signal dinheiro_signal: std_logic;
  signal preparar_signal: std_logic;
  signal alerta_cheio_signal: std_logic;
  signal dar_troco_signal: std_logic;
  signal output_troco_signal: std_logic_vector(5 downto 0);
  
  signal signal_output_bebida: std_logic_vector(2 downto 0);
  signal signal_output_tamanho: std_logic_vector(1 downto 0);
  signal signal_output_temperatura: std_logic_vector(1 downto 0);
  signal signal_output_acucar: std_logic;
  
  signal signal_dinheiro_guardado_momento: std_logic_vector(5 downto 0);
  
  signal signal_output_compra_valida: std_logic;

begin
  datapath: MaquinaDeCafe
    port map (
      reset => reset,
		clk => clk,
      entrada => entrada,
      bebida => bebida,
      tamanho => tamanho,
		temperatura => temperatura,
		acucar => acucar,
		seletor_bebida => bebida_signal,
		seletor_tamanho => tamanho_signal,
		seletor_temperatura => temperatura_signal,
      output_troco => output_troco_signal,
		bebida_resultado=> signal_output_bebida,
		tamanho_resultado => signal_output_tamanho,
		temperatura_resultado => signal_output_temperatura,
		acucar_resultado =>signal_output_acucar,
		output_compra_valida=> signal_output_compra_valida,
		output_dinheiro_guardado => signal_dinheiro_guardado_momento
    );

  controladora_inst: Controladora
    port map (
      start => start,
		seleciona_bebida => bebida_signal,
		seleciona_tamanho=> tamanho_signal,
		seleciona_temperatura => temperatura_signal,
      colocar_dinheiro => dinheiro_signal,
      alerta_cheio => alerta_cheio_signal,
      dar_troco => dar_troco_signal,
      reset => reset,
      clk => clk,
		--preparar => preparar_signal,
      cancelar => cancelar,
      validade_compra => signal_output_compra_valida
    );

  -- Output connections
  --preparar <= preparar_signal;
  alerta_cheio <= alerta_cheio_signal;
  dar_troco <= dar_troco_signal;
  output_troco <= output_troco_signal;
  output_bebida <= signal_output_bebida;
  output_tamanho <= signal_output_tamanho;
  output_temperatura <= signal_output_temperatura;
  output_acucar <= signal_output_acucar;
  output_dinheiro_guardado_momento <= signal_dinheiro_guardado_momento;
end architecture Behavioral;