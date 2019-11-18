library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MixColumns is
	port 
	(
		col_0_mix		   : in std_logic_vector(31 downto 0);
		col_1_mix		   : in std_logic_vector(31 downto 0);
		col_2_mix		   : in std_logic_vector(31 downto 0);
		col_3_mix		   : in std_logic_vector(31 downto 0);
		new_col_mix_0, new_col_mix_1, new_col_mix_2, new_col_mix_3 : out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of MixColumns is
component MixColumn is
	port 
	(
		col_0		   : in std_logic_vector(31 downto 0);
		new_col_0 	: out std_logic_vector(31 downto 0)
	);

end component;

begin

	Col0: MixColumn
	port map
	(
		col_0 => col_0_mix,
		new_col_0 => new_col_mix_0
	);
	Col1: MixColumn
	port map
	(
		col_0 => col_1_mix,
		new_col_0 => new_col_mix_1
	);
	Col2: MixColumn
	port map
	(
		col_0 => col_2_mix,
		new_col_0 => new_col_mix_2
	);
	Col3: MixColumn
	port map
	(
		col_0 => col_3_mix,
		new_col_0 => new_col_mix_3
	);
	
end rtl;
