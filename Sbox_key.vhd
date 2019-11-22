library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity SBox_key is
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
end entity;

architecture rtl of SBox_key is

type lut_rlps is array (integer range 0 to 255) of std_logic_vector(7 downto 0); --definition of the type for the four LUTS to be used.
signal lut_rlps_0		: lut_rlps; -- Lut for Range[7:6] = 00

begin
		--linha 0
		lut_rlps_0 (0) 	<= X"63";
		lut_rlps_0 (1) 	<= X"7c";
		lut_rlps_0 (2) 	<= X"77";
		lut_rlps_0 (3) 	<= X"7b";
		lut_rlps_0 (4) 	<= X"f2";
		lut_rlps_0 (5) 	<= X"6b";
		lut_rlps_0 (6) 	<= X"6f";
		lut_rlps_0 (7) 	<= X"c5";
   	lut_rlps_0 (8) 	<= X"30";
		lut_rlps_0 (9) 	<= X"01";
		lut_rlps_0 (10) 	<= X"67";
		lut_rlps_0 (11) 	<= X"2b";
		lut_rlps_0 (12) 	<= X"fe";
		lut_rlps_0 (13) 	<= X"d7";
		lut_rlps_0 (14) 	<= X"ab";
		lut_rlps_0 (15) 	<= X"76";
		--linha 1
		lut_rlps_0 (16) 	<= X"ca";
		lut_rlps_0 (17) 	<= X"82";
		lut_rlps_0 (18) 	<= X"c9";
		lut_rlps_0 (19) 	<= X"7d";
		lut_rlps_0 (20) 	<= X"fa";
		lut_rlps_0 (21) 	<= X"59";
		lut_rlps_0 (22) 	<= X"47";
		lut_rlps_0 (23) 	<= X"f0";
		lut_rlps_0 (24) 	<= X"ad";
		lut_rlps_0 (25) 	<= X"d4";
		lut_rlps_0 (26) 	<= X"a2";
		lut_rlps_0 (27) 	<= X"af";
		lut_rlps_0 (28) 	<= X"9c";
		lut_rlps_0 (29) 	<= X"a4";
		lut_rlps_0 (30) 	<= X"72";
		lut_rlps_0 (31)  <= X"c0";
		
		--linha 2
		lut_rlps_0 (32) 	<= X"b7";
		lut_rlps_0 (33) 	<= X"fd";
		lut_rlps_0 (34) 	<= X"93";
		lut_rlps_0 (35) 	<= X"26";
		lut_rlps_0 (36) 	<= X"36";
		lut_rlps_0 (37) 	<= X"3f";
		lut_rlps_0 (38) 	<= X"f7";
		lut_rlps_0 (39) 	<= X"cc";
		lut_rlps_0 (40) 	<= X"34";
		lut_rlps_0 (41) 	<= X"a5";
		lut_rlps_0 (42) 	<= X"e5";
		lut_rlps_0 (43) 	<= X"f1";
		lut_rlps_0 (44) 	<= X"71";
		lut_rlps_0 (45) 	<= X"d8";
		lut_rlps_0 (46) 	<= X"31";
		lut_rlps_0 (47) 	<= X"15";
		
		--linha 3
		lut_rlps_0 (48) 	<= X"04";
		lut_rlps_0 (49) 	<= X"c7";
		lut_rlps_0 (50) 	<= X"23";
		lut_rlps_0 (51) 	<= X"c3";
		lut_rlps_0 (52) 	<= X"18";
		lut_rlps_0 (53) 	<= X"96";
		lut_rlps_0 (54) 	<= X"05";
		lut_rlps_0 (55) 	<= X"9a";
		lut_rlps_0 (56) 	<= X"07";
		lut_rlps_0 (57) 	<= X"12";
		lut_rlps_0 (58) 	<= X"80";
		lut_rlps_0 (59) 	<= X"e2";
		lut_rlps_0 (60) 	<= X"eb";
		lut_rlps_0 (61) 	<= X"27";
		lut_rlps_0 (62) 	<= X"b2";
		lut_rlps_0 (63)  <= X"75";
		
		--linha 4
		lut_rlps_0 (64) 	<= X"09";
		lut_rlps_0 (65) 	<= X"83";
		lut_rlps_0 (66) 	<= X"2c";
		lut_rlps_0 (67) 	<= X"1a";
		lut_rlps_0 (68) 	<= X"1b";
		lut_rlps_0 (69) 	<= X"6e";
		lut_rlps_0 (70) 	<= X"5a";
		lut_rlps_0 (71) 	<= X"a0";
		lut_rlps_0 (72) 	<= X"52";
		lut_rlps_0 (73) 	<= X"3b";
		lut_rlps_0 (74) 	<= X"d6";
		lut_rlps_0 (75) 	<= X"b3";
		lut_rlps_0 (76) 	<= X"29";
		lut_rlps_0 (77) 	<= X"e3";
		lut_rlps_0 (78) 	<= X"2f";
		lut_rlps_0 (79) 	<= X"84";
		
		--linha 5
		lut_rlps_0 (80) 	<= X"53";
		lut_rlps_0 (81) 	<= X"d1";
		lut_rlps_0 (82) 	<= X"00";
		lut_rlps_0 (83) 	<= X"ed";
		lut_rlps_0 (84) 	<= X"20";
		lut_rlps_0 (85) 	<= X"fc";
		lut_rlps_0 (86) 	<= X"b1";
		lut_rlps_0 (87) 	<= X"5b";
		lut_rlps_0 (88) 	<= X"6a";
		lut_rlps_0 (89) 	<= X"cb";
		lut_rlps_0 (90) 	<= X"be";
		lut_rlps_0 (91)  <= X"39";
		lut_rlps_0 (92) 	<= X"4a";
		lut_rlps_0 (93) 	<= X"4c";
		lut_rlps_0 (94) 	<= X"58";
		lut_rlps_0 (95) 	<= X"cf";	
		--linha 6
		lut_rlps_0 (96) 	<= X"d0";
		lut_rlps_0 (97) 	<= X"ef";
		lut_rlps_0 (98) 	<= X"aa";
		lut_rlps_0 (99) 	<= X"fb";
		lut_rlps_0 (100) 	<= X"43";
		lut_rlps_0 (101) 	<= X"4d";
		lut_rlps_0 (102) 	<= X"33";
		lut_rlps_0 (103) 	<= X"85";
		lut_rlps_0 (104) 	<= X"45";
		lut_rlps_0 (105) 	<= X"f9";
		lut_rlps_0 (106) 	<= X"02";
		lut_rlps_0 (107) 	<= X"7f";
		lut_rlps_0 (108) 	<= X"50";
		lut_rlps_0 (109) 	<= X"3c";
		lut_rlps_0 (110) 	<= X"9f";
		lut_rlps_0 (111) 	<= X"a8";
		
		--linha 7
		lut_rlps_0 (112) 	<= X"51";
		lut_rlps_0 (113) 	<= X"a3";
		lut_rlps_0 (114) 	<= X"40";
		lut_rlps_0 (115) 	<= X"8f";
		lut_rlps_0 (116) 	<= X"92";
		lut_rlps_0 (117) 	<= X"9d";
		lut_rlps_0 (118) 	<= X"38";
		lut_rlps_0 (119) 	<= X"f5";
		lut_rlps_0 (120) 	<= X"bc";
		lut_rlps_0 (121) 	<= X"b6";
		lut_rlps_0 (122) 	<= X"da";
		lut_rlps_0 (123) 	<= X"21";
		lut_rlps_0 (124) 	<= X"10";
		lut_rlps_0 (125) 	<= X"ff";
		lut_rlps_0 (126) 	<= X"f3";
		lut_rlps_0 (127) 	<= X"d2";
	
	--linha 8
		lut_rlps_0 (128) 	<= X"cd";
		lut_rlps_0 (129) 	<= X"0c";
		lut_rlps_0 (130) 	<= X"13";
		lut_rlps_0 (131) 	<= X"ec";
		lut_rlps_0 (132) 	<= X"5f";
		lut_rlps_0 (133) 	<= X"97";
		lut_rlps_0 (134) 	<= X"44";
		lut_rlps_0 (135) 	<= X"17";
		lut_rlps_0 (136) 	<= X"c4";
		lut_rlps_0 (137) 	<= X"a7";
		lut_rlps_0 (138) 	<= X"7e";
		lut_rlps_0 (139) 	<= X"3d";
		lut_rlps_0 (140) 	<= X"64";
		lut_rlps_0 (141) 	<= X"5d";
		lut_rlps_0 (142) 	<= X"19";
		lut_rlps_0 (143) 	<= X"73";
		
		--linha 9
		lut_rlps_0 (144) 	<= X"60";
		lut_rlps_0 (145) 	<= X"81";
		lut_rlps_0 (146) 	<= X"4f";
		lut_rlps_0 (147) 	<= X"dc";
		lut_rlps_0 (148) 	<= X"22";
		lut_rlps_0 (149) 	<= X"2a";
		lut_rlps_0 (150) 	<= X"90";
		lut_rlps_0 (151) 	<= X"88";
		lut_rlps_0 (152) 	<= X"46";
		lut_rlps_0 (153) 	<= X"ee";
		lut_rlps_0 (154) 	<= X"b8";
		lut_rlps_0 (155) 	<= X"14";
		lut_rlps_0 (156) 	<= X"de";
		lut_rlps_0 (157) 	<= X"5e";
		lut_rlps_0 (158) 	<= X"0b";
		lut_rlps_0 (159) 	<= X"db";
		
		--linha a
		lut_rlps_0 (160) 	<= X"e0";
		lut_rlps_0 (161) 	<= X"32";
		lut_rlps_0 (162) 	<= X"3a";
		lut_rlps_0 (163) 	<= X"0a";
		lut_rlps_0 (164) 	<= X"49";
		lut_rlps_0 (165) 	<= X"06";
		lut_rlps_0 (166) 	<= X"24";
		lut_rlps_0 (167) 	<= X"5c";
		lut_rlps_0 (168) 	<= X"c2";
		lut_rlps_0 (169) 	<= X"d3";
		lut_rlps_0 (170) 	<= X"ac";
		lut_rlps_0 (171) 	<= X"62";
		lut_rlps_0 (172) 	<= X"91";
		lut_rlps_0 (173) 	<= X"95";
		lut_rlps_0 (174) 	<= X"e4";
		lut_rlps_0 (175) 	<= X"79";
		
		--linha b
		lut_rlps_0 (176) 	<= X"e7";
		lut_rlps_0 (177) 	<= X"c8";
		lut_rlps_0 (178) 	<= X"37";
		lut_rlps_0 (179) 	<= X"6d";
		lut_rlps_0 (180) 	<= X"8d";
		lut_rlps_0 (181) 	<= X"d5";
		lut_rlps_0 (182) 	<= X"4e";
		lut_rlps_0 (183) 	<= X"a9";
		lut_rlps_0 (184) 	<= X"6c";
		lut_rlps_0 (185) 	<= X"56";
		lut_rlps_0 (186) 	<= X"f4";
		lut_rlps_0 (187) 	<= X"ea";
		lut_rlps_0 (188) 	<= X"65";
		lut_rlps_0 (189) 	<= X"7a";
		lut_rlps_0 (190) 	<= X"ae";
		lut_rlps_0 (191) 	<= X"08";
		
		--linha c
		lut_rlps_0 (192) 	<= X"ba";
		lut_rlps_0 (193) 	<= X"78";
		lut_rlps_0 (194) 	<= X"25";
		lut_rlps_0 (195) 	<= X"2e";
		lut_rlps_0 (196) 	<=X"1c";
		lut_rlps_0 (197) 	<= X"a6";
		lut_rlps_0 (198) 	<= X"b4";
		lut_rlps_0 (199) 	<= X"c6";
		lut_rlps_0 (200) 	<= X"e8";
		lut_rlps_0 (201) 	<= X"dd";
		lut_rlps_0 (202) 	<= X"74";
		lut_rlps_0 (203) 	<= X"1f";
		lut_rlps_0 (204) 	<= X"4b";
		lut_rlps_0 (205) 	<= X"bd";
		lut_rlps_0 (206) 	<= X"8b";
		lut_rlps_0 (207) 	<= X"8a";
		
		--linha d
		lut_rlps_0 (208) 	<= X"70";
		lut_rlps_0 (209) 	<= X"3e";
		lut_rlps_0 (210) 	<= X"b5";
		lut_rlps_0 (211) 	<= X"66";
		lut_rlps_0 (212) 	<= X"48";
		lut_rlps_0 (213) 	<= X"03";
		lut_rlps_0 (214) 	<= X"f6";
		lut_rlps_0 (215) 	<= X"0e";
		lut_rlps_0 (216) 	<= X"61";
		lut_rlps_0 (217) 	<= X"35";
		lut_rlps_0 (218) 	<= X"57";
		lut_rlps_0 (219) 	<= X"b9";
		lut_rlps_0 (220) 	<= X"86";
		lut_rlps_0 (221) 	<= X"c1";
		lut_rlps_0 (222) 	<= X"1d";
		lut_rlps_0 (223) 	<= X"9e";
		
		--linha e
		lut_rlps_0 (224) 	<= X"e1";
		lut_rlps_0 (225) 	<= X"f8";
		lut_rlps_0 (226) 	<= X"98";
		lut_rlps_0 (227) 	<= X"11";
		lut_rlps_0 (228) 	<= X"69";
		lut_rlps_0 (229) 	<= X"d9";
		lut_rlps_0 (230) 	<= X"8e";
		lut_rlps_0 (231) 	<= X"94";
		lut_rlps_0 (232) 	<= X"9b";
		lut_rlps_0 (233) 	<= X"1e";
		lut_rlps_0 (234) 	<= X"87";
		lut_rlps_0 (235) 	<= X"e9";
		lut_rlps_0 (236) 	<= X"ce";
		lut_rlps_0 (237) 	<= X"55";
		lut_rlps_0 (238) 	<= X"28";
		lut_rlps_0 (239) 	<= X"df";
		
		--linha f
		lut_rlps_0 (240) 	<= X"8c";
		lut_rlps_0 (241) 	<= X"a1";
		lut_rlps_0 (242) 	<= X"89";
		lut_rlps_0 (243) 	<= X"0d";
		lut_rlps_0 (244) 	<= X"bf";
		lut_rlps_0 (245) 	<= X"e6";
		lut_rlps_0 (246) 	<= X"42";
		lut_rlps_0 (247) 	<= X"68";
		lut_rlps_0 (248) 	<= X"41";
		lut_rlps_0 (249) 	<= X"99";
		lut_rlps_0 (250) 	<= X"2d";
		lut_rlps_0 (251) 	<= X"0f";
		lut_rlps_0 (252) 	<= X"b0";
		lut_rlps_0 (253) 	<= X"54";
		lut_rlps_0 (254) 	<= X"bb";
		lut_rlps_0 (255) 	<= X"16";

	rlps_0 <= lut_rlps_0 (conv_integer(state0));
	rlps_1 <= lut_rlps_0 (conv_integer(state1));
	rlps_2 <= lut_rlps_0 (conv_integer(state2));
	rlps_3 <= lut_rlps_0 (conv_integer(state3));
	

end rtl;
