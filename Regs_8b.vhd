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
		reset		: in std_logic;
		sel 		: in std_logic_vector(1 downto 0);
		
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
		
		input_0_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_1_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_2_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_3_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_4_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_5_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_6_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_7_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_8_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_9_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_10_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_11_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_12_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_13_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_14_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		input_15_add	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		
		output_reg_0		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_1		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_2		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_3		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_4		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_5		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_6		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_7		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_8		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_9		: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_10	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_11	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_12	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_13	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_14	: out std_logic_vector((DATA_WIDTH-1) downto 0);
		output_reg_15	: out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of Regs_8b is
signal outmux_0, outmux_1, outmux_2, outmux_3, outmux_4, outmux_5, outmux_6, outmux_7, outmux_8, outmux_9, outmux_10, outmux_11, outmux_12, outmux_13, outmux_14, outmux_15 : std_logic_vector((DATA_WIDTH-1) downto 0);
begin
	process (clk, reset)
	begin
		if(reset = '0') then
			output_reg_0 <= (others => '0');
			output_reg_1 <= (others => '0');
			output_reg_2 <= (others => '0');
			output_reg_3 <= (others => '0');
			output_reg_4 <= (others => '0');
			output_reg_5 <= (others => '0');
			output_reg_6 <= (others => '0');
			output_reg_7 <= (others => '0');
			output_reg_8 <= (others => '0');
			output_reg_9 <= (others => '0');
			output_reg_10 <= (others => '0');
			output_reg_11 <= (others => '0');
			output_reg_12 <= (others => '0');
			output_reg_13 <= (others => '0');
			output_reg_14 <= (others => '0');
			output_reg_15 <= (others => '0');
		elsif (rising_edge(clk)) then
			if(enable = '1') then
				output_reg_0 <= outmux_0;
				output_reg_1 <= outmux_1;
				output_reg_2 <= outmux_2;
				output_reg_3 <= outmux_3;
				output_reg_4 <= outmux_4;
				output_reg_5 <= outmux_5;
				output_reg_6 <= outmux_6;
				output_reg_7 <= outmux_7;
				output_reg_8 <= outmux_8;
				output_reg_9 <= outmux_9;
				output_reg_10 <= outmux_10;
				output_reg_11 <= outmux_11;
				output_reg_12 <= outmux_12;
				output_reg_13 <= outmux_13;
				output_reg_14 <= outmux_14;
				output_reg_15 <= outmux_15;
			end if;
		end if;
	end process;
	
	outmux_0 	<= input_0		 	when(sel = "00") else
						input_0_sbox 	when(sel = "01") else
						input_0_add; 
	outmux_1		<= input_1 			when(sel = "00") else
						input_1_sbox 	when (sel = "01") else
						input_1_add;
	outmux_2 	<= input_2 			when(sel = "00") else
						input_2_sbox 	when (sel = "01") else
						input_2_add;
	outmux_3 	<= input_3 			when(sel = "00") else
						input_3_sbox 	when (sel = "01") else
						input_3_add;
	outmux_4 	<= input_4 			when(sel = "00") else
						input_4_sbox 	when (sel = "01") else
						input_4_add;
	outmux_5 	<= input_5 			when(sel = "00") else
						input_5_sbox 	when (sel = "01") else
						input_5_add;
	outmux_6 	<= input_6 			when(sel = "00") else
						input_6_sbox 	when (sel = "01") else
						input_6_add;
	outmux_7 	<= input_7 			when(sel = "00") else
						input_7_sbox 	when (sel = "01") else
						input_7_add;
	outmux_8 	<= input_8 			when(sel = "00") else
						input_8_sbox 	when (sel = "01") else
						input_8_add;
	outmux_9 	<= input_9 			when(sel = "00") else
						input_9_sbox 	when (sel = "01") else
						input_9_add;
	outmux_10 	<= input_10 		when(sel = "00") else
						input_10_sbox 	when (sel = "01") else
						input_10_add;
	outmux_11 	<= input_11 		when(sel = "00") else
						input_11_sbox 	when (sel = "01") else
						input_11_add;
	outmux_12 	<= input_12 		when(sel = "00") else
						input_12_sbox 	when (sel = "01") else
						input_12_add;
	outmux_13 	<= input_13 		when(sel = "00") else
						input_13_sbox 	when (sel = "01") else
						input_13_add;
	outmux_14 	<= input_14 		when(sel = "00") else
						input_14_sbox 	when (sel = "01") else
						input_14_add;
	outmux_15 	<= input_15 		when(sel = "00") else
						input_15_sbox 	when (sel = "01") else
						input_15_add;

end rtl;
