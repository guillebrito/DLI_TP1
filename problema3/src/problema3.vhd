library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity problema3 is
    port(
        A,B,C,D   :in std_logic;
        display   :out std_logic_vector (6 downto 0)
    );
end entity problema3;

architecture arquitectura of problema3 is 
   
    signal aa,bb,cc,dd,votos  : integer := 0;
    signal aprobado     : std_logic_vector (6 downto 0) := "1110111";
    signal desaprobado  : std_logic_vector (6 downto 0) := "0111101";

begin

    with A select 
        aa <=   10 when '1',
                0  when others;
    with B select 
        bb <=   15 when '1',
                0  when others;
    with C select 
        cc <=   30 when '1',
                0  when others;
    with D select 
        dd <=   45 when '1',
                0  when others;
                
    process(aa, bb, cc, dd)
    begin
        display <= desaprobado;
        if (aa+bb+cc+dd) > 50 then
            display <= aprobado;
        end if; 
    end process;
             
end architecture arquitectura;