library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reg_32b is
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		byte0		: in std_logic_vector(7 downto 0);
		byte1		: in std_logic_vector(7 downto 0);
		byte2		: in std_logic_vector(7 downto 0);
		byte3		: in std_logic_vector(7 downto 0);
		output	: out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of Reg_32b is

begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			output <= byte0 & byte1 & byte2 & byte3;
		end if;
	end process;


end rtl;
