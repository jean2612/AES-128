library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity geradorKey is
	 port(
		key_input		: in std_logic_vector(127 downto 0);
		key_out			: out std_logic_vector(127 downto 0);
		clk				: in std_logic;
		reset	  			: in std_logic;
		enable	  		: in std_logic;
		counter			: in std_logic_vector(3 downto 0)
	 );
end entity;

architecture rtl of geradorKey is

	--Instanciando component sbox
	component SBox_key is
	port(
		state0		   	: in 		std_logic_vector(7 downto 0);
		state1		   	: in 		std_logic_vector(7 downto 0);
		state2		   	: in 		std_logic_vector(7 downto 0);
		state3		   	: in 		std_logic_vector(7 downto 0);
		
		rlps_0				: out 	std_logic_vector(7 downto 0);
		rlps_1				: out 	std_logic_vector(7 downto 0);
		rlps_2				: out 	std_logic_vector(7 downto 0);
		rlps_3				: out 	std_logic_vector(7 downto 0)
		);
	end component;
	
	--Instanciando component rcom
	component Rcom is
	port 
	(
		counter : in std_logic_vector  (3 downto 0);
		result : out std_logic_vector (7 downto 0)
	);
	end component;

	--declarando sinais
	signal word,word1,word2,word3 : std_logic_vector(31 downto 0);
	signal temp,subChave,subChave1,subChave2,subChave3: std_logic_vector(31 downto 0);
	signal shift,resultSbox,Rcon: std_logic_vector(31 downto 0);
	signal RcomXor: std_logic_vector(7 downto 0);
	signal key_out_1	: std_logic_vector(127 downto 0);
	
	begin
	
	--Separando key em 4 palavras;
	word <= key_input(127 downto 96);
	word1 <= key_input(95 downto 64);
	word2 <= key_input(63 downto 32);
	word3 <= key_input(31 downto 0);
	temp <= word3;
	
	--Trocando primeiro byte e realizando o shift
	shift <= temp(23 downto 0) & temp(31 downto 24);	
	
	--Passando pelo sbox
	sbox_top : Sbox_key
	port map
	(
		state0	=> shift(31  downto 24),
		state1	=> shift(23  downto 16),
		state2	=> shift(15  downto 8),
		state3	=> shift(7  downto 0),
		
		rlps_0	=> resultSbox(31  downto 24),
		rlps_1	=> resultSbox(23  downto 16),
		rlps_2	=> resultSbox(15  downto 8),
		rlps_3	=> resultSbox(7  downto 0)
	);
	
	--Retornando valor da tabela do Rcon;
	z1:Rcom port map(counter,RcomXor);
	Rcon <= (resultSbox(31 downto 24) xor RcomXor) & resultSbox(23 downto 0);
	
	--Gerando sub chaves e concatenado nova chave
	subChave <= Rcon(31 downto 0) xor word(31 downto 0);
	subChave1 <= subChave(31 downto 0) xor word1(31 downto 0);
	subChave2 <= subChave1(31 downto 0) xor word2(31 downto 0);
	subChave3 <= subChave2(31 downto 0) xor word3(31 downto 0);
	
	key_out_1 <= subChave & subChave1 & subChave2 & subChave3;
	
	process (clk, reset)
	begin
		if(reset = '0') then
			key_out <= (others => '0');
		elsif (rising_edge(clk)) then
			if(enable = '1') then
				key_out <= key_out_1;
			end if;
		end if;
	end process;
	
	end rtl;
	