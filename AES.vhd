library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AES is
	port 
	(
		clk				: in std_logic;
		general_reset	: in std_logic;
		input				: in std_logic_vector(127 downto 0);
		key				: in std_logic_vector(127 downto 0);
		output			: out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of AES is

signal general_en_1, general_en_2, general_en_3, general_en_counter		: std_logic;
signal general_sel_1			: std_logic_vector(1 downto 0);
signal counter					: std_logic_vector(3 downto 0);
signal general_ready			: std_logic;
signal general_output_PO	: std_logic_vector(127 downto 0);

	component PC is
		port 
		(
			general_clk				: in std_logic;
			reset						: in std_logic;
			en_1						: out std_logic;
			en_2						: out std_logic;
			en_3						: out std_logic;
			sel_1						: out std_logic_vector(1 downto 0);
			general_counter		: in std_logic_vector(3 downto 0);
			enable_counter			: out std_logic;
			ready						: out std_logic
		);

	end component;
	
	component PO is
	generic 
		(
			BYTE_DATA_WIDTH : natural := 8;
			COLUMN_DATA_WIDTH : natural := 32;
			GENERAL_DATA_WIDTH : natural := 128
		);
	port 
	(
		general_clk			: in std_logic;
		general_counter	: in std_logic_vector(3 downto 0);
		reset					: in std_logic;
		en_1					: in std_logic;
		en_2					: in std_logic;
		en_3					: in std_logic;
		sel_1					: in std_logic_vector(1 downto 0);
		
		general_key			: in std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0);
		input_state			: in std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0);
		
		output_PO			: out std_logic_vector((GENERAL_DATA_WIDTH-1) downto 0)
	);

	end component;

	component contadorRodadas is
		port
		(
			general_clk		  	: in std_logic;
			reset	  				: in std_logic;
			enable	  			: in std_logic;
			round		  			: out std_logic_vector(3 downto 0)
		);

	end component;
	
	begin

	--componente PC
	Controle		: PC
	port map
	(
		general_clk			=> clk,
		reset					=> general_reset,
		en_1					=> general_en_1,
		en_2					=> general_en_2,
		en_3					=> general_en_3,
		sel_1					=> general_sel_1,
		general_counter	=> counter,
		enable_counter		=> general_en_counter,
		ready					=> general_ready
	);
	
	--componente PO
	Operativa	: PO
	port map
	(
		general_clk			=> clk,
		general_counter	=> counter,
		reset					=> general_reset,
		en_1					=> general_en_1,
		en_2					=> general_en_2,
		en_3					=> general_en_3,
		sel_1					=> general_sel_1,
		
		general_key			=> key,
		input_state			=> input,
		output_PO			=> general_output_PO
	);
	
	Contador		: contadorRodadas
	port map
	(
		general_clk		  	=> clk,
		reset	  				=> general_reset,
		enable	  			=> general_en_counter,
		round		  			=> counter
	);
	
	output <= general_output_PO;

end rtl;
