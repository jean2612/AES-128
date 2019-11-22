entity tb_AES is end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

architecture rtl of tb_AES is
  
component AES is
	port 
	(
		clk				   : in std_logic;
		reset_top		: in std_logic;
		input				  : in std_logic_vector(127 downto 0);
		key				   : in std_logic_vector(127 downto 0);
		output			  : out std_logic_vector(127 downto 0)
	);

end component;

signal clk_1    : std_logic := '0';
signal reset_1  : std_logic;
signal input_1, key_1, output_1 : std_logic_vector(127 downto 0);

begin   
  
  clk_1 <= not clk_1 after 9 ns;
  inst_AES: AES
  
  port map
  (
    clk				     	=> clk_1,
		reset_top		 	=> reset_1,
		input				   => input_1,
		key				   => key_1,
		output			   => output_1
  );
  
  process
  begin
    wait for 0 ns;
      reset_1   <= '0';
    wait for 9 ns;
      reset_1   <= '1';
    wait;
  end process;    
end rtl;     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
