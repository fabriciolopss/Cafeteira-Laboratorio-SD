library ieee;
use ieee.std_logic_1164.all;

entity MaquinaDeCafe is
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
        output_compra_valida: out std_logic;
        temperatura_resultado: out std_logic_vector(1 downto 0);
        output_dinheiro_guardado: out std_logic_vector(5 downto 0);
        output_troco: out std_logic_vector(5 downto 0)
  );
end entity MaquinaDeCafe;

architecture Behavioral of MaquinaDeCafe is
  component subtrator_troco is
    port (
        valor_bebida: in std_logic_vector(2 downto 0);
        dinheiro_guardado: in std_logic_vector(5 downto 0);
        valor_troco: out std_logic_vector(5 downto 0)
    );
  end component subtrator_troco;

  component somador_dinheiro is
    port (
        entrada_somador: in std_logic_vector(5 downto 0);
        dinheiro_registrado: in std_logic_vector(5 downto 0);
        dinheiro_guardado: out std_logic_vector(5 downto 0)
    );
  end component somador_dinheiro;

  component reg_dinheiro is
    generic (
        num_bits: integer := 6
     );
    port (
        clk: in std_logic;
        reset_reg: in std_logic;
        enable: in std_logic;
        dinheiro_guardado_reg: in std_logic_vector(num_bits-1 downto 0);
        dinheiro_registrado_reg: out std_logic_vector(num_bits-1 downto 0)
    );
  end component reg_dinheiro;

  component mux_troco is
    port (
        valor_troco: in std_logic_vector(5 downto 0);
        compra_valida: in std_logic;
        preparar: out std_logic;
        output_troco: out std_logic_vector(5 downto 0)
    );
  end component mux_troco;

  component comparador_troco is
    port (
        valor_troco: in std_logic_vector(5 downto 0);
        compra_valida: out std_logic
    );
  end component comparador_troco;

  component decod_bebida is
    port (
        tamanho: in std_logic_vector(1 downto 0);
        tipo_bebida: in std_logic_vector(2 downto 0);
        valor_bebida: out std_logic_vector(2 downto 0)
    );
  end component decod_bebida;

  component Seletor is
    generic (
        num_bits: integer := 3
    );
    port (
        entrada: in std_logic_vector(num_bits-1 downto 0);
        on_off: in std_logic;
        clk: in std_logic;
        saida: out std_logic_vector(num_bits-1 downto 0)
    );
  end component Seletor;
  
  -- Signal Declarations
  signal resultado: std_logic_vector(5 downto 0);
  signal valor_troco_signal: std_logic_vector(5 downto 0);
  signal valor_bebida_signal: std_logic_vector(2 downto 0);
  signal dinheiro_guardado_signal: std_logic_vector(5 downto 0);
  signal preparar_signal: std_logic;
  signal output_troco_signal: std_logic_vector(5 downto 0);
  signal compra_valida_signal: std_logic;
  signal resultado_signal: std_logic_vector(5 downto 0);
  signal tamanho_bebida: std_logic_vector(1 downto 0);

  signal signal_bebida_selec: std_logic_vector(2 downto 0);
  signal signal_tamanho_selec: std_logic_vector(1 downto 0);
  signal signal_temperatura_selec: std_logic_vector(1 downto 0);
  
  signal clock: std_logic;

begin
  -- Instantiate components
  sub_troco: subtrator_troco
    port map (
      valor_bebida => valor_bebida_signal,
      dinheiro_guardado => dinheiro_guardado_signal,
      valor_troco => valor_troco_signal
    );

  somador: somador_dinheiro
    port map (
      entrada_somador => entrada,
      dinheiro_registrado => resultado_signal,
      dinheiro_guardado => dinheiro_guardado_signal
    );

  multiplexador: mux_troco
    port map (
      valor_troco => valor_troco_signal,
      compra_valida => compra_valida_signal,
      preparar => preparar_signal,
      output_troco => output_troco_signal
    );

  comparador: comparador_troco
    port map (
      valor_troco => valor_troco_signal,
      compra_valida => compra_valida_signal
    );

  decodificador: decod_bebida 
    port map ( 
      tamanho => signal_tamanho_selec,
      tipo_bebida => signal_bebida_selec,
      valor_bebida => valor_bebida_signal
    );

  registrador: reg_dinheiro 
    generic map (
      num_bits => 6
    )
    port map ( 
      clk => clock,
      reset_reg => reset,
      enable => '1',
      dinheiro_guardado_reg => dinheiro_guardado_signal,
      dinheiro_registrado_reg => resultado_signal
    );
  
  selet_bebida: Seletor
    generic map (
      num_bits => 3
    )
    port map (
      entrada => bebida,
      on_off => seletor_bebida,
      clk => seletor_bebida,
      saida => signal_bebida_selec
    );

  selet_tamanho: Seletor
    generic map (
      num_bits => 2
    )
    port map (
      entrada => tamanho,
      on_off => seletor_tamanho,
      clk => seletor_tamanho,
      saida => signal_tamanho_selec
    );

  selet_temperatura: Seletor
    generic map (
      num_bits => 2
    )
    port map (
      entrada => temperatura,
      on_off => seletor_temperatura,
      clk => seletor_temperatura,
      saida => signal_temperatura_selec
    );

  -- Output connections
  output_troco <= output_troco_signal;
  bebida_resultado <= signal_bebida_selec;
  tamanho_resultado <= signal_tamanho_selec;
  temperatura_resultado <= signal_temperatura_selec;
  acucar_resultado <= acucar;
  output_compra_valida <= compra_valida_signal;
  output_dinheiro_guardado <= dinheiro_guardado_signal;

end architecture Behavioral;