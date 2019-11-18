library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Regs_8b is
	generic 
	(
		DATA_WIDTH : natural := 8
	);
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		sel 		: in std_logic;
		
		input_0	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_1	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_2	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_3	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_4	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_5	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_6	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_7	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_8	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_9	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_10	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_11	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_12	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_13	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_14	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_15	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		
		input_0_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_1_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_2_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_3_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_4_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_5_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_6_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_7_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_8_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_9_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_10_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_11_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_12_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_13_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_14_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_15_sbox	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		
		output_0		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_1		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_2		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_3		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_4		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_5		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_6		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_7		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_8		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_9		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_10	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_11	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_12	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_13	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_14	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_15	: out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of Regs_8b is
signal outmux_0, outmux_1, outmux_2, outmux_3, outmux_4, outmux_5, outmux_6, outmux_7, outmux_8, outmux_9, outmux_10, outmux_11, outmux_12, outmux_13, outmux_14, outmux_15 : std_logic_vector((DATA_WIDTH-1) downto 0);
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if(enable = '1') then
				output_0 <= outmux_0;
				output_1 <= outmux_1;
				output_2 <= outmux_2;
				output_3 <= outmux_3;
				output_4 <= outmux_4;
				output_5 <= outmux_5;
				output_6 <= outmux_6;
				output_7 <= outmux_7;
				output_8 <= outmux_8;
				output_9 <= outmux_9;
				output_10 <= outmux_10;
				output_11 <= outmux_11;
				output_12 <= outmux_12;
				output_13 <= outmux_13;
				output_14 <= outmux_14;
				output_15 <= outmux_15;
			end if;
		end if;
	end process;
	
	outmux_0 	<= input_0 when(sel = '0') else
						input_0_sbox;
	outmux_1		<= input_1 when(sel = '0') else
						input_1_sbox;
	outmux_2 	<= input_2 when(sel = '0') else
						input_2_sbox;
	outmux_3 	<= input_3 when(sel = '0') else
						input_3_sbox;
	outmux_4 	<= input_4 when(sel = '0') else
						input_4_sbox;
	outmux_5 	<= input_5 when(sel = '0') else
						input_5_sbox;
	outmux_6 	<= input_6 when(sel = '0') else
						input_6_sbox;
	outmux_7 	<= input_7 when(sel = '0') else
						input_7_sbox;
	outmux_8 	<= input_8 when(sel = '0') else
						input_8_sbox;
	outmux_9 	<= input_9 when(sel = '0') else
						input_9_sbox;
	outmux_10 	<= input_10 when(sel = '0') else
						input_10_sbox;
	outmux_11 	<= input_11 when(sel = '0') else
						input_11_sbox;
	outmux_12 	<= input_12 when(sel = '0') else
						input_12_sbox;
	outmux_13 	<= input_13 when(sel = '0') else
						input_13_sbox;
	outmux_14 	<= input_14 when(sel = '0') else
						input_14_sbox;
	outmux_15 	<= input_15 when(sel = '0') else
						input_15_sbox;

end rtl;
