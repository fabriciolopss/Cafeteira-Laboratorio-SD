library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decod_bebida is
end tb_decod_bebida;

architecture Behavioral of tb_decod_bebida is

    -- Component declaration for the unit under test (UUT)
    component decod_bebida
        Port ( tamanho : in STD_LOGIC_VECTOR (1 downto 0);
               tipo_bebida : in STD_LOGIC_VECTOR (2 downto 0);
               valor_bebida : out STD_LOGIC_VECTOR (2 downto 0));
    end component;

    -- Inputs
    signal fio_tamanho : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal fio_tipo_bebida : STD_LOGIC_VECTOR (2 downto 0) := "000";

    -- Outputs
    signal fio_valor_bebida : STD_LOGIC_VECTOR (2 downto 0);

begin

    -- Instantiate the unit under test (UUT)
    uut: decod_bebida port map (
        tamanho => fio_tamanho,
        tipo_bebida => fio_tipo_bebida,
        valor_bebida => fio_valor_bebida
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: fio_tamanho = "00", fio_tipo_bebida = "000"
        fio_tamanho <= "00";
        fio_tipo_bebida <= "000";
        wait for 10 ns;
        assert (fio_valor_bebida = "010") report "Test case 1 failed" severity error;

        -- Test case 2: fio_tamanho = "00", fio_tipo_bebida = "001"
        fio_tamanho <= "00";
        fio_tipo_bebida <= "001";
        wait for 10 ns;
        assert (fio_valor_bebida = "011") report "Test case 2 failed" severity error;

        -- Test case 3: fio_tamanho = "00", fio_tipo_bebida = "010"
        fio_tamanho <= "00";
        fio_tipo_bebida <= "010";
        wait for 10 ns;
        assert (fio_valor_bebida = "100") report "Test case 3 failed" severity error;

        -- Add more test cases here...

        -- End simulation
        report "Simulation finished successfully" severity note;
        wait;
    end process;

end Behavioral;