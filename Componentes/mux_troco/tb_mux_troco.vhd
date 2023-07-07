library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_mux_troco is
end tb_mux_troco;

architecture tb_arch of tb_mux_troco is
    -- Component declaration for the DUT (Device Under Test)
    component mux_troco
        port (
            valor_troco : in std_logic_vector(5 downto 0);
            compra_valida : in std_logic;
            preparar : out std_logic;
            output_troco : out std_logic_vector(5 downto 0)
        );
    end component;

    -- Signals declaration
    signal valor_troco_tb : std_logic_vector(5 downto 0);
    signal compra_valida_tb : std_logic;
    signal preparar_tb : std_logic;
    signal output_troco_tb : std_logic_vector(5 downto 0);

begin
    -- Instantiate the DUT
    dut: mux_troco
        port map (
            valor_troco => valor_troco_tb,
            compra_valida => compra_valida_tb,
            preparar => preparar_tb,
            output_troco => output_troco_tb
        );

    -- Stimulus process
    stimulus_proc: process
    begin
        -- Test case 1: compra_valida = '1'
        valor_troco_tb <= "110011";
        compra_valida_tb <= '1';
        wait for 10 ns;
        assert output_troco_tb = "110011"
            report "Test case 1 failed" severity error;
        assert preparar_tb = '1'
            report "Test case 1 failed" severity error;

        -- Test case 2: compra_valida = '0'
        valor_troco_tb <= "001100";
        compra_valida_tb <= '0';
        wait for 10 ns;
        assert output_troco_tb = "000000"
            report "Test case 2 failed" severity error;
        assert preparar_tb = '0'
            report "Test case 2 failed" severity error;

        -- Add more test cases if needed

		  valor_troco_tb <= "000000";
        compra_valida_tb <= '1';
        wait for 10 ns;
        assert output_troco_tb = "000000"
            report "Test case 2 failed" severity error;
        assert preparar_tb = '0'
            report "Test case 2 failed" severity error;
				
        valor_troco_tb <= "001100";
        compra_valida_tb <= '1';
        wait for 10 ns;
        assert output_troco_tb = "000000"
            report "Test case 2 failed" severity error;
        assert preparar_tb = '0'
            report "Test case 2 failed" severity error;
        wait;
    end process;

end tb_arch;