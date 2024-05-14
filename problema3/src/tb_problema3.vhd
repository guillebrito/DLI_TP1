library ieee;
use ieee.std_logic_1164.all;

entity tb_problema3 is
end tb_problema3;

architecture a of tb_problema3 is

	component problema3 is
		port(
			A,B,C,D   :in std_logic;
			display   :out std_logic_vector (6 downto 0)
		);
	end component problema3;

signal InA, InB, InC, InD : std_logic;
signal salida : std_logic_vector (6 downto 0);

begin

	uut: problema3  port map (InA, InB, InC, InD, salida); -- instancio paridades
	
	Process 
	begin
		
		InA <= '1';
		InB <= '0';
		InC <= '0';
		InD <= '1'; wait for 10 ns;
		
		InA <= '0';
		InB <= '1';
		InC <= '0';
		InD <= '1'; wait for 10 ns;

		InA <= '1';
		InB <= '1';
		InC <= '1';
		InD <= '0'; wait for 10 ns;
		
		InA <= '1';
		InB <= '1';
		InC <= '0';
		InD <= '0'; wait for 10 ns;
		
		InA <= '1';
		InB <= '0';
		InC <= '1';
		InD <= '0'; wait for 10 ns;

	End process;	
end a;