library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AddRoundKey is
	generic 
	(
		DATA_WIDTH : natural := 32
	);
	port 
	(
		col_0_add		: in std_logic_vector((DATA_WIDTH-1) downto 0);
		col_1_add		: in std_logic_vector((DATA_WIDTH-1) downto 0);
		col_2_add		: in std_logic_vector((DATA_WIDTH-1) downto 0);
		col_3_add		: in std_logic_vector((DATA_WIDTH-1) downto 0);
		key				: in std_logic_vector(127 downto 0);
		output			: out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of AddRoundKey is
signal input	: std_logic_vector(127 downto 0);
begin
	input <= col_0_add & col_1_add & col_2_add & col_3_add;
	output <= input xor key;

end rtl;
