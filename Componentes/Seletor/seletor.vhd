library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Seletor is
  generic (
    num_bits : integer := 3
  );
  port (
    entrada : in std_logic_vector(num_bits-1 downto 0);
    on_off : in std_logic;
    clk : in std_logic;  -- Adicionado o sinal de clock
    saida : out std_logic_vector(num_bits-1 downto 0)
  );
end Seletor;

architecture Behavioral of Seletor is
  signal reg_saida : std_logic_vector(num_bits-1 downto 0);  -- Registrador interno para sincronização
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if on_off = '1' then
        reg_saida <= entrada;  -- Armazena o valor de entrada no registrador interno
      else
        reg_saida <= (others => '0');
      end if;
    end if;
  end process;

  saida <= reg_saida;  -- Atribui o valor armazenado no registrador à saída
end Behavioral;