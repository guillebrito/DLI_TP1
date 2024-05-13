LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY problema1 IS
	PORT (
		A, B, C : IN std_logic;
		Z       : OUT std_logic
	);
END ENTITY problema1;

ARCHITECTURE logic OF problema1 IS

	SIGNAL D, E : std_logic;

BEGIN

	D <= A AND B;
	E <= A AND C;
	Z <= D OR E;

END ARCHITECTURE logic;
