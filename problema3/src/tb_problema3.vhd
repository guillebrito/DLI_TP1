LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_problema3 IS
END tb_problema3;

ARCHITECTURE a OF tb_problema3 IS

	COMPONENT problema3 IS
		PORT (
			A, B, C, D : IN std_logic;
			display    : OUT std_logic_vector (6 DOWNTO 0)
		);
	END COMPONENT problema3;

	SIGNAL InA, InB, InC, InD : std_logic;
	SIGNAL salida             : std_logic_vector (6 DOWNTO 0);

BEGIN

	uut : problema3 PORT MAP(InA, InB, InC, InD, salida); -- instancio paridades

	PROCESS
	BEGIN

		InA <= '1';
		InB <= '0';
		InC <= '0';
		InD <= '1';
		WAIT FOR 10 ns;

		InA <= '0';
		InB <= '1';
		InC <= '0';
		InD <= '1';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '1';
		InC <= '1';
		InD <= '0';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '1';
		InC <= '0';
		InD <= '0';
		WAIT FOR 10 ns;

		InA <= '1';
		InB <= '0';
		InC <= '1';
		InD <= '0';
		WAIT FOR 10 ns;

	END PROCESS;
END a;
