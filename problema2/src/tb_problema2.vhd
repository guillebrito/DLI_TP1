library ieee;
use ieee.std_logic_1164.all;

entity tb_problema2 is
end tb_problema2;

architecture a of tb_problema2 is

	component problema2 is	  -- declaro componente de paridades.vhdl
		port(
			clk_50Mhz,rst  :in std_logic;
			led       :out std_logic
		);
	end component;

	signal clk, reset : std_logic;
	signal salida : std_logic;

	begin
		uut: problema2  port map (clk, reset, salida); -- instancio paridades
		
		Process 
			begin
			clk 	<= '1';
			reset 	<= '0'; wait for 10 ns;
			clk 	<= '0';
			reset 	<= '0'; wait for 10 ns;
		End process;	
end a;