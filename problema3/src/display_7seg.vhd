library IEEE;
use IEEE.std_logic_1164.all;

entity display_7seg is
    port (
        entrada         : in std_logic_vector (3 downto 0);
        segmentos       : out std_logic_vector(6 downto 0)
    );
end display_7seg;

architecture solucion of display_7seg is

begin

    with entrada select
        segmentos <=  "1111110" when "0000", -- Mostrar 0
                      "0110000" when "0001", -- Mostrar 1
                      "1101101" when "0010", -- Mostrar 2
                      "1111001" when "0011", -- Mostrar 3
                      "0110011" when "0100", -- Mostrar 4
                      "1011011" when "0101", -- Mostrar 5
                      "1011111" when "0110", -- Mostrar 6
                      "1110000" when "0111", -- Mostrar 7
                      "1111111" when "1000", -- Mostrar 8
                      "1110011" when "1001", -- Mostrar 9
                      "0000000" when others; 
end architecture solucion;
