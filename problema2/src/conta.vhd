LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY conta IS
	GENERIC (
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 256);

	PORT (
		clk    : IN std_logic;
		reset  : IN std_logic;
		enable : IN std_logic;
		cout   : OUT std_logic;
		q      : OUT integer RANGE MIN_COUNT TO MAX_COUNT);
END ENTITY;

ARCHITECTURE rtl OF conta IS
BEGIN
	PROCESS (clk)
		VARIABLE cnt : integer RANGE MIN_COUNT TO MAX_COUNT;
	BEGIN
		IF (rising_edge(clk)) THEN
			IF reset = '1' THEN
				cnt := 0;
			ELSIF enable = '1' THEN
				cnt := cnt + 1;
				IF cnt <= max_count/2 THEN
					cout   <= '0';
				ELSE
					cout <= '1';
				END IF;
				IF cnt = MAX_COUNT THEN
					cnt := 0;
				END IF;
			END IF;
		END IF;
		q <= cnt;
		--if cnt=MAX_COUNT then cnt:=0; end if;
	END PROCESS;
END rtl;
