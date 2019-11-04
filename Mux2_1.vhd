library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux2_1 is
	port 
	(
		sel		: in std_logic;
		a		   : in std_logic_vector(7 downto 0);
		b		   : in std_logic_vector(7 downto 0);
		output	: out std_logic_vector(7 downto 0)
	);

end entity;

architecture rtl of Mux2_1 is

begin

	output <= a when sel = '0' else
				 b;

end rtl;
