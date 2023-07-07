library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_subtrator_troco is
end tb_subtrator_troco;

architecture test of tb_subtrator_troco is
    signal fio_valor_bebida: std_logic_vector(2 downto 0);
    signal fio_dinheiro_guardado: std_logic_vector(5 downto 0);
    signal fio_valor_troco: std_logic_vector(5 downto 0);

    component subtrator_troco is
        port (  valor_bebida      : in std_logic_vector(2 downto 0);
                dinheiro_guardado : in std_logic_vector(5 downto 0);
                valor_troco : out std_logic_vector(5 downto 0));
    end component;
begin
    uut: subtrator_troco port map (valor_bebida=>fio_valor_bebida, valor_troco=>fio_valor_troco, dinheiro_guardado=>fio_dinheiro_guardado);

    process
    begin
        fio_valor_bebida <= "000";
        fio_dinheiro_guardado <= "000000";
        wait for 10 ns;
        assert (fio_valor_troco = "000000") report "Test failed for fio_valor_bebida = 000 and fio_dinheiro_guardado = 000000" severity error;

        fio_valor_bebida <= "001";
        fio_dinheiro_guardado <= "000001";
        wait for 10 ns;
        assert (fio_valor_troco = "000000") report "Test failed for fio_valor_bebida = 001 and fio_dinheiro_guardado = 000001" severity error;

        -- Add more test cases here

        report "All tests passed!" severity note;
        wait;
    end process;
end test;