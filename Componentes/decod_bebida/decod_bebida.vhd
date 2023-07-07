library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decod_bebida is
    Port ( tamanho : in STD_LOGIC_VECTOR (1 downto 0);
           tipo_bebida : in STD_LOGIC_VECTOR (2 downto 0);
           valor_bebida : out STD_LOGIC_VECTOR (2 downto 0));
end decod_bebida;

architecture Behavioral of decod_bebida is
begin
    process (tamanho, tipo_bebida)
    begin
        if tamanho & tipo_bebida = "00000" then
            valor_bebida <= "010";
        elsif tamanho & tipo_bebida = "00001" then
            valor_bebida <= "011";
        elsif tamanho & tipo_bebida = "00010" then
            valor_bebida <= "100";
        elsif tamanho & tipo_bebida = "00100" then
            valor_bebida <= "100";
        elsif tamanho & tipo_bebida = "00101" then
            valor_bebida <= "101";
        elsif tamanho & tipo_bebida = "00110" then
            valor_bebida <= "110";
        elsif tamanho & tipo_bebida = "01000" then
            valor_bebida <= "101";
        elsif tamanho & tipo_bebida = "01001" then
            valor_bebida <= "110";
        elsif tamanho & tipo_bebida = "01010" then
            valor_bebida <= "111";
        elsif tamanho & tipo_bebida = "01100" then
            valor_bebida <= "100";
        elsif tamanho & tipo_bebida = "01101" then
            valor_bebida <= "101";
        elsif tamanho & tipo_bebida = "01110" then
            valor_bebida <= "110";
        elsif tamanho & tipo_bebida = "10000" then
            valor_bebida <= "011";
        elsif tamanho & tipo_bebida = "10001" then
            valor_bebida <= "100";
        elsif tamanho & tipo_bebida = "10010" then
            valor_bebida <= "101";
        --else
            -- Replace some_value with a valid value or remove this else statement if not needed.
            --valor_bebida <= some_value;
        end if;
    end process;
end Behavioral;