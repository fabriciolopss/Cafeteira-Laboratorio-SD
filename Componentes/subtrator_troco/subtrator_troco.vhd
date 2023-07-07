library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity subtrator_troco is
    port (  valor_bebida      : in std_logic_vector(2 downto 0);
            dinheiro_guardado : in std_logic_vector(5 downto 0);
				valor_troco : out std_logic_vector(5 downto 0));
end subtrator_troco;

architecture comportamental of subtrator_troco is
begin  
		valor_troco <= dinheiro_guardado - valor_bebida;
end comportamental;