library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_dinheiro is
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
end reg_dinheiro;

architecture rtl of reg_dinheiro is
begin
   process(clk, reset_reg)
   begin
      if reset_reg = '1' then
         dinheiro_registrado_reg <= (others => '0');
      elsif rising_edge(clk) then
         if unsigned(dinheiro_guardado_reg) /= 0 then
            if enable = '1' then
               dinheiro_registrado_reg <= dinheiro_guardado_reg;
            end if;
         end if;
      end if;
   end process;
end rtl;