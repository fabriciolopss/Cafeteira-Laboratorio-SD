library ieee;
use ieee.std_logic_1164.all;

entity tb_Sinalizadora is
end entity tb_Sinalizadora;

architecture testbench of tb_Sinalizadora is
  -- Constant declarations
  constant CLK_PERIOD : time := 10 ns;

  -- Component declaration
  component Sinalizadora is
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
		output_dinheiro_guardado_momento: out std_logic_vector(5 downto 0);
      output_acucar: out std_logic;
      start : in std_logic;
      clk : in std_logic;
      cancelar : in std_logic
    );
  end component Sinalizadora;

  -- Signal declarations
  signal reset_signal : std_logic := '0';
  signal entrada_signal : std_logic_vector(5 downto 0) := (others => '0');
  signal bebida_signal : std_logic_vector(2 downto 0) := (others => '0');
  signal tamanho_signal : std_logic_vector(1 downto 0) := (others => '0');
  signal temperatura_signal : std_logic_vector(1 downto 0) := (others => '0');
  signal acucar_signal : std_logic := '0';
  signal alerta_cheio_signal : std_logic;
  signal dar_troco_signal : std_logic;
  signal output_troco_signal : std_logic_vector(5 downto 0);
  signal output_bebida_signal : std_logic_vector(2 downto 0);
  signal output_temperatura_signal : std_logic_vector(1 downto 0);
  signal output_tamanho_signal : std_logic_vector(1 downto 0);
  signal output_acucar_signal : std_logic;
  signal output_dinheiro_guardado_momento_signal: std_logic_vector(5 downto 0);
  signal start_signal : std_logic := '0';
  signal clk_signal : std_logic := '0';
  signal cancelar_signal : std_logic := '0';

begin
  -- Instantiate the Sinalizadora component
  dut: Sinalizadora
    port map (
      reset => reset_signal,
      entrada => entrada_signal,
      bebida => bebida_signal,
      tamanho => tamanho_signal,
      temperatura => temperatura_signal,
      acucar => acucar_signal,
      alerta_cheio => alerta_cheio_signal,
      dar_troco => dar_troco_signal,
      output_troco => output_troco_signal,
      output_bebida => output_bebida_signal,
      output_temperatura => output_temperatura_signal,
      output_tamanho => output_tamanho_signal,
      output_acucar => output_acucar_signal,
      start => start_signal,
      clk => clk_signal,
      cancelar => cancelar_signal,
		output_dinheiro_guardado_momento => output_dinheiro_guardado_momento_signal
    );

  -- Clock process
  clk_process: process
  begin
    while now < 1000 ns loop  -- Run for 1000 ns
      clk_signal <= '0';
      wait for CLK_PERIOD / 2;
      clk_signal <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
    wait;
  end process clk_process;

  -- Stimulus process
stimulus_process: process
begin
  -- Reset
  reset_signal <= '1';
  wait for 20 ns;
  reset_signal <= '0';

  -- Set input values
  for i in 0 to 3 loop
    case i is
      when 0 =>
        entrada_signal <= "011010";
        bebida_signal <= "010";
        tamanho_signal <= "01";
        temperatura_signal <= "01";
        acucar_signal <= '1';
      when 1 =>
        entrada_signal <= "001111";
        bebida_signal <= "001";
        tamanho_signal <= "10";
        temperatura_signal <= "10";
        acucar_signal <= '0';
      when 2 =>
        entrada_signal <= "001010";
        bebida_signal <= "011";
        tamanho_signal <= "01";
        temperatura_signal <= "10";
        acucar_signal <= '1';
      when 3 =>
        entrada_signal <= "010011";
        bebida_signal <= "011";
        tamanho_signal <= "11";
        temperatura_signal <= "00";
        acucar_signal <= '0';
      when others =>
        null;
    end case;

    start_signal <= '1';

    -- Wait for 100 ns
    wait for 100 ns;

    -- Cancel transaction
    cancelar_signal <= '0';

    wait for 20 ns;

    -- End simulation if all test cases have been executed
    if i = 3 then
      wait;
    end if;
  end loop;
end process stimulus_process;

end architecture testbench;