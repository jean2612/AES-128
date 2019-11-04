library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reg_8b is
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		input	   : in std_logic_vector(7 downto 0);
		output	: out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of Reg_8b is

begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			output <= input;
		end if;
	end process;

end rtl;
