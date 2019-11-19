library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
	port 
	(
		general_clk				: in std_logic;
		reset						: in std_logic;
		en_1						: out std_logic;
		en_2						: out std_logic;
		en_3						: out std_logic;
		sel_1						: out std_logic_vector(1 downto 0);
		general_counter		: in std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of PC is

	type type_state is (s0, s1, s2, s3, s4, s5, s6);
	
	signal state	: type_state;
	
	begin
	
	process(general_clk, reset)
		begin
			if(reset='0') then
				state <= s0;
			elsif(rising_edge(general_clk)) then
				case state is
					when s0 =>
						state <= s1;
					when s1 =>
						state <= s2;
					when s2 =>
						state <= s3;
					when s3 =>
						if(general_counter(3) = '1') then
							state <= s6;
						else
							state <= s4;
						end if;
					when s4 =>
						state <= s5;
					when s5 =>
						state <= s2;
					when s6 =>
						state <= s6;
				end case;
			end if;
	end process;
	
	process(state)
		begin
			case state is
				when s0 =>
					en_1 		<= '0';
					en_2 		<= '0';
					en_3 		<= '0';
					sel_1 	<= "00";
				when s1 =>
					en_1 		<= '1';
					en_2 		<= '0';
					en_3 		<= '0';
					sel_1 	<= "01";
				when s2 =>
					en_1 		<= '1';
					en_2 		<= '0';
					en_3 		<= '0';
					sel_1 	<= "00";
				when s3 =>
					en_1 		<= '0';
					en_2 		<= '1';
					en_3 		<= '0';
					sel_1 	<= "00";
				when s4 =>
					en_1 		<= '0';
					en_2 		<= '0';
					en_3 		<= '1';
					sel_1 	<= "00";
				when s5 =>
					en_1 		<= '1';
					en_2 		<= '0';
					en_3 		<= '0';
					sel_1 	<= "10";
				when s6 =>
					en_1 		<= '0';
					en_2 		<= '0';
					en_3 		<= '1';
					sel_1 	<= "00";
			end case;
	end process;
end rtl;
