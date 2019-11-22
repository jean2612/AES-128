library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PO is
	generic 
		(
			BYTE_DATA_WIDTH 		: natural := 8;
			COLUMN_DATA_WIDTH 	: natural := 32;
			GENERAL_DATA_WIDTH 	: natural := 128
		);
	port 
	(
		general_clk			: in std_logic;
		general_counter	: in std_logic_vector(3 downto 0);
		general_reset		: in std_logic;
		en_1					: in std_logic;
		en_2					: in std_logic;
		en_3					: in std_logic;
		sel_1					: in std_logic_vector(1 downto 0);
		
		general_key			: in std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0);
		input_state			: in std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0);
		en_key				: in std_logic;
		
		output_PO			: out std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of PO is

	signal general_sbox_output0,general_sbox_output1,general_sbox_output2,general_sbox_output3,general_sbox_output4,general_sbox_output5,general_sbox_output6,general_sbox_output7,general_sbox_output8,general_sbox_output9,general_sbox_output10,general_sbox_output11,general_sbox_output12,general_sbox_output13,general_sbox_output14,general_sbox_output15	: std_logic_vector((BYTE_DATA_WIDTH-1) downto 0);
	signal general_reg_output0,general_reg_output1,general_reg_output2,general_reg_output3,general_reg_output4,general_reg_output5,general_reg_output6,general_reg_output7,general_reg_output8,general_reg_output9,general_reg_output10,general_reg_output11,general_reg_output12,general_reg_output13,general_reg_output14,general_reg_output15	: std_logic_vector((BYTE_DATA_WIDTH-1) downto 0);
	signal column_out_reg0, column_out_reg1, column_out_reg2, column_out_reg3 : std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	signal output_reg_mux_0, output_reg_mux_1, output_reg_mux_2, output_reg_mux_3 : std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	signal output_mix_columns_0, output_mix_columns_1, output_mix_columns_2, output_mix_columns_3 : std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	signal input_add_0, input_add_1, input_add_2, input_add_3	: std_logic_vector((COLUMN_DATA_WIDTH-1) downto 0);
	signal general_state : std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0) := input_state;
	signal output_add_initial	: std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0);
	signal generatedKey, input_Key_generator	: std_logic_vector(127 downto 0);
	
	component Regs_8b is
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

	end component;
	
	component MixColumns2 is
    port ( 
			col_0_mix : in STD_LOGIC_VECTOR (31 downto 0);
			col_1_mix : in STD_LOGIC_VECTOR (31 downto 0);
			col_2_mix : in STD_LOGIC_VECTOR (31 downto 0);
			col_3_mix : in STD_LOGIC_VECTOR (31 downto 0);
			
         new_col_mix_0 : out STD_LOGIC_VECTOR (31 downto 0);
			new_col_mix_1 : out STD_LOGIC_VECTOR (31 downto 0);
			new_col_mix_2 : out STD_LOGIC_VECTOR (31 downto 0);
			new_col_mix_3 : out STD_LOGIC_VECTOR (31 downto 0)
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

	end component;
	
	component AddRoundKey is
	generic 
	(
		DATA_WIDTH : natural := 32
	);
	port 
	(
		col_0_add		: in std_logic_vector(31 downto 0);
		col_1_add		: in std_logic_vector(31 downto 0);
		col_2_add		: in std_logic_vector(31 downto 0);
		col_3_add		: in std_logic_vector(31 downto 0);
		key				: in std_logic_vector(127 downto 0);
		output			: out std_logic_vector(127 downto 0)
	);

	end component;
	
	component geradorKey is
	 port(
		key_input		: in std_logic_vector(127 downto 0);
		key_out			: out std_logic_vector(127 downto 0);
		clk				: in std_logic;
		reset	  			: in std_logic;
		enable	  		: in std_logic;
		counter			: in std_logic_vector(3 downto 0)
	 );
	end component;

	
	component Mux2_1 is
	port 
	(
		sel		: in std_logic_vector(3 downto 0);
		a	   	: in std_logic_vector(127 downto 0);
		b	   	: in std_logic_vector(127 downto 0);
		output 	: out std_logic_vector (127 downto 0)
	);
	end component;
	
	begin

	column_out_reg0 <= general_reg_output0 & general_reg_output5 & general_reg_output10 & general_reg_output15;
	column_out_reg1 <= general_reg_output4 & general_reg_output9 & general_reg_output14 & general_reg_output3;
	column_out_reg2 <= general_reg_output8 & general_reg_output13 & general_reg_output2 & general_reg_output7;
	column_out_reg3 <= general_reg_output12 & general_reg_output1 & general_reg_output6 & general_reg_output11;
	
	--key_0 	<= general_key;
	--key_1 	<= X"A0FAFE1788542CB123A339392A6C7605";
	--key_2 	<= X"F2C295F27A96B9435935807A7359F67F";
	--key_3 	<= X"3D80477D4716FE3E1E237E446D7A883B";
	--key_4 	<= X"EF44A541A8525B7FB671253BDB0BAD00";
	--key_5 	<= X"D4D1C6F87C839D87CAF2B8BC11F915BC";
	--key_6 	<= X"6D88A37A110B3EFDDBF98641CA0093FD";
	--key_7 	<= X"4E54F70E5F5FC9F384A64FB24EA6DC4F";
	--key_8 	<= X"EAD27321B58DBAD2312BF5607F8D292F";
	--key_9 	<= X"AC7766F319FADC2128D12941575C006E";
	--key_10 	<= X"D014F9A8C9EE2589E13F0CC8B6630CA6";
	
	
	--ENTRADA 	=> X"3243F6A8885A308D313198A2E0370734"
	--SAIDA		=> X"392584LD02DC09FBDC118597196A0B32"
	
	Mux2p1		: Mux2_1
	port map
	(
		sel		=> general_counter,
		a	   	=> general_key,
		b	   	=> generatedKey,
		output 	=> input_Key_generator
	);
	
	Gerador_Key	: geradorKey
	port map
	(
		key_input		=>	input_Key_generator,
		key_out			=> generatedKey,
		clk				=> general_clk,
		reset	  			=> general_reset,
		enable			=> en_key,
		counter			=> general_counter
	);
	Add_initial	: AddRoundKey
	generic map
	(
		DATA_WIDTH => COLUMN_DATA_WIDTH
	)
	port map
	(
		col_0_add	=> input_state(127 downto 96),
		col_1_add	=> input_state(95 downto 64),
		col_2_add	=> input_state(63 downto 32),
		col_3_add	=> input_state(31 downto 0),
		key			=> general_key,
		output		=> output_add_initial
	);
	Regs_input	: Regs_8b
	generic map
	(
		DATA_WIDTH => BYTE_DATA_WIDTH
	)
	port map
	(
		clk		=> general_clk,
		enable	=> en_1,
		reset		=> general_reset,
		sel 		=> sel_1,
		
		input_0	=> output_add_initial(127 downto 120),
		input_1	=> output_add_initial(119 downto 112),
		input_2	=> output_add_initial(111 downto 104),
		input_3	=> output_add_initial(103 downto 96),
		input_4	=> output_add_initial(95 downto 88),
		input_5	=> output_add_initial(87 downto 80),
		input_6	=> output_add_initial(79 downto 72),
		input_7	=> output_add_initial(71 downto 64),
		input_8	=> output_add_initial(63 downto 56),
		input_9	=> output_add_initial(55 downto 48),
		input_10	=> output_add_initial(47 downto 40),
		input_11	=> output_add_initial(39 downto 32),
		input_12	=> output_add_initial(31 downto 24),
		input_13	=> output_add_initial(23 downto 16),
		input_14	=> output_add_initial(15 downto 8),
		input_15	=> output_add_initial(7 downto 0),
		
		input_0_add  => general_state(127 downto 120),
		input_1_add  => general_state(119 downto 112),
		input_2_add  => general_state(111 downto 104),
		input_3_add  => general_state(103 downto 96),
		input_4_add  => general_state(95 downto 88),
		input_5_add  => general_state(87 downto 80),
		input_6_add  => general_state(79 downto 72),
		input_7_add  => general_state(71 downto 64),
		input_8_add  => general_state(63 downto 56),
		input_9_add  => general_state(55 downto 48),
		input_10_add  => general_state(47 downto 40),
		input_11_add  => general_state(39 downto 32),
		input_12_add  => general_state(31 downto 24),
		input_13_add  => general_state(23 downto 16),
		input_14_add  => general_state(15 downto 8),
		input_15_add  => general_state(7 downto 0),
		
		input_0_sbox  => general_sbox_output0,
		input_1_sbox  => general_sbox_output1,
		input_2_sbox  => general_sbox_output2,
		input_3_sbox  => general_sbox_output3,
		input_4_sbox  => general_sbox_output4,
		input_5_sbox  => general_sbox_output5,
		input_6_sbox  => general_sbox_output6,
		input_7_sbox  => general_sbox_output7,
		input_8_sbox  => general_sbox_output8,
		input_9_sbox  => general_sbox_output9,
		input_10_sbox  => general_sbox_output10,
		input_11_sbox  => general_sbox_output11,
		input_12_sbox  => general_sbox_output12,
		input_13_sbox  => general_sbox_output13,
		input_14_sbox  => general_sbox_output14,
		input_15_sbox  => general_sbox_output15,
		
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
			
			rlps_0    => general_sbox_output0,
			rlps_1    => general_sbox_output1,
			rlps_2    => general_sbox_output2,
			rlps_3    => general_sbox_output3,
			rlps_4    => general_sbox_output4,
			rlps_5    => general_sbox_output5,
			rlps_6    => general_sbox_output6,
			rlps_7    => general_sbox_output7,
			rlps_8    => general_sbox_output8,
			rlps_9    => general_sbox_output9,
			rlps_10    => general_sbox_output10,
			rlps_11    => general_sbox_output11,
			rlps_12    => general_sbox_output12,
			rlps_13    => general_sbox_output13,
			rlps_14    => general_sbox_output14,
			rlps_15    => general_sbox_output15
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
		reset		=> general_reset,
			
		input_0	=> column_out_reg0,
		input_1	=> column_out_reg1,
		input_2	=> column_out_reg2,
		input_3	=> column_out_reg3,
			
		output_0	=> output_reg_mux_0,
		output_1	=> output_reg_mux_1,
		output_2	=> output_reg_mux_2,
		output_3	=> output_reg_mux_3
	);
	Mix_columns	: MixColumns2
	port map
	(
		col_0_mix	=> output_reg_mux_0,
		col_1_mix	=> output_reg_mux_1,
		col_2_mix	=> output_reg_mux_2,
		col_3_mix	=> output_reg_mux_3,
		
		new_col_mix_0	=> output_mix_columns_0,
		new_col_mix_1	=> output_mix_columns_1,
		new_col_mix_2	=> output_mix_columns_2,
		new_col_mix_3	=> output_mix_columns_3
	);
	
	Bloco_mux_reg	: block_muxes_reg
	generic map
	(
		DATA_WIDTH => COLUMN_DATA_WIDTH
	)
	port map
	(
		clk			=> general_clk,
		enable		=> en_3,
		reset			=> general_reset,
		counter		=> general_counter,
		
		input_0		=> output_reg_mux_0,
		input_1		=> output_reg_mux_1,
		input_2		=> output_reg_mux_2,
		input_3		=> output_reg_mux_3,
		
		input_0_mix		=> output_mix_columns_0,
		input_1_mix		=> output_mix_columns_1,
		input_2_mix		=> output_mix_columns_2,
		input_3_mix		=> output_mix_columns_3,
		
		output_0			=> input_add_0,
		output_1			=> input_add_1,
		output_2			=> input_add_2,
		output_3			=> input_add_3
	);
	
	Add	: AddRoundKey
	generic map
	(
		DATA_WIDTH => COLUMN_DATA_WIDTH
	)
	port map
	(
		col_0_add	=> input_add_0,
		col_1_add	=> input_add_1,
		col_2_add	=> input_add_2,
		col_3_add	=> input_add_3,
		key			=> generatedKey,
		output		=> general_state
	);
	
	output_PO <= general_state;
	
	end rtl;
