-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/18/2019 17:57:03"

-- 
-- Device: Altera EP3C40F780I7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AES IS
    PORT (
	input : IN std_logic_vector(127 DOWNTO 0);
	key : IN std_logic_vector(127 DOWNTO 0);
	output : OUT std_logic_vector(127 DOWNTO 0)
	);
END AES;

-- Design Ports Information
-- input[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[16]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[17]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[18]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[19]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[20]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[21]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[23]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[24]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[25]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[26]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[27]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[28]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[29]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[30]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[31]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[32]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[33]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[34]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[35]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[36]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[37]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[38]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[39]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[40]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[41]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[42]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[43]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[44]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[45]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[46]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[47]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[48]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[49]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[50]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[51]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[52]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[53]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[54]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[55]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[56]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[57]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[58]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[59]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[60]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[61]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[62]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[63]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[64]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[65]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[66]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[67]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[68]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[69]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[70]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[71]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[72]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[73]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[74]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[75]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[76]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[77]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[78]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[79]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[80]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[81]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[82]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[83]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[84]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[85]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[86]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[87]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[88]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[89]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[90]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[91]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[92]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[93]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[94]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[95]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[96]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[97]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[98]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[99]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[100]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[101]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[102]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[103]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[104]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[105]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[106]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[107]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[108]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[109]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[110]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[111]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[112]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[113]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[114]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[115]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[116]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[117]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[118]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[119]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[120]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[121]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[122]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[123]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[124]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[125]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[126]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[127]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[5]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[7]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[8]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[9]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[10]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[11]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[12]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[14]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[15]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[16]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[17]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[18]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[19]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[20]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[21]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[22]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[23]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[24]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[25]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[26]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[27]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[28]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[29]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[30]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[31]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[32]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[33]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[34]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[35]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[36]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[37]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[38]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[39]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[40]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[41]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[42]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[43]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[44]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[45]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[46]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[47]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[48]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[49]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[50]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[51]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[52]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[53]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[54]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[55]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[56]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[57]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[58]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[59]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[60]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[61]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[62]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[63]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[64]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[65]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[66]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[67]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[68]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[69]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[70]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[71]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[72]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[73]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[74]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[75]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[76]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[77]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[78]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[79]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[80]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[81]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[82]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[83]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[84]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[85]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[86]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[87]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[88]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[89]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[90]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[91]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[92]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[93]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[94]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[95]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[96]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[97]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[98]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[99]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[100]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[101]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[102]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[103]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[104]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[105]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[106]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[107]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[108]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[109]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[110]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[111]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[112]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[113]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[114]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[115]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[116]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[117]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[118]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[119]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[120]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[121]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[122]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[123]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[124]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[125]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[126]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[127]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[32]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[33]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[34]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[35]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[36]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[37]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[38]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[39]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[40]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[41]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[42]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[43]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[44]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[45]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[46]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[47]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[48]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[49]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[50]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[51]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[52]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[53]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[54]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[55]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[56]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[57]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[58]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[59]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[60]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[61]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[62]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[63]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[64]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[65]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[66]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[67]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[68]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[69]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[70]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[71]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[72]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[73]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[74]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[75]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[76]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[77]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[78]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[79]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[80]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[81]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[82]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[83]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[84]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[85]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[86]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[87]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[88]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[89]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[90]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[91]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[92]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[93]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[94]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[95]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[96]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[97]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[98]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[99]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[100]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[101]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[102]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[103]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[104]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[105]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[106]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[107]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[108]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[109]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[110]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[111]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[112]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[113]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[114]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[115]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[116]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[117]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[118]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[119]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[120]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[121]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[122]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[123]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[124]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[125]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[126]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[127]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AES IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(127 DOWNTO 0);
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \input[16]~input_o\ : std_logic;
SIGNAL \input[17]~input_o\ : std_logic;
SIGNAL \input[18]~input_o\ : std_logic;
SIGNAL \input[19]~input_o\ : std_logic;
SIGNAL \input[20]~input_o\ : std_logic;
SIGNAL \input[21]~input_o\ : std_logic;
SIGNAL \input[22]~input_o\ : std_logic;
SIGNAL \input[23]~input_o\ : std_logic;
SIGNAL \input[24]~input_o\ : std_logic;
SIGNAL \input[25]~input_o\ : std_logic;
SIGNAL \input[26]~input_o\ : std_logic;
SIGNAL \input[27]~input_o\ : std_logic;
SIGNAL \input[28]~input_o\ : std_logic;
SIGNAL \input[29]~input_o\ : std_logic;
SIGNAL \input[30]~input_o\ : std_logic;
SIGNAL \input[31]~input_o\ : std_logic;
SIGNAL \input[32]~input_o\ : std_logic;
SIGNAL \input[33]~input_o\ : std_logic;
SIGNAL \input[34]~input_o\ : std_logic;
SIGNAL \input[35]~input_o\ : std_logic;
SIGNAL \input[36]~input_o\ : std_logic;
SIGNAL \input[37]~input_o\ : std_logic;
SIGNAL \input[38]~input_o\ : std_logic;
SIGNAL \input[39]~input_o\ : std_logic;
SIGNAL \input[40]~input_o\ : std_logic;
SIGNAL \input[41]~input_o\ : std_logic;
SIGNAL \input[42]~input_o\ : std_logic;
SIGNAL \input[43]~input_o\ : std_logic;
SIGNAL \input[44]~input_o\ : std_logic;
SIGNAL \input[45]~input_o\ : std_logic;
SIGNAL \input[46]~input_o\ : std_logic;
SIGNAL \input[47]~input_o\ : std_logic;
SIGNAL \input[48]~input_o\ : std_logic;
SIGNAL \input[49]~input_o\ : std_logic;
SIGNAL \input[50]~input_o\ : std_logic;
SIGNAL \input[51]~input_o\ : std_logic;
SIGNAL \input[52]~input_o\ : std_logic;
SIGNAL \input[53]~input_o\ : std_logic;
SIGNAL \input[54]~input_o\ : std_logic;
SIGNAL \input[55]~input_o\ : std_logic;
SIGNAL \input[56]~input_o\ : std_logic;
SIGNAL \input[57]~input_o\ : std_logic;
SIGNAL \input[58]~input_o\ : std_logic;
SIGNAL \input[59]~input_o\ : std_logic;
SIGNAL \input[60]~input_o\ : std_logic;
SIGNAL \input[61]~input_o\ : std_logic;
SIGNAL \input[62]~input_o\ : std_logic;
SIGNAL \input[63]~input_o\ : std_logic;
SIGNAL \input[64]~input_o\ : std_logic;
SIGNAL \input[65]~input_o\ : std_logic;
SIGNAL \input[66]~input_o\ : std_logic;
SIGNAL \input[67]~input_o\ : std_logic;
SIGNAL \input[68]~input_o\ : std_logic;
SIGNAL \input[69]~input_o\ : std_logic;
SIGNAL \input[70]~input_o\ : std_logic;
SIGNAL \input[71]~input_o\ : std_logic;
SIGNAL \input[72]~input_o\ : std_logic;
SIGNAL \input[73]~input_o\ : std_logic;
SIGNAL \input[74]~input_o\ : std_logic;
SIGNAL \input[75]~input_o\ : std_logic;
SIGNAL \input[76]~input_o\ : std_logic;
SIGNAL \input[77]~input_o\ : std_logic;
SIGNAL \input[78]~input_o\ : std_logic;
SIGNAL \input[79]~input_o\ : std_logic;
SIGNAL \input[80]~input_o\ : std_logic;
SIGNAL \input[81]~input_o\ : std_logic;
SIGNAL \input[82]~input_o\ : std_logic;
SIGNAL \input[83]~input_o\ : std_logic;
SIGNAL \input[84]~input_o\ : std_logic;
SIGNAL \input[85]~input_o\ : std_logic;
SIGNAL \input[86]~input_o\ : std_logic;
SIGNAL \input[87]~input_o\ : std_logic;
SIGNAL \input[88]~input_o\ : std_logic;
SIGNAL \input[89]~input_o\ : std_logic;
SIGNAL \input[90]~input_o\ : std_logic;
SIGNAL \input[91]~input_o\ : std_logic;
SIGNAL \input[92]~input_o\ : std_logic;
SIGNAL \input[93]~input_o\ : std_logic;
SIGNAL \input[94]~input_o\ : std_logic;
SIGNAL \input[95]~input_o\ : std_logic;
SIGNAL \input[96]~input_o\ : std_logic;
SIGNAL \input[97]~input_o\ : std_logic;
SIGNAL \input[98]~input_o\ : std_logic;
SIGNAL \input[99]~input_o\ : std_logic;
SIGNAL \input[100]~input_o\ : std_logic;
SIGNAL \input[101]~input_o\ : std_logic;
SIGNAL \input[102]~input_o\ : std_logic;
SIGNAL \input[103]~input_o\ : std_logic;
SIGNAL \input[104]~input_o\ : std_logic;
SIGNAL \input[105]~input_o\ : std_logic;
SIGNAL \input[106]~input_o\ : std_logic;
SIGNAL \input[107]~input_o\ : std_logic;
SIGNAL \input[108]~input_o\ : std_logic;
SIGNAL \input[109]~input_o\ : std_logic;
SIGNAL \input[110]~input_o\ : std_logic;
SIGNAL \input[111]~input_o\ : std_logic;
SIGNAL \input[112]~input_o\ : std_logic;
SIGNAL \input[113]~input_o\ : std_logic;
SIGNAL \input[114]~input_o\ : std_logic;
SIGNAL \input[115]~input_o\ : std_logic;
SIGNAL \input[116]~input_o\ : std_logic;
SIGNAL \input[117]~input_o\ : std_logic;
SIGNAL \input[118]~input_o\ : std_logic;
SIGNAL \input[119]~input_o\ : std_logic;
SIGNAL \input[120]~input_o\ : std_logic;
SIGNAL \input[121]~input_o\ : std_logic;
SIGNAL \input[122]~input_o\ : std_logic;
SIGNAL \input[123]~input_o\ : std_logic;
SIGNAL \input[124]~input_o\ : std_logic;
SIGNAL \input[125]~input_o\ : std_logic;
SIGNAL \input[126]~input_o\ : std_logic;
SIGNAL \input[127]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \key[5]~input_o\ : std_logic;
SIGNAL \key[6]~input_o\ : std_logic;
SIGNAL \key[7]~input_o\ : std_logic;
SIGNAL \key[8]~input_o\ : std_logic;
SIGNAL \key[9]~input_o\ : std_logic;
SIGNAL \key[10]~input_o\ : std_logic;
SIGNAL \key[11]~input_o\ : std_logic;
SIGNAL \key[12]~input_o\ : std_logic;
SIGNAL \key[13]~input_o\ : std_logic;
SIGNAL \key[14]~input_o\ : std_logic;
SIGNAL \key[15]~input_o\ : std_logic;
SIGNAL \key[16]~input_o\ : std_logic;
SIGNAL \key[17]~input_o\ : std_logic;
SIGNAL \key[18]~input_o\ : std_logic;
SIGNAL \key[19]~input_o\ : std_logic;
SIGNAL \key[20]~input_o\ : std_logic;
SIGNAL \key[21]~input_o\ : std_logic;
SIGNAL \key[22]~input_o\ : std_logic;
SIGNAL \key[23]~input_o\ : std_logic;
SIGNAL \key[24]~input_o\ : std_logic;
SIGNAL \key[25]~input_o\ : std_logic;
SIGNAL \key[26]~input_o\ : std_logic;
SIGNAL \key[27]~input_o\ : std_logic;
SIGNAL \key[28]~input_o\ : std_logic;
SIGNAL \key[29]~input_o\ : std_logic;
SIGNAL \key[30]~input_o\ : std_logic;
SIGNAL \key[31]~input_o\ : std_logic;
SIGNAL \key[32]~input_o\ : std_logic;
SIGNAL \key[33]~input_o\ : std_logic;
SIGNAL \key[34]~input_o\ : std_logic;
SIGNAL \key[35]~input_o\ : std_logic;
SIGNAL \key[36]~input_o\ : std_logic;
SIGNAL \key[37]~input_o\ : std_logic;
SIGNAL \key[38]~input_o\ : std_logic;
SIGNAL \key[39]~input_o\ : std_logic;
SIGNAL \key[40]~input_o\ : std_logic;
SIGNAL \key[41]~input_o\ : std_logic;
SIGNAL \key[42]~input_o\ : std_logic;
SIGNAL \key[43]~input_o\ : std_logic;
SIGNAL \key[44]~input_o\ : std_logic;
SIGNAL \key[45]~input_o\ : std_logic;
SIGNAL \key[46]~input_o\ : std_logic;
SIGNAL \key[47]~input_o\ : std_logic;
SIGNAL \key[48]~input_o\ : std_logic;
SIGNAL \key[49]~input_o\ : std_logic;
SIGNAL \key[50]~input_o\ : std_logic;
SIGNAL \key[51]~input_o\ : std_logic;
SIGNAL \key[52]~input_o\ : std_logic;
SIGNAL \key[53]~input_o\ : std_logic;
SIGNAL \key[54]~input_o\ : std_logic;
SIGNAL \key[55]~input_o\ : std_logic;
SIGNAL \key[56]~input_o\ : std_logic;
SIGNAL \key[57]~input_o\ : std_logic;
SIGNAL \key[58]~input_o\ : std_logic;
SIGNAL \key[59]~input_o\ : std_logic;
SIGNAL \key[60]~input_o\ : std_logic;
SIGNAL \key[61]~input_o\ : std_logic;
SIGNAL \key[62]~input_o\ : std_logic;
SIGNAL \key[63]~input_o\ : std_logic;
SIGNAL \key[64]~input_o\ : std_logic;
SIGNAL \key[65]~input_o\ : std_logic;
SIGNAL \key[66]~input_o\ : std_logic;
SIGNAL \key[67]~input_o\ : std_logic;
SIGNAL \key[68]~input_o\ : std_logic;
SIGNAL \key[69]~input_o\ : std_logic;
SIGNAL \key[70]~input_o\ : std_logic;
SIGNAL \key[71]~input_o\ : std_logic;
SIGNAL \key[72]~input_o\ : std_logic;
SIGNAL \key[73]~input_o\ : std_logic;
SIGNAL \key[74]~input_o\ : std_logic;
SIGNAL \key[75]~input_o\ : std_logic;
SIGNAL \key[76]~input_o\ : std_logic;
SIGNAL \key[77]~input_o\ : std_logic;
SIGNAL \key[78]~input_o\ : std_logic;
SIGNAL \key[79]~input_o\ : std_logic;
SIGNAL \key[80]~input_o\ : std_logic;
SIGNAL \key[81]~input_o\ : std_logic;
SIGNAL \key[82]~input_o\ : std_logic;
SIGNAL \key[83]~input_o\ : std_logic;
SIGNAL \key[84]~input_o\ : std_logic;
SIGNAL \key[85]~input_o\ : std_logic;
SIGNAL \key[86]~input_o\ : std_logic;
SIGNAL \key[87]~input_o\ : std_logic;
SIGNAL \key[88]~input_o\ : std_logic;
SIGNAL \key[89]~input_o\ : std_logic;
SIGNAL \key[90]~input_o\ : std_logic;
SIGNAL \key[91]~input_o\ : std_logic;
SIGNAL \key[92]~input_o\ : std_logic;
SIGNAL \key[93]~input_o\ : std_logic;
SIGNAL \key[94]~input_o\ : std_logic;
SIGNAL \key[95]~input_o\ : std_logic;
SIGNAL \key[96]~input_o\ : std_logic;
SIGNAL \key[97]~input_o\ : std_logic;
SIGNAL \key[98]~input_o\ : std_logic;
SIGNAL \key[99]~input_o\ : std_logic;
SIGNAL \key[100]~input_o\ : std_logic;
SIGNAL \key[101]~input_o\ : std_logic;
SIGNAL \key[102]~input_o\ : std_logic;
SIGNAL \key[103]~input_o\ : std_logic;
SIGNAL \key[104]~input_o\ : std_logic;
SIGNAL \key[105]~input_o\ : std_logic;
SIGNAL \key[106]~input_o\ : std_logic;
SIGNAL \key[107]~input_o\ : std_logic;
SIGNAL \key[108]~input_o\ : std_logic;
SIGNAL \key[109]~input_o\ : std_logic;
SIGNAL \key[110]~input_o\ : std_logic;
SIGNAL \key[111]~input_o\ : std_logic;
SIGNAL \key[112]~input_o\ : std_logic;
SIGNAL \key[113]~input_o\ : std_logic;
SIGNAL \key[114]~input_o\ : std_logic;
SIGNAL \key[115]~input_o\ : std_logic;
SIGNAL \key[116]~input_o\ : std_logic;
SIGNAL \key[117]~input_o\ : std_logic;
SIGNAL \key[118]~input_o\ : std_logic;
SIGNAL \key[119]~input_o\ : std_logic;
SIGNAL \key[120]~input_o\ : std_logic;
SIGNAL \key[121]~input_o\ : std_logic;
SIGNAL \key[122]~input_o\ : std_logic;
SIGNAL \key[123]~input_o\ : std_logic;
SIGNAL \key[124]~input_o\ : std_logic;
SIGNAL \key[125]~input_o\ : std_logic;
SIGNAL \key[126]~input_o\ : std_logic;
SIGNAL \key[127]~input_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \output[16]~output_o\ : std_logic;
SIGNAL \output[17]~output_o\ : std_logic;
SIGNAL \output[18]~output_o\ : std_logic;
SIGNAL \output[19]~output_o\ : std_logic;
SIGNAL \output[20]~output_o\ : std_logic;
SIGNAL \output[21]~output_o\ : std_logic;
SIGNAL \output[22]~output_o\ : std_logic;
SIGNAL \output[23]~output_o\ : std_logic;
SIGNAL \output[24]~output_o\ : std_logic;
SIGNAL \output[25]~output_o\ : std_logic;
SIGNAL \output[26]~output_o\ : std_logic;
SIGNAL \output[27]~output_o\ : std_logic;
SIGNAL \output[28]~output_o\ : std_logic;
SIGNAL \output[29]~output_o\ : std_logic;
SIGNAL \output[30]~output_o\ : std_logic;
SIGNAL \output[31]~output_o\ : std_logic;
SIGNAL \output[32]~output_o\ : std_logic;
SIGNAL \output[33]~output_o\ : std_logic;
SIGNAL \output[34]~output_o\ : std_logic;
SIGNAL \output[35]~output_o\ : std_logic;
SIGNAL \output[36]~output_o\ : std_logic;
SIGNAL \output[37]~output_o\ : std_logic;
SIGNAL \output[38]~output_o\ : std_logic;
SIGNAL \output[39]~output_o\ : std_logic;
SIGNAL \output[40]~output_o\ : std_logic;
SIGNAL \output[41]~output_o\ : std_logic;
SIGNAL \output[42]~output_o\ : std_logic;
SIGNAL \output[43]~output_o\ : std_logic;
SIGNAL \output[44]~output_o\ : std_logic;
SIGNAL \output[45]~output_o\ : std_logic;
SIGNAL \output[46]~output_o\ : std_logic;
SIGNAL \output[47]~output_o\ : std_logic;
SIGNAL \output[48]~output_o\ : std_logic;
SIGNAL \output[49]~output_o\ : std_logic;
SIGNAL \output[50]~output_o\ : std_logic;
SIGNAL \output[51]~output_o\ : std_logic;
SIGNAL \output[52]~output_o\ : std_logic;
SIGNAL \output[53]~output_o\ : std_logic;
SIGNAL \output[54]~output_o\ : std_logic;
SIGNAL \output[55]~output_o\ : std_logic;
SIGNAL \output[56]~output_o\ : std_logic;
SIGNAL \output[57]~output_o\ : std_logic;
SIGNAL \output[58]~output_o\ : std_logic;
SIGNAL \output[59]~output_o\ : std_logic;
SIGNAL \output[60]~output_o\ : std_logic;
SIGNAL \output[61]~output_o\ : std_logic;
SIGNAL \output[62]~output_o\ : std_logic;
SIGNAL \output[63]~output_o\ : std_logic;
SIGNAL \output[64]~output_o\ : std_logic;
SIGNAL \output[65]~output_o\ : std_logic;
SIGNAL \output[66]~output_o\ : std_logic;
SIGNAL \output[67]~output_o\ : std_logic;
SIGNAL \output[68]~output_o\ : std_logic;
SIGNAL \output[69]~output_o\ : std_logic;
SIGNAL \output[70]~output_o\ : std_logic;
SIGNAL \output[71]~output_o\ : std_logic;
SIGNAL \output[72]~output_o\ : std_logic;
SIGNAL \output[73]~output_o\ : std_logic;
SIGNAL \output[74]~output_o\ : std_logic;
SIGNAL \output[75]~output_o\ : std_logic;
SIGNAL \output[76]~output_o\ : std_logic;
SIGNAL \output[77]~output_o\ : std_logic;
SIGNAL \output[78]~output_o\ : std_logic;
SIGNAL \output[79]~output_o\ : std_logic;
SIGNAL \output[80]~output_o\ : std_logic;
SIGNAL \output[81]~output_o\ : std_logic;
SIGNAL \output[82]~output_o\ : std_logic;
SIGNAL \output[83]~output_o\ : std_logic;
SIGNAL \output[84]~output_o\ : std_logic;
SIGNAL \output[85]~output_o\ : std_logic;
SIGNAL \output[86]~output_o\ : std_logic;
SIGNAL \output[87]~output_o\ : std_logic;
SIGNAL \output[88]~output_o\ : std_logic;
SIGNAL \output[89]~output_o\ : std_logic;
SIGNAL \output[90]~output_o\ : std_logic;
SIGNAL \output[91]~output_o\ : std_logic;
SIGNAL \output[92]~output_o\ : std_logic;
SIGNAL \output[93]~output_o\ : std_logic;
SIGNAL \output[94]~output_o\ : std_logic;
SIGNAL \output[95]~output_o\ : std_logic;
SIGNAL \output[96]~output_o\ : std_logic;
SIGNAL \output[97]~output_o\ : std_logic;
SIGNAL \output[98]~output_o\ : std_logic;
SIGNAL \output[99]~output_o\ : std_logic;
SIGNAL \output[100]~output_o\ : std_logic;
SIGNAL \output[101]~output_o\ : std_logic;
SIGNAL \output[102]~output_o\ : std_logic;
SIGNAL \output[103]~output_o\ : std_logic;
SIGNAL \output[104]~output_o\ : std_logic;
SIGNAL \output[105]~output_o\ : std_logic;
SIGNAL \output[106]~output_o\ : std_logic;
SIGNAL \output[107]~output_o\ : std_logic;
SIGNAL \output[108]~output_o\ : std_logic;
SIGNAL \output[109]~output_o\ : std_logic;
SIGNAL \output[110]~output_o\ : std_logic;
SIGNAL \output[111]~output_o\ : std_logic;
SIGNAL \output[112]~output_o\ : std_logic;
SIGNAL \output[113]~output_o\ : std_logic;
SIGNAL \output[114]~output_o\ : std_logic;
SIGNAL \output[115]~output_o\ : std_logic;
SIGNAL \output[116]~output_o\ : std_logic;
SIGNAL \output[117]~output_o\ : std_logic;
SIGNAL \output[118]~output_o\ : std_logic;
SIGNAL \output[119]~output_o\ : std_logic;
SIGNAL \output[120]~output_o\ : std_logic;
SIGNAL \output[121]~output_o\ : std_logic;
SIGNAL \output[122]~output_o\ : std_logic;
SIGNAL \output[123]~output_o\ : std_logic;
SIGNAL \output[124]~output_o\ : std_logic;
SIGNAL \output[125]~output_o\ : std_logic;
SIGNAL \output[126]~output_o\ : std_logic;
SIGNAL \output[127]~output_o\ : std_logic;

BEGIN

ww_input <= input;
ww_key <= key;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X48_Y0_N23
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X67_Y29_N23
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X67_Y33_N9
\output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X67_Y14_N9
\output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X67_Y8_N2
\output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X67_Y29_N16
\output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\output[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X67_Y39_N23
\output[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\output[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X67_Y29_N9
\output[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\output[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X67_Y11_N16
\output[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\output[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X1_Y43_N9
\output[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X67_Y34_N16
\output[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[16]~output_o\);

-- Location: IOOBUF_X67_Y20_N23
\output[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[17]~output_o\);

-- Location: IOOBUF_X3_Y43_N16
\output[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[18]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\output[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[19]~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\output[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[20]~output_o\);

-- Location: IOOBUF_X67_Y15_N9
\output[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[21]~output_o\);

-- Location: IOOBUF_X67_Y25_N9
\output[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[22]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\output[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[23]~output_o\);

-- Location: IOOBUF_X67_Y40_N23
\output[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[24]~output_o\);

-- Location: IOOBUF_X67_Y33_N16
\output[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[25]~output_o\);

-- Location: IOOBUF_X67_Y37_N16
\output[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[26]~output_o\);

-- Location: IOOBUF_X67_Y30_N9
\output[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[27]~output_o\);

-- Location: IOOBUF_X14_Y0_N30
\output[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[28]~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\output[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[29]~output_o\);

-- Location: IOOBUF_X67_Y26_N9
\output[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[30]~output_o\);

-- Location: IOOBUF_X0_Y32_N2
\output[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[31]~output_o\);

-- Location: IOOBUF_X67_Y35_N16
\output[32]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[32]~output_o\);

-- Location: IOOBUF_X67_Y17_N16
\output[33]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[33]~output_o\);

-- Location: IOOBUF_X67_Y26_N2
\output[34]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[34]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\output[35]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[35]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\output[36]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[36]~output_o\);

-- Location: IOOBUF_X67_Y39_N16
\output[37]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[37]~output_o\);

-- Location: IOOBUF_X67_Y27_N16
\output[38]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[38]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\output[39]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[39]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\output[40]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[40]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\output[41]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[41]~output_o\);

-- Location: IOOBUF_X67_Y30_N23
\output[42]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[42]~output_o\);

-- Location: IOOBUF_X67_Y32_N23
\output[43]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[43]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\output[44]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[44]~output_o\);

-- Location: IOOBUF_X63_Y43_N16
\output[45]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[45]~output_o\);

-- Location: IOOBUF_X67_Y28_N16
\output[46]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[46]~output_o\);

-- Location: IOOBUF_X67_Y30_N16
\output[47]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[47]~output_o\);

-- Location: IOOBUF_X67_Y36_N2
\output[48]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[48]~output_o\);

-- Location: IOOBUF_X65_Y43_N9
\output[49]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[49]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\output[50]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[50]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\output[51]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[51]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\output[52]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[52]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\output[53]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[53]~output_o\);

-- Location: IOOBUF_X67_Y33_N23
\output[54]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[54]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\output[55]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[55]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\output[56]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[56]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\output[57]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[57]~output_o\);

-- Location: IOOBUF_X67_Y26_N23
\output[58]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[58]~output_o\);

-- Location: IOOBUF_X52_Y43_N9
\output[59]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[59]~output_o\);

-- Location: IOOBUF_X38_Y43_N16
\output[60]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[60]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\output[61]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[61]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\output[62]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[62]~output_o\);

-- Location: IOOBUF_X67_Y3_N9
\output[63]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[63]~output_o\);

-- Location: IOOBUF_X0_Y33_N2
\output[64]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[64]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\output[65]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[65]~output_o\);

-- Location: IOOBUF_X0_Y41_N9
\output[66]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[66]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\output[67]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[67]~output_o\);

-- Location: IOOBUF_X29_Y43_N16
\output[68]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[68]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\output[69]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[69]~output_o\);

-- Location: IOOBUF_X67_Y6_N23
\output[70]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[70]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\output[71]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[71]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\output[72]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[72]~output_o\);

-- Location: IOOBUF_X0_Y31_N2
\output[73]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[73]~output_o\);

-- Location: IOOBUF_X67_Y18_N16
\output[74]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[74]~output_o\);

-- Location: IOOBUF_X67_Y5_N23
\output[75]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[75]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\output[76]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[76]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\output[77]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[77]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\output[78]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[78]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\output[79]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[79]~output_o\);

-- Location: IOOBUF_X67_Y19_N23
\output[80]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[80]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\output[81]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[81]~output_o\);

-- Location: IOOBUF_X52_Y0_N30
\output[82]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[82]~output_o\);

-- Location: IOOBUF_X43_Y43_N23
\output[83]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[83]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\output[84]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[84]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\output[85]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[85]~output_o\);

-- Location: IOOBUF_X0_Y40_N23
\output[86]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[86]~output_o\);

-- Location: IOOBUF_X36_Y43_N9
\output[87]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[87]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\output[88]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[88]~output_o\);

-- Location: IOOBUF_X67_Y15_N23
\output[89]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[89]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\output[90]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[90]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\output[91]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[91]~output_o\);

-- Location: IOOBUF_X20_Y43_N30
\output[92]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[92]~output_o\);

-- Location: IOOBUF_X7_Y43_N30
\output[93]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[93]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\output[94]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[94]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\output[95]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[95]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\output[96]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[96]~output_o\);

-- Location: IOOBUF_X63_Y0_N16
\output[97]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[97]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\output[98]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[98]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\output[99]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[99]~output_o\);

-- Location: IOOBUF_X0_Y33_N9
\output[100]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[100]~output_o\);

-- Location: IOOBUF_X5_Y43_N23
\output[101]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[101]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\output[102]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[102]~output_o\);

-- Location: IOOBUF_X59_Y0_N16
\output[103]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[103]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\output[104]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[104]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\output[105]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[105]~output_o\);

-- Location: IOOBUF_X0_Y38_N9
\output[106]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[106]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\output[107]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[107]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\output[108]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[108]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\output[109]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[109]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\output[110]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[110]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\output[111]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[111]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\output[112]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[112]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\output[113]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[113]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\output[114]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[114]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\output[115]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[115]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\output[116]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[116]~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\output[117]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[117]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\output[118]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[118]~output_o\);

-- Location: IOOBUF_X67_Y32_N16
\output[119]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[119]~output_o\);

-- Location: IOOBUF_X14_Y43_N16
\output[120]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[120]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\output[121]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[121]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\output[122]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[122]~output_o\);

-- Location: IOOBUF_X63_Y43_N2
\output[123]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[123]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\output[124]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[124]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\output[125]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[125]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\output[126]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[126]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\output[127]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output[127]~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X67_Y14_N22
\input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\input[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\input[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\input[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\input[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: IOIBUF_X3_Y43_N22
\input[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: IOIBUF_X67_Y41_N1
\input[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: IOIBUF_X67_Y13_N15
\input[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: IOIBUF_X67_Y40_N8
\input[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: IOIBUF_X0_Y16_N1
\input[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(16),
	o => \input[16]~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\input[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(17),
	o => \input[17]~input_o\);

-- Location: IOIBUF_X38_Y43_N22
\input[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(18),
	o => \input[18]~input_o\);

-- Location: IOIBUF_X67_Y4_N15
\input[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(19),
	o => \input[19]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\input[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(20),
	o => \input[20]~input_o\);

-- Location: IOIBUF_X67_Y39_N1
\input[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(21),
	o => \input[21]~input_o\);

-- Location: IOIBUF_X36_Y43_N1
\input[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(22),
	o => \input[22]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\input[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(23),
	o => \input[23]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\input[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(24),
	o => \input[24]~input_o\);

-- Location: IOIBUF_X67_Y35_N22
\input[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(25),
	o => \input[25]~input_o\);

-- Location: IOIBUF_X67_Y11_N1
\input[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(26),
	o => \input[26]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\input[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(27),
	o => \input[27]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\input[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(28),
	o => \input[28]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\input[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(29),
	o => \input[29]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\input[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(30),
	o => \input[30]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\input[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(31),
	o => \input[31]~input_o\);

-- Location: IOIBUF_X67_Y38_N15
\input[32]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(32),
	o => \input[32]~input_o\);

-- Location: IOIBUF_X59_Y43_N15
\input[33]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(33),
	o => \input[33]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\input[34]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(34),
	o => \input[34]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\input[35]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(35),
	o => \input[35]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\input[36]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(36),
	o => \input[36]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\input[37]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(37),
	o => \input[37]~input_o\);

-- Location: IOIBUF_X67_Y33_N1
\input[38]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(38),
	o => \input[38]~input_o\);

-- Location: IOIBUF_X59_Y43_N8
\input[39]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(39),
	o => \input[39]~input_o\);

-- Location: IOIBUF_X50_Y43_N15
\input[40]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(40),
	o => \input[40]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\input[41]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(41),
	o => \input[41]~input_o\);

-- Location: IOIBUF_X25_Y43_N1
\input[42]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(42),
	o => \input[42]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\input[43]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(43),
	o => \input[43]~input_o\);

-- Location: IOIBUF_X41_Y43_N15
\input[44]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(44),
	o => \input[44]~input_o\);

-- Location: IOIBUF_X67_Y9_N1
\input[45]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(45),
	o => \input[45]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\input[46]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(46),
	o => \input[46]~input_o\);

-- Location: IOIBUF_X67_Y14_N15
\input[47]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(47),
	o => \input[47]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\input[48]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(48),
	o => \input[48]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\input[49]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(49),
	o => \input[49]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\input[50]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(50),
	o => \input[50]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\input[51]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(51),
	o => \input[51]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\input[52]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(52),
	o => \input[52]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\input[53]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(53),
	o => \input[53]~input_o\);

-- Location: IOIBUF_X14_Y43_N8
\input[54]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(54),
	o => \input[54]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\input[55]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(55),
	o => \input[55]~input_o\);

-- Location: IOIBUF_X67_Y14_N1
\input[56]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(56),
	o => \input[56]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\input[57]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(57),
	o => \input[57]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\input[58]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(58),
	o => \input[58]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\input[59]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(59),
	o => \input[59]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\input[60]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(60),
	o => \input[60]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\input[61]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(61),
	o => \input[61]~input_o\);

-- Location: IOIBUF_X63_Y0_N29
\input[62]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(62),
	o => \input[62]~input_o\);

-- Location: IOIBUF_X45_Y0_N29
\input[63]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(63),
	o => \input[63]~input_o\);

-- Location: IOIBUF_X59_Y0_N1
\input[64]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(64),
	o => \input[64]~input_o\);

-- Location: IOIBUF_X67_Y38_N1
\input[65]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(65),
	o => \input[65]~input_o\);

-- Location: IOIBUF_X67_Y5_N1
\input[66]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(66),
	o => \input[66]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\input[67]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(67),
	o => \input[67]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\input[68]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(68),
	o => \input[68]~input_o\);

-- Location: IOIBUF_X0_Y39_N8
\input[69]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(69),
	o => \input[69]~input_o\);

-- Location: IOIBUF_X67_Y11_N8
\input[70]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(70),
	o => \input[70]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\input[71]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(71),
	o => \input[71]~input_o\);

-- Location: IOIBUF_X67_Y25_N22
\input[72]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(72),
	o => \input[72]~input_o\);

-- Location: IOIBUF_X67_Y2_N22
\input[73]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(73),
	o => \input[73]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\input[74]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(74),
	o => \input[74]~input_o\);

-- Location: IOIBUF_X67_Y2_N8
\input[75]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(75),
	o => \input[75]~input_o\);

-- Location: IOIBUF_X67_Y2_N1
\input[76]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(76),
	o => \input[76]~input_o\);

-- Location: IOIBUF_X67_Y3_N22
\input[77]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(77),
	o => \input[77]~input_o\);

-- Location: IOIBUF_X45_Y43_N29
\input[78]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(78),
	o => \input[78]~input_o\);

-- Location: IOIBUF_X0_Y18_N8
\input[79]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(79),
	o => \input[79]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\input[80]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(80),
	o => \input[80]~input_o\);

-- Location: IOIBUF_X67_Y4_N22
\input[81]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(81),
	o => \input[81]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\input[82]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(82),
	o => \input[82]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\input[83]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(83),
	o => \input[83]~input_o\);

-- Location: IOIBUF_X29_Y43_N1
\input[84]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(84),
	o => \input[84]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\input[85]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(85),
	o => \input[85]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\input[86]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(86),
	o => \input[86]~input_o\);

-- Location: IOIBUF_X67_Y6_N15
\input[87]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(87),
	o => \input[87]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\input[88]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(88),
	o => \input[88]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\input[89]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(89),
	o => \input[89]~input_o\);

-- Location: IOIBUF_X61_Y0_N8
\input[90]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(90),
	o => \input[90]~input_o\);

-- Location: IOIBUF_X67_Y7_N1
\input[91]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(91),
	o => \input[91]~input_o\);

-- Location: IOIBUF_X67_Y8_N22
\input[92]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(92),
	o => \input[92]~input_o\);

-- Location: IOIBUF_X1_Y43_N22
\input[93]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(93),
	o => \input[93]~input_o\);

-- Location: IOIBUF_X9_Y43_N8
\input[94]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(94),
	o => \input[94]~input_o\);

-- Location: IOIBUF_X67_Y20_N15
\input[95]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(95),
	o => \input[95]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\input[96]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(96),
	o => \input[96]~input_o\);

-- Location: IOIBUF_X67_Y9_N15
\input[97]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(97),
	o => \input[97]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\input[98]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(98),
	o => \input[98]~input_o\);

-- Location: IOIBUF_X65_Y43_N22
\input[99]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(99),
	o => \input[99]~input_o\);

-- Location: IOIBUF_X0_Y41_N1
\input[100]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(100),
	o => \input[100]~input_o\);

-- Location: IOIBUF_X67_Y10_N8
\input[101]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(101),
	o => \input[101]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\input[102]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(102),
	o => \input[102]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\input[103]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(103),
	o => \input[103]~input_o\);

-- Location: IOIBUF_X67_Y10_N1
\input[104]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(104),
	o => \input[104]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\input[105]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(105),
	o => \input[105]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\input[106]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(106),
	o => \input[106]~input_o\);

-- Location: IOIBUF_X16_Y43_N15
\input[107]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(107),
	o => \input[107]~input_o\);

-- Location: IOIBUF_X67_Y34_N1
\input[108]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(108),
	o => \input[108]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\input[109]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(109),
	o => \input[109]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\input[110]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(110),
	o => \input[110]~input_o\);

-- Location: IOIBUF_X67_Y13_N22
\input[111]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(111),
	o => \input[111]~input_o\);

-- Location: IOIBUF_X59_Y0_N29
\input[112]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(112),
	o => \input[112]~input_o\);

-- Location: IOIBUF_X63_Y43_N29
\input[113]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(113),
	o => \input[113]~input_o\);

-- Location: IOIBUF_X67_Y13_N1
\input[114]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(114),
	o => \input[114]~input_o\);

-- Location: IOIBUF_X61_Y43_N22
\input[115]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(115),
	o => \input[115]~input_o\);

-- Location: IOIBUF_X67_Y24_N1
\input[116]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(116),
	o => \input[116]~input_o\);

-- Location: IOIBUF_X67_Y18_N1
\input[117]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(117),
	o => \input[117]~input_o\);

-- Location: IOIBUF_X67_Y38_N8
\input[118]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(118),
	o => \input[118]~input_o\);

-- Location: IOIBUF_X67_Y10_N15
\input[119]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(119),
	o => \input[119]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\input[120]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(120),
	o => \input[120]~input_o\);

-- Location: IOIBUF_X67_Y15_N15
\input[121]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(121),
	o => \input[121]~input_o\);

-- Location: IOIBUF_X67_Y16_N22
\input[122]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(122),
	o => \input[122]~input_o\);

-- Location: IOIBUF_X67_Y7_N8
\input[123]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(123),
	o => \input[123]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\input[124]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(124),
	o => \input[124]~input_o\);

-- Location: IOIBUF_X67_Y16_N1
\input[125]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(125),
	o => \input[125]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\input[126]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(126),
	o => \input[126]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\input[127]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(127),
	o => \input[127]~input_o\);

-- Location: IOIBUF_X67_Y18_N22
\key[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\key[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X67_Y18_N8
\key[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N29
\key[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X7_Y43_N8
\key[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(4),
	o => \key[4]~input_o\);

-- Location: IOIBUF_X67_Y19_N15
\key[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(5),
	o => \key[5]~input_o\);

-- Location: IOIBUF_X27_Y43_N8
\key[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(6),
	o => \key[6]~input_o\);

-- Location: IOIBUF_X67_Y24_N8
\key[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(7),
	o => \key[7]~input_o\);

-- Location: IOIBUF_X38_Y43_N29
\key[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(8),
	o => \key[8]~input_o\);

-- Location: IOIBUF_X67_Y8_N15
\key[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(9),
	o => \key[9]~input_o\);

-- Location: IOIBUF_X67_Y22_N22
\key[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(10),
	o => \key[10]~input_o\);

-- Location: IOIBUF_X67_Y22_N15
\key[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(11),
	o => \key[11]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\key[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(12),
	o => \key[12]~input_o\);

-- Location: IOIBUF_X9_Y43_N15
\key[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(13),
	o => \key[13]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\key[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(14),
	o => \key[14]~input_o\);

-- Location: IOIBUF_X67_Y19_N8
\key[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(15),
	o => \key[15]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\key[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(16),
	o => \key[16]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\key[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(17),
	o => \key[17]~input_o\);

-- Location: IOIBUF_X56_Y43_N29
\key[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(18),
	o => \key[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N8
\key[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(19),
	o => \key[19]~input_o\);

-- Location: IOIBUF_X63_Y0_N22
\key[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(20),
	o => \key[20]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\key[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(21),
	o => \key[21]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\key[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(22),
	o => \key[22]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\key[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(23),
	o => \key[23]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\key[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(24),
	o => \key[24]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\key[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(25),
	o => \key[25]~input_o\);

-- Location: IOIBUF_X67_Y15_N1
\key[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(26),
	o => \key[26]~input_o\);

-- Location: IOIBUF_X43_Y0_N29
\key[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(27),
	o => \key[27]~input_o\);

-- Location: IOIBUF_X67_Y28_N8
\key[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(28),
	o => \key[28]~input_o\);

-- Location: IOIBUF_X67_Y37_N1
\key[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(29),
	o => \key[29]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\key[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(30),
	o => \key[30]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\key[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(31),
	o => \key[31]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\key[32]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(32),
	o => \key[32]~input_o\);

-- Location: IOIBUF_X65_Y43_N1
\key[33]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(33),
	o => \key[33]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\key[34]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(34),
	o => \key[34]~input_o\);

-- Location: IOIBUF_X45_Y0_N8
\key[35]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(35),
	o => \key[35]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\key[36]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(36),
	o => \key[36]~input_o\);

-- Location: IOIBUF_X0_Y31_N22
\key[37]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(37),
	o => \key[37]~input_o\);

-- Location: IOIBUF_X54_Y43_N1
\key[38]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(38),
	o => \key[38]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\key[39]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(39),
	o => \key[39]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\key[40]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(40),
	o => \key[40]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\key[41]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(41),
	o => \key[41]~input_o\);

-- Location: IOIBUF_X50_Y0_N22
\key[42]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(42),
	o => \key[42]~input_o\);

-- Location: IOIBUF_X0_Y38_N1
\key[43]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(43),
	o => \key[43]~input_o\);

-- Location: IOIBUF_X29_Y43_N8
\key[44]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(44),
	o => \key[44]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\key[45]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(45),
	o => \key[45]~input_o\);

-- Location: IOIBUF_X0_Y40_N15
\key[46]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(46),
	o => \key[46]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\key[47]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(47),
	o => \key[47]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\key[48]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(48),
	o => \key[48]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\key[49]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(49),
	o => \key[49]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\key[50]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(50),
	o => \key[50]~input_o\);

-- Location: IOIBUF_X67_Y16_N8
\key[51]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(51),
	o => \key[51]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\key[52]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(52),
	o => \key[52]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\key[53]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(53),
	o => \key[53]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\key[54]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(54),
	o => \key[54]~input_o\);

-- Location: IOIBUF_X67_Y41_N8
\key[55]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(55),
	o => \key[55]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\key[56]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(56),
	o => \key[56]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\key[57]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(57),
	o => \key[57]~input_o\);

-- Location: IOIBUF_X20_Y43_N15
\key[58]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(58),
	o => \key[58]~input_o\);

-- Location: IOIBUF_X0_Y40_N1
\key[59]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(59),
	o => \key[59]~input_o\);

-- Location: IOIBUF_X67_Y31_N22
\key[60]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(60),
	o => \key[60]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\key[61]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(61),
	o => \key[61]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\key[62]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(62),
	o => \key[62]~input_o\);

-- Location: IOIBUF_X59_Y0_N8
\key[63]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(63),
	o => \key[63]~input_o\);

-- Location: IOIBUF_X36_Y43_N15
\key[64]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(64),
	o => \key[64]~input_o\);

-- Location: IOIBUF_X0_Y40_N8
\key[65]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(65),
	o => \key[65]~input_o\);

-- Location: IOIBUF_X59_Y0_N22
\key[66]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(66),
	o => \key[66]~input_o\);

-- Location: IOIBUF_X61_Y0_N15
\key[67]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(67),
	o => \key[67]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\key[68]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(68),
	o => \key[68]~input_o\);

-- Location: IOIBUF_X67_Y7_N15
\key[69]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(69),
	o => \key[69]~input_o\);

-- Location: IOIBUF_X50_Y43_N8
\key[70]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(70),
	o => \key[70]~input_o\);

-- Location: IOIBUF_X0_Y39_N15
\key[71]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(71),
	o => \key[71]~input_o\);

-- Location: IOIBUF_X5_Y43_N15
\key[72]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(72),
	o => \key[72]~input_o\);

-- Location: IOIBUF_X65_Y43_N15
\key[73]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(73),
	o => \key[73]~input_o\);

-- Location: IOIBUF_X65_Y0_N29
\key[74]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(74),
	o => \key[74]~input_o\);

-- Location: IOIBUF_X20_Y43_N22
\key[75]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(75),
	o => \key[75]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\key[76]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(76),
	o => \key[76]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\key[77]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(77),
	o => \key[77]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\key[78]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(78),
	o => \key[78]~input_o\);

-- Location: IOIBUF_X41_Y0_N29
\key[79]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(79),
	o => \key[79]~input_o\);

-- Location: IOIBUF_X67_Y36_N8
\key[80]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(80),
	o => \key[80]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\key[81]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(81),
	o => \key[81]~input_o\);

-- Location: IOIBUF_X45_Y43_N8
\key[82]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(82),
	o => \key[82]~input_o\);

-- Location: IOIBUF_X0_Y38_N22
\key[83]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(83),
	o => \key[83]~input_o\);

-- Location: IOIBUF_X38_Y43_N1
\key[84]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(84),
	o => \key[84]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\key[85]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(85),
	o => \key[85]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\key[86]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(86),
	o => \key[86]~input_o\);

-- Location: IOIBUF_X0_Y41_N15
\key[87]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(87),
	o => \key[87]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\key[88]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(88),
	o => \key[88]~input_o\);

-- Location: IOIBUF_X67_Y36_N22
\key[89]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(89),
	o => \key[89]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\key[90]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(90),
	o => \key[90]~input_o\);

-- Location: IOIBUF_X67_Y5_N15
\key[91]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(91),
	o => \key[91]~input_o\);

-- Location: IOIBUF_X22_Y43_N15
\key[92]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(92),
	o => \key[92]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\key[93]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(93),
	o => \key[93]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\key[94]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(94),
	o => \key[94]~input_o\);

-- Location: IOIBUF_X67_Y2_N15
\key[95]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(95),
	o => \key[95]~input_o\);

-- Location: IOIBUF_X9_Y43_N1
\key[96]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(96),
	o => \key[96]~input_o\);

-- Location: IOIBUF_X32_Y43_N29
\key[97]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(97),
	o => \key[97]~input_o\);

-- Location: IOIBUF_X0_Y32_N8
\key[98]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(98),
	o => \key[98]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\key[99]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(99),
	o => \key[99]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\key[100]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(100),
	o => \key[100]~input_o\);

-- Location: IOIBUF_X67_Y20_N1
\key[101]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(101),
	o => \key[101]~input_o\);

-- Location: IOIBUF_X67_Y12_N15
\key[102]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(102),
	o => \key[102]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\key[103]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(103),
	o => \key[103]~input_o\);

-- Location: IOIBUF_X0_Y35_N22
\key[104]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(104),
	o => \key[104]~input_o\);

-- Location: IOIBUF_X67_Y30_N1
\key[105]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(105),
	o => \key[105]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\key[106]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(106),
	o => \key[106]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\key[107]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(107),
	o => \key[107]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\key[108]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(108),
	o => \key[108]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\key[109]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(109),
	o => \key[109]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\key[110]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(110),
	o => \key[110]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\key[111]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(111),
	o => \key[111]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\key[112]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(112),
	o => \key[112]~input_o\);

-- Location: IOIBUF_X67_Y25_N15
\key[113]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(113),
	o => \key[113]~input_o\);

-- Location: IOIBUF_X67_Y41_N22
\key[114]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(114),
	o => \key[114]~input_o\);

-- Location: IOIBUF_X67_Y12_N1
\key[115]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(115),
	o => \key[115]~input_o\);

-- Location: IOIBUF_X67_Y41_N15
\key[116]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(116),
	o => \key[116]~input_o\);

-- Location: IOIBUF_X25_Y43_N22
\key[117]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(117),
	o => \key[117]~input_o\);

-- Location: IOIBUF_X67_Y3_N1
\key[118]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(118),
	o => \key[118]~input_o\);

-- Location: IOIBUF_X67_Y7_N22
\key[119]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(119),
	o => \key[119]~input_o\);

-- Location: IOIBUF_X52_Y43_N15
\key[120]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(120),
	o => \key[120]~input_o\);

-- Location: IOIBUF_X43_Y43_N15
\key[121]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(121),
	o => \key[121]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\key[122]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(122),
	o => \key[122]~input_o\);

-- Location: IOIBUF_X45_Y43_N15
\key[123]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(123),
	o => \key[123]~input_o\);

-- Location: IOIBUF_X48_Y0_N15
\key[124]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(124),
	o => \key[124]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\key[125]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(125),
	o => \key[125]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\key[126]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(126),
	o => \key[126]~input_o\);

-- Location: IOIBUF_X11_Y43_N8
\key[127]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(127),
	o => \key[127]~input_o\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_output(16) <= \output[16]~output_o\;

ww_output(17) <= \output[17]~output_o\;

ww_output(18) <= \output[18]~output_o\;

ww_output(19) <= \output[19]~output_o\;

ww_output(20) <= \output[20]~output_o\;

ww_output(21) <= \output[21]~output_o\;

ww_output(22) <= \output[22]~output_o\;

ww_output(23) <= \output[23]~output_o\;

ww_output(24) <= \output[24]~output_o\;

ww_output(25) <= \output[25]~output_o\;

ww_output(26) <= \output[26]~output_o\;

ww_output(27) <= \output[27]~output_o\;

ww_output(28) <= \output[28]~output_o\;

ww_output(29) <= \output[29]~output_o\;

ww_output(30) <= \output[30]~output_o\;

ww_output(31) <= \output[31]~output_o\;

ww_output(32) <= \output[32]~output_o\;

ww_output(33) <= \output[33]~output_o\;

ww_output(34) <= \output[34]~output_o\;

ww_output(35) <= \output[35]~output_o\;

ww_output(36) <= \output[36]~output_o\;

ww_output(37) <= \output[37]~output_o\;

ww_output(38) <= \output[38]~output_o\;

ww_output(39) <= \output[39]~output_o\;

ww_output(40) <= \output[40]~output_o\;

ww_output(41) <= \output[41]~output_o\;

ww_output(42) <= \output[42]~output_o\;

ww_output(43) <= \output[43]~output_o\;

ww_output(44) <= \output[44]~output_o\;

ww_output(45) <= \output[45]~output_o\;

ww_output(46) <= \output[46]~output_o\;

ww_output(47) <= \output[47]~output_o\;

ww_output(48) <= \output[48]~output_o\;

ww_output(49) <= \output[49]~output_o\;

ww_output(50) <= \output[50]~output_o\;

ww_output(51) <= \output[51]~output_o\;

ww_output(52) <= \output[52]~output_o\;

ww_output(53) <= \output[53]~output_o\;

ww_output(54) <= \output[54]~output_o\;

ww_output(55) <= \output[55]~output_o\;

ww_output(56) <= \output[56]~output_o\;

ww_output(57) <= \output[57]~output_o\;

ww_output(58) <= \output[58]~output_o\;

ww_output(59) <= \output[59]~output_o\;

ww_output(60) <= \output[60]~output_o\;

ww_output(61) <= \output[61]~output_o\;

ww_output(62) <= \output[62]~output_o\;

ww_output(63) <= \output[63]~output_o\;

ww_output(64) <= \output[64]~output_o\;

ww_output(65) <= \output[65]~output_o\;

ww_output(66) <= \output[66]~output_o\;

ww_output(67) <= \output[67]~output_o\;

ww_output(68) <= \output[68]~output_o\;

ww_output(69) <= \output[69]~output_o\;

ww_output(70) <= \output[70]~output_o\;

ww_output(71) <= \output[71]~output_o\;

ww_output(72) <= \output[72]~output_o\;

ww_output(73) <= \output[73]~output_o\;

ww_output(74) <= \output[74]~output_o\;

ww_output(75) <= \output[75]~output_o\;

ww_output(76) <= \output[76]~output_o\;

ww_output(77) <= \output[77]~output_o\;

ww_output(78) <= \output[78]~output_o\;

ww_output(79) <= \output[79]~output_o\;

ww_output(80) <= \output[80]~output_o\;

ww_output(81) <= \output[81]~output_o\;

ww_output(82) <= \output[82]~output_o\;

ww_output(83) <= \output[83]~output_o\;

ww_output(84) <= \output[84]~output_o\;

ww_output(85) <= \output[85]~output_o\;

ww_output(86) <= \output[86]~output_o\;

ww_output(87) <= \output[87]~output_o\;

ww_output(88) <= \output[88]~output_o\;

ww_output(89) <= \output[89]~output_o\;

ww_output(90) <= \output[90]~output_o\;

ww_output(91) <= \output[91]~output_o\;

ww_output(92) <= \output[92]~output_o\;

ww_output(93) <= \output[93]~output_o\;

ww_output(94) <= \output[94]~output_o\;

ww_output(95) <= \output[95]~output_o\;

ww_output(96) <= \output[96]~output_o\;

ww_output(97) <= \output[97]~output_o\;

ww_output(98) <= \output[98]~output_o\;

ww_output(99) <= \output[99]~output_o\;

ww_output(100) <= \output[100]~output_o\;

ww_output(101) <= \output[101]~output_o\;

ww_output(102) <= \output[102]~output_o\;

ww_output(103) <= \output[103]~output_o\;

ww_output(104) <= \output[104]~output_o\;

ww_output(105) <= \output[105]~output_o\;

ww_output(106) <= \output[106]~output_o\;

ww_output(107) <= \output[107]~output_o\;

ww_output(108) <= \output[108]~output_o\;

ww_output(109) <= \output[109]~output_o\;

ww_output(110) <= \output[110]~output_o\;

ww_output(111) <= \output[111]~output_o\;

ww_output(112) <= \output[112]~output_o\;

ww_output(113) <= \output[113]~output_o\;

ww_output(114) <= \output[114]~output_o\;

ww_output(115) <= \output[115]~output_o\;

ww_output(116) <= \output[116]~output_o\;

ww_output(117) <= \output[117]~output_o\;

ww_output(118) <= \output[118]~output_o\;

ww_output(119) <= \output[119]~output_o\;

ww_output(120) <= \output[120]~output_o\;

ww_output(121) <= \output[121]~output_o\;

ww_output(122) <= \output[122]~output_o\;

ww_output(123) <= \output[123]~output_o\;

ww_output(124) <= \output[124]~output_o\;

ww_output(125) <= \output[125]~output_o\;

ww_output(126) <= \output[126]~output_o\;

ww_output(127) <= \output[127]~output_o\;
END structure;


