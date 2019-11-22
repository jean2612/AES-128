library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Rcom is

	port 
	(
		counter : in std_logic_vector  (3 downto 0);
		result : out std_logic_vector (7 downto 0)
	);

end entity;

architecture rtl of Rcom is
begin
	process(counter)
		begin
			case counter is
			when "0000" => result <= "00000001";
			when "0001" => result <= "00000010";
			when "0010" => result <= "00000100";
			when "0011" => result <= "00001000";
			when "0100" => result <= "00010000";
			when "0101" => result <= "00100000";
			when "0110" => result <= "01000000";
			when "0111" => result <= "10000000";
			when "1000" => result <= "00011011";
			when "1001" => result <= "00110110";
			when "1010" => result <= "11011011";
			when others => result <= "00000000";
		end case;
	end process;
end rtl;
