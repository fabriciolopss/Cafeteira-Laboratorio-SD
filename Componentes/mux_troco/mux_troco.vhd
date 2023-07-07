library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_troco is
   
    port(
		valor_troco: in std_logic_vector(5 downto 0);
		compra_valida: in std_logic;
		preparar: out std_logic;
		output_troco: out std_logic_vector(5 downto 0)
    );
end mux_troco;

architecture rtl of mux_troco is
begin
	 process(valor_troco, compra_valida)
	 begin
    if compra_valida = '1' then
		output_troco <= valor_troco;
		preparar <= '1';
	 else
		output_troco <= "000000";
		preparar <= '0';
	 end if;
	 end process;
end rtl;