library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
  port (
	 start : in std_logic;
	 seleciona_bebida: out std_logic;
	 seleciona_tamanho: out std_logic;
	 seleciona_temperatura:out std_logic;
	 seleciona_acucar: out std_logic;
	 colocar_dinheiro: out std_logic;
	 comecar_preparar: out std_logic;
	 alerta_cheio: out std_logic;
	 dar_troco: out std_logic;
	 preparar: out std_logic;
	 reset: in std_logic;
	 clk: in std_logic;
	 cancelar: in std_logic;
	 validade_compra: in std_logic
	 
  );
end entity Controladora;

architecture rtl of Controladora is
  type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10);
  signal state, next_state : state_type;
begin

  process (clk, reset)
  begin
    if reset = '1' then
      state <= S0;
    elsif rising_edge(clk) then
      state <= next_state;
    end if;
  end process;

  process (state)
  begin
    seleciona_bebida <= '0';
    seleciona_acucar <= '0';
    seleciona_tamanho <= '0';
    seleciona_temperatura <= '0';
    colocar_dinheiro <= '0';
	 preparar <= '0';
	 alerta_cheio <= '0';
	 dar_troco <= '0';
    case state is
      when S0 =>
        next_state <= S1;
      when S1 =>
			if start = '1' then
				next_state <= S2;
			else
				next_state <= S1;
			end if;
		when S2 =>
			 seleciona_bebida <= '1';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '0';
			 preparar <= '0';
			 alerta_cheio <= '0';
			 dar_troco <= '0';
			if cancelar = '1' then
				next_state <= S10;
			else
				next_state <= S3;
			end if;
      when S3 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '1';
			 colocar_dinheiro <= '0';
			 preparar <= '0';
			 alerta_cheio <= '0';
			 dar_troco <= '0';
			if cancelar = '1' then
				next_state <= S10;
			else 
				next_state <= S4;
			end if;
      when S4 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '1';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '0';
			 preparar <= '0';
			 alerta_cheio <= '0';
			 dar_troco <= '0';
			if cancelar = '1' then
				next_state <= S10;
			else 
				next_state <= S5;
			end if;
      when S5 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '1';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '0';
			 preparar <= '0';
			 alerta_cheio <= '0';
			 dar_troco <= '0';
			if cancelar = '1' then
				next_state <= S10;
			else 
				next_state <= S6;
			end if;
      when S6 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '1';
			 preparar <= '0';
			 alerta_cheio <= '0';
			 dar_troco <= '0';
			next_state <= S7;
      when S7 =>
			if validade_compra = '1' then
				next_state <= S8;
			else
				next_state <= S10;
			end if;
      when S8 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '0';
			 preparar <= '1';
			 alerta_cheio <= '0';
			 dar_troco <= '0';
			next_state <= S9;

      when S9 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '0';
			 preparar <= '0';
			 alerta_cheio <= '1';
			 dar_troco <= '0';
			next_state <= S10;
      when S10 =>
			 seleciona_bebida <= '0';
			 seleciona_acucar <= '0';
			 seleciona_tamanho <= '0';
			 seleciona_temperatura <= '0';
			 colocar_dinheiro <= '0';
			 preparar <= '0';
			 alerta_cheio <= '0';
			 dar_troco <= '1';
			next_state <= S0;
    end case;
  end process;

end architecture rtl;
