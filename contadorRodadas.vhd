library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorRodadas is
	port
	(
		general_clk		  	: in std_logic;
		reset	  				: in std_logic;
		enable	  			: in std_logic;
		round		  			: out std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of contadorRodadas is
begin

	process (general_clk)
		variable   cnt		   : unsigned(3 downto 0);
	begin
		if (rising_edge(general_clk)) then

			if reset = '0' then
				-- Reset the counter to 0
				cnt := (others => '0');

			elsif enable = '1' then
				-- Increment the counter if counting is enabled			   
				cnt := cnt + 1;

			end if;
		end if;

		-- Output the current count
		round <= std_logic_vector(cnt);
	end process;

end rtl;
