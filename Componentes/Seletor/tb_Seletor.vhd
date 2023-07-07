library ieee;
use ieee.std_logic_1164.all;

entity tb_Seletor is
end tb_Seletor;

architecture Behavioral of tb_Seletor is
  component Seletor
    generic (
      num_bits : integer := 3
    );
    port (
      entrada : in std_logic_vector(num_bits-1 downto 0);
      on_off : in std_logic;
      clk : in std_logic;  -- Adicionado o sinal de clock
      saida : out std_logic_vector(num_bits-1 downto 0)
    );
  end component;
  
  -- Declarações de sinais para o teste
  signal entrada_tb : std_logic_vector(2 downto 0);
  signal on_off_tb : std_logic;
  signal saida_tb : std_logic_vector(2 downto 0);
  signal clk_tb : std_logic := '0';  -- Sinal de clock para o teste
begin
  -- Instanciação do componente Estrutura
  UUT: Seletor
    generic map (
      num_bits => 3
    )
    port map (
      entrada => entrada_tb,
      on_off => on_off_tb,
      clk => clk_tb,  -- Conectando o sinal de clock
      saida => saida_tb
    );
    
  -- Estímulo de teste
  stimulus: process
  begin
    -- Teste 1
    entrada_tb <= "110";
    on_off_tb <= '1';
    wait for 10 ns;
    
    -- Teste 2
    entrada_tb <= "001";
    on_off_tb <= '0';
    wait for 10 ns;
    
    -- Teste 3
    entrada_tb <= "101";
    on_off_tb <= '1';
    wait for 10 ns;
    
    -- Adicione mais testes conforme necessário
    
    wait;
  end process;
  
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
  
end Behavioral;
