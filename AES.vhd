library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AES is

	port 
	(
		input		: in std_logic_vector(127 downto 0);
		key		: in std_logic_vector(127 downto 0);
		output	: out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of AES is
begin


end rtl;
