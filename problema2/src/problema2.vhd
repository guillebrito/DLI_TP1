LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY problema2 IS
	PORT (
		clk_50Mhz, rst : IN std_logic;
		led            : OUT std_logic
	);
END ENTITY problema2;
ARCHITECTURE logic OF problema2 IS

	COMPONENT conta IS
		GENERIC (
			MIN_COUNT : natural := 0;
			MAX_COUNT : natural := 256);

		PORT (
			clk    : IN std_logic;
			reset  : IN std_logic;
			enable : IN std_logic;
			cout   : OUT std_logic;
			q      : OUT integer RANGE MIN_COUNT TO MAX_COUNT);
	END COMPONENT conta;

	SIGNAL clk_1hz : std_logic;

BEGIN
	cnt : conta GENERIC MAP(0, 50_000_000) -- 50_000_000 para 1 seg
	PORT MAP(clk_50Mhz, rst, '1', clk_1hz, OPEN);

	led <= clk_1hz;
END ARCHITECTURE logic;
