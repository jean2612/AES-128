library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PO is
	generic 
		(
			BYTE_DATA_WIDTH : natural := 8;
			COLUMN_DATA_WIDTH : natural := 32;
			GENERAL_DATA_WIDTH : natural := 128
		);
	port 
	(
		general_clk		: in std_logic;
		reset		: in std_logic;
		en_1		: in std_logic;
		en_2		: in std_logic;
		en_3		: in std_logic;
		sel_1		: in std_logic_vector(1 downto 0);
		general_input_0,general_input_1,general_input_2,general_input_3,general_input_4,general_input_5,general_input_6,general_input_7,general_input_8,general_input_9,general_input_10,general_input_11,general_input_12,general_input_13,general_input_14,general_input_15	: in std_logic_vector((BYTE_DATA_WIDTH-1) downto 0);

		sel_2		: in std_logic
	);

end entity;

architecture rtl of PO is

	signal general_sbox_input0,general_sbox_input1,general_sbox_input2,general_sbox_input3,general_sbox_input4,general_sbox_input5,general_sbox_input6,general_sbox_input7,general_sbox_input8,general_sbox_input9,general_sbox_input10,general_sbox_input11,general_sbox_input12,general_sbox_input13,general_sbox_input14,general_sbox_input15	: std_logic_vector((BYTE_DATA_WIDTH-1) downto 0);
	signal general_reg_output0,general_reg_output1,general_reg_output2,general_reg_output3,general_reg_output4,general_reg_output5,general_reg_output6,general_reg_output7,general_reg_output8,general_reg_output9,general_reg_output10,general_reg_output11,general_reg_output12,general_reg_output13,general_reg_output14,general_reg_output15	: std_logic_vector((BYTE_DATA_WIDTH-1) downto 0);
	signal column_out_reg0, column_out_reg1, column_out_reg2, column_out_reg3 : std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	signal output_reg_mux_0, output_reg_mux_1, output_reg_mux_2, output_reg_mux_3 : std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	signal output_mix_columns_0, output_mix_columns_1, output_mix_columns_2, output_mix_columns_3 : std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	
	component Regs_8b is
	generic 
	(
		DATA_WIDTH : natural := 8
	);
	port 
	(
		clk		: in std_logic;
		enable			: in std_logic;
		sel 				: in std_logic_vector(1 downto 0);
		
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
	end component;
	
	component SBox is
		port(
			state0		   	: in 		std_logic_vector(7 downto 0);
			state1		   	: in 		std_logic_vector(7 downto 0);
			state2		   	: in 		std_logic_vector(7 downto 0);
			state3		   	: in 		std_logic_vector(7 downto 0);
			state4		   	: in 		std_logic_vector(7 downto 0);
			state5		   	: in 		std_logic_vector(7 downto 0);
			state6		   	: in 		std_logic_vector(7 downto 0);
			state7		   	: in 		std_logic_vector(7 downto 0);
			state8		   	: in 		std_logic_vector(7 downto 0);
			state9		   	: in 		std_logic_vector(7 downto 0);
			state10		   	: in 		std_logic_vector(7 downto 0);
			state11		   	: in 		std_logic_vector(7 downto 0);
			state12		   	: in 		std_logic_vector(7 downto 0);
			state13		   	: in 		std_logic_vector(7 downto 0);
			state14		   	: in 		std_logic_vector(7 downto 0);
			state15		   	: in 		std_logic_vector(7 downto 0);
			rlps_0				: out 	std_logic_vector(7 downto 0);
			rlps_1				: out 	std_logic_vector(7 downto 0);
			rlps_2				: out 	std_logic_vector(7 downto 0);
			rlps_3				: out 	std_logic_vector(7 downto 0);
			rlps_4				: out 	std_logic_vector(7 downto 0);
			rlps_5				: out 	std_logic_vector(7 downto 0);
			rlps_6				: out 	std_logic_vector(7 downto 0);	
			rlps_7				: out 	std_logic_vector(7 downto 0);
			rlps_8				: out 	std_logic_vector(7 downto 0);
			rlps_9				: out 	std_logic_vector(7 downto 0);
			rlps_10				: out 	std_logic_vector(7 downto 0);
			rlps_11				: out 	std_logic_vector(7 downto 0);
			rlps_12				: out 	std_logic_vector(7 downto 0);
			rlps_13				: out 	std_logic_vector(7 downto 0);
			rlps_14				: out 	std_logic_vector(7 downto 0);	
			rlps_15				: out 	std_logic_vector(7 downto 0)
		);
	end component;
	component Regs_32b is
		generic 
		(
			DATA_WIDTH : natural := 32
		);
		port 
		(
			clk		: in std_logic;
			enable	: in std_logic;
			
			input_0	: in std_logic_vector((DATA_WIDTH-1) downto 0);
			input_1	: in std_logic_vector((DATA_WIDTH-1) downto 0);
			input_2	: in std_logic_vector((DATA_WIDTH-1) downto 0);
			input_3	: in std_logic_vector((DATA_WIDTH-1) downto 0);
			
			output_0		: out std_logic_vector((DATA_WIDTH-1) downto 0);
			output_1		: out std_logic_vector((DATA_WIDTH-1) downto 0);
			output_2		: out std_logic_vector((DATA_WIDTH-1) downto 0);
			output_3		: out std_logic_vector((DATA_WIDTH-1) downto 0)
		);

	end component;
	
	component MixColumns is
	port 
	(
		col_0_mix		   : in std_logic_vector(31 downto 0);
		col_1_mix		   : in std_logic_vector(31 downto 0);
		col_2_mix		   : in std_logic_vector(31 downto 0);
		col_3_mix		   : in std_logic_vector(31 downto 0);
		new_col_mix_0, new_col_mix_1, new_col_mix_2, new_col_mix_3 : out std_logic_vector(31 downto 0)
	);
	end component;
	
	component Block_muxes_reg is
	generic 
	(
		DATA_WIDTH : natural := 128
	);
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
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

	end component;
	
	begin

	column_out_reg0 <= general_reg_output0 & general_reg_output1 & general_reg_output2 & general_reg_output3;
	column_out_reg1 <= general_reg_output4 & general_reg_output5 & general_reg_output6 & general_reg_output7;
	column_out_reg2 <= general_reg_output8 & general_reg_output9 & general_reg_output10 & general_reg_output11;
	column_out_reg3 <= general_reg_output12 & general_reg_output13 & general_reg_output14 & general_reg_output15;

	Regs_input	: Regs_8b
	generic map
	(
		DATA_WIDTH => BYTE_DATA_WIDTH
	)
	port map
	(
		clk		=> general_clk,
		enable	=> en_1,
		sel 		=> sel_1,
		
		input_0	=> general_input_0,
		input_1	=> general_input_1,
		input_2	=> general_input_2,
		input_3	=> general_input_3,
		input_4	=> general_input_4,
		input_5	=> general_input_5,
		input_6	=> general_input_6,
		input_7	=> general_input_7,
		input_8	=> general_input_8,
		input_9	=> general_input_9,
		input_10	=> general_input_10,
		input_11	=> general_input_11,
		input_12	=> general_input_12,
		input_13	=> general_input_13,
		input_14	=> general_input_14,
		input_15	=> general_input_15,
		
		input_0_sbox  => general_sbox_input0,
		input_1_sbox  => general_sbox_input1,
		input_2_sbox  => general_sbox_input2,
		input_3_sbox  => general_sbox_input3,
		input_4_sbox  => general_sbox_input4,
		input_5_sbox  => general_sbox_input5,
		input_6_sbox  => general_sbox_input6,
		input_7_sbox  => general_sbox_input7,
		input_8_sbox  => general_sbox_input8,
		input_9_sbox  => general_sbox_input9,
		input_10_sbox  => general_sbox_input10,
		input_11_sbox  => general_sbox_input11,
		input_12_sbox  => general_sbox_input12,
		input_13_sbox  => general_sbox_input13,
		input_14_sbox  => general_sbox_input14,
		input_15_sbox  => general_sbox_input15,
		
		output_reg_0  => general_reg_output0,
		output_reg_1  => general_reg_output1,
		output_reg_2  => general_reg_output2,
		output_reg_3  => general_reg_output3,
		output_reg_4  => general_reg_output4,
		output_reg_5  => general_reg_output5,
		output_reg_6  => general_reg_output6,
		output_reg_7  => general_reg_output7,
		output_reg_8  => general_reg_output8,
		output_reg_9  => general_reg_output9,
		output_reg_10  => general_reg_output10,
		output_reg_11  => general_reg_output11,
		output_reg_12  => general_reg_output12,
		output_reg_13  => general_reg_output13,
		output_reg_14  => general_reg_output14,
		output_reg_15  => general_reg_output15
	);
	
	
	S_Box : Sbox
	port map
	(
			state0    => general_reg_output0,
			state1    => general_reg_output1,
			state2    => general_reg_output2,
			state3    => general_reg_output3,
			state4    => general_reg_output4,
			state5    => general_reg_output5,
			state6    => general_reg_output6,
			state7    => general_reg_output7,
			state8    => general_reg_output8,
			state9    => general_reg_output9,
			state10    => general_reg_output10,
			state11    => general_reg_output11,
			state12    => general_reg_output12,
			state13    => general_reg_output13,
			state14    => general_reg_output14,
			state15    => general_reg_output15,
			
			rlps_0    => general_sbox_input0,
			rlps_1    => general_sbox_input1,
			rlps_2    => general_sbox_input2,
			rlps_3    => general_sbox_input3,
			rlps_4    => general_sbox_input4,
			rlps_5    => general_sbox_input5,
			rlps_6    => general_sbox_input6,
			rlps_7    => general_sbox_input7,
			rlps_8    => general_sbox_input8,
			rlps_9    => general_sbox_input9,
			rlps_10    => general_sbox_input10,
			rlps_11    => general_sbox_input11,
			rlps_12    => general_sbox_input12,
			rlps_13    => general_sbox_input13,
			rlps_14    => general_sbox_input14,
			rlps_15    => general_sbox_input15
	);


	Regs_columns	: Regs_32b
	generic map
	(
		DATA_WIDTH => COLUMN_DATA_WIDTH
	)
	port map
	(
		clk		=> general_clk,
		enable	=> en_2,
			
		input_0	=> column_out_reg0,
		input_1	=> column_out_reg1,
		input_2	=> column_out_reg2,
		input_3	=> column_out_reg3,
			
		output_0	=> output_reg_mux_0,
		output_1	=> output_reg_mux_1,
		output_2	=> output_reg_mux_2,
		output_3	=> output_reg_mux_3,
	);
	Mix_columns	: MixColumns
	port map
	(
		col_0_mix	=> output_reg_mux_0,
		col_1_mix	=> output_reg_mux_1,
		col_2_mix	=> output_reg_mux_2,
		col_3_mix	=> output_reg_mux_3,
		
		new_col_mix_0	=> output_mix_columns_0,
		new_col_mix_1	=> output_mix_columns_1,
		new_col_mix_2	=> output_mix_columns_2,
		new_col_mix_3	=> output_mix_columns_3,
	);
	Bloco_mux_reg	: block_muxes_reg
	generic map
	(
		DATA_WIDTH => GENERAL_DATA_WIDTH
	);
	port map
	(
		clk		=> general_clk,
		enable	=> en_3
		counter	=> -------------preenche
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
	
	end rtl;
