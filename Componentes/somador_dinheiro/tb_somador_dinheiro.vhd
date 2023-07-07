library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_somador_dinheiro is
end tb_somador_dinheiro;

architecture teste of tb_somador_dinheiro is

    component somador_dinheiro is
        port (  entrada, dinheiro_registrado    : in std_logic_vector(5 downto 0);
                dinheiro_guardado   : out std_logic_vector(5 downto 0));
    end component;

    signal fio_entrada, fio_dinheiro_registrado, fio_dinheiro_guardado: std_logic_vector(5 downto 0);

begin
    instancia_somador_dinheiro: somador_dinheiro port map(entrada=>fio_entrada, dinheiro_registrado=>fio_dinheiro_registrado, dinheiro_guardado=>fio_dinheiro_guardado);

    fio_entrada <= "000000", "000011" after 20 ns, "000010" after 40 ns, "000100" after 60 ns, "000001" after 80 ns;
    fio_dinheiro_registrado <= "000000", "000100" after 10 ns, "000011" after 30 ns, "000001" after 50 ns, "110010" after 70 ns;
end teste;