--***************************************************************************
-- Based on the paper " Ultra High Throughput VLSI Architecture of H.265/HEVC
-- CABAC Encoder for UHDTV Applcations" by Dajiang Zhou et al, IEEE TCSVT 2015
--***************************************************************************
-- Libraries definitions for LUT rLPS
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity rlps is
	port(
		--reset				: in 	std_logic;
		--clock				: in 	std_logic;
		state_index			: in 	std_logic_vector(5 downto 0);
		rlps_0				: out 	std_logic_vector(8 downto 0);
		rlps_1				: out 	std_logic_vector(8 downto 0);
		rlps_2				: out	std_logic_vector(8 downto 0);
		rlps_3				: out	std_logic_vector(8 downto 0)
			
		);
end entity;
			
architecture behaviour of rlps is

type lut_rlps is array (integer range 0 to 63) of std_logic_vector(8 downto 0); --definition of the type for the four LUTS to be used.
signal lut_rlps_0		: lut_rlps; -- Lut for Range[7:6] = 00
signal lut_rlps_1		: lut_rlps; -- Lut for Range[7:6] = 01
signal lut_rlps_2		: lut_rlps; -- Lut for Range[7:6] = 10
signal lut_rlps_3		: lut_rlps; -- Lut for Range[7:6] = 11

begin


--process (clock)
--begin
--	if clock = '1' and clock'event then
--		if reset = '0' then
		
			-- LUT 0
			lut_rlps_0 (0) 	<= 9D"128"; 
			lut_rlps_0 (1) 	<= 9D"128"; 
			lut_rlps_0 (2) 	<= 9D"128";  
			lut_rlps_0 (3) 	<= 9D"123";  
			lut_rlps_0 (4) 	<= 9D"116"; 
			lut_rlps_0 (5) 	<= 9D"111";  
			lut_rlps_0 (6) 	<= 9D"105";  
			lut_rlps_0 (7) 	<= 9D"100";  
			lut_rlps_0 (8) 	<= 9D"95";  
			lut_rlps_0 (9) 	<= 9D"90";  
			lut_rlps_0 (10) <= 9D"85";  
			lut_rlps_0 (11) <= 9D"81"; 
			lut_rlps_0 (12) <= 9D"77"; 
			lut_rlps_0 (13) <= 9D"73";  
			lut_rlps_0 (14) <= 9D"69";  
			lut_rlps_0 (15) <= 9D"66";  
			lut_rlps_0 (16) <= 9D"62";  
			lut_rlps_0 (17) <= 9D"59"; 
			lut_rlps_0 (18) <= 9D"56";  
			lut_rlps_0 (19) <= 9D"53";  
			lut_rlps_0 (20) <= 9D"51";  
			lut_rlps_0 (21) <= 9D"48"; 
			lut_rlps_0 (22) <= 9D"46"; 
			lut_rlps_0 (23) <= 9D"43";  
			lut_rlps_0 (24) <= 9D"41";  
			lut_rlps_0 (25) <= 9D"39";  
			lut_rlps_0 (26) <= 9D"37";  
			lut_rlps_0 (27) <= 9D"35";  	
			lut_rlps_0 (28) <= 9D"33"; 
			lut_rlps_0 (29) <= 9D"32"; 
			lut_rlps_0 (30) <= 9D"30";  
			lut_rlps_0 (31) <= 9D"29";  
			lut_rlps_0 (32) <= 9D"27"; 
			lut_rlps_0 (33) <= 9D"26";  
			lut_rlps_0 (34) <= 9D"24";  
			lut_rlps_0 (35) <= 9D"23";  
			lut_rlps_0 (36) <= 9D"22";  
			lut_rlps_0 (37) <= 9D"21";  
			lut_rlps_0 (38) <= 9D"20";  
			lut_rlps_0 (39) <= 9D"19"; 
			lut_rlps_0 (40) <= 9D"18"; 
			lut_rlps_0 (41) <= 9D"17";  
			lut_rlps_0 (42) <= 9D"16";  
			lut_rlps_0 (43) <= 9D"15";  
			lut_rlps_0 (44) <= 9D"14";  
			lut_rlps_0 (45) <= 9D"14"; 
			lut_rlps_0 (46) <= 9D"13";  
			lut_rlps_0 (47) <= 9D"12";  
			lut_rlps_0 (48) <= 9D"12";  
			lut_rlps_0 (49) <= 9D"11"; 
			lut_rlps_0 (50) <= 9D"11"; 
			lut_rlps_0 (51) <= 9D"10";  
			lut_rlps_0 (52) <= 9D"10";  
			lut_rlps_0 (53) <= 9D"9";  
			lut_rlps_0 (54) <= 9D"9";  
			lut_rlps_0 (55) <= 9D"8"; 
			lut_rlps_0 (56) <= 9D"8"; 
			lut_rlps_0 (57) <= 9D"7"; 
			lut_rlps_0 (58) <= 9D"7"; 
			lut_rlps_0 (59) <= 9D"7"; 
			lut_rlps_0 (60) <= 9D"6"; 
			lut_rlps_0 (61) <= 9D"6"; 
			lut_rlps_0 (62) <= 9D"6"; 
			lut_rlps_0 (63) <= 9D"2"; 
			
			-- LUT 1
			lut_rlps_1 (0) 	<= 9D"176"; 
			lut_rlps_1 (1) 	<= 9D"167"; 
			lut_rlps_1 (2) 	<= 9D"158";  
			lut_rlps_1 (3) 	<= 9D"150";  
			lut_rlps_1 (4) 	<= 9D"142"; 
			lut_rlps_1 (5) 	<= 9D"135";  
			lut_rlps_1 (6) 	<= 9D"128";  
			lut_rlps_1 (7) 	<= 9D"122";  
			lut_rlps_1 (8) 	<= 9D"116";  
			lut_rlps_1 (9) 	<= 9D"110";  
			lut_rlps_1 (10) <= 9D"104";  
			lut_rlps_1 (11) <= 9D"99"; 
			lut_rlps_1 (12) <= 9D"94"; 
			lut_rlps_1 (13) <= 9D"89";  
			lut_rlps_1 (14) <= 9D"85";  
			lut_rlps_1 (15) <= 9D"80";  
			lut_rlps_1 (16) <= 9D"76";  
			lut_rlps_1 (17) <= 9D"72"; 
			lut_rlps_1 (18) <= 9D"69";  
			lut_rlps_1 (19) <= 9D"65";  
			lut_rlps_1 (20) <= 9D"62";  
			lut_rlps_1 (21) <= 9D"59"; 
			lut_rlps_1 (22) <= 9D"56"; 
			lut_rlps_1 (23) <= 9D"53";  
			lut_rlps_1 (24) <= 9D"50";  
			lut_rlps_1 (25) <= 9D"48";  
			lut_rlps_1 (26) <= 9D"45";  
			lut_rlps_1 (27) <= 9D"43";  	
			lut_rlps_1 (28) <= 9D"41"; 
			lut_rlps_1 (29) <= 9D"39"; 
			lut_rlps_1 (30) <= 9D"37";  
			lut_rlps_1 (31) <= 9D"35";  
			lut_rlps_1 (32) <= 9D"33"; 
			lut_rlps_1 (33) <= 9D"31";  
			lut_rlps_1 (34) <= 9D"30";  
			lut_rlps_1 (35) <= 9D"28";  
			lut_rlps_1 (36) <= 9D"27";  
			lut_rlps_1 (37) <= 9D"26";  
			lut_rlps_1 (38) <= 9D"24";  
			lut_rlps_1 (39) <= 9D"23"; 
			lut_rlps_1 (40) <= 9D"22"; 
			lut_rlps_1 (41) <= 9D"21";  
			lut_rlps_1 (42) <= 9D"20";  
			lut_rlps_1 (43) <= 9D"19";  
			lut_rlps_1 (44) <= 9D"18";  
			lut_rlps_1 (45) <= 9D"17"; 
			lut_rlps_1 (46) <= 9D"16";  
			lut_rlps_1 (47) <= 9D"15";  
			lut_rlps_1 (48) <= 9D"14";  
			lut_rlps_1 (49) <= 9D"14"; 
			lut_rlps_1 (50) <= 9D"13"; 
			lut_rlps_1 (51) <= 9D"12";  
			lut_rlps_1 (52) <= 9D"12";  
			lut_rlps_1 (53) <= 9D"11";  
			lut_rlps_1 (54) <= 9D"11";  
			lut_rlps_1 (55) <= 9D"10"; 
			lut_rlps_1 (56) <= 9D"9"; 
			lut_rlps_1 (57) <= 9D"9"; 
			lut_rlps_1 (58) <= 9D"9"; 
			lut_rlps_1 (59) <= 9D"8"; 
			lut_rlps_1 (60) <= 9D"8"; 
			lut_rlps_1 (61) <= 9D"7"; 
			lut_rlps_1 (62) <= 9D"7"; 
			lut_rlps_1 (63) <= 9D"2";

			-- LUT 2
			lut_rlps_2 (0) 	<= 9D"208"; 
			lut_rlps_2 (1) 	<= 9D"197"; 
			lut_rlps_2 (2) 	<= 9D"187";  
			lut_rlps_2 (3) 	<= 9D"178";  
			lut_rlps_2 (4) 	<= 9D"169"; 
			lut_rlps_2 (5) 	<= 9D"160";  
			lut_rlps_2 (6) 	<= 9D"152";  
			lut_rlps_2 (7) 	<= 9D"144";  
			lut_rlps_2 (8) 	<= 9D"137";  
			lut_rlps_2 (9) 	<= 9D"130";  
			lut_rlps_2 (10) <= 9D"123";  
			lut_rlps_2 (11) <= 9D"117"; 
			lut_rlps_2 (12) <= 9D"111"; 
			lut_rlps_2 (13) <= 9D"105";  
			lut_rlps_2 (14) <= 9D"100";  
			lut_rlps_2 (15) <= 9D"95";  
			lut_rlps_2 (16) <= 9D"90";  
			lut_rlps_2 (17) <= 9D"86"; 
			lut_rlps_2 (18) <= 9D"81";  
			lut_rlps_2 (19) <= 9D"77";  
			lut_rlps_2 (20) <= 9D"73";  
			lut_rlps_2 (21) <= 9D"69"; 
			lut_rlps_2 (22) <= 9D"66"; 
			lut_rlps_2 (23) <= 9D"63";  
			lut_rlps_2 (24) <= 9D"59";  
			lut_rlps_2 (25) <= 9D"56";  
			lut_rlps_2 (26) <= 9D"54";  
			lut_rlps_2 (27) <= 9D"51";  	
			lut_rlps_2 (28) <= 9D"48"; 
			lut_rlps_2 (29) <= 9D"46"; 
			lut_rlps_2 (30) <= 9D"43";  
			lut_rlps_2 (31) <= 9D"41";  
			lut_rlps_2 (32) <= 9D"39"; 
			lut_rlps_2 (33) <= 9D"37";  
			lut_rlps_2 (34) <= 9D"35";  
			lut_rlps_2 (35) <= 9D"33";  
			lut_rlps_2 (36) <= 9D"32";  
			lut_rlps_2 (37) <= 9D"30";  
			lut_rlps_2 (38) <= 9D"29";  
			lut_rlps_2 (39) <= 9D"27"; 
			lut_rlps_2 (40) <= 9D"26"; 
			lut_rlps_2 (41) <= 9D"25";  
			lut_rlps_2 (42) <= 9D"23";  
			lut_rlps_2 (43) <= 9D"22";  
			lut_rlps_2 (44) <= 9D"21";  
			lut_rlps_2 (45) <= 9D"20"; 
			lut_rlps_2 (46) <= 9D"19";  
			lut_rlps_2 (47) <= 9D"18";  
			lut_rlps_2 (48) <= 9D"17";  
			lut_rlps_2 (49) <= 9D"16"; 
			lut_rlps_2 (50) <= 9D"15"; 
			lut_rlps_2 (51) <= 9D"15";  
			lut_rlps_2 (52) <= 9D"14";  
			lut_rlps_2 (53) <= 9D"13";  
			lut_rlps_2 (54) <= 9D"12";  
			lut_rlps_2 (55) <= 9D"12"; 
			lut_rlps_2 (56) <= 9D"11"; 
			lut_rlps_2 (57) <= 9D"11"; 
			lut_rlps_2 (58) <= 9D"10"; 
			lut_rlps_2 (59) <= 9D"10"; 
			lut_rlps_2 (60) <= 9D"9"; 
			lut_rlps_2 (61) <= 9D"9"; 
			lut_rlps_2 (62) <= 9D"8"; 
			lut_rlps_2 (63) <= 9D"2";	
			
			-- LUT 3
			lut_rlps_3 (0) 	<= 9D"240"; 
			lut_rlps_3 (1) 	<= 9D"227"; 
			lut_rlps_3 (2) 	<= 9D"216";  
			lut_rlps_3 (3) 	<= 9D"205";  
			lut_rlps_3 (4) 	<= 9D"195"; 
			lut_rlps_3 (5) 	<= 9D"185";  
			lut_rlps_3 (6) 	<= 9D"175";  
			lut_rlps_3 (7) 	<= 9D"166";  
			lut_rlps_3 (8) 	<= 9D"158";  
			lut_rlps_3 (9) 	<= 9D"150";  
			lut_rlps_3 (10) <= 9D"142";  
			lut_rlps_3 (11) <= 9D"135"; 
			lut_rlps_3 (12) <= 9D"128"; 
			lut_rlps_3 (13) <= 9D"122";  
			lut_rlps_3 (14) <= 9D"116";  
			lut_rlps_3 (15) <= 9D"110";  
			lut_rlps_3 (16) <= 9D"104";  
			lut_rlps_3 (17) <= 9D"99"; 
			lut_rlps_3 (18) <= 9D"94";  
			lut_rlps_3 (19) <= 9D"89";  
			lut_rlps_3 (20) <= 9D"85";  
			lut_rlps_3 (21) <= 9D"80"; 
			lut_rlps_3 (22) <= 9D"76"; 
			lut_rlps_3 (23) <= 9D"72";  
			lut_rlps_3 (24) <= 9D"69";  
			lut_rlps_3 (25) <= 9D"65";  
			lut_rlps_3 (26) <= 9D"62";  
			lut_rlps_3 (27) <= 9D"59";  	
			lut_rlps_3 (28) <= 9D"56"; 
			lut_rlps_3 (29) <= 9D"53"; 
			lut_rlps_3 (30) <= 9D"50";  
			lut_rlps_3 (31) <= 9D"48";  
			lut_rlps_3 (32) <= 9D"45"; 
			lut_rlps_3 (33) <= 9D"43";  
			lut_rlps_3 (34) <= 9D"41";  
			lut_rlps_3 (35) <= 9D"39";  
			lut_rlps_3 (36) <= 9D"37";  
			lut_rlps_3 (37) <= 9D"35";  
			lut_rlps_3 (38) <= 9D"33";  
			lut_rlps_3 (39) <= 9D"31"; 
			lut_rlps_3 (40) <= 9D"30"; 
			lut_rlps_3 (41) <= 9D"28";  
			lut_rlps_3 (42) <= 9D"27";  
			lut_rlps_3 (43) <= 9D"25";  
			lut_rlps_3 (44) <= 9D"24";  
			lut_rlps_3 (45) <= 9D"23"; 
			lut_rlps_3 (46) <= 9D"22";  
			lut_rlps_3 (47) <= 9D"21";  
			lut_rlps_3 (48) <= 9D"20";  
			lut_rlps_3 (49) <= 9D"19"; 
			lut_rlps_3 (50) <= 9D"18"; 
			lut_rlps_3 (51) <= 9D"17";  
			lut_rlps_3 (52) <= 9D"16";  
			lut_rlps_3 (53) <= 9D"15";  
			lut_rlps_3 (54) <= 9D"14";  
			lut_rlps_3 (55) <= 9D"14"; 
			lut_rlps_3 (56) <= 9D"13"; 
			lut_rlps_3 (57) <= 9D"12"; 
			lut_rlps_3 (58) <= 9D"12"; 
			lut_rlps_3 (59) <= 9D"11"; 
			lut_rlps_3 (60) <= 9D"11"; 
			lut_rlps_3 (61) <= 9D"10"; 
			lut_rlps_3 (62) <= 9D"9"; 
			lut_rlps_3 (63) <= 9D"2";	
			
--		end if;
--	end if;
--end process;

-- the lut to be selected depends on the range_index (bits 7 and 6)
--rlps_out	<= 	lut_rlps_0 (conv_integer(state_index)) when range_index = "00" else
--				lut_rlps_1 (conv_integer(state_index)) when range_index = "01" else
--				lut_rlps_2 (conv_integer(state_index)) when range_index = "10" else
--				lut_rlps_3;




rlps_0 <= lut_rlps_0 (conv_integer(state_index));
rlps_1 <= lut_rlps_1 (conv_integer(state_index));
rlps_2 <= lut_rlps_2 (conv_integer(state_index));
rlps_3 <= lut_rlps_3 (conv_integer(state_index));

end behaviour;