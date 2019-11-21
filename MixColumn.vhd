library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MixColumn is
	port 
	(
		col_0		   : in std_logic_vector(31 downto 0);
		new_col_0 	: out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of MixColumn is

signal shift_0, shift_1, shift_2, shift_3		: std_logic_vector(7 downto 0);
signal xor_0, xor_1, xor_2, xor_3				: std_logic_vector(7 downto 0);
signal teste_0, teste_1, teste_2, teste_3		: std_logic_vector(7 downto 0);

begin

	shift_0 <= std_logic_vector(shift_left(unsigned(col_0(31 downto 24)), 2)); -- A
	shift_1 <= std_logic_vector(shift_left(unsigned(col_0(23 downto 16)), 2)); -- B
	shift_2 <= std_logic_vector(shift_left(unsigned(col_0(15 downto 8)), 2)); -- C
	shift_3 <= std_logic_vector(shift_left(unsigned(col_0(7 downto 0)), 2)); -- D
	
	teste_0 <= shift_0 when (shift_0(7) = '0') else (shift_0 xor "00011011"); -- A
	teste_1 <= shift_1 when (shift_1(7) = '0') else (shift_1 xor "00011011"); -- B
	teste_2 <= shift_2 when (shift_2(7) = '0') else (shift_2 xor "00011011"); -- C
	teste_3 <= shift_3 when (shift_3(7) = '0') else (shift_3 xor "00011011"); -- D
	
	xor_0 <= teste_0 xor col_0(31 downto 24); -- A
	xor_1 <= teste_1 xor col_0(23 downto 16); -- B
	xor_2	<= teste_2 xor col_0(15 downto 8); -- C
	xor_3 <= teste_3 xor col_0(7 downto 0); -- D
	
	new_col_0(31 downto 24) <= teste_0 xor xor_1 xor col_0(15 downto 8) xor col_0(7 downto 0);
	new_col_0(23 downto 16) <= col_0(31 downto 24) xor teste_1 xor xor_2 xor col_0(7 downto 0);
	new_col_0(15 downto 8) 	<= col_0(31 downto 24) xor col_0(23 downto 16) xor teste_2 xor xor_3;
	new_col_0(7 downto 0)	<= xor_0 xor col_0(23 downto 16) xor col_0(15 downto 8) xor teste_3;
	
	--new_col_0(31 downto 24) <= std_logic_vector((to_unsigned(2, 8)*unsigned(col_0(31 downto 24))) xor ((to_unsigned(2, 8)*unsigned(col_0(23 downto 16))) xor unsigned(col_0)) xor unsigned(col_0(15 downto 8)) xor unsigned(col_0(7 downto 0)));
	--new_col_0(23 downto 16) <= std_logic_vector(unsigned(col_0(31 downto 24)) xor (to_unsigned(2, 8)*unsigned(col_0(23 downto 16))) xor ((to_unsigned(2, 8)*unsigned(col_0(15 downto 8))) xor unsigned(col_0(15 downto 8))) xor unsigned(col_0(7 downto 0)));
	--new_col_0(15 downto 8)	<= std_logic_vector(unsigned(col_0(31 downto 24)) xor unsigned(col_0(23 downto 16)) xor (to_unsigned(2, 8)*unsigned(col_0(15 downto 8))) xor ((to_unsigned(2, 8)*unsigned(col_0(7 downto 0))) xor unsigned(col_0(7 downto 0))));
	--new_col_0(7 downto 0)	<= std_logic_vector(((to_unsigned(2, 8)*unsigned(col_0(31 downto 24))) xor unsigned(col_0(31 downto 24))) xor unsigned(col_0(23 downto 16)) xor unsigned(col_0(15 downto 8)) xor (to_unsigned(2, 8)*unsigned(col_0(7 downto 0))));
	
end rtl;
