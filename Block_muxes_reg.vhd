library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Block_muxes_reg is
	generic 
	(
		DATA_WIDTH : natural := 32
	);
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		reset		: in std_logic;
		counter	: in std_logic_vector(3 downto 0);
		
		input_0	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_1	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_2	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_3	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		
		input_0_mix	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_1_mix	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_2_mix	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_3_mix	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		
		output_0		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_1		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_2		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_3		: out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of Block_muxes_reg is
signal input_reg_0, input_reg_1, input_reg_2, input_reg_3	: std_logic_vector((DATA_WIDTH-1) downto 0);
begin
	process (clk, reset)
	begin
		if(reset = '0') then
			output_0 <= (others => '0');
			output_1 <= (others => '0');
			output_2 <= (others => '0');
			output_3 <= (others => '0');
		elsif (rising_edge(clk)) then
			if(enable = '1') then
				output_0 <= input_reg_0;
				output_1 <= input_reg_1;
				output_2 <= input_reg_2;
				output_3 <= input_reg_3;
			end if;
		end if;
	end process;
	
	input_reg_0 <= input_0 when (counter = "1001") else
						input_0_mix;
	input_reg_1 <= input_1 when (counter = "1001") else
						input_1_mix;
	input_reg_2 <= input_2 when (counter = "1001") else
						input_2_mix;
	input_reg_3 <= input_3 when (counter = "1001") else
						input_3_mix;

end rtl;
