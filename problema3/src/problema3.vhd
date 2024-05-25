LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY problema3 IS
	PORT (
		A, B, C, D : IN std_logic;
		anodo      : OUT std_logic;
		display    : OUT std_logic_vector (6 DOWNTO 0)
	);
END ENTITY problema3;

ARCHITECTURE arquitectura OF problema3 IS

	SIGNAL aa, bb, cc, dd, votos : integer                       := 0;
	SIGNAL aprobado              : std_logic_vector (6 DOWNTO 0) := "0001000";
	SIGNAL desaprobado           : std_logic_vector (6 DOWNTO 0) := "1000010";

BEGIN

	anodo <= '0';

	WITH A SELECT
		aa <= 10 WHEN '1',
		0 WHEN OTHERS;
	WITH B SELECT
		bb <= 15 WHEN '1',
		0 WHEN OTHERS;
	WITH C SELECT
		cc <= 30 WHEN '1',
		0 WHEN OTHERS;
	WITH D SELECT
		dd <= 45 WHEN '1',
		0 WHEN OTHERS;

	PROCESS (aa, bb, cc, dd)
	BEGIN
		display <= desaprobado;
		IF (aa + bb + cc + dd) > 50 THEN
			display <= aprobado;
		END IF;
	END PROCESS;

END ARCHITECTURE arquitectura;
