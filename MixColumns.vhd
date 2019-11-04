library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MixColumns is
	port 
	(
		col_0		   : in std_logic_vector(31 downto 0);
		col_1		   : in std_logic_vector(31 downto 0);
		col_2		   : in std_logic_vector(31 downto 0);
		col_3		   : in std_logic_vector(31 downto 0);
		output		: out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of MixColumns is

signal new_col_0, new_col_1, new_col_2, new_col_3 : std_logic_vector(31 downto 0);

begin

	--Coluna 0
	new_col_0(31 downto 24) <= (2*col_0(31 downto 24)) xor ((2*col_0(23 downto 16)) xor col_0) xor col_0(15 downto 8) xor col_0(7 downto 0);
	new_col_0(23 downto 16) <= col_0(31 downto 24) xor (2*col_0(23 downto 16)) xor ((2*col_0(15 downto 8)) xor col_0(15 downto 8)) xor col_0(7 downto 0);
	new_col_0(15 downto 8)	<= col_0(31 downto 24) xor col_0(23 downto 16) xor (2*col_0(15 downto 8)) xor ((2*col_0(7 downto 0)) xor col_0(7 downto 0));
	new_col_0(7 downto 0)	<= ((2*col_0(31 downto 24)) xor col_0(31 downto 24)) xor col_0(23 downto 16) xor col_0(15 downto 8) xor (2*col_0(7 downto 0));

	--Coluna 1
	new_col_1(31 downto 24) <= (2*col_1(31 downto 24)) xor ((2*col_1(23 downto 16)) xor col_1) xor col_1(15 downto 8) xor col_1(7 downto 0);
	new_col_1(23 downto 16) <= col_1(31 downto 24) xor (2*col_1(23 downto 16)) xor ((2*col_1(15 downto 8)) xor col_1(15 downto 8)) xor col_1(7 downto 0);
	new_col_1(15 downto 8)	<= col_1(31 downto 24) xor col_1(23 downto 16) xor (2*col_1(15 downto 8)) xor ((2*col_1(7 downto 0)) xor col_1(7 downto 0));
	new_col_1(7 downto 0)	<= ((2*col_1(31 downto 24)) xor col_1(31 downto 24)) xor col_1(23 downto 16) xor col_1(15 downto 8) xor (2*col_1(7 downto 0));
	
	--Coluna 2
	new_col_2(31 downto 24) <= (2*col_2(31 downto 24)) xor ((2*col_2(23 downto 16)) xor col_2) xor col_2(15 downto 8) xor col_2(7 downto 0);
	new_col_2(23 downto 16) <= col_2(31 downto 24) xor (2*col_2(23 downto 16)) xor ((2*col_2(15 downto 8)) xor col_2(15 downto 8)) xor col_2(7 downto 0);
	new_col_2(15 downto 8)	<= col_2(31 downto 24) xor col_2(23 downto 16) xor (2*col_2(15 downto 8)) xor ((2*col_2(7 downto 0)) xor col_2(7 downto 0));
	new_col_2(7 downto 0)	<= ((2*col_2(31 downto 24)) xor col_2(31 downto 24)) xor col_2(23 downto 16) xor col_2(15 downto 8) xor (2*col_2(7 downto 0));
	
	--Coluna 3
	new_col_3(31 downto 24) <= (2*col_3(31 downto 24)) xor ((2*col_3(23 downto 16)) xor col_3) xor col_3(15 downto 8) xor col_3(7 downto 0);
	new_col_3(23 downto 16) <= col_3(31 downto 24) xor (2*col_3(23 downto 16)) xor ((2*col_3(15 downto 8)) xor col_3(15 downto 8)) xor col_3(7 downto 0);
	new_col_3(15 downto 8)	<= col_3(31 downto 24) xor col_3(23 downto 16) xor (2*col_3(15 downto 8)) xor ((2*col_3(7 downto 0)) xor col_3(7 downto 0));
	new_col_3(7 downto 0)	<= ((2*col_3(31 downto 24)) xor col_3(31 downto 24)) xor col_3(23 downto 16) xor col_3(15 downto 8) xor (2*col_3(7 downto 0));
	
	output <= new_col_0 & new_col_1 & new_col_2 & new_col_3;
	
end rtl;
