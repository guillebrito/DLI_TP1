LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_problema1 IS
END tb_problema1;

ARCHITECTURE a OF tb_problema1 IS

	COMPONENT problema1 IS -- declaro componente de paridades.vhdl
		PORT (
			A, B, C : IN std_logic;
			Z       : OUT std_logic
		);
	END COMPONENT;

	SIGNAL InA, InB, InC : std_logic;
	SIGNAL salida        : std_logic;

BEGIN

	uut : problema1 PORT MAP(InA, InB, InC, salida); -- instancio paridades
	
	PROCESS
	BEGIN
		InA <= '0';
		InB <= '0';
		InC <= '0';
		WAIT FOR 10 ns;

		InA <= '0';
		InB <= '0';
		InC <= '1';
		WAIT FOR 10 ns;

		InA <= '0';
		InB <= '1';
		InC <= '0';
		WAIT FOR 10 ns;

		InA <= '0';
		InB <= '1';
		InC <= '1';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '0';
		InC <= '0';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '0';
		InC <= '1';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '1';
		InC <= '0';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '1';
		InC <= '1';
		WAIT FOR 10 ns;

	END PROCESS;
END a;
