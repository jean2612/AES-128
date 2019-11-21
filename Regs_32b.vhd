library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Regs_32b is
	generic 
	(
		DATA_WIDTH : natural := 32
	);
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		reset		: in std_logic;
		
		input_0	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_1	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_2	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_3	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		
		output_0		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_1		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_2		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_3		: out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of Regs_32b is

begin
	process (clk)
	begin
		if(reset = '0') then
			output_0 <= (others => '0');
			output_1 <= (others => '0');
			output_2 <= (others => '0');
			output_3 <= (others => '0');
		elsif (rising_edge(clk)) then
			if(enable = '1') then
				output_0 <= input_0;
				output_1 <= input_1;
				output_2 <= input_2;
				output_3 <= input_3;
			end if;
		end if;
	end process;

end rtl;
