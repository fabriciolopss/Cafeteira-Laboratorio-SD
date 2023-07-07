library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_reg_dinheiro is
end tb_reg_dinheiro;

architecture Behavioral of tb_reg_dinheiro is
  component reg_dinheiro
    generic (
      num_bits : integer := 6
    );
    port (
      clk : in std_logic;
      reset_reg : in std_logic;
      enable : in std_logic;
      dinheiro_guardado_reg : in std_logic_vector(num_bits-1 downto 0);
      dinheiro_registrado_reg : out std_logic_vector(num_bits-1 downto 0)
    );
  end component;

  -- Declarações de sinais para o teste
  signal clk_tb : std_logic := '0';  -- Sinal de clock para o teste
  signal reset_reg_tb : std_logic := '0';
  signal enable_tb : std_logic := '0';
  signal dinheiro_guardado_reg_tb : std_logic_vector(5 downto 0) := (others => '0');
  signal dinheiro_registrado_reg_tb : std_logic_vector(5 downto 0);
begin
  -- Instanciação do componente reg_dinheiro
  UUT: reg_dinheiro
    generic map (
      num_bits => 6
    )
    port map (
      clk => clk_tb,
      reset_reg => reset_reg_tb,
      enable => enable_tb,
      dinheiro_guardado_reg => dinheiro_guardado_reg_tb,
      dinheiro_registrado_reg => dinheiro_registrado_reg_tb
    );

  -- Processo para gerar o clock
  clk_process: process
  begin
    while now <= 100 ns loop
      clk_tb <= '0';
      wait for 5 ns;
      clk_tb <= '1';
      wait for 5 ns;
    end loop;
    wait;
  end process;

  -- Estímulo de teste
  stimulus: process
  begin
    reset_reg_tb <= '1';
    wait for 10 ns;
    reset_reg_tb <= '0';

    -- Teste 1: dinheiro_guardado_reg diferente de 0, enable = 0
    dinheiro_guardado_reg_tb <= "110010";
    enable_tb <= '0';
    wait for 10 ns;

    -- Teste 2: dinheiro_guardado_reg diferente de 0, enable = 1
    dinheiro_guardado_reg_tb <= "101001";
    enable_tb <= '1';
    wait for 10 ns;

    -- Teste 3: dinheiro_guardado_reg igual a 0, enable = 1
    dinheiro_guardado_reg_tb <= "000000";
    enable_tb <= '1';
    wait for 10 ns;

    -- Adicione mais testes conforme necessário

    wait;
  end process;

end Behavioral;
