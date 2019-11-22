library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux2_1 is
	port 
	(
		sel		: in std_logic_vector(3 downto 0);
		a	   	: in std_logic_vector(127 downto 0);
		b	   	: in std_logic_vector(127 downto 0);
		output 	: out std_logic_vector (127 downto 0)
	);

end entity;

architecture rtl of Mux2_1 is
begin

	output <= a when(sel = "0000") else
				b;

end rtl;
