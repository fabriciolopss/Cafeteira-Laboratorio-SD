entity tb_Controladora is
end entity tb_Controladora;

architecture testbench of tb_Controladora is
    signal start, cancelar, dinheiro, dar_troco, alerta_cheio, bebida, tamanho, temperatura, acucar, preparar: std_logic;
    signal state: integer := 1;

    constant CLK_PERIOD: time := 10 ns;

begin
    -- Estímulo de clock
    clk_process: process
    begin
        while now < 1000 ns loop
            wait for CLK_PERIOD / 2;
            state <= state + 1;
        end loop;
        wait;
    end process clk_process;

    -- Estímulo de entrada
    stimulus_process: process
    begin
			-- Teste 1: Verificar se a controladora vai para o estado S2 quando start = '1', cancelar = '0', dinheiro = '0', 
			-- dar_troco = '0', alerta_cheio = '0', bebida = '0', tamanho = '0', temperatura = '0', acucar = '0'
        start <= '1';
        cancelar <= '0';
        dinheiro <= '0';
        dar_troco <= '0';
        alerta_cheio <= '0';
        bebida <= '0';
        tamanho <= '0';
        temperatura <= '0';
        acucar <= '0';
        wait for CLK_PERIOD;
        assert (state = 2)
            report "Test 1 Failed" severity error;

        -- Teste 2: Verificar se a controladora vai para o estado S1 quando start = '0', cancelar = '0', dinheiro = '0',
		  -- dar_troco = '0', alerta_cheio = '0', bebida = '0', tamanho = '0', temperatura = '0', acucar = '0'
        start <= '0';
        cancelar <= '0';
        dinheiro <= '0';
        dar_troco <= '0';
        alerta_cheio <= '0';
        bebida <= '0';
        tamanho <= '0';
        temperatura <= '0';
        acucar <= '0';
        wait for CLK_PERIOD;
        assert (state = 1)
            report "Test 2 Failed" severity error;

        -- Teste 3: Verificar se a controladora vai para o estado S1 quando start = '1', cancelar = '1', dinheiro = '0', 
		  --dar_troco = '0', alerta_cheio = '0', bebida = '0', tamanho = '0', temperatura = '0', acucar = '0'
        start <= '1';
        cancelar <= '1';
        dinheiro <= '0';
        dar_troco <= '0';
        alerta_cheio <= '0';
        bebida <= '0';
        tamanho <= '0';
        temperatura <= '0';
        acucar <= '0';
        wait for CLK_PERIOD;
        assert (state = 1)
            report "Test 3 Failed" severity error;

        -- Adicione mais testes aqui

        wait;
    end process stimulus_process;

end architecture testbench;