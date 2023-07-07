library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador_dinheiro is
    port (  entrada_somador,dinheiro_registrado    : in std_logic_vector(5 downto 0);
            dinheiro_guardado      : out std_logic_vector(5 downto 0));
end somador_dinheiro;

architecture comportamental of somador_dinheiro is
begin
    process(entrada_somador, dinheiro_registrado)
    begin
        if (entrada_somador + dinheiro_registrado> "110010") then
            dinheiro_guardado <= "110010";
        else
            dinheiro_guardado <= entrada_somador + dinheiro_registrado;
        end if;
    end process;
end comportamental;