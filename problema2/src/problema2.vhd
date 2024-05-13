library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity problema2 is
    port(
        clk_50Mhz, rst  :in std_logic;
        led       		:out std_logic
    );
end entity problema2;


architecture logic of problema2 is 

	component conta is
		generic	(
			MIN_COUNT : natural := 0;
			MAX_COUNT : natural := 256	);
	
		port	(
			clk		: in std_logic;
			reset	: in std_logic;
			enable	: in std_logic;
			cout	: out std_logic;
			q		: out integer range MIN_COUNT to MAX_COUNT);
	end component conta;
	
	signal clk_1hz : std_logic;

	begin
    cnt: conta generic map (0,10) -- 50_000_000 para 1 seg
        port map(clk_50Mhz, rst, '1', clk_1hz, open);
    
    led <= clk_1hz;
end architecture logic;