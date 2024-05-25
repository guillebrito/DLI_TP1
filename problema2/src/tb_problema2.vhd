LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_problema2 IS
END tb_problema2;

ARCHITECTURE a OF tb_problema2 IS

	COMPONENT problema2 IS -- declaro componente de paridades.vhdl
		PORT (
			clk_50Mhz, rst : IN std_logic;
			led            : OUT std_logic
		);
	END COMPONENT;

	SIGNAL clk, reset : std_logic;
	SIGNAL salida     : std_logic;

BEGIN
	uut : problema2 PORT MAP(clk, reset, salida); -- instancio paridades

	PROCESS
	BEGIN
		clk   <= '1';
		reset <= '0';
		WAIT FOR 10 ns;
		clk   <= '0';
		reset <= '0';
		WAIT FOR 10 ns;
	END PROCESS;
END a;
