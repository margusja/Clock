--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: and_or_map.vhd
-- /___/   /\     Timestamp: Sat Dec 10 14:11:12 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf and_or.pcf -rpw 100 -tpw 0 -ar Structure -tm and_or -w -dir netgen/map -ofmt vhdl -sim and_or_map.ncd and_or_map.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: and_or_map.ncd
-- Output file	: \\mac\home\Documents\FPGA\two_entities\netgen\map\and_or_map.vhd
-- # of Entities	: 1
-- Design Name	: and_or
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity and_or is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    second : out STD_LOGIC; 
    min_sec : in STD_LOGIC := 'X'; 
    ca : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end and_or;

architecture Structure of and_or is
  signal C6_bcd_3_mux0001 : STD_LOGIC; 
  signal C6_N22 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0003_lut_3_0 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0000_lut_2_0 : STD_LOGIC; 
  signal N110_0 : STD_LOGIC; 
  signal C4_int_led_2014 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal C1_prev_sec_2017 : STD_LOGIC; 
  signal int_demo_led_out_5_Q : STD_LOGIC; 
  signal C6_N24 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal C6_N23 : STD_LOGIC; 
  signal N223_0 : STD_LOGIC; 
  signal N96_0 : STD_LOGIC; 
  signal N126_0 : STD_LOGIC; 
  signal N76_0 : STD_LOGIC; 
  signal tens2_0_0 : STD_LOGIC; 
  signal N55_0 : STD_LOGIC; 
  signal N37_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0005_lut_3_0 : STD_LOGIC; 
  signal C6_N81_0 : STD_LOGIC; 
  signal N117_0 : STD_LOGIC; 
  signal hundreds2_0_0 : STD_LOGIC; 
  signal int_demo_led_out_8_Q : STD_LOGIC; 
  signal int_demo_led_out_7_Q : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0000_cy_0_0 : STD_LOGIC; 
  signal int_demo_led_out_4_Q : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0005_cy_1_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0002_lut_3_0 : STD_LOGIC; 
  signal C6_N18 : STD_LOGIC; 
  signal N30_0 : STD_LOGIC; 
  signal N67_0 : STD_LOGIC; 
  signal int_demo_led_out_11_Q : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal N241_0 : STD_LOGIC; 
  signal C1_int4_not0001_inv_0 : STD_LOGIC; 
  signal C1_int4_and0000_0 : STD_LOGIC; 
  signal C1_N2 : STD_LOGIC; 
  signal int4_not0002_0 : STD_LOGIC; 
  signal prev_sec_2059 : STD_LOGIC; 
  signal prev_sec_cmp_eq0000_0 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal C6_bcd_7_mux0001_2066 : STD_LOGIC; 
  signal C6_bcd_11_mux000134_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal C6_N25 : STD_LOGIC; 
  signal C6_bcd_7_cmp_gt0003_0 : STD_LOGIC; 
  signal N187_0 : STD_LOGIC; 
  signal int_demo_led_out_2_0 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0007_lut_3_0 : STD_LOGIC; 
  signal C6_N27_0 : STD_LOGIC; 
  signal N57_0 : STD_LOGIC; 
  signal C6_bcd_2_mux0004_0 : STD_LOGIC; 
  signal C6_bcd_3_mux000511_2079 : STD_LOGIC; 
  signal N105_0 : STD_LOGIC; 
  signal N104_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0003_cy_0_0 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N227_0 : STD_LOGIC; 
  signal min_sec_IBUF_2088 : STD_LOGIC; 
  signal int_demo_led_out_0_0 : STD_LOGIC; 
  signal int_demo_led_out_1_0 : STD_LOGIC; 
  signal thousands2_2_0 : STD_LOGIC; 
  signal C6_bcd_11_mux000112_0 : STD_LOGIC; 
  signal N114_0 : STD_LOGIC; 
  signal N80_0 : STD_LOGIC; 
  signal N177_0 : STD_LOGIC; 
  signal N142_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0003_lut_3_0 : STD_LOGIC; 
  signal N113_0 : STD_LOGIC; 
  signal N144_0 : STD_LOGIC; 
  signal prev_sec_not0001 : STD_LOGIC; 
  signal C6_bcd_7_cmp_gt0002_0 : STD_LOGIC; 
  signal reset_IBUF_2113 : STD_LOGIC; 
  signal Madd_int4_addsub0000_cy_3_0 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N134_0 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_1_Q : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_3_Q : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_5_Q : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_7_Q : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_1_Q : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_3_Q : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_5_Q : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_7_Q : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2213 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_cy_0_0 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal C6_N61_0 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0005_cy_0_0 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal C6_N71 : STD_LOGIC; 
  signal tens2_1_0 : STD_LOGIC; 
  signal int_demo_led_out_6_Q : STD_LOGIC; 
  signal int_demo_led_out_3_Q : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N119_0 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0006_lut_3_0 : STD_LOGIC; 
  signal C6_N26 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_lut_3_0 : STD_LOGIC; 
  signal C6_N20 : STD_LOGIC; 
  signal C6_N101 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0003_cy_1_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0001_cy_1_0 : STD_LOGIC; 
  signal N92_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1_O : STD_LOGIC; 
  signal N237_0 : STD_LOGIC; 
  signal thousands2_1_0 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0002_lut_3_0 : STD_LOGIC; 
  signal C6_N29 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0002_lut_2_0 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0003_cy_1_11_SW0_O : STD_LOGIC; 
  signal C6_N141 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0007_cy_1_0 : STD_LOGIC; 
  signal C6_N151 : STD_LOGIC; 
  signal N234_0 : STD_LOGIC; 
  signal C6_N121_0 : STD_LOGIC; 
  signal C6_bcd_1_mux000721_SW0_O : STD_LOGIC; 
  signal C6_N161_0 : STD_LOGIC; 
  signal C6_N19_0 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0001_cy_1_11_SW3_O : STD_LOGIC; 
  signal N47_0 : STD_LOGIC; 
  signal N49_0 : STD_LOGIC; 
  signal C6_bcd_4_mux00051_SW0_SW0_O : STD_LOGIC; 
  signal N137_0 : STD_LOGIC; 
  signal N111_0 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal C6_bcd_7_mux0001_SW6_O : STD_LOGIC; 
  signal N193_0 : STD_LOGIC; 
  signal C6_bcd_3_mux000711_SW2_O : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt0005 : STD_LOGIC; 
  signal N139_0 : STD_LOGIC; 
  signal C6_bcd_5_mux000321_SW1_O : STD_LOGIC; 
  signal N100_0 : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt0006_0 : STD_LOGIC; 
  signal C6_N28_0 : STD_LOGIC; 
  signal C6_bcd_6_mux0004_SW1_O : STD_LOGIC; 
  signal N190_0 : STD_LOGIC; 
  signal N276_0 : STD_LOGIC; 
  signal C6_bcd_11_mux000211_SW0_O : STD_LOGIC; 
  signal hundreds2_1_0 : STD_LOGIC; 
  signal C6_bcd_11_mux000137_SW0_O : STD_LOGIC; 
  signal N59_0 : STD_LOGIC; 
  signal C6_bcd_11_mux000211_SW1_O : STD_LOGIC; 
  signal hundreds2_2_0 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux0001311_SW0_O : STD_LOGIC; 
  signal ones2_3_0 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux0001411_SW0_O : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt0003 : STD_LOGIC; 
  signal C6_bcd_2_mux0005_SW1_O : STD_LOGIC; 
  signal N53_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal C6_bcd_11_mux000211_SW2_O : STD_LOGIC; 
  signal N149_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_cy_1_11_SW01_O : STD_LOGIC; 
  signal N205_0 : STD_LOGIC; 
  signal C6_bcd_11_mux000137_SW4_O : STD_LOGIC; 
  signal C6_bcd_5_mux00051_SW1_O : STD_LOGIC; 
  signal C7_Mrom_ca1_mux000111_SW0_O : STD_LOGIC; 
  signal N185_0 : STD_LOGIC; 
  signal hundreds2_3_0 : STD_LOGIC; 
  signal N183_0 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0003_cy_1_11_SW4_O : STD_LOGIC; 
  signal C1_output_9_1_O : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt00041_SW2_O : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_cy_1_11_SW2_O : STD_LOGIC; 
  signal N212_0 : STD_LOGIC; 
  signal N211_0 : STD_LOGIC; 
  signal C6_bcd_7_cmp_gt00031_SW0_SW0_O : STD_LOGIC; 
  signal C6_bcd_7_mux000511_O : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal C1_prev_sec_DYMUX_2398 : STD_LOGIC; 
  signal C1_prev_sec_CLKINV_2396 : STD_LOGIC; 
  signal C1_prev_sec_CEINV_2395 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal C6_N22_pack_1 : STD_LOGIC; 
  signal C6_N24_pack_1 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal C1_int4_4_DXMUX_2577 : STD_LOGIC; 
  signal C1_Result_4_1 : STD_LOGIC; 
  signal C1_N2_pack_2 : STD_LOGIC; 
  signal C1_int4_4_SRINV_2560 : STD_LOGIC; 
  signal C1_int4_4_CLKINV_2559 : STD_LOGIC; 
  signal C1_int4_4_CEINV_2558 : STD_LOGIC; 
  signal int4_3_DXMUX_2611 : STD_LOGIC; 
  signal int4_mux0001_2_Q_2608 : STD_LOGIC; 
  signal N278_pack_2 : STD_LOGIC; 
  signal int4_3_CLKINV_2596 : STD_LOGIC; 
  signal int4_3_CEINV_2595 : STD_LOGIC; 
  signal C6_bcd_11_mux000134_2637 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal C6_bcd_3_mux000511_pack_1 : STD_LOGIC; 
  signal C4_int_led_DYMUX_2707 : STD_LOGIC; 
  signal C4_int_led_CLKINV_2705 : STD_LOGIC; 
  signal C4_int_led_CEINV_2704 : STD_LOGIC; 
  signal C1_int4_and0000_2733 : STD_LOGIC; 
  signal N4_pack_1 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal int_demo_led_out_2_Q : STD_LOGIC; 
  signal int_demo_led_out_0_Q : STD_LOGIC; 
  signal int_demo_led_out_1_Q : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal C7_an_1_DYMUX_2863 : STD_LOGIC; 
  signal C7_an_1_SRINV_2861 : STD_LOGIC; 
  signal C7_an_1_CLKINV_2860 : STD_LOGIC; 
  signal C7_an_2_DYMUX_2875 : STD_LOGIC; 
  signal C7_an_2_SRINV_2873 : STD_LOGIC; 
  signal C7_an_2_CLKINV_2872 : STD_LOGIC; 
  signal C7_an_3_DYMUX_2887 : STD_LOGIC; 
  signal C7_an_3_SRINV_2885 : STD_LOGIC; 
  signal C7_an_3_CLKINV_2884 : STD_LOGIC; 
  signal prev_sec_DYMUX_2899 : STD_LOGIC; 
  signal prev_sec_CLKINV_2897 : STD_LOGIC; 
  signal prev_sec_CEINV_2896 : STD_LOGIC; 
  signal C6_bcd_7_cmp_gt0002 : STD_LOGIC; 
  signal int4_not0002 : STD_LOGIC; 
  signal C1_int4_not0001_inv : STD_LOGIC; 
  signal C6_bcd_7_cmp_gt0003 : STD_LOGIC; 
  signal N61_pack_1 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_XORF_3010 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_CYINIT_3009 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_CY0F_3008 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_CYSELF_3000 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_lut_0_Q_2999 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_BXINV_2998 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_XORG_2996 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_CYMUXG_2995 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_0_Q : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_LOGIC_ZERO_2993 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_CYSELG_2984 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_0_G : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_XORF_3049 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_LOGIC_ZERO_3048 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYINIT_3047 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_F : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_XORG_3036 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_2_Q : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYSELF_3034 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYMUXFAST_3033 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYAND_3032 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_FASTCARRY_3031 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYMUXG2_3030 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYMUXF2_3029 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CY0G_3028 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_2_CYSELG_3020 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_lut_3_Q_3019 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_XORF_3088 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_LOGIC_ZERO_3087 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYINIT_3086 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_F : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_XORG_3075 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_4_Q : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYSELF_3073 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYMUXFAST_3072 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYAND_3071 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_FASTCARRY_3070 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYMUXG2_3069 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYMUXF2_3068 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CY0G_3067 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_4_CYSELG_3059 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_lut_5_Q_3058 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_XORF_3126 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYINIT_3125 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_F : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_XORG_3114 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_6_Q : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYSELF_3112 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYMUXFAST_3111 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYAND_3110 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_FASTCARRY_3109 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYMUXG2_3108 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYMUXF2_3107 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_LOGIC_ZERO_3106 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_CYSELG_3097 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_6_G : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_XORF_3164 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYINIT_3163 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_F : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_XORG_3152 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_8_Q : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYSELF_3150 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYMUXFAST_3149 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYAND_3148 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_FASTCARRY_3147 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYMUXG2_3146 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYMUXF2_3145 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_LOGIC_ZERO_3144 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_CYSELG_3135 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_8_G : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_10_XORF_3195 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_10_LOGIC_ZERO_3194 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_10_CYINIT_3193 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_10_CYSELF_3184 : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_10_F : STD_LOGIC; 
  signal int_demo_led_in_addsub0000_10_XORG_3181 : STD_LOGIC; 
  signal Madd_int_demo_led_in_addsub0000_cy_10_Q : STD_LOGIC; 
  signal int_demo_led_in_11_rt_3178 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_1_CYINIT_3225 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_1_CYSELF_3216 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_1_BXINV_3214 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_1_CYMUXG_3213 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3211 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_1_CYSELG_3205 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_CYSELF_3249 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_CYMUXFAST_3248 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_CYAND_3247 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_FASTCARRY_3246 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_CYMUXG2_3245 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_CYMUXF2_3244 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3243 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_3_CYSELG_3237 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_CYSELF_3279 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_CYMUXFAST_3278 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_CYAND_3277 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_FASTCARRY_3276 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_CYMUXG2_3275 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_CYMUXF2_3274 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3273 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_wg_cy_5_CYSELG_3267 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_LOGIC_ZERO_3300 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_CYINIT_3299 : STD_LOGIC; 
  signal C4_int_led_cmp_eq0000_CYSELF_3293 : STD_LOGIC; 
  signal C1_int_output_0_DXMUX_3346 : STD_LOGIC; 
  signal C1_int_output_0_XORF_3344 : STD_LOGIC; 
  signal C1_int_output_0_LOGIC_ONE_3343 : STD_LOGIC; 
  signal C1_int_output_0_CYINIT_3342 : STD_LOGIC; 
  signal C1_int_output_0_CYSELF_3333 : STD_LOGIC; 
  signal C1_int_output_0_BXINV_3331 : STD_LOGIC; 
  signal C1_int_output_0_DYMUX_3326 : STD_LOGIC; 
  signal C1_int_output_0_XORG_3324 : STD_LOGIC; 
  signal C1_int_output_0_CYMUXG_3323 : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_0_Q : STD_LOGIC; 
  signal C1_int_output_0_LOGIC_ZERO_3321 : STD_LOGIC; 
  signal C1_int_output_0_CYSELG_3312 : STD_LOGIC; 
  signal C1_int_output_0_G : STD_LOGIC; 
  signal C1_int_output_0_CLKINV_3310 : STD_LOGIC; 
  signal C1_int_output_0_CEINV_3309 : STD_LOGIC; 
  signal C1_int_output_2_DXMUX_3398 : STD_LOGIC; 
  signal C1_int_output_2_XORF_3396 : STD_LOGIC; 
  signal C1_int_output_2_CYINIT_3395 : STD_LOGIC; 
  signal C1_int_output_2_F : STD_LOGIC; 
  signal C1_int_output_2_DYMUX_3381 : STD_LOGIC; 
  signal C1_int_output_2_XORG_3379 : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_2_Q : STD_LOGIC; 
  signal C1_int_output_2_CYSELF_3377 : STD_LOGIC; 
  signal C1_int_output_2_CYMUXFAST_3376 : STD_LOGIC; 
  signal C1_int_output_2_CYAND_3375 : STD_LOGIC; 
  signal C1_int_output_2_FASTCARRY_3374 : STD_LOGIC; 
  signal C1_int_output_2_CYMUXG2_3373 : STD_LOGIC; 
  signal C1_int_output_2_CYMUXF2_3372 : STD_LOGIC; 
  signal C1_int_output_2_LOGIC_ZERO_3371 : STD_LOGIC; 
  signal C1_int_output_2_CYSELG_3362 : STD_LOGIC; 
  signal C1_int_output_2_G : STD_LOGIC; 
  signal C1_int_output_2_CLKINV_3360 : STD_LOGIC; 
  signal C1_int_output_2_CEINV_3359 : STD_LOGIC; 
  signal C1_int_output_4_DXMUX_3450 : STD_LOGIC; 
  signal C1_int_output_4_XORF_3448 : STD_LOGIC; 
  signal C1_int_output_4_CYINIT_3447 : STD_LOGIC; 
  signal C1_int_output_4_F : STD_LOGIC; 
  signal C1_int_output_4_DYMUX_3433 : STD_LOGIC; 
  signal C1_int_output_4_XORG_3431 : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_4_Q : STD_LOGIC; 
  signal C1_int_output_4_CYSELF_3429 : STD_LOGIC; 
  signal C1_int_output_4_CYMUXFAST_3428 : STD_LOGIC; 
  signal C1_int_output_4_CYAND_3427 : STD_LOGIC; 
  signal C1_int_output_4_FASTCARRY_3426 : STD_LOGIC; 
  signal C1_int_output_4_CYMUXG2_3425 : STD_LOGIC; 
  signal C1_int_output_4_CYMUXF2_3424 : STD_LOGIC; 
  signal C1_int_output_4_LOGIC_ZERO_3423 : STD_LOGIC; 
  signal C1_int_output_4_CYSELG_3414 : STD_LOGIC; 
  signal C1_int_output_4_G : STD_LOGIC; 
  signal C1_int_output_4_CLKINV_3412 : STD_LOGIC; 
  signal C1_int_output_4_CEINV_3411 : STD_LOGIC; 
  signal C1_int_output_6_DXMUX_3502 : STD_LOGIC; 
  signal C1_int_output_6_XORF_3500 : STD_LOGIC; 
  signal C1_int_output_6_CYINIT_3499 : STD_LOGIC; 
  signal C1_int_output_6_F : STD_LOGIC; 
  signal C1_int_output_6_DYMUX_3485 : STD_LOGIC; 
  signal C1_int_output_6_XORG_3483 : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_6_Q : STD_LOGIC; 
  signal C1_int_output_6_CYSELF_3481 : STD_LOGIC; 
  signal C1_int_output_6_CYMUXFAST_3480 : STD_LOGIC; 
  signal C1_int_output_6_CYAND_3479 : STD_LOGIC; 
  signal C1_int_output_6_FASTCARRY_3478 : STD_LOGIC; 
  signal C1_int_output_6_CYMUXG2_3477 : STD_LOGIC; 
  signal C1_int_output_6_CYMUXF2_3476 : STD_LOGIC; 
  signal C1_int_output_6_LOGIC_ZERO_3475 : STD_LOGIC; 
  signal C1_int_output_6_CYSELG_3466 : STD_LOGIC; 
  signal C1_int_output_6_G : STD_LOGIC; 
  signal C1_int_output_6_CLKINV_3464 : STD_LOGIC; 
  signal C1_int_output_6_CEINV_3463 : STD_LOGIC; 
  signal C1_int_output_8_DXMUX_3554 : STD_LOGIC; 
  signal C1_int_output_8_XORF_3552 : STD_LOGIC; 
  signal C1_int_output_8_CYINIT_3551 : STD_LOGIC; 
  signal C1_int_output_8_F : STD_LOGIC; 
  signal C1_int_output_8_DYMUX_3537 : STD_LOGIC; 
  signal C1_int_output_8_XORG_3535 : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_8_Q : STD_LOGIC; 
  signal C1_int_output_8_CYSELF_3533 : STD_LOGIC; 
  signal C1_int_output_8_CYMUXFAST_3532 : STD_LOGIC; 
  signal C1_int_output_8_CYAND_3531 : STD_LOGIC; 
  signal C1_int_output_8_FASTCARRY_3530 : STD_LOGIC; 
  signal C1_int_output_8_CYMUXG2_3529 : STD_LOGIC; 
  signal C1_int_output_8_CYMUXF2_3528 : STD_LOGIC; 
  signal C1_int_output_8_LOGIC_ZERO_3527 : STD_LOGIC; 
  signal C1_int_output_8_CYSELG_3518 : STD_LOGIC; 
  signal C1_int_output_8_G : STD_LOGIC; 
  signal C1_int_output_8_CLKINV_3516 : STD_LOGIC; 
  signal C1_int_output_8_CEINV_3515 : STD_LOGIC; 
  signal C1_int_output_10_DXMUX_3599 : STD_LOGIC; 
  signal C1_int_output_10_XORF_3597 : STD_LOGIC; 
  signal C1_int_output_10_LOGIC_ZERO_3596 : STD_LOGIC; 
  signal C1_int_output_10_CYINIT_3595 : STD_LOGIC; 
  signal C1_int_output_10_CYSELF_3586 : STD_LOGIC; 
  signal C1_int_output_10_F : STD_LOGIC; 
  signal C1_int_output_10_DYMUX_3580 : STD_LOGIC; 
  signal C1_int_output_10_XORG_3578 : STD_LOGIC; 
  signal C1_Mcount_int_output_cy_10_Q : STD_LOGIC; 
  signal C1_int_output_11_rt_3575 : STD_LOGIC; 
  signal C1_int_output_10_CLKINV_3567 : STD_LOGIC; 
  signal C1_int_output_10_CEINV_3566 : STD_LOGIC; 
  signal C4_counter_0_DXMUX_3649 : STD_LOGIC; 
  signal C4_counter_0_XORF_3647 : STD_LOGIC; 
  signal C4_counter_0_LOGIC_ONE_3646 : STD_LOGIC; 
  signal C4_counter_0_CYINIT_3645 : STD_LOGIC; 
  signal C4_counter_0_CYSELF_3636 : STD_LOGIC; 
  signal C4_counter_0_BXINV_3634 : STD_LOGIC; 
  signal C4_counter_0_DYMUX_3629 : STD_LOGIC; 
  signal C4_counter_0_XORG_3627 : STD_LOGIC; 
  signal C4_counter_0_CYMUXG_3626 : STD_LOGIC; 
  signal C4_counter_0_LOGIC_ZERO_3624 : STD_LOGIC; 
  signal C4_counter_0_CYSELG_3615 : STD_LOGIC; 
  signal C4_counter_0_G : STD_LOGIC; 
  signal C4_counter_0_SRINV_3613 : STD_LOGIC; 
  signal C4_counter_0_CLKINV_3612 : STD_LOGIC; 
  signal C4_counter_2_DXMUX_3701 : STD_LOGIC; 
  signal C4_counter_2_XORF_3699 : STD_LOGIC; 
  signal C4_counter_2_CYINIT_3698 : STD_LOGIC; 
  signal C4_counter_2_F : STD_LOGIC; 
  signal C4_counter_2_DYMUX_3684 : STD_LOGIC; 
  signal C4_counter_2_XORG_3682 : STD_LOGIC; 
  signal C4_counter_2_CYSELF_3680 : STD_LOGIC; 
  signal C4_counter_2_CYMUXFAST_3679 : STD_LOGIC; 
  signal C4_counter_2_CYAND_3678 : STD_LOGIC; 
  signal C4_counter_2_FASTCARRY_3677 : STD_LOGIC; 
  signal C4_counter_2_CYMUXG2_3676 : STD_LOGIC; 
  signal C4_counter_2_CYMUXF2_3675 : STD_LOGIC; 
  signal C4_counter_2_LOGIC_ZERO_3674 : STD_LOGIC; 
  signal C4_counter_2_CYSELG_3665 : STD_LOGIC; 
  signal C4_counter_2_G : STD_LOGIC; 
  signal C4_counter_2_SRINV_3663 : STD_LOGIC; 
  signal C4_counter_2_CLKINV_3662 : STD_LOGIC; 
  signal C4_counter_4_DXMUX_3753 : STD_LOGIC; 
  signal C4_counter_4_XORF_3751 : STD_LOGIC; 
  signal C4_counter_4_CYINIT_3750 : STD_LOGIC; 
  signal C4_counter_4_F : STD_LOGIC; 
  signal C4_counter_4_DYMUX_3736 : STD_LOGIC; 
  signal C4_counter_4_XORG_3734 : STD_LOGIC; 
  signal C4_counter_4_CYSELF_3732 : STD_LOGIC; 
  signal C4_counter_4_CYMUXFAST_3731 : STD_LOGIC; 
  signal C4_counter_4_CYAND_3730 : STD_LOGIC; 
  signal C4_counter_4_FASTCARRY_3729 : STD_LOGIC; 
  signal C4_counter_4_CYMUXG2_3728 : STD_LOGIC; 
  signal C4_counter_4_CYMUXF2_3727 : STD_LOGIC; 
  signal C4_counter_4_LOGIC_ZERO_3726 : STD_LOGIC; 
  signal C4_counter_4_CYSELG_3717 : STD_LOGIC; 
  signal C4_counter_4_G : STD_LOGIC; 
  signal C4_counter_4_SRINV_3715 : STD_LOGIC; 
  signal C4_counter_4_CLKINV_3714 : STD_LOGIC; 
  signal C4_counter_6_DXMUX_3805 : STD_LOGIC; 
  signal C4_counter_6_XORF_3803 : STD_LOGIC; 
  signal C4_counter_6_CYINIT_3802 : STD_LOGIC; 
  signal C4_counter_6_F : STD_LOGIC; 
  signal C4_counter_6_DYMUX_3788 : STD_LOGIC; 
  signal C4_counter_6_XORG_3786 : STD_LOGIC; 
  signal C4_counter_6_CYSELF_3784 : STD_LOGIC; 
  signal C4_counter_6_CYMUXFAST_3783 : STD_LOGIC; 
  signal C4_counter_6_CYAND_3782 : STD_LOGIC; 
  signal C4_counter_6_FASTCARRY_3781 : STD_LOGIC; 
  signal C4_counter_6_CYMUXG2_3780 : STD_LOGIC; 
  signal C4_counter_6_CYMUXF2_3779 : STD_LOGIC; 
  signal C4_counter_6_LOGIC_ZERO_3778 : STD_LOGIC; 
  signal C4_counter_6_CYSELG_3769 : STD_LOGIC; 
  signal C4_counter_6_G : STD_LOGIC; 
  signal C4_counter_6_SRINV_3767 : STD_LOGIC; 
  signal C4_counter_6_CLKINV_3766 : STD_LOGIC; 
  signal C4_counter_8_DXMUX_3857 : STD_LOGIC; 
  signal C4_counter_8_XORF_3855 : STD_LOGIC; 
  signal C4_counter_8_CYINIT_3854 : STD_LOGIC; 
  signal C4_counter_8_F : STD_LOGIC; 
  signal C4_counter_8_DYMUX_3840 : STD_LOGIC; 
  signal C4_counter_8_XORG_3838 : STD_LOGIC; 
  signal C4_counter_8_CYSELF_3836 : STD_LOGIC; 
  signal C4_counter_8_CYMUXFAST_3835 : STD_LOGIC; 
  signal C4_counter_8_CYAND_3834 : STD_LOGIC; 
  signal C4_counter_8_FASTCARRY_3833 : STD_LOGIC; 
  signal C4_counter_8_CYMUXG2_3832 : STD_LOGIC; 
  signal C4_counter_8_CYMUXF2_3831 : STD_LOGIC; 
  signal C4_counter_8_LOGIC_ZERO_3830 : STD_LOGIC; 
  signal C4_counter_8_CYSELG_3821 : STD_LOGIC; 
  signal C4_counter_8_G : STD_LOGIC; 
  signal C4_counter_8_SRINV_3819 : STD_LOGIC; 
  signal C4_counter_8_CLKINV_3818 : STD_LOGIC; 
  signal C4_counter_10_DXMUX_3909 : STD_LOGIC; 
  signal C4_counter_10_XORF_3907 : STD_LOGIC; 
  signal C4_counter_10_CYINIT_3906 : STD_LOGIC; 
  signal C4_counter_10_F : STD_LOGIC; 
  signal C4_counter_10_DYMUX_3892 : STD_LOGIC; 
  signal C4_counter_10_XORG_3890 : STD_LOGIC; 
  signal C4_counter_10_CYSELF_3888 : STD_LOGIC; 
  signal C4_counter_10_CYMUXFAST_3887 : STD_LOGIC; 
  signal C4_counter_10_CYAND_3886 : STD_LOGIC; 
  signal C4_counter_10_FASTCARRY_3885 : STD_LOGIC; 
  signal C4_counter_10_CYMUXG2_3884 : STD_LOGIC; 
  signal C4_counter_10_CYMUXF2_3883 : STD_LOGIC; 
  signal C4_counter_10_LOGIC_ZERO_3882 : STD_LOGIC; 
  signal C4_counter_10_CYSELG_3873 : STD_LOGIC; 
  signal C4_counter_10_G : STD_LOGIC; 
  signal C4_counter_10_SRINV_3871 : STD_LOGIC; 
  signal C4_counter_10_CLKINV_3870 : STD_LOGIC; 
  signal C4_counter_12_DXMUX_3961 : STD_LOGIC; 
  signal C4_counter_12_XORF_3959 : STD_LOGIC; 
  signal C4_counter_12_CYINIT_3958 : STD_LOGIC; 
  signal C4_counter_12_F : STD_LOGIC; 
  signal C4_counter_12_DYMUX_3944 : STD_LOGIC; 
  signal C4_counter_12_XORG_3942 : STD_LOGIC; 
  signal C4_counter_12_CYSELF_3940 : STD_LOGIC; 
  signal C4_counter_12_CYMUXFAST_3939 : STD_LOGIC; 
  signal C4_counter_12_CYAND_3938 : STD_LOGIC; 
  signal C4_counter_12_FASTCARRY_3937 : STD_LOGIC; 
  signal C4_counter_12_CYMUXG2_3936 : STD_LOGIC; 
  signal C4_counter_12_CYMUXF2_3935 : STD_LOGIC; 
  signal C4_counter_12_LOGIC_ZERO_3934 : STD_LOGIC; 
  signal C4_counter_12_CYSELG_3925 : STD_LOGIC; 
  signal C4_counter_12_G : STD_LOGIC; 
  signal C4_counter_12_SRINV_3923 : STD_LOGIC; 
  signal C4_counter_12_CLKINV_3922 : STD_LOGIC; 
  signal C4_counter_14_DXMUX_4013 : STD_LOGIC; 
  signal C4_counter_14_XORF_4011 : STD_LOGIC; 
  signal C4_counter_14_CYINIT_4010 : STD_LOGIC; 
  signal C4_counter_14_F : STD_LOGIC; 
  signal C4_counter_14_DYMUX_3996 : STD_LOGIC; 
  signal C4_counter_14_XORG_3994 : STD_LOGIC; 
  signal C4_counter_14_CYSELF_3992 : STD_LOGIC; 
  signal C4_counter_14_CYMUXFAST_3991 : STD_LOGIC; 
  signal C4_counter_14_CYAND_3990 : STD_LOGIC; 
  signal C4_counter_14_FASTCARRY_3989 : STD_LOGIC; 
  signal C4_counter_14_CYMUXG2_3988 : STD_LOGIC; 
  signal C4_counter_14_CYMUXF2_3987 : STD_LOGIC; 
  signal C4_counter_14_LOGIC_ZERO_3986 : STD_LOGIC; 
  signal C4_counter_14_CYSELG_3977 : STD_LOGIC; 
  signal C4_counter_14_G : STD_LOGIC; 
  signal C4_counter_14_SRINV_3975 : STD_LOGIC; 
  signal C4_counter_14_CLKINV_3974 : STD_LOGIC; 
  signal C4_counter_16_DXMUX_4065 : STD_LOGIC; 
  signal C4_counter_16_XORF_4063 : STD_LOGIC; 
  signal C4_counter_16_CYINIT_4062 : STD_LOGIC; 
  signal C4_counter_16_F : STD_LOGIC; 
  signal C4_counter_16_DYMUX_4048 : STD_LOGIC; 
  signal C4_counter_16_XORG_4046 : STD_LOGIC; 
  signal C4_counter_16_CYSELF_4044 : STD_LOGIC; 
  signal C4_counter_16_CYMUXFAST_4043 : STD_LOGIC; 
  signal C4_counter_16_CYAND_4042 : STD_LOGIC; 
  signal C4_counter_16_FASTCARRY_4041 : STD_LOGIC; 
  signal C4_counter_16_CYMUXG2_4040 : STD_LOGIC; 
  signal C4_counter_16_CYMUXF2_4039 : STD_LOGIC; 
  signal C4_counter_16_LOGIC_ZERO_4038 : STD_LOGIC; 
  signal C4_counter_16_CYSELG_4029 : STD_LOGIC; 
  signal C4_counter_16_G : STD_LOGIC; 
  signal C4_counter_16_SRINV_4027 : STD_LOGIC; 
  signal C4_counter_16_CLKINV_4026 : STD_LOGIC; 
  signal C4_counter_18_DXMUX_4117 : STD_LOGIC; 
  signal C4_counter_18_XORF_4115 : STD_LOGIC; 
  signal C4_counter_18_CYINIT_4114 : STD_LOGIC; 
  signal C4_counter_18_F : STD_LOGIC; 
  signal C4_counter_18_DYMUX_4100 : STD_LOGIC; 
  signal C4_counter_18_XORG_4098 : STD_LOGIC; 
  signal C4_counter_18_CYSELF_4096 : STD_LOGIC; 
  signal C4_counter_18_CYMUXFAST_4095 : STD_LOGIC; 
  signal C4_counter_18_CYAND_4094 : STD_LOGIC; 
  signal C4_counter_18_FASTCARRY_4093 : STD_LOGIC; 
  signal C4_counter_18_CYMUXG2_4092 : STD_LOGIC; 
  signal C4_counter_18_CYMUXF2_4091 : STD_LOGIC; 
  signal C4_counter_18_LOGIC_ZERO_4090 : STD_LOGIC; 
  signal C4_counter_18_CYSELG_4081 : STD_LOGIC; 
  signal C4_counter_18_G : STD_LOGIC; 
  signal C4_counter_18_SRINV_4079 : STD_LOGIC; 
  signal C4_counter_18_CLKINV_4078 : STD_LOGIC; 
  signal C4_counter_20_DXMUX_4169 : STD_LOGIC; 
  signal C4_counter_20_XORF_4167 : STD_LOGIC; 
  signal C4_counter_20_CYINIT_4166 : STD_LOGIC; 
  signal C4_counter_20_F : STD_LOGIC; 
  signal C4_counter_20_DYMUX_4152 : STD_LOGIC; 
  signal C4_counter_20_XORG_4150 : STD_LOGIC; 
  signal C4_counter_20_CYSELF_4148 : STD_LOGIC; 
  signal C4_counter_20_CYMUXFAST_4147 : STD_LOGIC; 
  signal C4_counter_20_CYAND_4146 : STD_LOGIC; 
  signal C4_counter_20_FASTCARRY_4145 : STD_LOGIC; 
  signal C4_counter_20_CYMUXG2_4144 : STD_LOGIC; 
  signal C4_counter_20_CYMUXF2_4143 : STD_LOGIC; 
  signal C4_counter_20_LOGIC_ZERO_4142 : STD_LOGIC; 
  signal C4_counter_20_CYSELG_4133 : STD_LOGIC; 
  signal C4_counter_20_G : STD_LOGIC; 
  signal C4_counter_20_SRINV_4131 : STD_LOGIC; 
  signal C4_counter_20_CLKINV_4130 : STD_LOGIC; 
  signal C4_counter_22_DXMUX_4221 : STD_LOGIC; 
  signal C4_counter_22_XORF_4219 : STD_LOGIC; 
  signal C4_counter_22_CYINIT_4218 : STD_LOGIC; 
  signal C4_counter_22_F : STD_LOGIC; 
  signal C4_counter_22_DYMUX_4204 : STD_LOGIC; 
  signal C4_counter_22_XORG_4202 : STD_LOGIC; 
  signal C4_counter_22_CYSELF_4200 : STD_LOGIC; 
  signal C4_counter_22_CYMUXFAST_4199 : STD_LOGIC; 
  signal C4_counter_22_CYAND_4198 : STD_LOGIC; 
  signal C4_counter_22_FASTCARRY_4197 : STD_LOGIC; 
  signal C4_counter_22_CYMUXG2_4196 : STD_LOGIC; 
  signal C4_counter_22_CYMUXF2_4195 : STD_LOGIC; 
  signal C4_counter_22_LOGIC_ZERO_4194 : STD_LOGIC; 
  signal C4_counter_22_CYSELG_4185 : STD_LOGIC; 
  signal C4_counter_22_G : STD_LOGIC; 
  signal C4_counter_22_SRINV_4183 : STD_LOGIC; 
  signal C4_counter_22_CLKINV_4182 : STD_LOGIC; 
  signal C4_counter_24_DXMUX_4245 : STD_LOGIC; 
  signal C4_counter_24_XORF_4243 : STD_LOGIC; 
  signal C4_counter_24_CYINIT_4242 : STD_LOGIC; 
  signal C4_counter_24_rt_4240 : STD_LOGIC; 
  signal C4_counter_24_SRINV_4232 : STD_LOGIC; 
  signal C4_counter_24_CLKINV_4231 : STD_LOGIC; 
  signal C7_clkdiv_0_DXMUX_4292 : STD_LOGIC; 
  signal C7_clkdiv_0_XORF_4290 : STD_LOGIC; 
  signal C7_clkdiv_0_LOGIC_ONE_4289 : STD_LOGIC; 
  signal C7_clkdiv_0_CYINIT_4288 : STD_LOGIC; 
  signal C7_clkdiv_0_CYSELF_4279 : STD_LOGIC; 
  signal C7_clkdiv_0_BXINV_4277 : STD_LOGIC; 
  signal C7_clkdiv_0_DYMUX_4273 : STD_LOGIC; 
  signal C7_clkdiv_0_XORG_4271 : STD_LOGIC; 
  signal C7_clkdiv_0_CYMUXG_4270 : STD_LOGIC; 
  signal C7_clkdiv_0_LOGIC_ZERO_4268 : STD_LOGIC; 
  signal C7_clkdiv_0_CYSELG_4259 : STD_LOGIC; 
  signal C7_clkdiv_0_G : STD_LOGIC; 
  signal C7_clkdiv_0_CLKINV_4257 : STD_LOGIC; 
  signal C7_clkdiv_2_DXMUX_4340 : STD_LOGIC; 
  signal C7_clkdiv_2_XORF_4338 : STD_LOGIC; 
  signal C7_clkdiv_2_CYINIT_4337 : STD_LOGIC; 
  signal C7_clkdiv_2_F : STD_LOGIC; 
  signal C7_clkdiv_2_DYMUX_4324 : STD_LOGIC; 
  signal C7_clkdiv_2_XORG_4322 : STD_LOGIC; 
  signal C7_clkdiv_2_CYSELF_4320 : STD_LOGIC; 
  signal C7_clkdiv_2_CYMUXFAST_4319 : STD_LOGIC; 
  signal C7_clkdiv_2_CYAND_4318 : STD_LOGIC; 
  signal C7_clkdiv_2_FASTCARRY_4317 : STD_LOGIC; 
  signal C7_clkdiv_2_CYMUXG2_4316 : STD_LOGIC; 
  signal C7_clkdiv_2_CYMUXF2_4315 : STD_LOGIC; 
  signal C7_clkdiv_2_LOGIC_ZERO_4314 : STD_LOGIC; 
  signal C7_clkdiv_2_CYSELG_4305 : STD_LOGIC; 
  signal C7_clkdiv_2_G : STD_LOGIC; 
  signal C7_clkdiv_2_CLKINV_4303 : STD_LOGIC; 
  signal C7_clkdiv_4_DXMUX_4388 : STD_LOGIC; 
  signal C7_clkdiv_4_XORF_4386 : STD_LOGIC; 
  signal C7_clkdiv_4_CYINIT_4385 : STD_LOGIC; 
  signal C7_clkdiv_4_F : STD_LOGIC; 
  signal C7_clkdiv_4_DYMUX_4372 : STD_LOGIC; 
  signal C7_clkdiv_4_XORG_4370 : STD_LOGIC; 
  signal C7_clkdiv_4_CYSELF_4368 : STD_LOGIC; 
  signal C7_clkdiv_4_CYMUXFAST_4367 : STD_LOGIC; 
  signal C7_clkdiv_4_CYAND_4366 : STD_LOGIC; 
  signal C7_clkdiv_4_FASTCARRY_4365 : STD_LOGIC; 
  signal C7_clkdiv_4_CYMUXG2_4364 : STD_LOGIC; 
  signal C7_clkdiv_4_CYMUXF2_4363 : STD_LOGIC; 
  signal C7_clkdiv_4_LOGIC_ZERO_4362 : STD_LOGIC; 
  signal C7_clkdiv_4_CYSELG_4353 : STD_LOGIC; 
  signal C7_clkdiv_4_G : STD_LOGIC; 
  signal C7_clkdiv_4_CLKINV_4351 : STD_LOGIC; 
  signal C7_clkdiv_6_DXMUX_4436 : STD_LOGIC; 
  signal C7_clkdiv_6_XORF_4434 : STD_LOGIC; 
  signal C7_clkdiv_6_CYINIT_4433 : STD_LOGIC; 
  signal C7_clkdiv_6_F : STD_LOGIC; 
  signal C7_clkdiv_6_DYMUX_4420 : STD_LOGIC; 
  signal C7_clkdiv_6_XORG_4418 : STD_LOGIC; 
  signal C7_clkdiv_6_CYSELF_4416 : STD_LOGIC; 
  signal C7_clkdiv_6_CYMUXFAST_4415 : STD_LOGIC; 
  signal C7_clkdiv_6_CYAND_4414 : STD_LOGIC; 
  signal C7_clkdiv_6_FASTCARRY_4413 : STD_LOGIC; 
  signal C7_clkdiv_6_CYMUXG2_4412 : STD_LOGIC; 
  signal C7_clkdiv_6_CYMUXF2_4411 : STD_LOGIC; 
  signal C7_clkdiv_6_LOGIC_ZERO_4410 : STD_LOGIC; 
  signal C7_clkdiv_6_CYSELG_4401 : STD_LOGIC; 
  signal C7_clkdiv_6_G : STD_LOGIC; 
  signal C7_clkdiv_6_CLKINV_4399 : STD_LOGIC; 
  signal C7_clkdiv_8_DXMUX_4457 : STD_LOGIC; 
  signal C7_clkdiv_8_XORF_4455 : STD_LOGIC; 
  signal C7_clkdiv_8_CYINIT_4454 : STD_LOGIC; 
  signal C7_clkdiv_8_rt_4452 : STD_LOGIC; 
  signal C7_clkdiv_8_CLKINV_4444 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal ca_0_O : STD_LOGIC; 
  signal ca_1_O : STD_LOGIC; 
  signal ca_2_O : STD_LOGIC; 
  signal ca_3_O : STD_LOGIC; 
  signal ca_4_O : STD_LOGIC; 
  signal ca_5_O : STD_LOGIC; 
  signal ca_6_O : STD_LOGIC; 
  signal ca_7_O : STD_LOGIC; 
  signal an_0_O : STD_LOGIC; 
  signal an_1_O : STD_LOGIC; 
  signal an_2_O : STD_LOGIC; 
  signal an_3_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal min_sec_INBUF : STD_LOGIC; 
  signal second_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0002_lut_2_F5MUX_4611 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0002_lut_2_BXINV_4604 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0002_lut_3_F5MUX_4636 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0002_lut_3_BXINV_4629 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal C6_bcd_3_mux0001_F5MUX_4661 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal C6_bcd_3_mux0001_BXINV_4654 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N20_F5MUX_4686 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N20_BXINV_4679 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N170_F5MUX_4711 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N170_BXINV_4704 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N150_F5MUX_4736 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N150_BXINV_4729 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N122_F5MUX_4761 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N122_BXINV_4754 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N77_F5MUX_4786 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N77_BXINV_4779 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal int4_4_DXMUX_4817 : STD_LOGIC; 
  signal int4_4_F5MUX_4815 : STD_LOGIC; 
  signal int4_4_F : STD_LOGIC; 
  signal int4_4_BXINV_4804 : STD_LOGIC; 
  signal int4_mux0001_1_1 : STD_LOGIC; 
  signal int4_4_CLKINV_4797 : STD_LOGIC; 
  signal int4_4_CEINV_4796 : STD_LOGIC; 
  signal N163_F5MUX_4845 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N163_BXINV_4838 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal C6_N71_F5MUX_4870 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal C6_N71_BXINV_4861 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal C7_ca_0_DXMUX_4899 : STD_LOGIC; 
  signal C7_ca_0_F5MUX_4897 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_3_4895 : STD_LOGIC; 
  signal C7_ca_0_BXINV_4889 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_4_4887 : STD_LOGIC; 
  signal C7_ca_0_CLKINV_4881 : STD_LOGIC; 
  signal C7_ca_1_DXMUX_4930 : STD_LOGIC; 
  signal C7_ca_1_F5MUX_4928 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_31_4926 : STD_LOGIC; 
  signal C7_ca_1_BXINV_4920 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_41_4918 : STD_LOGIC; 
  signal C7_ca_1_CLKINV_4912 : STD_LOGIC; 
  signal C7_ca_2_DXMUX_4961 : STD_LOGIC; 
  signal C7_ca_2_F5MUX_4959 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_32_4957 : STD_LOGIC; 
  signal C7_ca_2_BXINV_4951 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_42_4949 : STD_LOGIC; 
  signal C7_ca_2_CLKINV_4943 : STD_LOGIC; 
  signal C7_ca_3_DXMUX_4992 : STD_LOGIC; 
  signal C7_ca_3_F5MUX_4990 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_33_4988 : STD_LOGIC; 
  signal C7_ca_3_BXINV_4982 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_43_4980 : STD_LOGIC; 
  signal C7_ca_3_CLKINV_4974 : STD_LOGIC; 
  signal C7_ca_4_DXMUX_5023 : STD_LOGIC; 
  signal C7_ca_4_F5MUX_5021 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_34_5019 : STD_LOGIC; 
  signal C7_ca_4_BXINV_5013 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_44_5011 : STD_LOGIC; 
  signal C7_ca_4_CLKINV_5005 : STD_LOGIC; 
  signal C7_ca_5_DXMUX_5054 : STD_LOGIC; 
  signal C7_ca_5_F5MUX_5052 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_35_5050 : STD_LOGIC; 
  signal C7_ca_5_BXINV_5044 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_45_5042 : STD_LOGIC; 
  signal C7_ca_5_CLKINV_5036 : STD_LOGIC; 
  signal C7_ca_6_DXMUX_5085 : STD_LOGIC; 
  signal C7_ca_6_F5MUX_5083 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_36_5081 : STD_LOGIC; 
  signal C7_ca_6_BXINV_5075 : STD_LOGIC; 
  signal C7_Mmux_ca_mux0001_46_5073 : STD_LOGIC; 
  signal C7_ca_6_CLKINV_5067 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0000_cy_2_F5MUX_5112 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0000_cy_2_BXINV_5104 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal C7_ca2_4_DXMUX_5143 : STD_LOGIC; 
  signal C7_ca2_4_F5MUX_5141 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal C7_ca2_4_BXINV_5134 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal C7_ca2_4_SRINV_5127 : STD_LOGIC; 
  signal C7_ca2_4_CLKINV_5126 : STD_LOGIC; 
  signal N51_F5MUX_5171 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N51_BXINV_5163 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N107_F5MUX_5196 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N107_BXINV_5189 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N136_F5MUX_5221 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N136_BXINV_5214 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N158_F5MUX_5246 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N158_BXINV_5239 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N159_F5MUX_5271 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N159_BXINV_5264 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N180_F5MUX_5296 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N180_BXINV_5289 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal C6_N20_pack_1 : STD_LOGIC; 
  signal C6_N23_pack_1 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0004_lut_3_pack_1 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1_O_pack_1 : STD_LOGIC; 
  signal C7_ca4_2_DXMUX_5422 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux000121 : STD_LOGIC; 
  signal C6_N29_pack_2 : STD_LOGIC; 
  signal C7_ca4_2_SRINV_5406 : STD_LOGIC; 
  signal C7_ca4_2_CLKINV_5405 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0003_cy_1_11_SW0_O_pack_2 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0006_cy_1_pack_1 : STD_LOGIC; 
  signal C6_N151_pack_1 : STD_LOGIC; 
  signal C6_N121 : STD_LOGIC; 
  signal int_demo_led_out_6_pack_1 : STD_LOGIC; 
  signal C6_N161 : STD_LOGIC; 
  signal C6_bcd_1_mux000721_SW0_O_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0001_cy_1_11_SW3_O_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0005_cy_1_pack_1 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal C6_bcd_4_mux00051_SW0_SW0_O_pack_1 : STD_LOGIC; 
  signal C6_N26_pack_1 : STD_LOGIC; 
  signal C6_bcd_2_mux0004_5664 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0004_cy_1_pack_1 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N34_pack_1 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N86_pack_1 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal C6_bcd_7_mux0001_SW6_O_pack_1 : STD_LOGIC; 
  signal C6_N27 : STD_LOGIC; 
  signal C6_bcd_3_mux000711_SW2_O_pack_1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal C6_bcd_5_mux000321_SW1_O_pack_1 : STD_LOGIC; 
  signal C6_N28 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0008_cy_1_pack_1 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal C6_bcd_6_mux0004_SW1_O_pack_1 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal int_demo_led_out_8_pack_1 : STD_LOGIC; 
  signal C6_bcd_11_mux000211_SW0_O_pack_1 : STD_LOGIC; 
  signal C6_bcd_11_mux000137_SW0_O_pack_1 : STD_LOGIC; 
  signal C6_bcd_11_mux000211_SW1_O_pack_1 : STD_LOGIC; 
  signal C7_ca1_3_DXMUX_5959 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux000131 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux0001311_SW0_O_pack_1 : STD_LOGIC; 
  signal C7_ca1_3_SRINV_5944 : STD_LOGIC; 
  signal C7_ca1_3_CLKINV_5943 : STD_LOGIC; 
  signal C7_ca1_4_DXMUX_5992 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux000141 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux0001411_SW0_O_pack_1 : STD_LOGIC; 
  signal C7_ca1_4_SRINV_5975 : STD_LOGIC; 
  signal C7_ca1_4_CLKINV_5974 : STD_LOGIC; 
  signal int_demo_led_out_7_pack_1 : STD_LOGIC; 
  signal C6_bcd_2_mux0005_SW1_O_pack_1 : STD_LOGIC; 
  signal C6_N141_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0008_lut_3_pack_1 : STD_LOGIC; 
  signal C6_bcd_11_mux000112 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0000_cy_0_pack_1 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0001_cy_0_pack_1 : STD_LOGIC; 
  signal C6_bcd_11_mux000211_SW2_O_pack_1 : STD_LOGIC; 
  signal C6_N61 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0002_lut_2_pack_1 : STD_LOGIC; 
  signal C6_N81 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_cy_1_pack_2 : STD_LOGIC; 
  signal N165_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0002_cy_0_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0003_cy_1_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_cy_1_11_SW01_O_pack_1 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal C6_bcd_11_mux000137_SW4_O_pack_1 : STD_LOGIC; 
  signal C7_ca2_1_DXMUX_6359 : STD_LOGIC; 
  signal C7_Mrom_ca2_mux00011 : STD_LOGIC; 
  signal tens2_3_pack_1 : STD_LOGIC; 
  signal C7_ca2_1_CLKINV_6344 : STD_LOGIC; 
  signal C7_ca2_3_DXMUX_6391 : STD_LOGIC; 
  signal C7_Mrom_ca2_mux000131 : STD_LOGIC; 
  signal C6_bcd_5_mux00051_SW1_O_pack_1 : STD_LOGIC; 
  signal C7_ca2_3_SRINV_6376 : STD_LOGIC; 
  signal C7_ca2_3_CLKINV_6375 : STD_LOGIC; 
  signal C7_ca1_0_DXMUX_6423 : STD_LOGIC; 
  signal C7_ca1_0_FXMUX_6422 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux0001 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux000111_SW0_O_pack_1 : STD_LOGIC; 
  signal C7_ca1_0_CLKINV_6407 : STD_LOGIC; 
  signal C7_ca1_2_DXMUX_6453 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux00012 : STD_LOGIC; 
  signal ones2_2_pack_1 : STD_LOGIC; 
  signal C7_ca1_2_CLKINV_6438 : STD_LOGIC; 
  signal C7_ca1_5_DXMUX_6483 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux00015 : STD_LOGIC; 
  signal ones2_1_pack_1 : STD_LOGIC; 
  signal C7_ca1_5_CLKINV_6467 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0001_cy_1_pack_1 : STD_LOGIC; 
  signal C6_Madd_bcd_11_8_add0002_cy_0_pack_1 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal int_demo_led_out_5_pack_2 : STD_LOGIC; 
  signal C6_N19 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0003_cy_1_11_SW4_O_pack_1 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal C1_output_9_1_O_pack_2 : STD_LOGIC; 
  signal C6_N18_pack_1 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal C6_N101_pack_1 : STD_LOGIC; 
  signal C7_ca2_2_DXMUX_6681 : STD_LOGIC; 
  signal C7_Mrom_ca2_mux00012 : STD_LOGIC; 
  signal tens2_2_pack_1 : STD_LOGIC; 
  signal C7_ca2_2_CLKINV_6666 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N108_pack_1 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt0003_pack_1 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal int_demo_led_out_4_pack_1 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt00041_SW2_O_pack_1 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt0005_pack_1 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal int_demo_led_out_3_pack_1 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0004_cy_1_11_SW2_O_pack_1 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal C6_bcd_7_cmp_gt00031_SW0_SW0_O_pack_1 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0005_lut_3_pack_1 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal C6_N25_pack_1 : STD_LOGIC; 
  signal C7_ca3_3_DXMUX_6953 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux000131 : STD_LOGIC; 
  signal C6_bcd_7_mux000511_O_pack_1 : STD_LOGIC; 
  signal C7_ca3_3_SRINV_6938 : STD_LOGIC; 
  signal C7_ca3_3_CLKINV_6937 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal int_demo_led_out_11_pack_1 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal C6_bcd_7_mux0001_pack_1 : STD_LOGIC; 
  signal int_demo_led_in_1_DXMUX_7039 : STD_LOGIC; 
  signal int_demo_led_in_1_DYMUX_7026 : STD_LOGIC; 
  signal int_demo_led_in_1_CLKINV_7017 : STD_LOGIC; 
  signal int_demo_led_in_1_CEINV_7016 : STD_LOGIC; 
  signal int_demo_led_in_3_DXMUX_7077 : STD_LOGIC; 
  signal int_demo_led_in_3_DYMUX_7064 : STD_LOGIC; 
  signal int_demo_led_in_3_CLKINV_7055 : STD_LOGIC; 
  signal int_demo_led_in_3_CEINV_7054 : STD_LOGIC; 
  signal int_demo_led_in_5_DXMUX_7115 : STD_LOGIC; 
  signal int_demo_led_in_5_DYMUX_7102 : STD_LOGIC; 
  signal int_demo_led_in_5_CLKINV_7093 : STD_LOGIC; 
  signal int_demo_led_in_5_CEINV_7092 : STD_LOGIC; 
  signal int_demo_led_in_7_DXMUX_7153 : STD_LOGIC; 
  signal int_demo_led_in_7_DYMUX_7140 : STD_LOGIC; 
  signal int_demo_led_in_7_CLKINV_7131 : STD_LOGIC; 
  signal int_demo_led_in_7_CEINV_7130 : STD_LOGIC; 
  signal int_demo_led_in_9_DXMUX_7191 : STD_LOGIC; 
  signal int_demo_led_in_9_DYMUX_7178 : STD_LOGIC; 
  signal int_demo_led_in_9_CLKINV_7169 : STD_LOGIC; 
  signal int_demo_led_in_9_CEINV_7168 : STD_LOGIC; 
  signal int_demo_led_in_11_DXMUX_7229 : STD_LOGIC; 
  signal int_demo_led_in_11_DYMUX_7216 : STD_LOGIC; 
  signal int_demo_led_in_11_CLKINV_7207 : STD_LOGIC; 
  signal int_demo_led_in_11_CEINV_7206 : STD_LOGIC; 
  signal C1_int4_3_DXMUX_7270 : STD_LOGIC; 
  signal C1_Result_3_1 : STD_LOGIC; 
  signal C1_int4_3_DYMUX_7257 : STD_LOGIC; 
  signal C1_Result_2_1 : STD_LOGIC; 
  signal C1_int4_3_SRINV_7248 : STD_LOGIC; 
  signal C1_int4_3_CLKINV_7247 : STD_LOGIC; 
  signal C1_int4_3_CEINV_7246 : STD_LOGIC; 
  signal C1_int4_5_DYMUX_7294 : STD_LOGIC; 
  signal C1_Result_5_1 : STD_LOGIC; 
  signal C1_int4_5_SRINV_7286 : STD_LOGIC; 
  signal C1_int4_5_CLKINV_7285 : STD_LOGIC; 
  signal C1_int4_5_CEINV_7284 : STD_LOGIC; 
  signal C7_ca1_6_DXMUX_7330 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux00016 : STD_LOGIC; 
  signal C7_ca1_6_DYMUX_7319 : STD_LOGIC; 
  signal C7_Mrom_ca1_mux00011 : STD_LOGIC; 
  signal C7_ca1_6_CLKINV_7311 : STD_LOGIC; 
  signal C7_ca2_5_DXMUX_7365 : STD_LOGIC; 
  signal C7_Mrom_ca2_mux00015 : STD_LOGIC; 
  signal C7_ca2_5_DYMUX_7354 : STD_LOGIC; 
  signal C7_ca2_5_GYMUX_7353 : STD_LOGIC; 
  signal C7_Mrom_ca2_mux0001 : STD_LOGIC; 
  signal C7_ca2_5_CLKINV_7346 : STD_LOGIC; 
  signal C7_ca3_1_DXMUX_7400 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux00011 : STD_LOGIC; 
  signal C7_ca3_1_DYMUX_7389 : STD_LOGIC; 
  signal C7_ca3_1_GYMUX_7388 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux0001 : STD_LOGIC; 
  signal C7_ca3_1_CLKINV_7381 : STD_LOGIC; 
  signal C7_ca2_6_DYMUX_7418 : STD_LOGIC; 
  signal C7_Mrom_ca2_mux00016 : STD_LOGIC; 
  signal C7_ca2_6_CLKINV_7409 : STD_LOGIC; 
  signal C7_ca3_6_DXMUX_7452 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux00016 : STD_LOGIC; 
  signal C7_ca3_6_DYMUX_7441 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux00012 : STD_LOGIC; 
  signal C7_ca3_6_CLKINV_7433 : STD_LOGIC; 
  signal C7_ca3_4_DYMUX_7472 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux000141 : STD_LOGIC; 
  signal C7_ca3_4_SRINV_7463 : STD_LOGIC; 
  signal C7_ca3_4_CLKINV_7462 : STD_LOGIC; 
  signal C7_ca4_5_DXMUX_7507 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux00015 : STD_LOGIC; 
  signal C7_ca4_5_DYMUX_7496 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux00011 : STD_LOGIC; 
  signal C7_ca4_5_CLKINV_7488 : STD_LOGIC; 
  signal C7_ca3_5_DYMUX_7525 : STD_LOGIC; 
  signal C7_Mrom_ca3_mux00015 : STD_LOGIC; 
  signal C7_ca3_5_CLKINV_7517 : STD_LOGIC; 
  signal C7_ca4_3_DYMUX_7545 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux000131 : STD_LOGIC; 
  signal C7_ca4_3_SRINV_7537 : STD_LOGIC; 
  signal C7_ca4_3_CLKINV_7536 : STD_LOGIC; 
  signal C7_ca4_4_DYMUX_7566 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux000141 : STD_LOGIC; 
  signal C7_ca4_4_SRINV_7556 : STD_LOGIC; 
  signal C7_ca4_4_CLKINV_7555 : STD_LOGIC; 
  signal C7_ca4_6_DYMUX_7585 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux00016 : STD_LOGIC; 
  signal C7_ca4_6_CLKINV_7577 : STD_LOGIC; 
  signal int4_1_DXMUX_7622 : STD_LOGIC; 
  signal int4_mux0001_4_Q : STD_LOGIC; 
  signal int4_1_DYMUX_7610 : STD_LOGIC; 
  signal int4_mux0001_5_Q : STD_LOGIC; 
  signal int4_1_CLKINV_7602 : STD_LOGIC; 
  signal int4_1_CEINV_7601 : STD_LOGIC; 
  signal int4_5_DYMUX_7643 : STD_LOGIC; 
  signal int4_mux0001_0_Q : STD_LOGIC; 
  signal int4_5_CLKINV_7635 : STD_LOGIC; 
  signal int4_5_CEINV_7634 : STD_LOGIC; 
  signal C7_an_0_DYMUX_7662 : STD_LOGIC; 
  signal C7_Mrom_an_mux0001 : STD_LOGIC; 
  signal C7_an_0_CLKINV_7652 : STD_LOGIC; 
  signal C1_prev_sec_not0001_7687 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal int4_2_DXMUX_7718 : STD_LOGIC; 
  signal int4_mux0001_3_Q : STD_LOGIC; 
  signal prev_sec_not0001_pack_2 : STD_LOGIC; 
  signal int4_2_CLKINV_7702 : STD_LOGIC; 
  signal int4_2_CEINV_7701 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal C6_Madd_bcd_7_4_add0001_cy_0_pack_2 : STD_LOGIC; 
  signal C6_bcd_3_cmp_gt0006 : STD_LOGIC; 
  signal C1_int4_0_DXMUX_7822 : STD_LOGIC; 
  signal C1_int4_0_DYMUX_7815 : STD_LOGIC; 
  signal C1_Result_1_1 : STD_LOGIC; 
  signal C1_int4_0_SRINV_7805 : STD_LOGIC; 
  signal C1_int4_0_CLKINV_7804 : STD_LOGIC; 
  signal C1_int4_0_CEINV_7803 : STD_LOGIC; 
  signal C7_ca4_0_DXMUX_7855 : STD_LOGIC; 
  signal C7_ca4_0_FXMUX_7854 : STD_LOGIC; 
  signal C7_Mrom_ca4_mux0001 : STD_LOGIC; 
  signal N221_pack_1 : STD_LOGIC; 
  signal C7_ca4_0_CLKINV_7839 : STD_LOGIC; 
  signal prev_sec_cmp_eq0000_7880 : STD_LOGIC; 
  signal N8_pack_1 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal ca_7_OUTPUT_OFF_O1INV_4530 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal C6_Madd_bcd_3_0_add0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal C6_Madd_bcd_3_0_add0002_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal C6_Madd_bcd_3_0_add0004_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C6_Madd_bcd_7_4_add0005_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal C1_int4 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal int4 : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal C6_Madd_bcd_11_8_add0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0005_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal int_demo_led_in : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal C1_int_output : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal C7_clkdiv : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal C7_an : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal C6_Madd_bcd_7_4_add0002_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal int_demo_led_in_addsub0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal C4_counter : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal C4_Mcount_counter_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal C7_Mcount_clkdiv_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C7_ca : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C6_Madd_bcd_7_4_add0001_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal C7_ca3 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C7_ca4 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C7_ca1 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C7_ca2 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C6_Madd_bcd_7_4_add0002_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C6_Madd_bcd_11_8_add0001_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal C6_Madd_bcd_11_8_add0002_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0006_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal C6_Madd_bcd_3_0_add0004_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal C6_Madd_bcd_7_4_add0003_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0008_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal C6_Madd_bcd_7_4_add0004_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0008_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal tens2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ones2 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal C6_Madd_bcd_11_8_add0000_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal hundreds2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal C6_Madd_bcd_7_4_add0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0005_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Madd_int4_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C4_int_led_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal C4_int_led_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C1_Mcount_int_output_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C4_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C7_Mcount_clkdiv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0003_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal thousands2 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal C6_Madd_bcd_3_0_add0007_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal C6_Madd_bcd_11_8_add0002_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal C6_Madd_bcd_3_0_add0003_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C6_Madd_bcd_3_0_add0006_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C6_Madd_bcd_3_0_add0007_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C6_Madd_bcd_7_4_add0003_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C6_Madd_bcd_7_4_add0004_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal C6_Madd_bcd_7_4_add0005_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal int_demo_led_in_mux0001 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
begin
  C6_Madd_bcd_11_8_add0000_lut_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0000_lut(2),
      O => C6_Madd_bcd_11_8_add0000_lut_2_0
    );
  C6_Madd_bcd_11_8_add0000_lut_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N110,
      O => N110_0
    );
  C1_prev_sec_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_2014,
      O => C1_prev_sec_DYMUX_2398
    );
  C1_prev_sec_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_prev_sec_CLKINV_2396
    );
  C1_prev_sec_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_prev_sec_not0001_7687,
      O => C1_prev_sec_CEINV_2395
    );
  N96_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N96,
      O => N96_0
    );
  N96_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N126,
      O => N126_0
    );
  N117_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N117,
      O => N117_0
    );
  N117_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => hundreds2(0),
      O => hundreds2_0_0
    );
  C6_Madd_bcd_7_4_add0000_cy_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0000_cy(0),
      O => C6_Madd_bcd_7_4_add0000_cy_0_0
    );
  C6_Madd_bcd_7_4_add0000_cy_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N22_pack_1,
      O => C6_N22
    );
  C6_bcd_3_mux000211 : X_LUT4
    generic map(
      INIT => X"A7F1"
    )
    port map (
      ADR0 => int_demo_led_out_8_Q,
      ADR1 => int_demo_led_out_7_Q,
      ADR2 => N51,
      ADR3 => C6_bcd_3_mux0001,
      O => C6_N22_pack_1
    );
  C6_Madd_bcd_3_0_add0005_cy_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0005_cy(1),
      O => C6_Madd_bcd_3_0_add0005_cy_1_0
    );
  C6_Madd_bcd_3_0_add0005_cy_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N24_pack_1,
      O => C6_N24
    );
  N30_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N30,
      O => N30_0
    );
  N30_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N67,
      O => N67_0
    );
  N26_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  N26_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N241,
      O => N241_0
    );
  C1_int4_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Result_4_1,
      O => C1_int4_4_DXMUX_2577
    );
  C1_int4_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_N2_pack_2,
      O => C1_N2
    );
  C1_int4_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int4_4_SRINV_2560
    );
  C1_int4_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int4_4_CLKINV_2559
    );
  C1_int4_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_not0001_inv_0,
      O => C1_int4_4_CEINV_2558
    );
  int4_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_mux0001_2_Q_2608,
      O => int4_3_DXMUX_2611
    );
  int4_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N278_pack_2,
      O => N278
    );
  int4_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int4_3_CLKINV_2596
    );
  int4_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int4_3_CEINV_2595
    );
  C6_bcd_11_mux000134 : X_LUT4
    generic map(
      INIT => X"0202"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR3 => VCC,
      O => C6_bcd_11_mux000134_2637
    );
  C6_bcd_11_mux000134_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000134_2637,
      O => C6_bcd_11_mux000134_0
    );
  C6_bcd_11_mux000134_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N37_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N37,
      O => N37_0
    );
  N37_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N187,
      O => N187_0
    );
  N57_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N57,
      O => N57_0
    );
  C6_Madd_bcd_7_4_add0003_cy_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0003_cy(0),
      O => C6_Madd_bcd_7_4_add0003_cy_0_0
    );
  C6_Madd_bcd_7_4_add0003_cy_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_mux000511_pack_1,
      O => C6_bcd_3_mux000511_2079
    );
  C4_int_led : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_int_led_DYMUX_2707,
      CE => C4_int_led_CEINV_2704,
      CLK => C4_int_led_CLKINV_2705,
      SET => GND,
      RST => GND,
      O => C4_int_led_2014
    );
  C4_int_led_DYMUX : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_2014,
      O => C4_int_led_DYMUX_2707
    );
  C4_int_led_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_int_led_CLKINV_2705
    );
  C4_int_led_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_int_led_CEINV_2704
    );
  C1_int4_and0000_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_2733,
      O => C1_int4_and0000_0
    );
  C1_int4_and0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N4_pack_1,
      O => N4
    );
  C1_int4_and0000_SW0 : X_LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      ADR0 => C1_int4(5),
      ADR1 => C1_int4(4),
      ADR2 => C1_int4_not0001_inv_0,
      ADR3 => C1_int4(0),
      O => N4_pack_1
    );
  N227_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N227,
      O => N227_0
    );
  int_demo_led_out_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_2_Q,
      O => int_demo_led_out_2_0
    );
  int_demo_led_out_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_0_Q,
      O => int_demo_led_out_0_0
    );
  int_demo_led_out_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_1_Q,
      O => int_demo_led_out_1_0
    );
  N114_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N114,
      O => N114_0
    );
  N114_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N80,
      O => N80_0
    );
  C6_Madd_bcd_11_8_add0001_cy_1_11_SW1 : X_LUT4
    generic map(
      INIT => X"EBC3"
    )
    port map (
      ADR0 => C6_bcd_7_mux0001_2066,
      ADR1 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR2 => thousands2_2_0,
      ADR3 => C6_bcd_11_mux000112_0,
      O => N114
    );
  N177_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N177,
      O => N177_0
    );
  N177_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N142,
      O => N142_0
    );
  N113_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N113,
      O => N113_0
    );
  N113_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N144,
      O => N144_0
    );
  C7_an_1_DYMUX : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_an_1_DYMUX_2863
    );
  C7_an_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(7),
      O => C7_an_1_SRINV_2861
    );
  C7_an_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_an_1_CLKINV_2860
    );
  C7_an_2 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_an_2_DYMUX_2875,
      CE => VCC,
      CLK => C7_an_2_CLKINV_2872,
      SET => GND,
      RST => GND,
      SSET => C7_an_2_SRINV_2873,
      SRST => GND,
      O => C7_an(2)
    );
  C7_an_2_DYMUX : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(7),
      O => C7_an_2_DYMUX_2875
    );
  C7_an_2_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_an_2_SRINV_2873
    );
  C7_an_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_an_2_CLKINV_2872
    );
  C7_an_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(7),
      O => C7_an_3_DYMUX_2887
    );
  C7_an_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_an_3_SRINV_2885
    );
  C7_an_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_an_3_CLKINV_2884
    );
  prev_sec_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_2014,
      O => prev_sec_DYMUX_2899
    );
  prev_sec_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prev_sec_CLKINV_2897
    );
  prev_sec_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prev_sec_not0001,
      O => prev_sec_CEINV_2896
    );
  C6_bcd_7_cmp_gt0002_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_7_cmp_gt0002,
      O => C6_bcd_7_cmp_gt0002_0
    );
  int4_not0002_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002,
      O => int4_not0002_0
    );
  int4_not0002_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_not0001_inv,
      O => C1_int4_not0001_inv_0
    );
  Madd_int4_addsub0000_cy_3_11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => int4(2),
      ADR1 => int4(3),
      ADR2 => int4(0),
      ADR3 => int4(1),
      O => Madd_int4_addsub0000_cy(3)
    );
  Madd_int4_addsub0000_cy_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int4_addsub0000_cy(3),
      O => Madd_int4_addsub0000_cy_3_0
    );
  C6_bcd_7_cmp_gt0003_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_7_cmp_gt0003,
      O => C6_bcd_7_cmp_gt0003_0
    );
  C6_bcd_7_cmp_gt0003_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N61_pack_1,
      O => N61
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW0 : X_LUT4
    generic map(
      INIT => X"B989"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR2 => C6_Madd_bcd_7_4_add0002_lut(2),
      ADR3 => N134_0,
      O => N61_pack_1
    );
  int_demo_led_in_addsub0000_0_LOGIC_ZERO : X_ZERO
    port map (
      O => int_demo_led_in_addsub0000_0_LOGIC_ZERO_2993
    );
  int_demo_led_in_addsub0000_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_0_XORF_3010,
      O => int_demo_led_in_addsub0000(0)
    );
  int_demo_led_in_addsub0000_0_XORF : X_XOR2
    port map (
      I0 => int_demo_led_in_addsub0000_0_CYINIT_3009,
      I1 => Madd_int_demo_led_in_addsub0000_lut_0_Q_2999,
      O => int_demo_led_in_addsub0000_0_XORF_3010
    );
  int_demo_led_in_addsub0000_0_CYMUXF : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_0_CY0F_3008,
      IB => int_demo_led_in_addsub0000_0_CYINIT_3009,
      SEL => int_demo_led_in_addsub0000_0_CYSELF_3000,
      O => Madd_int_demo_led_in_addsub0000_cy_0_Q
    );
  int_demo_led_in_addsub0000_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_0_BXINV_2998,
      O => int_demo_led_in_addsub0000_0_CYINIT_3009
    );
  int_demo_led_in_addsub0000_0_CY0F : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in(0),
      O => int_demo_led_in_addsub0000_0_CY0F_3008
    );
  int_demo_led_in_addsub0000_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_lut_0_Q_2999,
      O => int_demo_led_in_addsub0000_0_CYSELF_3000
    );
  int_demo_led_in_addsub0000_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => int_demo_led_in_addsub0000_0_BXINV_2998
    );
  int_demo_led_in_addsub0000_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_0_XORG_2996,
      O => int_demo_led_in_addsub0000(1)
    );
  int_demo_led_in_addsub0000_0_XORG : X_XOR2
    port map (
      I0 => Madd_int_demo_led_in_addsub0000_cy_0_Q,
      I1 => int_demo_led_in_addsub0000_0_G,
      O => int_demo_led_in_addsub0000_0_XORG_2996
    );
  int_demo_led_in_addsub0000_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_0_CYMUXG_2995,
      O => Madd_int_demo_led_in_addsub0000_cy_1_Q
    );
  int_demo_led_in_addsub0000_0_CYMUXG : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_0_LOGIC_ZERO_2993,
      IB => Madd_int_demo_led_in_addsub0000_cy_0_Q,
      SEL => int_demo_led_in_addsub0000_0_CYSELG_2984,
      O => int_demo_led_in_addsub0000_0_CYMUXG_2995
    );
  int_demo_led_in_addsub0000_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_0_G,
      O => int_demo_led_in_addsub0000_0_CYSELG_2984
    );
  int_demo_led_in_addsub0000_2_LOGIC_ZERO : X_ZERO
    port map (
      O => int_demo_led_in_addsub0000_2_LOGIC_ZERO_3048
    );
  int_demo_led_in_addsub0000_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_2_XORF_3049,
      O => int_demo_led_in_addsub0000(2)
    );
  int_demo_led_in_addsub0000_2_XORF : X_XOR2
    port map (
      I0 => int_demo_led_in_addsub0000_2_CYINIT_3047,
      I1 => int_demo_led_in_addsub0000_2_F,
      O => int_demo_led_in_addsub0000_2_XORF_3049
    );
  int_demo_led_in_addsub0000_2_CYMUXF : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_2_LOGIC_ZERO_3048,
      IB => int_demo_led_in_addsub0000_2_CYINIT_3047,
      SEL => int_demo_led_in_addsub0000_2_CYSELF_3034,
      O => Madd_int_demo_led_in_addsub0000_cy_2_Q
    );
  int_demo_led_in_addsub0000_2_CYMUXF2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_2_LOGIC_ZERO_3048,
      IB => int_demo_led_in_addsub0000_2_LOGIC_ZERO_3048,
      SEL => int_demo_led_in_addsub0000_2_CYSELF_3034,
      O => int_demo_led_in_addsub0000_2_CYMUXF2_3029
    );
  int_demo_led_in_addsub0000_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_1_Q,
      O => int_demo_led_in_addsub0000_2_CYINIT_3047
    );
  int_demo_led_in_addsub0000_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_2_F,
      O => int_demo_led_in_addsub0000_2_CYSELF_3034
    );
  int_demo_led_in_addsub0000_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_2_XORG_3036,
      O => int_demo_led_in_addsub0000(3)
    );
  int_demo_led_in_addsub0000_2_XORG : X_XOR2
    port map (
      I0 => Madd_int_demo_led_in_addsub0000_cy_2_Q,
      I1 => Madd_int_demo_led_in_addsub0000_lut_3_Q_3019,
      O => int_demo_led_in_addsub0000_2_XORG_3036
    );
  int_demo_led_in_addsub0000_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_2_CYMUXFAST_3033,
      O => Madd_int_demo_led_in_addsub0000_cy_3_Q
    );
  int_demo_led_in_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_1_Q,
      O => int_demo_led_in_addsub0000_2_FASTCARRY_3031
    );
  int_demo_led_in_addsub0000_2_CYAND : X_AND2
    port map (
      I0 => int_demo_led_in_addsub0000_2_CYSELG_3020,
      I1 => int_demo_led_in_addsub0000_2_CYSELF_3034,
      O => int_demo_led_in_addsub0000_2_CYAND_3032
    );
  int_demo_led_in_addsub0000_2_CYMUXFAST : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_2_CYMUXG2_3030,
      IB => int_demo_led_in_addsub0000_2_FASTCARRY_3031,
      SEL => int_demo_led_in_addsub0000_2_CYAND_3032,
      O => int_demo_led_in_addsub0000_2_CYMUXFAST_3033
    );
  int_demo_led_in_addsub0000_2_CYMUXG2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_2_CY0G_3028,
      IB => int_demo_led_in_addsub0000_2_CYMUXF2_3029,
      SEL => int_demo_led_in_addsub0000_2_CYSELG_3020,
      O => int_demo_led_in_addsub0000_2_CYMUXG2_3030
    );
  int_demo_led_in_addsub0000_2_CY0G : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in(3),
      O => int_demo_led_in_addsub0000_2_CY0G_3028
    );
  int_demo_led_in_addsub0000_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_lut_3_Q_3019,
      O => int_demo_led_in_addsub0000_2_CYSELG_3020
    );
  Madd_int_demo_led_in_addsub0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => int_demo_led_in(3),
      ADR1 => prev_sec_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_int_demo_led_in_addsub0000_lut_3_Q_3019
    );
  int_demo_led_in_addsub0000_4_LOGIC_ZERO : X_ZERO
    port map (
      O => int_demo_led_in_addsub0000_4_LOGIC_ZERO_3087
    );
  int_demo_led_in_addsub0000_4_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_4_XORF_3088,
      O => int_demo_led_in_addsub0000(4)
    );
  int_demo_led_in_addsub0000_4_XORF : X_XOR2
    port map (
      I0 => int_demo_led_in_addsub0000_4_CYINIT_3086,
      I1 => int_demo_led_in_addsub0000_4_F,
      O => int_demo_led_in_addsub0000_4_XORF_3088
    );
  int_demo_led_in_addsub0000_4_CYMUXF : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_4_LOGIC_ZERO_3087,
      IB => int_demo_led_in_addsub0000_4_CYINIT_3086,
      SEL => int_demo_led_in_addsub0000_4_CYSELF_3073,
      O => Madd_int_demo_led_in_addsub0000_cy_4_Q
    );
  int_demo_led_in_addsub0000_4_CYMUXF2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_4_LOGIC_ZERO_3087,
      IB => int_demo_led_in_addsub0000_4_LOGIC_ZERO_3087,
      SEL => int_demo_led_in_addsub0000_4_CYSELF_3073,
      O => int_demo_led_in_addsub0000_4_CYMUXF2_3068
    );
  int_demo_led_in_addsub0000_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_3_Q,
      O => int_demo_led_in_addsub0000_4_CYINIT_3086
    );
  int_demo_led_in_addsub0000_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_4_F,
      O => int_demo_led_in_addsub0000_4_CYSELF_3073
    );
  int_demo_led_in_addsub0000_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_4_XORG_3075,
      O => int_demo_led_in_addsub0000(5)
    );
  int_demo_led_in_addsub0000_4_XORG : X_XOR2
    port map (
      I0 => Madd_int_demo_led_in_addsub0000_cy_4_Q,
      I1 => Madd_int_demo_led_in_addsub0000_lut_5_Q_3058,
      O => int_demo_led_in_addsub0000_4_XORG_3075
    );
  int_demo_led_in_addsub0000_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_4_CYMUXFAST_3072,
      O => Madd_int_demo_led_in_addsub0000_cy_5_Q
    );
  int_demo_led_in_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_3_Q,
      O => int_demo_led_in_addsub0000_4_FASTCARRY_3070
    );
  int_demo_led_in_addsub0000_4_CYAND : X_AND2
    port map (
      I0 => int_demo_led_in_addsub0000_4_CYSELG_3059,
      I1 => int_demo_led_in_addsub0000_4_CYSELF_3073,
      O => int_demo_led_in_addsub0000_4_CYAND_3071
    );
  int_demo_led_in_addsub0000_4_CYMUXFAST : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_4_CYMUXG2_3069,
      IB => int_demo_led_in_addsub0000_4_FASTCARRY_3070,
      SEL => int_demo_led_in_addsub0000_4_CYAND_3071,
      O => int_demo_led_in_addsub0000_4_CYMUXFAST_3072
    );
  int_demo_led_in_addsub0000_4_CYMUXG2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_4_CY0G_3067,
      IB => int_demo_led_in_addsub0000_4_CYMUXF2_3068,
      SEL => int_demo_led_in_addsub0000_4_CYSELG_3059,
      O => int_demo_led_in_addsub0000_4_CYMUXG2_3069
    );
  int_demo_led_in_addsub0000_4_CY0G : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in(5),
      O => int_demo_led_in_addsub0000_4_CY0G_3067
    );
  int_demo_led_in_addsub0000_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_lut_5_Q_3058,
      O => int_demo_led_in_addsub0000_4_CYSELG_3059
    );
  int_demo_led_in_addsub0000_6_LOGIC_ZERO : X_ZERO
    port map (
      O => int_demo_led_in_addsub0000_6_LOGIC_ZERO_3106
    );
  int_demo_led_in_addsub0000_6_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_6_XORF_3126,
      O => int_demo_led_in_addsub0000(6)
    );
  int_demo_led_in_addsub0000_6_XORF : X_XOR2
    port map (
      I0 => int_demo_led_in_addsub0000_6_CYINIT_3125,
      I1 => int_demo_led_in_addsub0000_6_F,
      O => int_demo_led_in_addsub0000_6_XORF_3126
    );
  int_demo_led_in_addsub0000_6_CYMUXF : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_6_LOGIC_ZERO_3106,
      IB => int_demo_led_in_addsub0000_6_CYINIT_3125,
      SEL => int_demo_led_in_addsub0000_6_CYSELF_3112,
      O => Madd_int_demo_led_in_addsub0000_cy_6_Q
    );
  int_demo_led_in_addsub0000_6_CYMUXF2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_6_LOGIC_ZERO_3106,
      IB => int_demo_led_in_addsub0000_6_LOGIC_ZERO_3106,
      SEL => int_demo_led_in_addsub0000_6_CYSELF_3112,
      O => int_demo_led_in_addsub0000_6_CYMUXF2_3107
    );
  int_demo_led_in_addsub0000_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_5_Q,
      O => int_demo_led_in_addsub0000_6_CYINIT_3125
    );
  int_demo_led_in_addsub0000_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_6_F,
      O => int_demo_led_in_addsub0000_6_CYSELF_3112
    );
  int_demo_led_in_addsub0000_6_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_6_XORG_3114,
      O => int_demo_led_in_addsub0000(7)
    );
  int_demo_led_in_addsub0000_6_XORG : X_XOR2
    port map (
      I0 => Madd_int_demo_led_in_addsub0000_cy_6_Q,
      I1 => int_demo_led_in_addsub0000_6_G,
      O => int_demo_led_in_addsub0000_6_XORG_3114
    );
  int_demo_led_in_addsub0000_6_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_6_CYMUXFAST_3111,
      O => Madd_int_demo_led_in_addsub0000_cy_7_Q
    );
  int_demo_led_in_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_5_Q,
      O => int_demo_led_in_addsub0000_6_FASTCARRY_3109
    );
  int_demo_led_in_addsub0000_6_CYAND : X_AND2
    port map (
      I0 => int_demo_led_in_addsub0000_6_CYSELG_3097,
      I1 => int_demo_led_in_addsub0000_6_CYSELF_3112,
      O => int_demo_led_in_addsub0000_6_CYAND_3110
    );
  int_demo_led_in_addsub0000_6_CYMUXFAST : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_6_CYMUXG2_3108,
      IB => int_demo_led_in_addsub0000_6_FASTCARRY_3109,
      SEL => int_demo_led_in_addsub0000_6_CYAND_3110,
      O => int_demo_led_in_addsub0000_6_CYMUXFAST_3111
    );
  int_demo_led_in_addsub0000_6_CYMUXG2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_6_LOGIC_ZERO_3106,
      IB => int_demo_led_in_addsub0000_6_CYMUXF2_3107,
      SEL => int_demo_led_in_addsub0000_6_CYSELG_3097,
      O => int_demo_led_in_addsub0000_6_CYMUXG2_3108
    );
  int_demo_led_in_addsub0000_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_6_G,
      O => int_demo_led_in_addsub0000_6_CYSELG_3097
    );
  int_demo_led_in_addsub0000_8_LOGIC_ZERO : X_ZERO
    port map (
      O => int_demo_led_in_addsub0000_8_LOGIC_ZERO_3144
    );
  int_demo_led_in_addsub0000_8_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_8_XORF_3164,
      O => int_demo_led_in_addsub0000(8)
    );
  int_demo_led_in_addsub0000_8_XORF : X_XOR2
    port map (
      I0 => int_demo_led_in_addsub0000_8_CYINIT_3163,
      I1 => int_demo_led_in_addsub0000_8_F,
      O => int_demo_led_in_addsub0000_8_XORF_3164
    );
  int_demo_led_in_addsub0000_8_CYMUXF : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_8_LOGIC_ZERO_3144,
      IB => int_demo_led_in_addsub0000_8_CYINIT_3163,
      SEL => int_demo_led_in_addsub0000_8_CYSELF_3150,
      O => Madd_int_demo_led_in_addsub0000_cy_8_Q
    );
  int_demo_led_in_addsub0000_8_CYMUXF2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_8_LOGIC_ZERO_3144,
      IB => int_demo_led_in_addsub0000_8_LOGIC_ZERO_3144,
      SEL => int_demo_led_in_addsub0000_8_CYSELF_3150,
      O => int_demo_led_in_addsub0000_8_CYMUXF2_3145
    );
  int_demo_led_in_addsub0000_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_7_Q,
      O => int_demo_led_in_addsub0000_8_CYINIT_3163
    );
  int_demo_led_in_addsub0000_8_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_8_F,
      O => int_demo_led_in_addsub0000_8_CYSELF_3150
    );
  int_demo_led_in_addsub0000_8_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_8_XORG_3152,
      O => int_demo_led_in_addsub0000(9)
    );
  int_demo_led_in_addsub0000_8_XORG : X_XOR2
    port map (
      I0 => Madd_int_demo_led_in_addsub0000_cy_8_Q,
      I1 => int_demo_led_in_addsub0000_8_G,
      O => int_demo_led_in_addsub0000_8_XORG_3152
    );
  int_demo_led_in_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_int_demo_led_in_addsub0000_cy_7_Q,
      O => int_demo_led_in_addsub0000_8_FASTCARRY_3147
    );
  int_demo_led_in_addsub0000_8_CYAND : X_AND2
    port map (
      I0 => int_demo_led_in_addsub0000_8_CYSELG_3135,
      I1 => int_demo_led_in_addsub0000_8_CYSELF_3150,
      O => int_demo_led_in_addsub0000_8_CYAND_3148
    );
  int_demo_led_in_addsub0000_8_CYMUXFAST : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_8_CYMUXG2_3146,
      IB => int_demo_led_in_addsub0000_8_FASTCARRY_3147,
      SEL => int_demo_led_in_addsub0000_8_CYAND_3148,
      O => int_demo_led_in_addsub0000_8_CYMUXFAST_3149
    );
  int_demo_led_in_addsub0000_8_CYMUXG2 : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_8_LOGIC_ZERO_3144,
      IB => int_demo_led_in_addsub0000_8_CYMUXF2_3145,
      SEL => int_demo_led_in_addsub0000_8_CYSELG_3135,
      O => int_demo_led_in_addsub0000_8_CYMUXG2_3146
    );
  int_demo_led_in_addsub0000_8_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_8_G,
      O => int_demo_led_in_addsub0000_8_CYSELG_3135
    );
  int_demo_led_in_addsub0000_10_LOGIC_ZERO : X_ZERO
    port map (
      O => int_demo_led_in_addsub0000_10_LOGIC_ZERO_3194
    );
  int_demo_led_in_addsub0000_10_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_10_XORF_3195,
      O => int_demo_led_in_addsub0000(10)
    );
  int_demo_led_in_addsub0000_10_XORF : X_XOR2
    port map (
      I0 => int_demo_led_in_addsub0000_10_CYINIT_3193,
      I1 => int_demo_led_in_addsub0000_10_F,
      O => int_demo_led_in_addsub0000_10_XORF_3195
    );
  int_demo_led_in_addsub0000_10_CYMUXF : X_MUX2
    port map (
      IA => int_demo_led_in_addsub0000_10_LOGIC_ZERO_3194,
      IB => int_demo_led_in_addsub0000_10_CYINIT_3193,
      SEL => int_demo_led_in_addsub0000_10_CYSELF_3184,
      O => Madd_int_demo_led_in_addsub0000_cy_10_Q
    );
  int_demo_led_in_addsub0000_10_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_8_CYMUXFAST_3149,
      O => int_demo_led_in_addsub0000_10_CYINIT_3193
    );
  int_demo_led_in_addsub0000_10_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_10_F,
      O => int_demo_led_in_addsub0000_10_CYSELF_3184
    );
  int_demo_led_in_addsub0000_10_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_addsub0000_10_XORG_3181,
      O => int_demo_led_in_addsub0000(11)
    );
  int_demo_led_in_addsub0000_10_XORG : X_XOR2
    port map (
      I0 => Madd_int_demo_led_in_addsub0000_cy_10_Q,
      I1 => int_demo_led_in_11_rt_3178,
      O => int_demo_led_in_addsub0000_10_XORG_3181
    );
  int_demo_led_in_11_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_11_rt_3178
    );
  C4_int_led_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_int_led_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3211
    );
  C4_int_led_cmp_eq0000_wg_cy_1_CYMUXF : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3211,
      IB => C4_int_led_cmp_eq0000_wg_cy_1_CYINIT_3225,
      SEL => C4_int_led_cmp_eq0000_wg_cy_1_CYSELF_3216,
      O => C4_int_led_cmp_eq0000_wg_cy(0)
    );
  C4_int_led_cmp_eq0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_cy_1_BXINV_3214,
      O => C4_int_led_cmp_eq0000_wg_cy_1_CYINIT_3225
    );
  C4_int_led_cmp_eq0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(0),
      O => C4_int_led_cmp_eq0000_wg_cy_1_CYSELF_3216
    );
  C4_int_led_cmp_eq0000_wg_cy_1_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => C4_int_led_cmp_eq0000_wg_cy_1_BXINV_3214
    );
  C4_int_led_cmp_eq0000_wg_cy_1_CYMUXG : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_1_LOGIC_ZERO_3211,
      IB => C4_int_led_cmp_eq0000_wg_cy(0),
      SEL => C4_int_led_cmp_eq0000_wg_cy_1_CYSELG_3205,
      O => C4_int_led_cmp_eq0000_wg_cy_1_CYMUXG_3213
    );
  C4_int_led_cmp_eq0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(1),
      O => C4_int_led_cmp_eq0000_wg_cy_1_CYSELG_3205
    );
  C4_int_led_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_int_led_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3243
    );
  C4_int_led_cmp_eq0000_wg_cy_3_CYMUXF2 : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3243,
      IB => C4_int_led_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3243,
      SEL => C4_int_led_cmp_eq0000_wg_cy_3_CYSELF_3249,
      O => C4_int_led_cmp_eq0000_wg_cy_3_CYMUXF2_3244
    );
  C4_int_led_cmp_eq0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(2),
      O => C4_int_led_cmp_eq0000_wg_cy_3_CYSELF_3249
    );
  C4_int_led_cmp_eq0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_cy_1_CYMUXG_3213,
      O => C4_int_led_cmp_eq0000_wg_cy_3_FASTCARRY_3246
    );
  C4_int_led_cmp_eq0000_wg_cy_3_CYAND : X_AND2
    port map (
      I0 => C4_int_led_cmp_eq0000_wg_cy_3_CYSELG_3237,
      I1 => C4_int_led_cmp_eq0000_wg_cy_3_CYSELF_3249,
      O => C4_int_led_cmp_eq0000_wg_cy_3_CYAND_3247
    );
  C4_int_led_cmp_eq0000_wg_cy_3_CYMUXFAST : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_3_CYMUXG2_3245,
      IB => C4_int_led_cmp_eq0000_wg_cy_3_FASTCARRY_3246,
      SEL => C4_int_led_cmp_eq0000_wg_cy_3_CYAND_3247,
      O => C4_int_led_cmp_eq0000_wg_cy_3_CYMUXFAST_3248
    );
  C4_int_led_cmp_eq0000_wg_cy_3_CYMUXG2 : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_3_LOGIC_ZERO_3243,
      IB => C4_int_led_cmp_eq0000_wg_cy_3_CYMUXF2_3244,
      SEL => C4_int_led_cmp_eq0000_wg_cy_3_CYSELG_3237,
      O => C4_int_led_cmp_eq0000_wg_cy_3_CYMUXG2_3245
    );
  C4_int_led_cmp_eq0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(3),
      O => C4_int_led_cmp_eq0000_wg_cy_3_CYSELG_3237
    );
  C4_int_led_cmp_eq0000_wg_cy_5_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_int_led_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3273
    );
  C4_int_led_cmp_eq0000_wg_cy_5_CYMUXF2 : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3273,
      IB => C4_int_led_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3273,
      SEL => C4_int_led_cmp_eq0000_wg_cy_5_CYSELF_3279,
      O => C4_int_led_cmp_eq0000_wg_cy_5_CYMUXF2_3274
    );
  C4_int_led_cmp_eq0000_wg_cy_5_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(4),
      O => C4_int_led_cmp_eq0000_wg_cy_5_CYSELF_3279
    );
  C4_int_led_cmp_eq0000_wg_cy_5_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_cy_3_CYMUXFAST_3248,
      O => C4_int_led_cmp_eq0000_wg_cy_5_FASTCARRY_3276
    );
  C4_int_led_cmp_eq0000_wg_cy_5_CYAND : X_AND2
    port map (
      I0 => C4_int_led_cmp_eq0000_wg_cy_5_CYSELG_3267,
      I1 => C4_int_led_cmp_eq0000_wg_cy_5_CYSELF_3279,
      O => C4_int_led_cmp_eq0000_wg_cy_5_CYAND_3277
    );
  C4_int_led_cmp_eq0000_wg_cy_5_CYMUXFAST : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_5_CYMUXG2_3275,
      IB => C4_int_led_cmp_eq0000_wg_cy_5_FASTCARRY_3276,
      SEL => C4_int_led_cmp_eq0000_wg_cy_5_CYAND_3277,
      O => C4_int_led_cmp_eq0000_wg_cy_5_CYMUXFAST_3278
    );
  C4_int_led_cmp_eq0000_wg_cy_5_CYMUXG2 : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_wg_cy_5_LOGIC_ZERO_3273,
      IB => C4_int_led_cmp_eq0000_wg_cy_5_CYMUXF2_3274,
      SEL => C4_int_led_cmp_eq0000_wg_cy_5_CYSELG_3267,
      O => C4_int_led_cmp_eq0000_wg_cy_5_CYMUXG2_3275
    );
  C4_int_led_cmp_eq0000_wg_cy_5_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(5),
      O => C4_int_led_cmp_eq0000_wg_cy_5_CYSELG_3267
    );
  C4_int_led_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => C4_counter(19),
      ADR1 => C4_counter(1),
      ADR2 => C4_counter(21),
      ADR3 => C4_counter(20),
      O => C4_int_led_cmp_eq0000_wg_lut(5)
    );
  C4_int_led_cmp_eq0000_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_int_led_cmp_eq0000_LOGIC_ZERO_3300
    );
  C4_int_led_cmp_eq0000_CYMUXF : X_MUX2
    port map (
      IA => C4_int_led_cmp_eq0000_LOGIC_ZERO_3300,
      IB => C4_int_led_cmp_eq0000_CYINIT_3299,
      SEL => C4_int_led_cmp_eq0000_CYSELF_3293,
      O => C4_int_led_cmp_eq0000
    );
  C4_int_led_cmp_eq0000_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_cy_5_CYMUXFAST_3278,
      O => C4_int_led_cmp_eq0000_CYINIT_3299
    );
  C4_int_led_cmp_eq0000_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000_wg_lut(6),
      O => C4_int_led_cmp_eq0000_CYSELF_3293
    );
  C4_int_led_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => C4_counter(24),
      ADR1 => C4_counter(22),
      ADR2 => C4_counter(0),
      ADR3 => C4_counter(23),
      O => C4_int_led_cmp_eq0000_wg_lut(6)
    );
  C1_int_output_0_LOGIC_ZERO : X_ZERO
    port map (
      O => C1_int_output_0_LOGIC_ZERO_3321
    );
  C1_int_output_0_LOGIC_ONE : X_ONE
    port map (
      O => C1_int_output_0_LOGIC_ONE_3343
    );
  C1_int_output_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_0_XORF_3344,
      O => C1_int_output_0_DXMUX_3346
    );
  C1_int_output_0_XORF : X_XOR2
    port map (
      I0 => C1_int_output_0_CYINIT_3342,
      I1 => C1_Mcount_int_output_lut(0),
      O => C1_int_output_0_XORF_3344
    );
  C1_int_output_0_CYMUXF : X_MUX2
    port map (
      IA => C1_int_output_0_LOGIC_ONE_3343,
      IB => C1_int_output_0_CYINIT_3342,
      SEL => C1_int_output_0_CYSELF_3333,
      O => C1_Mcount_int_output_cy_0_Q
    );
  C1_int_output_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_0_BXINV_3331,
      O => C1_int_output_0_CYINIT_3342
    );
  C1_int_output_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_lut(0),
      O => C1_int_output_0_CYSELF_3333
    );
  C1_int_output_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => C1_int_output_0_BXINV_3331
    );
  C1_int_output_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_0_XORG_3324,
      O => C1_int_output_0_DYMUX_3326
    );
  C1_int_output_0_XORG : X_XOR2
    port map (
      I0 => C1_Mcount_int_output_cy_0_Q,
      I1 => C1_int_output_0_G,
      O => C1_int_output_0_XORG_3324
    );
  C1_int_output_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_0_CYMUXG_3323,
      O => C1_Mcount_int_output_cy_1_Q
    );
  C1_int_output_0_CYMUXG : X_MUX2
    port map (
      IA => C1_int_output_0_LOGIC_ZERO_3321,
      IB => C1_Mcount_int_output_cy_0_Q,
      SEL => C1_int_output_0_CYSELG_3312,
      O => C1_int_output_0_CYMUXG_3323
    );
  C1_int_output_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_0_G,
      O => C1_int_output_0_CYSELG_3312
    );
  C1_int_output_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int_output_0_CLKINV_3310
    );
  C1_int_output_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int_output_0_CEINV_3309
    );
  C1_int_output_2_LOGIC_ZERO : X_ZERO
    port map (
      O => C1_int_output_2_LOGIC_ZERO_3371
    );
  C1_int_output_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_2_XORF_3396,
      O => C1_int_output_2_DXMUX_3398
    );
  C1_int_output_2_XORF : X_XOR2
    port map (
      I0 => C1_int_output_2_CYINIT_3395,
      I1 => C1_int_output_2_F,
      O => C1_int_output_2_XORF_3396
    );
  C1_int_output_2_CYMUXF : X_MUX2
    port map (
      IA => C1_int_output_2_LOGIC_ZERO_3371,
      IB => C1_int_output_2_CYINIT_3395,
      SEL => C1_int_output_2_CYSELF_3377,
      O => C1_Mcount_int_output_cy_2_Q
    );
  C1_int_output_2_CYMUXF2 : X_MUX2
    port map (
      IA => C1_int_output_2_LOGIC_ZERO_3371,
      IB => C1_int_output_2_LOGIC_ZERO_3371,
      SEL => C1_int_output_2_CYSELF_3377,
      O => C1_int_output_2_CYMUXF2_3372
    );
  C1_int_output_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_1_Q,
      O => C1_int_output_2_CYINIT_3395
    );
  C1_int_output_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_2_F,
      O => C1_int_output_2_CYSELF_3377
    );
  C1_int_output_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_2_XORG_3379,
      O => C1_int_output_2_DYMUX_3381
    );
  C1_int_output_2_XORG : X_XOR2
    port map (
      I0 => C1_Mcount_int_output_cy_2_Q,
      I1 => C1_int_output_2_G,
      O => C1_int_output_2_XORG_3379
    );
  C1_int_output_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_2_CYMUXFAST_3376,
      O => C1_Mcount_int_output_cy_3_Q
    );
  C1_int_output_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_1_Q,
      O => C1_int_output_2_FASTCARRY_3374
    );
  C1_int_output_2_CYAND : X_AND2
    port map (
      I0 => C1_int_output_2_CYSELG_3362,
      I1 => C1_int_output_2_CYSELF_3377,
      O => C1_int_output_2_CYAND_3375
    );
  C1_int_output_2_CYMUXFAST : X_MUX2
    port map (
      IA => C1_int_output_2_CYMUXG2_3373,
      IB => C1_int_output_2_FASTCARRY_3374,
      SEL => C1_int_output_2_CYAND_3375,
      O => C1_int_output_2_CYMUXFAST_3376
    );
  C1_int_output_2_CYMUXG2 : X_MUX2
    port map (
      IA => C1_int_output_2_LOGIC_ZERO_3371,
      IB => C1_int_output_2_CYMUXF2_3372,
      SEL => C1_int_output_2_CYSELG_3362,
      O => C1_int_output_2_CYMUXG2_3373
    );
  C1_int_output_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_2_G,
      O => C1_int_output_2_CYSELG_3362
    );
  C1_int_output_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int_output_2_CLKINV_3360
    );
  C1_int_output_2_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int_output_2_CEINV_3359
    );
  C1_int_output_4_LOGIC_ZERO : X_ZERO
    port map (
      O => C1_int_output_4_LOGIC_ZERO_3423
    );
  C1_int_output_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_4_XORF_3448,
      O => C1_int_output_4_DXMUX_3450
    );
  C1_int_output_4_XORF : X_XOR2
    port map (
      I0 => C1_int_output_4_CYINIT_3447,
      I1 => C1_int_output_4_F,
      O => C1_int_output_4_XORF_3448
    );
  C1_int_output_4_CYMUXF : X_MUX2
    port map (
      IA => C1_int_output_4_LOGIC_ZERO_3423,
      IB => C1_int_output_4_CYINIT_3447,
      SEL => C1_int_output_4_CYSELF_3429,
      O => C1_Mcount_int_output_cy_4_Q
    );
  C1_int_output_4_CYMUXF2 : X_MUX2
    port map (
      IA => C1_int_output_4_LOGIC_ZERO_3423,
      IB => C1_int_output_4_LOGIC_ZERO_3423,
      SEL => C1_int_output_4_CYSELF_3429,
      O => C1_int_output_4_CYMUXF2_3424
    );
  C1_int_output_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_3_Q,
      O => C1_int_output_4_CYINIT_3447
    );
  C1_int_output_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_4_F,
      O => C1_int_output_4_CYSELF_3429
    );
  C1_int_output_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_4_XORG_3431,
      O => C1_int_output_4_DYMUX_3433
    );
  C1_int_output_4_XORG : X_XOR2
    port map (
      I0 => C1_Mcount_int_output_cy_4_Q,
      I1 => C1_int_output_4_G,
      O => C1_int_output_4_XORG_3431
    );
  C1_int_output_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_4_CYMUXFAST_3428,
      O => C1_Mcount_int_output_cy_5_Q
    );
  C1_int_output_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_3_Q,
      O => C1_int_output_4_FASTCARRY_3426
    );
  C1_int_output_4_CYAND : X_AND2
    port map (
      I0 => C1_int_output_4_CYSELG_3414,
      I1 => C1_int_output_4_CYSELF_3429,
      O => C1_int_output_4_CYAND_3427
    );
  C1_int_output_4_CYMUXFAST : X_MUX2
    port map (
      IA => C1_int_output_4_CYMUXG2_3425,
      IB => C1_int_output_4_FASTCARRY_3426,
      SEL => C1_int_output_4_CYAND_3427,
      O => C1_int_output_4_CYMUXFAST_3428
    );
  C1_int_output_4_CYMUXG2 : X_MUX2
    port map (
      IA => C1_int_output_4_LOGIC_ZERO_3423,
      IB => C1_int_output_4_CYMUXF2_3424,
      SEL => C1_int_output_4_CYSELG_3414,
      O => C1_int_output_4_CYMUXG2_3425
    );
  C1_int_output_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_4_G,
      O => C1_int_output_4_CYSELG_3414
    );
  C1_int_output_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int_output_4_CLKINV_3412
    );
  C1_int_output_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int_output_4_CEINV_3411
    );
  C1_int_output_6_LOGIC_ZERO : X_ZERO
    port map (
      O => C1_int_output_6_LOGIC_ZERO_3475
    );
  C1_int_output_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_6_XORF_3500,
      O => C1_int_output_6_DXMUX_3502
    );
  C1_int_output_6_XORF : X_XOR2
    port map (
      I0 => C1_int_output_6_CYINIT_3499,
      I1 => C1_int_output_6_F,
      O => C1_int_output_6_XORF_3500
    );
  C1_int_output_6_CYMUXF : X_MUX2
    port map (
      IA => C1_int_output_6_LOGIC_ZERO_3475,
      IB => C1_int_output_6_CYINIT_3499,
      SEL => C1_int_output_6_CYSELF_3481,
      O => C1_Mcount_int_output_cy_6_Q
    );
  C1_int_output_6_CYMUXF2 : X_MUX2
    port map (
      IA => C1_int_output_6_LOGIC_ZERO_3475,
      IB => C1_int_output_6_LOGIC_ZERO_3475,
      SEL => C1_int_output_6_CYSELF_3481,
      O => C1_int_output_6_CYMUXF2_3476
    );
  C1_int_output_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_5_Q,
      O => C1_int_output_6_CYINIT_3499
    );
  C1_int_output_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_6_F,
      O => C1_int_output_6_CYSELF_3481
    );
  C1_int_output_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_6_XORG_3483,
      O => C1_int_output_6_DYMUX_3485
    );
  C1_int_output_6_XORG : X_XOR2
    port map (
      I0 => C1_Mcount_int_output_cy_6_Q,
      I1 => C1_int_output_6_G,
      O => C1_int_output_6_XORG_3483
    );
  C1_int_output_6_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_6_CYMUXFAST_3480,
      O => C1_Mcount_int_output_cy_7_Q
    );
  C1_int_output_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_5_Q,
      O => C1_int_output_6_FASTCARRY_3478
    );
  C1_int_output_6_CYAND : X_AND2
    port map (
      I0 => C1_int_output_6_CYSELG_3466,
      I1 => C1_int_output_6_CYSELF_3481,
      O => C1_int_output_6_CYAND_3479
    );
  C1_int_output_6_CYMUXFAST : X_MUX2
    port map (
      IA => C1_int_output_6_CYMUXG2_3477,
      IB => C1_int_output_6_FASTCARRY_3478,
      SEL => C1_int_output_6_CYAND_3479,
      O => C1_int_output_6_CYMUXFAST_3480
    );
  C1_int_output_6_CYMUXG2 : X_MUX2
    port map (
      IA => C1_int_output_6_LOGIC_ZERO_3475,
      IB => C1_int_output_6_CYMUXF2_3476,
      SEL => C1_int_output_6_CYSELG_3466,
      O => C1_int_output_6_CYMUXG2_3477
    );
  C1_int_output_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_6_G,
      O => C1_int_output_6_CYSELG_3466
    );
  C1_int_output_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int_output_6_CLKINV_3464
    );
  C1_int_output_6_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int_output_6_CEINV_3463
    );
  C1_int_output_8_LOGIC_ZERO : X_ZERO
    port map (
      O => C1_int_output_8_LOGIC_ZERO_3527
    );
  C1_int_output_8_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_8_XORF_3552,
      O => C1_int_output_8_DXMUX_3554
    );
  C1_int_output_8_XORF : X_XOR2
    port map (
      I0 => C1_int_output_8_CYINIT_3551,
      I1 => C1_int_output_8_F,
      O => C1_int_output_8_XORF_3552
    );
  C1_int_output_8_CYMUXF : X_MUX2
    port map (
      IA => C1_int_output_8_LOGIC_ZERO_3527,
      IB => C1_int_output_8_CYINIT_3551,
      SEL => C1_int_output_8_CYSELF_3533,
      O => C1_Mcount_int_output_cy_8_Q
    );
  C1_int_output_8_CYMUXF2 : X_MUX2
    port map (
      IA => C1_int_output_8_LOGIC_ZERO_3527,
      IB => C1_int_output_8_LOGIC_ZERO_3527,
      SEL => C1_int_output_8_CYSELF_3533,
      O => C1_int_output_8_CYMUXF2_3528
    );
  C1_int_output_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_7_Q,
      O => C1_int_output_8_CYINIT_3551
    );
  C1_int_output_8_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_8_F,
      O => C1_int_output_8_CYSELF_3533
    );
  C1_int_output_8_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_8_XORG_3535,
      O => C1_int_output_8_DYMUX_3537
    );
  C1_int_output_8_XORG : X_XOR2
    port map (
      I0 => C1_Mcount_int_output_cy_8_Q,
      I1 => C1_int_output_8_G,
      O => C1_int_output_8_XORG_3535
    );
  C1_int_output_8_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Mcount_int_output_cy_7_Q,
      O => C1_int_output_8_FASTCARRY_3530
    );
  C1_int_output_8_CYAND : X_AND2
    port map (
      I0 => C1_int_output_8_CYSELG_3518,
      I1 => C1_int_output_8_CYSELF_3533,
      O => C1_int_output_8_CYAND_3531
    );
  C1_int_output_8_CYMUXFAST : X_MUX2
    port map (
      IA => C1_int_output_8_CYMUXG2_3529,
      IB => C1_int_output_8_FASTCARRY_3530,
      SEL => C1_int_output_8_CYAND_3531,
      O => C1_int_output_8_CYMUXFAST_3532
    );
  C1_int_output_8_CYMUXG2 : X_MUX2
    port map (
      IA => C1_int_output_8_LOGIC_ZERO_3527,
      IB => C1_int_output_8_CYMUXF2_3528,
      SEL => C1_int_output_8_CYSELG_3518,
      O => C1_int_output_8_CYMUXG2_3529
    );
  C1_int_output_8_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_8_G,
      O => C1_int_output_8_CYSELG_3518
    );
  C1_int_output_8_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int_output_8_CLKINV_3516
    );
  C1_int_output_8_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int_output_8_CEINV_3515
    );
  C1_int_output_10_LOGIC_ZERO : X_ZERO
    port map (
      O => C1_int_output_10_LOGIC_ZERO_3596
    );
  C1_int_output_10_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_10_XORF_3597,
      O => C1_int_output_10_DXMUX_3599
    );
  C1_int_output_10_XORF : X_XOR2
    port map (
      I0 => C1_int_output_10_CYINIT_3595,
      I1 => C1_int_output_10_F,
      O => C1_int_output_10_XORF_3597
    );
  C1_int_output_10_CYMUXF : X_MUX2
    port map (
      IA => C1_int_output_10_LOGIC_ZERO_3596,
      IB => C1_int_output_10_CYINIT_3595,
      SEL => C1_int_output_10_CYSELF_3586,
      O => C1_Mcount_int_output_cy_10_Q
    );
  C1_int_output_10_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_8_CYMUXFAST_3532,
      O => C1_int_output_10_CYINIT_3595
    );
  C1_int_output_10_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_10_F,
      O => C1_int_output_10_CYSELF_3586
    );
  C1_int_output_10_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int_output_10_XORG_3578,
      O => C1_int_output_10_DYMUX_3580
    );
  C1_int_output_10_XORG : X_XOR2
    port map (
      I0 => C1_Mcount_int_output_cy_10_Q,
      I1 => C1_int_output_11_rt_3575,
      O => C1_int_output_10_XORG_3578
    );
  C1_int_output_10_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int_output_10_CLKINV_3567
    );
  C1_int_output_10_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int_output_10_CEINV_3566
    );
  C4_counter_0_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_0_LOGIC_ZERO_3624
    );
  C4_counter_0_LOGIC_ONE : X_ONE
    port map (
      O => C4_counter_0_LOGIC_ONE_3646
    );
  C4_counter_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_0_XORF_3647,
      O => C4_counter_0_DXMUX_3649
    );
  C4_counter_0_XORF : X_XOR2
    port map (
      I0 => C4_counter_0_CYINIT_3645,
      I1 => C4_Mcount_counter_lut(0),
      O => C4_counter_0_XORF_3647
    );
  C4_counter_0_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_0_LOGIC_ONE_3646,
      IB => C4_counter_0_CYINIT_3645,
      SEL => C4_counter_0_CYSELF_3636,
      O => C4_Mcount_counter_cy(0)
    );
  C4_counter_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_0_BXINV_3634,
      O => C4_counter_0_CYINIT_3645
    );
  C4_counter_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_lut(0),
      O => C4_counter_0_CYSELF_3636
    );
  C4_counter_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => C4_counter_0_BXINV_3634
    );
  C4_counter_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_0_XORG_3627,
      O => C4_counter_0_DYMUX_3629
    );
  C4_counter_0_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(0),
      I1 => C4_counter_0_G,
      O => C4_counter_0_XORG_3627
    );
  C4_counter_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_0_CYMUXG_3626,
      O => C4_Mcount_counter_cy(1)
    );
  C4_counter_0_CYMUXG : X_MUX2
    port map (
      IA => C4_counter_0_LOGIC_ZERO_3624,
      IB => C4_Mcount_counter_cy(0),
      SEL => C4_counter_0_CYSELG_3615,
      O => C4_counter_0_CYMUXG_3626
    );
  C4_counter_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_0_G,
      O => C4_counter_0_CYSELG_3615
    );
  C4_counter_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_0_SRINV_3613
    );
  C4_counter_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_0_CLKINV_3612
    );
  C4_counter_2_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_2_LOGIC_ZERO_3674
    );
  C4_counter_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_2_XORF_3699,
      O => C4_counter_2_DXMUX_3701
    );
  C4_counter_2_XORF : X_XOR2
    port map (
      I0 => C4_counter_2_CYINIT_3698,
      I1 => C4_counter_2_F,
      O => C4_counter_2_XORF_3699
    );
  C4_counter_2_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_2_LOGIC_ZERO_3674,
      IB => C4_counter_2_CYINIT_3698,
      SEL => C4_counter_2_CYSELF_3680,
      O => C4_Mcount_counter_cy(2)
    );
  C4_counter_2_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_2_LOGIC_ZERO_3674,
      IB => C4_counter_2_LOGIC_ZERO_3674,
      SEL => C4_counter_2_CYSELF_3680,
      O => C4_counter_2_CYMUXF2_3675
    );
  C4_counter_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(1),
      O => C4_counter_2_CYINIT_3698
    );
  C4_counter_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_2_F,
      O => C4_counter_2_CYSELF_3680
    );
  C4_counter_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_2_XORG_3682,
      O => C4_counter_2_DYMUX_3684
    );
  C4_counter_2_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(2),
      I1 => C4_counter_2_G,
      O => C4_counter_2_XORG_3682
    );
  C4_counter_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_2_CYMUXFAST_3679,
      O => C4_Mcount_counter_cy(3)
    );
  C4_counter_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(1),
      O => C4_counter_2_FASTCARRY_3677
    );
  C4_counter_2_CYAND : X_AND2
    port map (
      I0 => C4_counter_2_CYSELG_3665,
      I1 => C4_counter_2_CYSELF_3680,
      O => C4_counter_2_CYAND_3678
    );
  C4_counter_2_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_2_CYMUXG2_3676,
      IB => C4_counter_2_FASTCARRY_3677,
      SEL => C4_counter_2_CYAND_3678,
      O => C4_counter_2_CYMUXFAST_3679
    );
  C4_counter_2_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_2_LOGIC_ZERO_3674,
      IB => C4_counter_2_CYMUXF2_3675,
      SEL => C4_counter_2_CYSELG_3665,
      O => C4_counter_2_CYMUXG2_3676
    );
  C4_counter_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_2_G,
      O => C4_counter_2_CYSELG_3665
    );
  C4_counter_2_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_2_SRINV_3663
    );
  C4_counter_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_2_CLKINV_3662
    );
  C4_counter_4_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_4_LOGIC_ZERO_3726
    );
  C4_counter_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_4_XORF_3751,
      O => C4_counter_4_DXMUX_3753
    );
  C4_counter_4_XORF : X_XOR2
    port map (
      I0 => C4_counter_4_CYINIT_3750,
      I1 => C4_counter_4_F,
      O => C4_counter_4_XORF_3751
    );
  C4_counter_4_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_4_LOGIC_ZERO_3726,
      IB => C4_counter_4_CYINIT_3750,
      SEL => C4_counter_4_CYSELF_3732,
      O => C4_Mcount_counter_cy(4)
    );
  C4_counter_4_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_4_LOGIC_ZERO_3726,
      IB => C4_counter_4_LOGIC_ZERO_3726,
      SEL => C4_counter_4_CYSELF_3732,
      O => C4_counter_4_CYMUXF2_3727
    );
  C4_counter_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(3),
      O => C4_counter_4_CYINIT_3750
    );
  C4_counter_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_4_F,
      O => C4_counter_4_CYSELF_3732
    );
  C4_counter_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_4_XORG_3734,
      O => C4_counter_4_DYMUX_3736
    );
  C4_counter_4_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(4),
      I1 => C4_counter_4_G,
      O => C4_counter_4_XORG_3734
    );
  C4_counter_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_4_CYMUXFAST_3731,
      O => C4_Mcount_counter_cy(5)
    );
  C4_counter_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(3),
      O => C4_counter_4_FASTCARRY_3729
    );
  C4_counter_4_CYAND : X_AND2
    port map (
      I0 => C4_counter_4_CYSELG_3717,
      I1 => C4_counter_4_CYSELF_3732,
      O => C4_counter_4_CYAND_3730
    );
  C4_counter_4_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_4_CYMUXG2_3728,
      IB => C4_counter_4_FASTCARRY_3729,
      SEL => C4_counter_4_CYAND_3730,
      O => C4_counter_4_CYMUXFAST_3731
    );
  C4_counter_4_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_4_LOGIC_ZERO_3726,
      IB => C4_counter_4_CYMUXF2_3727,
      SEL => C4_counter_4_CYSELG_3717,
      O => C4_counter_4_CYMUXG2_3728
    );
  C4_counter_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_4_G,
      O => C4_counter_4_CYSELG_3717
    );
  C4_counter_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_4_SRINV_3715
    );
  C4_counter_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_4_CLKINV_3714
    );
  C4_counter_6_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_6_LOGIC_ZERO_3778
    );
  C4_counter_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_6_XORF_3803,
      O => C4_counter_6_DXMUX_3805
    );
  C4_counter_6_XORF : X_XOR2
    port map (
      I0 => C4_counter_6_CYINIT_3802,
      I1 => C4_counter_6_F,
      O => C4_counter_6_XORF_3803
    );
  C4_counter_6_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_6_LOGIC_ZERO_3778,
      IB => C4_counter_6_CYINIT_3802,
      SEL => C4_counter_6_CYSELF_3784,
      O => C4_Mcount_counter_cy(6)
    );
  C4_counter_6_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_6_LOGIC_ZERO_3778,
      IB => C4_counter_6_LOGIC_ZERO_3778,
      SEL => C4_counter_6_CYSELF_3784,
      O => C4_counter_6_CYMUXF2_3779
    );
  C4_counter_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(5),
      O => C4_counter_6_CYINIT_3802
    );
  C4_counter_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_6_F,
      O => C4_counter_6_CYSELF_3784
    );
  C4_counter_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_6_XORG_3786,
      O => C4_counter_6_DYMUX_3788
    );
  C4_counter_6_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(6),
      I1 => C4_counter_6_G,
      O => C4_counter_6_XORG_3786
    );
  C4_counter_6_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_6_CYMUXFAST_3783,
      O => C4_Mcount_counter_cy(7)
    );
  C4_counter_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(5),
      O => C4_counter_6_FASTCARRY_3781
    );
  C4_counter_6_CYAND : X_AND2
    port map (
      I0 => C4_counter_6_CYSELG_3769,
      I1 => C4_counter_6_CYSELF_3784,
      O => C4_counter_6_CYAND_3782
    );
  C4_counter_6_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_6_CYMUXG2_3780,
      IB => C4_counter_6_FASTCARRY_3781,
      SEL => C4_counter_6_CYAND_3782,
      O => C4_counter_6_CYMUXFAST_3783
    );
  C4_counter_6_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_6_LOGIC_ZERO_3778,
      IB => C4_counter_6_CYMUXF2_3779,
      SEL => C4_counter_6_CYSELG_3769,
      O => C4_counter_6_CYMUXG2_3780
    );
  C4_counter_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_6_G,
      O => C4_counter_6_CYSELG_3769
    );
  C4_counter_6_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_6_SRINV_3767
    );
  C4_counter_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_6_CLKINV_3766
    );
  C4_counter_8_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_8_LOGIC_ZERO_3830
    );
  C4_counter_8_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_8_XORF_3855,
      O => C4_counter_8_DXMUX_3857
    );
  C4_counter_8_XORF : X_XOR2
    port map (
      I0 => C4_counter_8_CYINIT_3854,
      I1 => C4_counter_8_F,
      O => C4_counter_8_XORF_3855
    );
  C4_counter_8_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_8_LOGIC_ZERO_3830,
      IB => C4_counter_8_CYINIT_3854,
      SEL => C4_counter_8_CYSELF_3836,
      O => C4_Mcount_counter_cy(8)
    );
  C4_counter_8_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_8_LOGIC_ZERO_3830,
      IB => C4_counter_8_LOGIC_ZERO_3830,
      SEL => C4_counter_8_CYSELF_3836,
      O => C4_counter_8_CYMUXF2_3831
    );
  C4_counter_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(7),
      O => C4_counter_8_CYINIT_3854
    );
  C4_counter_8_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_8_F,
      O => C4_counter_8_CYSELF_3836
    );
  C4_counter_8_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_8_XORG_3838,
      O => C4_counter_8_DYMUX_3840
    );
  C4_counter_8_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(8),
      I1 => C4_counter_8_G,
      O => C4_counter_8_XORG_3838
    );
  C4_counter_8_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_8_CYMUXFAST_3835,
      O => C4_Mcount_counter_cy(9)
    );
  C4_counter_8_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(7),
      O => C4_counter_8_FASTCARRY_3833
    );
  C4_counter_8_CYAND : X_AND2
    port map (
      I0 => C4_counter_8_CYSELG_3821,
      I1 => C4_counter_8_CYSELF_3836,
      O => C4_counter_8_CYAND_3834
    );
  C4_counter_8_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_8_CYMUXG2_3832,
      IB => C4_counter_8_FASTCARRY_3833,
      SEL => C4_counter_8_CYAND_3834,
      O => C4_counter_8_CYMUXFAST_3835
    );
  C4_counter_8_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_8_LOGIC_ZERO_3830,
      IB => C4_counter_8_CYMUXF2_3831,
      SEL => C4_counter_8_CYSELG_3821,
      O => C4_counter_8_CYMUXG2_3832
    );
  C4_counter_8_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_8_G,
      O => C4_counter_8_CYSELG_3821
    );
  C4_counter_8_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_8_SRINV_3819
    );
  C4_counter_8_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_8_CLKINV_3818
    );
  C4_counter_10_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_10_LOGIC_ZERO_3882
    );
  C4_counter_10_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_10_XORF_3907,
      O => C4_counter_10_DXMUX_3909
    );
  C4_counter_10_XORF : X_XOR2
    port map (
      I0 => C4_counter_10_CYINIT_3906,
      I1 => C4_counter_10_F,
      O => C4_counter_10_XORF_3907
    );
  C4_counter_10_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_10_LOGIC_ZERO_3882,
      IB => C4_counter_10_CYINIT_3906,
      SEL => C4_counter_10_CYSELF_3888,
      O => C4_Mcount_counter_cy(10)
    );
  C4_counter_10_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_10_LOGIC_ZERO_3882,
      IB => C4_counter_10_LOGIC_ZERO_3882,
      SEL => C4_counter_10_CYSELF_3888,
      O => C4_counter_10_CYMUXF2_3883
    );
  C4_counter_10_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(9),
      O => C4_counter_10_CYINIT_3906
    );
  C4_counter_10_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_10_F,
      O => C4_counter_10_CYSELF_3888
    );
  C4_counter_10_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_10_XORG_3890,
      O => C4_counter_10_DYMUX_3892
    );
  C4_counter_10_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(10),
      I1 => C4_counter_10_G,
      O => C4_counter_10_XORG_3890
    );
  C4_counter_10_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_10_CYMUXFAST_3887,
      O => C4_Mcount_counter_cy(11)
    );
  C4_counter_10_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(9),
      O => C4_counter_10_FASTCARRY_3885
    );
  C4_counter_10_CYAND : X_AND2
    port map (
      I0 => C4_counter_10_CYSELG_3873,
      I1 => C4_counter_10_CYSELF_3888,
      O => C4_counter_10_CYAND_3886
    );
  C4_counter_10_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_10_CYMUXG2_3884,
      IB => C4_counter_10_FASTCARRY_3885,
      SEL => C4_counter_10_CYAND_3886,
      O => C4_counter_10_CYMUXFAST_3887
    );
  C4_counter_10_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_10_LOGIC_ZERO_3882,
      IB => C4_counter_10_CYMUXF2_3883,
      SEL => C4_counter_10_CYSELG_3873,
      O => C4_counter_10_CYMUXG2_3884
    );
  C4_counter_10_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_10_G,
      O => C4_counter_10_CYSELG_3873
    );
  C4_counter_10_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_10_SRINV_3871
    );
  C4_counter_10_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_10_CLKINV_3870
    );
  C4_counter_12_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_12_LOGIC_ZERO_3934
    );
  C4_counter_12_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_12_XORF_3959,
      O => C4_counter_12_DXMUX_3961
    );
  C4_counter_12_XORF : X_XOR2
    port map (
      I0 => C4_counter_12_CYINIT_3958,
      I1 => C4_counter_12_F,
      O => C4_counter_12_XORF_3959
    );
  C4_counter_12_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_12_LOGIC_ZERO_3934,
      IB => C4_counter_12_CYINIT_3958,
      SEL => C4_counter_12_CYSELF_3940,
      O => C4_Mcount_counter_cy(12)
    );
  C4_counter_12_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_12_LOGIC_ZERO_3934,
      IB => C4_counter_12_LOGIC_ZERO_3934,
      SEL => C4_counter_12_CYSELF_3940,
      O => C4_counter_12_CYMUXF2_3935
    );
  C4_counter_12_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(11),
      O => C4_counter_12_CYINIT_3958
    );
  C4_counter_12_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_12_F,
      O => C4_counter_12_CYSELF_3940
    );
  C4_counter_12_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_12_XORG_3942,
      O => C4_counter_12_DYMUX_3944
    );
  C4_counter_12_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(12),
      I1 => C4_counter_12_G,
      O => C4_counter_12_XORG_3942
    );
  C4_counter_12_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_12_CYMUXFAST_3939,
      O => C4_Mcount_counter_cy(13)
    );
  C4_counter_12_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(11),
      O => C4_counter_12_FASTCARRY_3937
    );
  C4_counter_12_CYAND : X_AND2
    port map (
      I0 => C4_counter_12_CYSELG_3925,
      I1 => C4_counter_12_CYSELF_3940,
      O => C4_counter_12_CYAND_3938
    );
  C4_counter_12_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_12_CYMUXG2_3936,
      IB => C4_counter_12_FASTCARRY_3937,
      SEL => C4_counter_12_CYAND_3938,
      O => C4_counter_12_CYMUXFAST_3939
    );
  C4_counter_12_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_12_LOGIC_ZERO_3934,
      IB => C4_counter_12_CYMUXF2_3935,
      SEL => C4_counter_12_CYSELG_3925,
      O => C4_counter_12_CYMUXG2_3936
    );
  C4_counter_12_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_12_G,
      O => C4_counter_12_CYSELG_3925
    );
  C4_counter_12_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_12_SRINV_3923
    );
  C4_counter_12_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_12_CLKINV_3922
    );
  C4_counter_14_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_14_LOGIC_ZERO_3986
    );
  C4_counter_14_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_14_XORF_4011,
      O => C4_counter_14_DXMUX_4013
    );
  C4_counter_14_XORF : X_XOR2
    port map (
      I0 => C4_counter_14_CYINIT_4010,
      I1 => C4_counter_14_F,
      O => C4_counter_14_XORF_4011
    );
  C4_counter_14_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_14_LOGIC_ZERO_3986,
      IB => C4_counter_14_CYINIT_4010,
      SEL => C4_counter_14_CYSELF_3992,
      O => C4_Mcount_counter_cy(14)
    );
  C4_counter_14_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_14_LOGIC_ZERO_3986,
      IB => C4_counter_14_LOGIC_ZERO_3986,
      SEL => C4_counter_14_CYSELF_3992,
      O => C4_counter_14_CYMUXF2_3987
    );
  C4_counter_14_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(13),
      O => C4_counter_14_CYINIT_4010
    );
  C4_counter_14_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_14_F,
      O => C4_counter_14_CYSELF_3992
    );
  C4_counter_14_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_14_XORG_3994,
      O => C4_counter_14_DYMUX_3996
    );
  C4_counter_14_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(14),
      I1 => C4_counter_14_G,
      O => C4_counter_14_XORG_3994
    );
  C4_counter_14_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_14_CYMUXFAST_3991,
      O => C4_Mcount_counter_cy(15)
    );
  C4_counter_14_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(13),
      O => C4_counter_14_FASTCARRY_3989
    );
  C4_counter_14_CYAND : X_AND2
    port map (
      I0 => C4_counter_14_CYSELG_3977,
      I1 => C4_counter_14_CYSELF_3992,
      O => C4_counter_14_CYAND_3990
    );
  C4_counter_14_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_14_CYMUXG2_3988,
      IB => C4_counter_14_FASTCARRY_3989,
      SEL => C4_counter_14_CYAND_3990,
      O => C4_counter_14_CYMUXFAST_3991
    );
  C4_counter_14_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_14_LOGIC_ZERO_3986,
      IB => C4_counter_14_CYMUXF2_3987,
      SEL => C4_counter_14_CYSELG_3977,
      O => C4_counter_14_CYMUXG2_3988
    );
  C4_counter_14_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_14_G,
      O => C4_counter_14_CYSELG_3977
    );
  C4_counter_14_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_14_SRINV_3975
    );
  C4_counter_14_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_14_CLKINV_3974
    );
  C4_counter_16_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_16_LOGIC_ZERO_4038
    );
  C4_counter_16_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_16_XORF_4063,
      O => C4_counter_16_DXMUX_4065
    );
  C4_counter_16_XORF : X_XOR2
    port map (
      I0 => C4_counter_16_CYINIT_4062,
      I1 => C4_counter_16_F,
      O => C4_counter_16_XORF_4063
    );
  C4_counter_16_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_16_LOGIC_ZERO_4038,
      IB => C4_counter_16_CYINIT_4062,
      SEL => C4_counter_16_CYSELF_4044,
      O => C4_Mcount_counter_cy(16)
    );
  C4_counter_16_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_16_LOGIC_ZERO_4038,
      IB => C4_counter_16_LOGIC_ZERO_4038,
      SEL => C4_counter_16_CYSELF_4044,
      O => C4_counter_16_CYMUXF2_4039
    );
  C4_counter_16_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(15),
      O => C4_counter_16_CYINIT_4062
    );
  C4_counter_16_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_16_F,
      O => C4_counter_16_CYSELF_4044
    );
  C4_counter_16_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_16_XORG_4046,
      O => C4_counter_16_DYMUX_4048
    );
  C4_counter_16_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(16),
      I1 => C4_counter_16_G,
      O => C4_counter_16_XORG_4046
    );
  C4_counter_16_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_16_CYMUXFAST_4043,
      O => C4_Mcount_counter_cy(17)
    );
  C4_counter_16_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(15),
      O => C4_counter_16_FASTCARRY_4041
    );
  C4_counter_16_CYAND : X_AND2
    port map (
      I0 => C4_counter_16_CYSELG_4029,
      I1 => C4_counter_16_CYSELF_4044,
      O => C4_counter_16_CYAND_4042
    );
  C4_counter_16_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_16_CYMUXG2_4040,
      IB => C4_counter_16_FASTCARRY_4041,
      SEL => C4_counter_16_CYAND_4042,
      O => C4_counter_16_CYMUXFAST_4043
    );
  C4_counter_16_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_16_LOGIC_ZERO_4038,
      IB => C4_counter_16_CYMUXF2_4039,
      SEL => C4_counter_16_CYSELG_4029,
      O => C4_counter_16_CYMUXG2_4040
    );
  C4_counter_16_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_16_G,
      O => C4_counter_16_CYSELG_4029
    );
  C4_counter_16_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_16_SRINV_4027
    );
  C4_counter_16_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_16_CLKINV_4026
    );
  C4_counter_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_18_DYMUX_4100,
      CE => VCC,
      CLK => C4_counter_18_CLKINV_4078,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_18_SRINV_4079,
      O => C4_counter(19)
    );
  C4_counter_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_18_DXMUX_4117,
      CE => VCC,
      CLK => C4_counter_18_CLKINV_4078,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_18_SRINV_4079,
      O => C4_counter(18)
    );
  C4_counter_18_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_18_LOGIC_ZERO_4090
    );
  C4_counter_18_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_18_XORF_4115,
      O => C4_counter_18_DXMUX_4117
    );
  C4_counter_18_XORF : X_XOR2
    port map (
      I0 => C4_counter_18_CYINIT_4114,
      I1 => C4_counter_18_F,
      O => C4_counter_18_XORF_4115
    );
  C4_counter_18_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_18_LOGIC_ZERO_4090,
      IB => C4_counter_18_CYINIT_4114,
      SEL => C4_counter_18_CYSELF_4096,
      O => C4_Mcount_counter_cy(18)
    );
  C4_counter_18_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_18_LOGIC_ZERO_4090,
      IB => C4_counter_18_LOGIC_ZERO_4090,
      SEL => C4_counter_18_CYSELF_4096,
      O => C4_counter_18_CYMUXF2_4091
    );
  C4_counter_18_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(17),
      O => C4_counter_18_CYINIT_4114
    );
  C4_counter_18_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_18_F,
      O => C4_counter_18_CYSELF_4096
    );
  C4_counter_18_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_18_XORG_4098,
      O => C4_counter_18_DYMUX_4100
    );
  C4_counter_18_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(18),
      I1 => C4_counter_18_G,
      O => C4_counter_18_XORG_4098
    );
  C4_counter_18_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_18_CYMUXFAST_4095,
      O => C4_Mcount_counter_cy(19)
    );
  C4_counter_18_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(17),
      O => C4_counter_18_FASTCARRY_4093
    );
  C4_counter_18_CYAND : X_AND2
    port map (
      I0 => C4_counter_18_CYSELG_4081,
      I1 => C4_counter_18_CYSELF_4096,
      O => C4_counter_18_CYAND_4094
    );
  C4_counter_18_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_18_CYMUXG2_4092,
      IB => C4_counter_18_FASTCARRY_4093,
      SEL => C4_counter_18_CYAND_4094,
      O => C4_counter_18_CYMUXFAST_4095
    );
  C4_counter_18_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_18_LOGIC_ZERO_4090,
      IB => C4_counter_18_CYMUXF2_4091,
      SEL => C4_counter_18_CYSELG_4081,
      O => C4_counter_18_CYMUXG2_4092
    );
  C4_counter_18_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_18_G,
      O => C4_counter_18_CYSELG_4081
    );
  C4_counter_18_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_18_SRINV_4079
    );
  C4_counter_18_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_18_CLKINV_4078
    );
  C4_counter_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_20_DYMUX_4152,
      CE => VCC,
      CLK => C4_counter_20_CLKINV_4130,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_20_SRINV_4131,
      O => C4_counter(21)
    );
  C4_counter_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_20_DXMUX_4169,
      CE => VCC,
      CLK => C4_counter_20_CLKINV_4130,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_20_SRINV_4131,
      O => C4_counter(20)
    );
  C4_counter_20_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_20_LOGIC_ZERO_4142
    );
  C4_counter_20_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_20_XORF_4167,
      O => C4_counter_20_DXMUX_4169
    );
  C4_counter_20_XORF : X_XOR2
    port map (
      I0 => C4_counter_20_CYINIT_4166,
      I1 => C4_counter_20_F,
      O => C4_counter_20_XORF_4167
    );
  C4_counter_20_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_20_LOGIC_ZERO_4142,
      IB => C4_counter_20_CYINIT_4166,
      SEL => C4_counter_20_CYSELF_4148,
      O => C4_Mcount_counter_cy(20)
    );
  C4_counter_20_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_20_LOGIC_ZERO_4142,
      IB => C4_counter_20_LOGIC_ZERO_4142,
      SEL => C4_counter_20_CYSELF_4148,
      O => C4_counter_20_CYMUXF2_4143
    );
  C4_counter_20_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(19),
      O => C4_counter_20_CYINIT_4166
    );
  C4_counter_20_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_20_F,
      O => C4_counter_20_CYSELF_4148
    );
  C4_counter_20_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_20_XORG_4150,
      O => C4_counter_20_DYMUX_4152
    );
  C4_counter_20_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(20),
      I1 => C4_counter_20_G,
      O => C4_counter_20_XORG_4150
    );
  C4_counter_20_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_20_CYMUXFAST_4147,
      O => C4_Mcount_counter_cy(21)
    );
  C4_counter_20_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(19),
      O => C4_counter_20_FASTCARRY_4145
    );
  C4_counter_20_CYAND : X_AND2
    port map (
      I0 => C4_counter_20_CYSELG_4133,
      I1 => C4_counter_20_CYSELF_4148,
      O => C4_counter_20_CYAND_4146
    );
  C4_counter_20_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_20_CYMUXG2_4144,
      IB => C4_counter_20_FASTCARRY_4145,
      SEL => C4_counter_20_CYAND_4146,
      O => C4_counter_20_CYMUXFAST_4147
    );
  C4_counter_20_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_20_LOGIC_ZERO_4142,
      IB => C4_counter_20_CYMUXF2_4143,
      SEL => C4_counter_20_CYSELG_4133,
      O => C4_counter_20_CYMUXG2_4144
    );
  C4_counter_20_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_20_G,
      O => C4_counter_20_CYSELG_4133
    );
  C4_counter_20_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_20_SRINV_4131
    );
  C4_counter_20_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_20_CLKINV_4130
    );
  C4_counter_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_22_DYMUX_4204,
      CE => VCC,
      CLK => C4_counter_22_CLKINV_4182,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_22_SRINV_4183,
      O => C4_counter(23)
    );
  C4_counter_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_22_DXMUX_4221,
      CE => VCC,
      CLK => C4_counter_22_CLKINV_4182,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_22_SRINV_4183,
      O => C4_counter(22)
    );
  C4_counter_22_LOGIC_ZERO : X_ZERO
    port map (
      O => C4_counter_22_LOGIC_ZERO_4194
    );
  C4_counter_22_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_22_XORF_4219,
      O => C4_counter_22_DXMUX_4221
    );
  C4_counter_22_XORF : X_XOR2
    port map (
      I0 => C4_counter_22_CYINIT_4218,
      I1 => C4_counter_22_F,
      O => C4_counter_22_XORF_4219
    );
  C4_counter_22_CYMUXF : X_MUX2
    port map (
      IA => C4_counter_22_LOGIC_ZERO_4194,
      IB => C4_counter_22_CYINIT_4218,
      SEL => C4_counter_22_CYSELF_4200,
      O => C4_Mcount_counter_cy(22)
    );
  C4_counter_22_CYMUXF2 : X_MUX2
    port map (
      IA => C4_counter_22_LOGIC_ZERO_4194,
      IB => C4_counter_22_LOGIC_ZERO_4194,
      SEL => C4_counter_22_CYSELF_4200,
      O => C4_counter_22_CYMUXF2_4195
    );
  C4_counter_22_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(21),
      O => C4_counter_22_CYINIT_4218
    );
  C4_counter_22_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_22_F,
      O => C4_counter_22_CYSELF_4200
    );
  C4_counter_22_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_22_XORG_4202,
      O => C4_counter_22_DYMUX_4204
    );
  C4_counter_22_XORG : X_XOR2
    port map (
      I0 => C4_Mcount_counter_cy(22),
      I1 => C4_counter_22_G,
      O => C4_counter_22_XORG_4202
    );
  C4_counter_22_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_Mcount_counter_cy(21),
      O => C4_counter_22_FASTCARRY_4197
    );
  C4_counter_22_CYAND : X_AND2
    port map (
      I0 => C4_counter_22_CYSELG_4185,
      I1 => C4_counter_22_CYSELF_4200,
      O => C4_counter_22_CYAND_4198
    );
  C4_counter_22_CYMUXFAST : X_MUX2
    port map (
      IA => C4_counter_22_CYMUXG2_4196,
      IB => C4_counter_22_FASTCARRY_4197,
      SEL => C4_counter_22_CYAND_4198,
      O => C4_counter_22_CYMUXFAST_4199
    );
  C4_counter_22_CYMUXG2 : X_MUX2
    port map (
      IA => C4_counter_22_LOGIC_ZERO_4194,
      IB => C4_counter_22_CYMUXF2_4195,
      SEL => C4_counter_22_CYSELG_4185,
      O => C4_counter_22_CYMUXG2_4196
    );
  C4_counter_22_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_22_G,
      O => C4_counter_22_CYSELG_4185
    );
  C4_counter_22_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_22_SRINV_4183
    );
  C4_counter_22_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_22_CLKINV_4182
    );
  C4_counter_24_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(24),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_24_rt_4240
    );
  C4_counter_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_24_DXMUX_4245,
      CE => VCC,
      CLK => C4_counter_24_CLKINV_4231,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_24_SRINV_4232,
      O => C4_counter(24)
    );
  C4_counter_24_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_24_XORF_4243,
      O => C4_counter_24_DXMUX_4245
    );
  C4_counter_24_XORF : X_XOR2
    port map (
      I0 => C4_counter_24_CYINIT_4242,
      I1 => C4_counter_24_rt_4240,
      O => C4_counter_24_XORF_4243
    );
  C4_counter_24_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_counter_22_CYMUXFAST_4199,
      O => C4_counter_24_CYINIT_4242
    );
  C4_counter_24_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_cmp_eq0000,
      O => C4_counter_24_SRINV_4232
    );
  C4_counter_24_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C4_counter_24_CLKINV_4231
    );
  C7_clkdiv_0_LOGIC_ZERO : X_ZERO
    port map (
      O => C7_clkdiv_0_LOGIC_ZERO_4268
    );
  C7_clkdiv_0_LOGIC_ONE : X_ONE
    port map (
      O => C7_clkdiv_0_LOGIC_ONE_4289
    );
  C7_clkdiv_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_0_XORF_4290,
      O => C7_clkdiv_0_DXMUX_4292
    );
  C7_clkdiv_0_XORF : X_XOR2
    port map (
      I0 => C7_clkdiv_0_CYINIT_4288,
      I1 => C7_Mcount_clkdiv_lut(0),
      O => C7_clkdiv_0_XORF_4290
    );
  C7_clkdiv_0_CYMUXF : X_MUX2
    port map (
      IA => C7_clkdiv_0_LOGIC_ONE_4289,
      IB => C7_clkdiv_0_CYINIT_4288,
      SEL => C7_clkdiv_0_CYSELF_4279,
      O => C7_Mcount_clkdiv_cy(0)
    );
  C7_clkdiv_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_0_BXINV_4277,
      O => C7_clkdiv_0_CYINIT_4288
    );
  C7_clkdiv_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_lut(0),
      O => C7_clkdiv_0_CYSELF_4279
    );
  C7_clkdiv_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => C7_clkdiv_0_BXINV_4277
    );
  C7_clkdiv_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_0_XORG_4271,
      O => C7_clkdiv_0_DYMUX_4273
    );
  C7_clkdiv_0_XORG : X_XOR2
    port map (
      I0 => C7_Mcount_clkdiv_cy(0),
      I1 => C7_clkdiv_0_G,
      O => C7_clkdiv_0_XORG_4271
    );
  C7_clkdiv_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_0_CYMUXG_4270,
      O => C7_Mcount_clkdiv_cy(1)
    );
  C7_clkdiv_0_CYMUXG : X_MUX2
    port map (
      IA => C7_clkdiv_0_LOGIC_ZERO_4268,
      IB => C7_Mcount_clkdiv_cy(0),
      SEL => C7_clkdiv_0_CYSELG_4259,
      O => C7_clkdiv_0_CYMUXG_4270
    );
  C7_clkdiv_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_0_G,
      O => C7_clkdiv_0_CYSELG_4259
    );
  C7_clkdiv_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_clkdiv_0_CLKINV_4257
    );
  C7_clkdiv_2_LOGIC_ZERO : X_ZERO
    port map (
      O => C7_clkdiv_2_LOGIC_ZERO_4314
    );
  C7_clkdiv_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_2_XORF_4338,
      O => C7_clkdiv_2_DXMUX_4340
    );
  C7_clkdiv_2_XORF : X_XOR2
    port map (
      I0 => C7_clkdiv_2_CYINIT_4337,
      I1 => C7_clkdiv_2_F,
      O => C7_clkdiv_2_XORF_4338
    );
  C7_clkdiv_2_CYMUXF : X_MUX2
    port map (
      IA => C7_clkdiv_2_LOGIC_ZERO_4314,
      IB => C7_clkdiv_2_CYINIT_4337,
      SEL => C7_clkdiv_2_CYSELF_4320,
      O => C7_Mcount_clkdiv_cy(2)
    );
  C7_clkdiv_2_CYMUXF2 : X_MUX2
    port map (
      IA => C7_clkdiv_2_LOGIC_ZERO_4314,
      IB => C7_clkdiv_2_LOGIC_ZERO_4314,
      SEL => C7_clkdiv_2_CYSELF_4320,
      O => C7_clkdiv_2_CYMUXF2_4315
    );
  C7_clkdiv_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_cy(1),
      O => C7_clkdiv_2_CYINIT_4337
    );
  C7_clkdiv_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_2_F,
      O => C7_clkdiv_2_CYSELF_4320
    );
  C7_clkdiv_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_2_XORG_4322,
      O => C7_clkdiv_2_DYMUX_4324
    );
  C7_clkdiv_2_XORG : X_XOR2
    port map (
      I0 => C7_Mcount_clkdiv_cy(2),
      I1 => C7_clkdiv_2_G,
      O => C7_clkdiv_2_XORG_4322
    );
  C7_clkdiv_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_2_CYMUXFAST_4319,
      O => C7_Mcount_clkdiv_cy(3)
    );
  C7_clkdiv_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_cy(1),
      O => C7_clkdiv_2_FASTCARRY_4317
    );
  C7_clkdiv_2_CYAND : X_AND2
    port map (
      I0 => C7_clkdiv_2_CYSELG_4305,
      I1 => C7_clkdiv_2_CYSELF_4320,
      O => C7_clkdiv_2_CYAND_4318
    );
  C7_clkdiv_2_CYMUXFAST : X_MUX2
    port map (
      IA => C7_clkdiv_2_CYMUXG2_4316,
      IB => C7_clkdiv_2_FASTCARRY_4317,
      SEL => C7_clkdiv_2_CYAND_4318,
      O => C7_clkdiv_2_CYMUXFAST_4319
    );
  C7_clkdiv_2_CYMUXG2 : X_MUX2
    port map (
      IA => C7_clkdiv_2_LOGIC_ZERO_4314,
      IB => C7_clkdiv_2_CYMUXF2_4315,
      SEL => C7_clkdiv_2_CYSELG_4305,
      O => C7_clkdiv_2_CYMUXG2_4316
    );
  C7_clkdiv_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_2_G,
      O => C7_clkdiv_2_CYSELG_4305
    );
  C7_clkdiv_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_clkdiv_2_CLKINV_4303
    );
  C7_clkdiv_4_LOGIC_ZERO : X_ZERO
    port map (
      O => C7_clkdiv_4_LOGIC_ZERO_4362
    );
  C7_clkdiv_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_4_XORF_4386,
      O => C7_clkdiv_4_DXMUX_4388
    );
  C7_clkdiv_4_XORF : X_XOR2
    port map (
      I0 => C7_clkdiv_4_CYINIT_4385,
      I1 => C7_clkdiv_4_F,
      O => C7_clkdiv_4_XORF_4386
    );
  C7_clkdiv_4_CYMUXF : X_MUX2
    port map (
      IA => C7_clkdiv_4_LOGIC_ZERO_4362,
      IB => C7_clkdiv_4_CYINIT_4385,
      SEL => C7_clkdiv_4_CYSELF_4368,
      O => C7_Mcount_clkdiv_cy(4)
    );
  C7_clkdiv_4_CYMUXF2 : X_MUX2
    port map (
      IA => C7_clkdiv_4_LOGIC_ZERO_4362,
      IB => C7_clkdiv_4_LOGIC_ZERO_4362,
      SEL => C7_clkdiv_4_CYSELF_4368,
      O => C7_clkdiv_4_CYMUXF2_4363
    );
  C7_clkdiv_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_cy(3),
      O => C7_clkdiv_4_CYINIT_4385
    );
  C7_clkdiv_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_4_F,
      O => C7_clkdiv_4_CYSELF_4368
    );
  C7_clkdiv_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_4_XORG_4370,
      O => C7_clkdiv_4_DYMUX_4372
    );
  C7_clkdiv_4_XORG : X_XOR2
    port map (
      I0 => C7_Mcount_clkdiv_cy(4),
      I1 => C7_clkdiv_4_G,
      O => C7_clkdiv_4_XORG_4370
    );
  C7_clkdiv_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_4_CYMUXFAST_4367,
      O => C7_Mcount_clkdiv_cy(5)
    );
  C7_clkdiv_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_cy(3),
      O => C7_clkdiv_4_FASTCARRY_4365
    );
  C7_clkdiv_4_CYAND : X_AND2
    port map (
      I0 => C7_clkdiv_4_CYSELG_4353,
      I1 => C7_clkdiv_4_CYSELF_4368,
      O => C7_clkdiv_4_CYAND_4366
    );
  C7_clkdiv_4_CYMUXFAST : X_MUX2
    port map (
      IA => C7_clkdiv_4_CYMUXG2_4364,
      IB => C7_clkdiv_4_FASTCARRY_4365,
      SEL => C7_clkdiv_4_CYAND_4366,
      O => C7_clkdiv_4_CYMUXFAST_4367
    );
  C7_clkdiv_4_CYMUXG2 : X_MUX2
    port map (
      IA => C7_clkdiv_4_LOGIC_ZERO_4362,
      IB => C7_clkdiv_4_CYMUXF2_4363,
      SEL => C7_clkdiv_4_CYSELG_4353,
      O => C7_clkdiv_4_CYMUXG2_4364
    );
  C7_clkdiv_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_4_G,
      O => C7_clkdiv_4_CYSELG_4353
    );
  C7_clkdiv_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_clkdiv_4_CLKINV_4351
    );
  C7_clkdiv_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_6_DYMUX_4420,
      CE => VCC,
      CLK => C7_clkdiv_6_CLKINV_4399,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(7)
    );
  C7_clkdiv_6_LOGIC_ZERO : X_ZERO
    port map (
      O => C7_clkdiv_6_LOGIC_ZERO_4410
    );
  C7_clkdiv_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_6_XORF_4434,
      O => C7_clkdiv_6_DXMUX_4436
    );
  C7_clkdiv_6_XORF : X_XOR2
    port map (
      I0 => C7_clkdiv_6_CYINIT_4433,
      I1 => C7_clkdiv_6_F,
      O => C7_clkdiv_6_XORF_4434
    );
  C7_clkdiv_6_CYMUXF : X_MUX2
    port map (
      IA => C7_clkdiv_6_LOGIC_ZERO_4410,
      IB => C7_clkdiv_6_CYINIT_4433,
      SEL => C7_clkdiv_6_CYSELF_4416,
      O => C7_Mcount_clkdiv_cy(6)
    );
  C7_clkdiv_6_CYMUXF2 : X_MUX2
    port map (
      IA => C7_clkdiv_6_LOGIC_ZERO_4410,
      IB => C7_clkdiv_6_LOGIC_ZERO_4410,
      SEL => C7_clkdiv_6_CYSELF_4416,
      O => C7_clkdiv_6_CYMUXF2_4411
    );
  C7_clkdiv_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_cy(5),
      O => C7_clkdiv_6_CYINIT_4433
    );
  C7_clkdiv_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_6_F,
      O => C7_clkdiv_6_CYSELF_4416
    );
  C7_clkdiv_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_6_XORG_4418,
      O => C7_clkdiv_6_DYMUX_4420
    );
  C7_clkdiv_6_XORG : X_XOR2
    port map (
      I0 => C7_Mcount_clkdiv_cy(6),
      I1 => C7_clkdiv_6_G,
      O => C7_clkdiv_6_XORG_4418
    );
  C7_clkdiv_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mcount_clkdiv_cy(5),
      O => C7_clkdiv_6_FASTCARRY_4413
    );
  C7_clkdiv_6_CYAND : X_AND2
    port map (
      I0 => C7_clkdiv_6_CYSELG_4401,
      I1 => C7_clkdiv_6_CYSELF_4416,
      O => C7_clkdiv_6_CYAND_4414
    );
  C7_clkdiv_6_CYMUXFAST : X_MUX2
    port map (
      IA => C7_clkdiv_6_CYMUXG2_4412,
      IB => C7_clkdiv_6_FASTCARRY_4413,
      SEL => C7_clkdiv_6_CYAND_4414,
      O => C7_clkdiv_6_CYMUXFAST_4415
    );
  C7_clkdiv_6_CYMUXG2 : X_MUX2
    port map (
      IA => C7_clkdiv_6_LOGIC_ZERO_4410,
      IB => C7_clkdiv_6_CYMUXF2_4411,
      SEL => C7_clkdiv_6_CYSELG_4401,
      O => C7_clkdiv_6_CYMUXG2_4412
    );
  C7_clkdiv_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_6_G,
      O => C7_clkdiv_6_CYSELG_4401
    );
  C7_clkdiv_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_clkdiv_6_CLKINV_4399
    );
  C7_clkdiv_8_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_8_XORF_4455,
      O => C7_clkdiv_8_DXMUX_4457
    );
  C7_clkdiv_8_XORF : X_XOR2
    port map (
      I0 => C7_clkdiv_8_CYINIT_4454,
      I1 => C7_clkdiv_8_rt_4452,
      O => C7_clkdiv_8_XORF_4455
    );
  C7_clkdiv_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv_6_CYMUXFAST_4415,
      O => C7_clkdiv_8_CYINIT_4454
    );
  C7_clkdiv_8_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_clkdiv_8_CLKINV_4444
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  ca_0_OBUF : X_OBUF
    port map (
      I => ca_0_O,
      O => ca(0)
    );
  ca_1_OBUF : X_OBUF
    port map (
      I => ca_1_O,
      O => ca(1)
    );
  ca_2_OBUF : X_OBUF
    port map (
      I => ca_2_O,
      O => ca(2)
    );
  ca_3_OBUF : X_OBUF
    port map (
      I => ca_3_O,
      O => ca(3)
    );
  ca_4_OBUF : X_OBUF
    port map (
      I => ca_4_O,
      O => ca(4)
    );
  ca_5_OBUF : X_OBUF
    port map (
      I => ca_5_O,
      O => ca(5)
    );
  ca_6_OBUF : X_OBUF
    port map (
      I => ca_6_O,
      O => ca(6)
    );
  ca_7_OBUF : X_OBUF
    port map (
      I => ca_7_O,
      O => ca(7)
    );
  an_0_OBUF : X_OBUF
    port map (
      I => an_0_O,
      O => an(0)
    );
  an_1_OBUF : X_OBUF
    port map (
      I => an_1_O,
      O => an(1)
    );
  an_2_OBUF : X_OBUF
    port map (
      I => an_2_O,
      O => an(2)
    );
  an_3_OBUF : X_OBUF
    port map (
      I => an_3_O,
      O => an(3)
    );
  reset_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  min_sec_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec,
      O => min_sec_INBUF
    );
  second_OBUF : X_OBUF
    port map (
      I => second_O,
      O => second
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => clk_BUFGP_IBUFG_2213,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  C6_bcd_1_mux00011_G : X_LUT4
    generic map(
      INIT => X"0BD0"
    )
    port map (
      ADR0 => C1_int_output(8),
      ADR1 => C1_int_output(10),
      ADR2 => C1_int_output(11),
      ADR3 => C1_int_output(9),
      O => N261
    );
  C6_Madd_bcd_3_0_add0002_lut_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0002_lut_2_F5MUX_4611,
      O => C6_Madd_bcd_3_0_add0002_lut(2)
    );
  C6_Madd_bcd_3_0_add0002_lut_2_F5MUX : X_MUX2
    port map (
      IA => N260,
      IB => N261,
      SEL => C6_Madd_bcd_3_0_add0002_lut_2_BXINV_4604,
      O => C6_Madd_bcd_3_0_add0002_lut_2_F5MUX_4611
    );
  C6_Madd_bcd_3_0_add0002_lut_2_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => C6_Madd_bcd_3_0_add0002_lut_2_BXINV_4604
    );
  C6_bcd_1_mux00011_F : X_LUT4
    generic map(
      INIT => X"0BD0"
    )
    port map (
      ADR0 => int_demo_led_in(8),
      ADR1 => int_demo_led_in(10),
      ADR2 => int_demo_led_in(11),
      ADR3 => int_demo_led_in(9),
      O => N260
    );
  C6_Madd_bcd_3_0_add0002_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0002_lut_3_F5MUX_4636,
      O => C6_Madd_bcd_3_0_add0002_lut(3)
    );
  C6_Madd_bcd_3_0_add0002_lut_3_F5MUX : X_MUX2
    port map (
      IA => N246,
      IB => N247,
      SEL => C6_Madd_bcd_3_0_add0002_lut_3_BXINV_4629,
      O => C6_Madd_bcd_3_0_add0002_lut_3_F5MUX_4636
    );
  C6_Madd_bcd_3_0_add0002_lut_3_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => C6_Madd_bcd_3_0_add0002_lut_3_BXINV_4629
    );
  C6_bcd_3_mux0001_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_mux0001_F5MUX_4661,
      O => C6_bcd_3_mux0001
    );
  C6_bcd_3_mux0001_F5MUX : X_MUX2
    port map (
      IA => N252,
      IB => N253,
      SEL => C6_bcd_3_mux0001_BXINV_4654,
      O => C6_bcd_3_mux0001_F5MUX_4661
    );
  C6_bcd_3_mux0001_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => C6_bcd_3_mux0001_BXINV_4654
    );
  N20_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N20_F5MUX_4686,
      O => N20
    );
  N20_F5MUX : X_MUX2
    port map (
      IA => N268,
      IB => N269,
      SEL => N20_BXINV_4679,
      O => N20_F5MUX_4686
    );
  N20_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => N20_BXINV_4679
    );
  C6_Madd_bcd_7_4_add0004_cy_1_11_SW1_G : X_LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR1 => N159,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      O => N283
    );
  N170_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N170_F5MUX_4711,
      O => N170
    );
  N170_F5MUX : X_MUX2
    port map (
      IA => N282,
      IB => N283,
      SEL => N170_BXINV_4704,
      O => N170_F5MUX_4711
    );
  N170_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N61,
      O => N170_BXINV_4704
    );
  C6_Madd_bcd_7_4_add0004_cy_1_11_SW1_F : X_LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR1 => N158,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      O => N282
    );
  N150_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N150_F5MUX_4736,
      O => N150
    );
  N150_F5MUX : X_MUX2
    port map (
      IA => N254,
      IB => N255,
      SEL => N150_BXINV_4729,
      O => N150_F5MUX_4736
    );
  N150_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0001_cy(0),
      O => N150_BXINV_4729
    );
  C6_bcd_7_mux000311_SW2_G : X_LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => N251
    );
  N122_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N122_F5MUX_4761,
      O => N122
    );
  N122_F5MUX : X_MUX2
    port map (
      IA => N250,
      IB => N251,
      SEL => N122_BXINV_4754,
      O => N122_F5MUX_4761
    );
  N122_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N61_0,
      O => N122_BXINV_4754
    );
  C6_bcd_7_mux000311_SW2_F : X_LUT4
    generic map(
      INIT => X"F66F"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => N250
    );
  N77_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N77_F5MUX_4786,
      O => N77
    );
  N77_F5MUX : X_MUX2
    port map (
      IA => N244,
      IB => N245,
      SEL => N77_BXINV_4779,
      O => N77_F5MUX_4786
    );
  N77_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N81_0,
      O => N77_BXINV_4779
    );
  int4_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_4_F5MUX_4815,
      O => int4_4_DXMUX_4817
    );
  int4_4_F5MUX : X_MUX2
    port map (
      IA => int4_mux0001_1_1,
      IB => int4_4_F,
      SEL => int4_4_BXINV_4804,
      O => int4_4_F5MUX_4815
    );
  int4_4_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prev_sec_cmp_eq0000_0,
      O => int4_4_BXINV_4804
    );
  int4_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int4_4_CLKINV_4797
    );
  int4_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int4_4_CEINV_4796
    );
  C6_bcd_1_mux000221_SW0_G : X_LUT4
    generic map(
      INIT => X"DFE7"
    )
    port map (
      ADR0 => C1_int_output(8),
      ADR1 => C1_int_output(9),
      ADR2 => C1_int_output(11),
      ADR3 => C1_int_output(10),
      O => N263
    );
  N163_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N163_F5MUX_4845,
      O => N163
    );
  N163_F5MUX : X_MUX2
    port map (
      IA => N262,
      IB => N263,
      SEL => N163_BXINV_4838,
      O => N163_F5MUX_4845
    );
  N163_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => N163_BXINV_4838
    );
  C6_bcd_1_mux000221_SW0_F : X_LUT4
    generic map(
      INIT => X"DFE7"
    )
    port map (
      ADR0 => int_demo_led_in(8),
      ADR1 => int_demo_led_in(9),
      ADR2 => int_demo_led_in(11),
      ADR3 => int_demo_led_in(10),
      O => N262
    );
  C6_N71_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N71_F5MUX_4870,
      O => C6_N71
    );
  C6_N71_F5MUX : X_MUX2
    port map (
      IA => N284,
      IB => N285,
      SEL => C6_N71_BXINV_4861,
      O => C6_N71_F5MUX_4870
    );
  C6_N71_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0003_lut_3_0,
      O => C6_N71_BXINV_4861
    );
  C7_ca_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_0_F5MUX_4897,
      O => C7_ca_0_DXMUX_4899
    );
  C7_ca_0_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_4_4887,
      IB => C7_Mmux_ca_mux0001_3_4895,
      SEL => C7_ca_0_BXINV_4889,
      O => C7_ca_0_F5MUX_4897
    );
  C7_ca_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_0_BXINV_4889
    );
  C7_ca_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_0_CLKINV_4881
    );
  C7_ca_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_1_F5MUX_4928,
      O => C7_ca_1_DXMUX_4930
    );
  C7_ca_1_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_41_4918,
      IB => C7_Mmux_ca_mux0001_31_4926,
      SEL => C7_ca_1_BXINV_4920,
      O => C7_ca_1_F5MUX_4928
    );
  C7_ca_1_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_1_BXINV_4920
    );
  C7_ca_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_1_CLKINV_4912
    );
  C7_Mmux_ca_mux0001_32 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(2),
      ADR2 => C7_ca4(2),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_32_4957
    );
  C7_ca_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_2_F5MUX_4959,
      O => C7_ca_2_DXMUX_4961
    );
  C7_ca_2_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_42_4949,
      IB => C7_Mmux_ca_mux0001_32_4957,
      SEL => C7_ca_2_BXINV_4951,
      O => C7_ca_2_F5MUX_4959
    );
  C7_ca_2_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_2_BXINV_4951
    );
  C7_ca_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_2_CLKINV_4943
    );
  C7_Mmux_ca_mux0001_42 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(2),
      ADR2 => C7_ca2(2),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_42_4949
    );
  C7_ca_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_3_F5MUX_4990,
      O => C7_ca_3_DXMUX_4992
    );
  C7_ca_3_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_43_4980,
      IB => C7_Mmux_ca_mux0001_33_4988,
      SEL => C7_ca_3_BXINV_4982,
      O => C7_ca_3_F5MUX_4990
    );
  C7_ca_3_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_3_BXINV_4982
    );
  C7_ca_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_3_CLKINV_4974
    );
  C7_ca_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_4_F5MUX_5021,
      O => C7_ca_4_DXMUX_5023
    );
  C7_ca_4_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_44_5011,
      IB => C7_Mmux_ca_mux0001_34_5019,
      SEL => C7_ca_4_BXINV_5013,
      O => C7_ca_4_F5MUX_5021
    );
  C7_ca_4_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_4_BXINV_5013
    );
  C7_ca_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_4_CLKINV_5005
    );
  C7_ca_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_5_F5MUX_5052,
      O => C7_ca_5_DXMUX_5054
    );
  C7_ca_5_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_45_5042,
      IB => C7_Mmux_ca_mux0001_35_5050,
      SEL => C7_ca_5_BXINV_5044,
      O => C7_ca_5_F5MUX_5052
    );
  C7_ca_5_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_5_BXINV_5044
    );
  C7_ca_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_5_CLKINV_5036
    );
  C7_ca_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_5_DXMUX_5054,
      CE => VCC,
      CLK => C7_ca_5_CLKINV_5036,
      SET => GND,
      RST => GND,
      O => C7_ca(5)
    );
  C7_Mmux_ca_mux0001_36 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(6),
      ADR2 => C7_ca4(6),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_36_5081
    );
  C7_ca_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca_6_F5MUX_5083,
      O => C7_ca_6_DXMUX_5085
    );
  C7_ca_6_F5MUX : X_MUX2
    port map (
      IA => C7_Mmux_ca_mux0001_46_5073,
      IB => C7_Mmux_ca_mux0001_36_5081,
      SEL => C7_ca_6_BXINV_5075,
      O => C7_ca_6_F5MUX_5083
    );
  C7_ca_6_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_clkdiv(8),
      O => C7_ca_6_BXINV_5075
    );
  C7_ca_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca_6_CLKINV_5067
    );
  C7_Mmux_ca_mux0001_46 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(6),
      ADR2 => C7_ca2(6),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_46_5073
    );
  C6_Madd_bcd_3_0_add0000_cy_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0000_cy_2_F5MUX_5112,
      O => C6_Madd_bcd_3_0_add0000_cy(2)
    );
  C6_Madd_bcd_3_0_add0000_cy_2_F5MUX : X_MUX2
    port map (
      IA => N290,
      IB => N291,
      SEL => C6_Madd_bcd_3_0_add0000_cy_2_BXINV_5104,
      O => C6_Madd_bcd_3_0_add0000_cy_2_F5MUX_5112
    );
  C6_Madd_bcd_3_0_add0000_cy_2_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => C6_Madd_bcd_3_0_add0000_cy_2_BXINV_5104
    );
  C7_ca2_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca2_4_F5MUX_5141,
      O => C7_ca2_4_DXMUX_5143
    );
  C7_ca2_4_F5MUX : X_MUX2
    port map (
      IA => N292,
      IB => N293,
      SEL => C7_ca2_4_BXINV_5134,
      O => C7_ca2_4_F5MUX_5141
    );
  C7_ca2_4_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => tens2_1_0,
      O => C7_ca2_4_BXINV_5134
    );
  C7_ca2_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => tens2_0_0,
      O => C7_ca2_4_SRINV_5127
    );
  C7_ca2_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca2_4_CLKINV_5126
    );
  N51_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N51_F5MUX_5171,
      O => N51
    );
  N51_F5MUX : X_MUX2
    port map (
      IA => N248,
      IB => N249,
      SEL => N51_BXINV_5163,
      O => N51_F5MUX_5171
    );
  N51_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_IBUF_2088,
      O => N51_BXINV_5163
    );
  C6_bcd_3_mux000411_SW0_F : X_LUT4
    generic map(
      INIT => X"D3D3"
    )
    port map (
      ADR0 => int_demo_led_out_5_Q,
      ADR1 => int_demo_led_out_7_Q,
      ADR2 => int_demo_led_out_6_Q,
      ADR3 => VCC,
      O => N286
    );
  C6_bcd_3_mux000411_SW0_G : X_LUT4
    generic map(
      INIT => X"96BE"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => int_demo_led_out_7_Q,
      ADR3 => int_demo_led_out_5_Q,
      O => N287
    );
  N107_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N107_F5MUX_5196,
      O => N107
    );
  N107_F5MUX : X_MUX2
    port map (
      IA => N286,
      IB => N287,
      SEL => N107_BXINV_5189,
      O => N107_F5MUX_5196
    );
  N107_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N22,
      O => N107_BXINV_5189
    );
  N136_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N136_F5MUX_5221,
      O => N136
    );
  N136_F5MUX : X_MUX2
    port map (
      IA => N288,
      IB => N289,
      SEL => N136_BXINV_5214,
      O => N136_F5MUX_5221
    );
  N136_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N24,
      O => N136_BXINV_5214
    );
  N158_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N158_F5MUX_5246,
      O => N158
    );
  N158_F5MUX : X_MUX2
    port map (
      IA => N256,
      IB => N257,
      SEL => N158_BXINV_5239,
      O => N158_F5MUX_5246
    );
  N158_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N61_0,
      O => N158_BXINV_5239
    );
  N159_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N159_F5MUX_5271,
      O => N159
    );
  N159_F5MUX : X_MUX2
    port map (
      IA => N258,
      IB => N259,
      SEL => N159_BXINV_5264,
      O => N159_F5MUX_5271
    );
  N159_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N61_0,
      O => N159_BXINV_5264
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW3_G : X_LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => N267
    );
  N180_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N180_F5MUX_5296,
      O => N180
    );
  N180_F5MUX : X_MUX2
    port map (
      IA => N266,
      IB => N267,
      SEL => N180_BXINV_5289,
      O => N180_F5MUX_5296
    );
  N180_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N61_0,
      O => N180_BXINV_5289
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW3_F : X_LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => N266
    );
  N55_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N55,
      O => N55_0
    );
  N55_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N20_pack_1,
      O => C6_N20
    );
  C6_Madd_bcd_7_4_add0001_cy_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0001_cy(1),
      O => C6_Madd_bcd_7_4_add0001_cy_1_0
    );
  C6_Madd_bcd_7_4_add0001_cy_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N23_pack_1,
      O => C6_N23
    );
  C6_bcd_3_mux000311 : X_LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      ADR0 => C6_N101,
      ADR1 => C6_bcd_3_mux0001,
      ADR2 => int_demo_led_out_8_Q,
      ADR3 => C6_Madd_bcd_3_0_add0003_cy_1_0,
      O => C6_N23_pack_1
    );
  N92_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N92,
      O => N92_0
    );
  N92_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0004_lut_3_pack_1,
      O => C6_Madd_bcd_3_0_add0004_lut(3)
    );
  N237_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N237,
      O => N237_0
    );
  N237_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1_O_pack_1,
      O => C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1_O
    );
  C7_ca4_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca4_2_DXMUX_5422,
      CE => VCC,
      CLK => C7_ca4_2_CLKINV_5405,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C7_ca4_2_SRINV_5406,
      O => C7_ca4(2)
    );
  C7_ca4_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux000121,
      O => C7_ca4_2_DXMUX_5422
    );
  C7_ca4_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N29_pack_2,
      O => C6_N29
    );
  C7_ca4_2_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => thousands2_2_0,
      O => C7_ca4_2_SRINV_5406
    );
  C7_ca4_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca4_2_CLKINV_5405
    );
  C6_Madd_bcd_3_0_add0003_cy_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0003_cy(1),
      O => C6_Madd_bcd_3_0_add0003_cy_1_0
    );
  C6_Madd_bcd_3_0_add0003_cy_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0003_cy_1_11_SW0_O_pack_2,
      O => C6_Madd_bcd_3_0_add0003_cy_1_11_SW0_O
    );
  C6_Madd_bcd_3_0_add0003_cy_1_11_SW0 : X_LUT4
    generic map(
      INIT => X"92A4"
    )
    port map (
      ADR0 => int_demo_led_out_7_Q,
      ADR1 => int_demo_led_out_8_Q,
      ADR2 => N51,
      ADR3 => C6_bcd_3_mux0001,
      O => C6_Madd_bcd_3_0_add0003_cy_1_11_SW0_O_pack_2
    );
  C6_Madd_bcd_7_4_add0004_cy_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0004_cy(0),
      O => C6_Madd_bcd_7_4_add0004_cy_0_0
    );
  C6_Madd_bcd_7_4_add0004_cy_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0006_cy_1_pack_1,
      O => C6_Madd_bcd_3_0_add0006_cy(1)
    );
  C6_Madd_bcd_7_4_add0005_cy_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0005_cy(0),
      O => C6_Madd_bcd_7_4_add0005_cy_0_0
    );
  C6_Madd_bcd_7_4_add0005_cy_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N151_pack_1,
      O => C6_N151
    );
  C6_N121_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N121,
      O => C6_N121_0
    );
  C6_N121_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_6_pack_1,
      O => int_demo_led_out_6_Q
    );
  C6_N161_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N161,
      O => C6_N161_0
    );
  C6_N161_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_1_mux000721_SW0_O_pack_1,
      O => C6_bcd_1_mux000721_SW0_O
    );
  C6_bcd_1_mux000721_SW0 : X_LUT4
    generic map(
      INIT => X"DBFA"
    )
    port map (
      ADR0 => int_demo_led_out_3_Q,
      ADR1 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR2 => N187_0,
      ADR3 => C6_N26,
      O => C6_bcd_1_mux000721_SW0_O_pack_1
    );
  thousands2_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => thousands2(1),
      O => thousands2_1_0
    );
  thousands2_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0001_cy_1_11_SW3_O_pack_1,
      O => C6_Madd_bcd_11_8_add0001_cy_1_11_SW3_O
    );
  tens2_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => tens2(1),
      O => tens2_1_0
    );
  tens2_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0005_cy_1_pack_1,
      O => C6_Madd_bcd_7_4_add0005_cy(1)
    );
  N47_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N47,
      O => N47_0
    );
  N47_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_4_mux00051_SW0_SW0_O_pack_1,
      O => C6_bcd_4_mux00051_SW0_SW0_O
    );
  C6_Madd_bcd_3_0_add0007_cy_1_11 : X_LUT4
    generic map(
      INIT => X"BEBB"
    )
    port map (
      ADR0 => int_demo_led_out_2_0,
      ADR1 => int_demo_led_out_3_Q,
      ADR2 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR3 => C6_N26,
      O => C6_Madd_bcd_3_0_add0007_cy(1)
    );
  C6_Madd_bcd_3_0_add0007_cy_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0007_cy(1),
      O => C6_Madd_bcd_3_0_add0007_cy_1_0
    );
  C6_Madd_bcd_3_0_add0007_cy_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N26_pack_1,
      O => C6_N26
    );
  C6_bcd_3_mux000611 : X_LUT4
    generic map(
      INIT => X"ACAA"
    )
    port map (
      ADR0 => N136,
      ADR1 => N137_0,
      ADR2 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR3 => C6_N25,
      O => C6_N26_pack_1
    );
  C6_bcd_2_mux0004_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_2_mux0004_5664,
      O => C6_bcd_2_mux0004_0
    );
  C6_bcd_2_mux0004_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0004_cy_1_pack_1,
      O => C6_Madd_bcd_3_0_add0004_cy(1)
    );
  N111_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N111,
      O => N111_0
    );
  N111_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N34_pack_1,
      O => N34
    );
  N134_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N134,
      O => N134_0
    );
  N134_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N86_pack_1,
      O => N86
    );
  N119_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N119,
      O => N119_0
    );
  N119_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_7_mux0001_SW6_O_pack_1,
      O => C6_bcd_7_mux0001_SW6_O
    );
  C6_bcd_7_mux0001_SW6 : X_LUT4
    generic map(
      INIT => X"2727"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => N12_0,
      ADR2 => N34,
      ADR3 => VCC,
      O => C6_bcd_7_mux0001_SW6_O_pack_1
    );
  C6_N27_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N27,
      O => C6_N27_0
    );
  C6_N27_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_mux000711_SW2_O_pack_1,
      O => C6_bcd_3_mux000711_SW2_O
    );
  N100_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N100,
      O => N100_0
    );
  N100_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_5_mux000321_SW1_O_pack_1,
      O => C6_bcd_5_mux000321_SW1_O
    );
  C6_N28_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N28,
      O => C6_N28_0
    );
  C6_N28_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0008_cy_1_pack_1,
      O => C6_Madd_bcd_3_0_add0008_cy(1)
    );
  C6_bcd_7_mux000511_SW1 : X_LUT4
    generic map(
      INIT => X"2011"
    )
    port map (
      ADR0 => C6_bcd_6_mux0004_SW1_O,
      ADR1 => C6_Madd_bcd_7_4_add0005_cy_0_0,
      ADR2 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      ADR3 => C6_Madd_bcd_7_4_add0004_cy(1),
      O => N76
    );
  N76_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N76,
      O => N76_0
    );
  N76_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_6_mux0004_SW1_O_pack_1,
      O => C6_bcd_6_mux0004_SW1_O
    );
  C6_bcd_6_mux0004_SW1 : X_LUT4
    generic map(
      INIT => X"C939"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR1 => N30_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_cy(1),
      ADR3 => N190_0,
      O => C6_bcd_6_mux0004_SW1_O_pack_1
    );
  N276_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N276,
      O => N276_0
    );
  N276_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_8_pack_1,
      O => int_demo_led_out_8_Q
    );
  hundreds2_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => hundreds2(1),
      O => hundreds2_1_0
    );
  hundreds2_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000211_SW0_O_pack_1,
      O => C6_bcd_11_mux000211_SW0_O
    );
  C6_Madd_bcd_11_8_add0002_lut_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0002_lut(2),
      O => C6_Madd_bcd_11_8_add0002_lut_2_0
    );
  C6_Madd_bcd_11_8_add0002_lut_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000137_SW0_O_pack_1,
      O => C6_bcd_11_mux000137_SW0_O
    );
  hundreds2_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => hundreds2(2),
      O => hundreds2_2_0
    );
  hundreds2_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000211_SW1_O_pack_1,
      O => C6_bcd_11_mux000211_SW1_O
    );
  C7_ca1_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux000131,
      O => C7_ca1_3_DXMUX_5959
    );
  C7_ca1_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux0001311_SW0_O_pack_1,
      O => C7_Mrom_ca1_mux0001311_SW0_O
    );
  C7_ca1_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca1_0_FXMUX_6422,
      O => C7_ca1_3_SRINV_5944
    );
  C7_ca1_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca1_3_CLKINV_5943
    );
  C7_ca1_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux000141,
      O => C7_ca1_4_DXMUX_5992
    );
  C7_ca1_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux0001411_SW0_O_pack_1,
      O => C7_Mrom_ca1_mux0001411_SW0_O
    );
  C7_ca1_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_0_0,
      O => C7_ca1_4_SRINV_5975
    );
  C7_ca1_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca1_4_CLKINV_5974
    );
  C6_Madd_bcd_3_0_add0003_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0003_lut(3),
      O => C6_Madd_bcd_3_0_add0003_lut_3_0
    );
  C6_Madd_bcd_3_0_add0003_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_7_pack_1,
      O => int_demo_led_out_7_Q
    );
  C6_Madd_bcd_3_0_add0006_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0006_lut(3),
      O => C6_Madd_bcd_3_0_add0006_lut_3_0
    );
  C6_Madd_bcd_3_0_add0006_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_2_mux0005_SW1_O_pack_1,
      O => C6_bcd_2_mux0005_SW1_O
    );
  C6_Madd_bcd_3_0_add0007_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0007_lut(3),
      O => C6_Madd_bcd_3_0_add0007_lut_3_0
    );
  C6_Madd_bcd_3_0_add0007_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N141_pack_1,
      O => C6_N141
    );
  ones2_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ones2(3),
      O => ones2_3_0
    );
  ones2_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0008_lut_3_pack_1,
      O => C6_Madd_bcd_3_0_add0008_lut(3)
    );
  C6_bcd_11_mux000112_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000112,
      O => C6_bcd_11_mux000112_0
    );
  C6_bcd_11_mux000112_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0000_cy_0_pack_1,
      O => C6_Madd_bcd_11_8_add0000_cy(0)
    );
  N22_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  N22_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0001_cy_0_pack_1,
      O => C6_Madd_bcd_11_8_add0001_cy(0)
    );
  thousands2_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000211_SW2_O_pack_1,
      O => C6_bcd_11_mux000211_SW2_O
    );
  C6_N61_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N61,
      O => C6_N61_0
    );
  C6_N61_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0002_lut_2_pack_1,
      O => C6_Madd_bcd_7_4_add0002_lut(2)
    );
  C6_N81_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N81,
      O => C6_N81_0
    );
  C6_N81_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0004_cy_1_pack_2,
      O => C6_Madd_bcd_7_4_add0004_cy(1)
    );
  C6_Madd_bcd_7_4_add0002_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0002_lut(3),
      O => C6_Madd_bcd_7_4_add0002_lut_3_0
    );
  C6_Madd_bcd_7_4_add0002_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N165_pack_1,
      O => N165
    );
  C6_Madd_bcd_7_4_add0003_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0003_lut(3),
      O => C6_Madd_bcd_7_4_add0003_lut_3_0
    );
  C6_Madd_bcd_7_4_add0003_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0002_cy_0_pack_1,
      O => C6_Madd_bcd_7_4_add0002_cy(0)
    );
  C6_Madd_bcd_7_4_add0004_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0004_lut(3),
      O => C6_Madd_bcd_7_4_add0004_lut_3_0
    );
  C6_Madd_bcd_7_4_add0004_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0003_cy_1_pack_1,
      O => C6_Madd_bcd_7_4_add0003_cy(1)
    );
  C6_Madd_bcd_7_4_add0005_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0005_lut(3),
      O => C6_Madd_bcd_7_4_add0005_lut_3_0
    );
  C6_Madd_bcd_7_4_add0005_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0004_cy_1_11_SW01_O_pack_1,
      O => C6_Madd_bcd_7_4_add0004_cy_1_11_SW01_O
    );
  N59_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N59,
      O => N59_0
    );
  N59_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_11_mux000137_SW4_O_pack_1,
      O => C6_bcd_11_mux000137_SW4_O
    );
  C7_ca2_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca2_mux00011,
      O => C7_ca2_1_DXMUX_6359
    );
  C7_ca2_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => tens2_3_pack_1,
      O => tens2(3)
    );
  C7_ca2_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca2_1_CLKINV_6344
    );
  C7_ca2_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca2_mux000131,
      O => C7_ca2_3_DXMUX_6391
    );
  C7_ca2_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_5_mux00051_SW1_O_pack_1,
      O => C6_bcd_5_mux00051_SW1_O
    );
  C7_ca2_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca2_5_GYMUX_7353,
      O => C7_ca2_3_SRINV_6376
    );
  C7_ca2_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca2_3_CLKINV_6375
    );
  C7_ca1_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca1_0_FXMUX_6422,
      O => C7_ca1_0_DXMUX_6423
    );
  C7_ca1_0_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux0001,
      O => C7_ca1_0_FXMUX_6422
    );
  C7_ca1_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux000111_SW0_O_pack_1,
      O => C7_Mrom_ca1_mux000111_SW0_O
    );
  C7_ca1_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca1_0_CLKINV_6407
    );
  C7_ca1_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux00012,
      O => C7_ca1_2_DXMUX_6453
    );
  C7_ca1_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ones2_2_pack_1,
      O => ones2(2)
    );
  C7_ca1_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca1_2_CLKINV_6438
    );
  C7_ca1_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux00015,
      O => C7_ca1_5_DXMUX_6483
    );
  C7_ca1_5_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ones2_1_pack_1,
      O => ones2(1)
    );
  C7_ca1_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca1_5_CLKINV_6467
    );
  C6_Madd_bcd_11_8_add0002_lut_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0002_lut(3),
      O => C6_Madd_bcd_11_8_add0002_lut_3_0
    );
  C6_Madd_bcd_11_8_add0002_lut_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0001_cy_1_pack_1,
      O => C6_Madd_bcd_11_8_add0001_cy(1)
    );
  hundreds2_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => hundreds2(3),
      O => hundreds2_3_0
    );
  hundreds2_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_11_8_add0002_cy_0_pack_1,
      O => C6_Madd_bcd_11_8_add0002_cy(0)
    );
  N183_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N183,
      O => N183_0
    );
  N183_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_5_pack_2,
      O => int_demo_led_out_5_Q
    );
  C6_N19_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N19,
      O => C6_N19_0
    );
  C6_N19_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0003_cy_1_11_SW4_O_pack_1,
      O => C6_Madd_bcd_7_4_add0003_cy_1_11_SW4_O
    );
  N102_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  N102_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_output_9_1_O_pack_2,
      O => C1_output_9_1_O
    );
  thousands2_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => thousands2(2),
      O => thousands2_2_0
    );
  thousands2_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N18_pack_1,
      O => C6_N18
    );
  N234_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N234,
      O => N234_0
    );
  N234_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N101_pack_1,
      O => C6_N101
    );
  C7_ca2_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca2_mux00012,
      O => C7_ca2_2_DXMUX_6681
    );
  C7_ca2_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => tens2_2_pack_1,
      O => tens2(2)
    );
  C7_ca2_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca2_2_CLKINV_6666
    );
  N223_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N223,
      O => N223_0
    );
  N223_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N108_pack_1,
      O => N108
    );
  N104_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N104,
      O => N104_0
    );
  N104_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_cmp_gt0003_pack_1,
      O => C6_bcd_3_cmp_gt0003
    );
  N105_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N105,
      O => N105_0
    );
  N105_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_4_pack_1,
      O => int_demo_led_out_4_Q
    );
  N137_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N137,
      O => N137_0
    );
  N137_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_cmp_gt00041_SW2_O_pack_1,
      O => C6_bcd_3_cmp_gt00041_SW2_O
    );
  N193_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N193,
      O => N193_0
    );
  N193_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_cmp_gt0005_pack_1,
      O => C6_bcd_3_cmp_gt0005
    );
  N53_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N53,
      O => N53_0
    );
  N53_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_3_pack_1,
      O => int_demo_led_out_3_Q
    );
  N49_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N49,
      O => N49_0
    );
  N49_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0004_cy_1_11_SW2_O_pack_1,
      O => C6_Madd_bcd_7_4_add0004_cy_1_11_SW2_O
    );
  N205_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N205,
      O => N205_0
    );
  N205_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_7_cmp_gt00031_SW0_SW0_O_pack_1,
      O => C6_bcd_7_cmp_gt00031_SW0_SW0_O
    );
  N211_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N211,
      O => N211_0
    );
  N211_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_3_0_add0005_lut_3_pack_1,
      O => C6_Madd_bcd_3_0_add0005_lut(3)
    );
  N212_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N212,
      O => N212_0
    );
  N212_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_N25_pack_1,
      O => C6_N25
    );
  C7_ca3_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux000131,
      O => C7_ca3_3_DXMUX_6953
    );
  C7_ca3_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_7_mux000511_O_pack_1,
      O => C6_bcd_7_mux000511_O
    );
  C7_ca3_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca3_1_GYMUX_7388,
      O => C7_ca3_3_SRINV_6938
    );
  C7_ca3_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca3_3_CLKINV_6937
    );
  N12_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  N12_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_out_11_pack_1,
      O => int_demo_led_out_11_Q
    );
  N18_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  N18_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_7_mux0001_pack_1,
      O => C6_bcd_7_mux0001_2066
    );
  int_demo_led_in_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(1),
      O => int_demo_led_in_1_DXMUX_7039
    );
  int_demo_led_in_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(0),
      O => int_demo_led_in_1_DYMUX_7026
    );
  int_demo_led_in_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int_demo_led_in_1_CLKINV_7017
    );
  int_demo_led_in_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int_demo_led_in_1_CEINV_7016
    );
  int_demo_led_in_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(3),
      O => int_demo_led_in_3_DXMUX_7077
    );
  int_demo_led_in_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(2),
      O => int_demo_led_in_3_DYMUX_7064
    );
  int_demo_led_in_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int_demo_led_in_3_CLKINV_7055
    );
  int_demo_led_in_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int_demo_led_in_3_CEINV_7054
    );
  int_demo_led_in_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(4),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(4)
    );
  int_demo_led_in_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_5_DYMUX_7102,
      CE => int_demo_led_in_5_CEINV_7092,
      CLK => int_demo_led_in_5_CLKINV_7093,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(4)
    );
  int_demo_led_in_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(5),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(5)
    );
  int_demo_led_in_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_5_DXMUX_7115,
      CE => int_demo_led_in_5_CEINV_7092,
      CLK => int_demo_led_in_5_CLKINV_7093,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(5)
    );
  int_demo_led_in_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(5),
      O => int_demo_led_in_5_DXMUX_7115
    );
  int_demo_led_in_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(4),
      O => int_demo_led_in_5_DYMUX_7102
    );
  int_demo_led_in_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int_demo_led_in_5_CLKINV_7093
    );
  int_demo_led_in_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int_demo_led_in_5_CEINV_7092
    );
  int_demo_led_in_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(6),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(6)
    );
  int_demo_led_in_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(7),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(7)
    );
  int_demo_led_in_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_7_DYMUX_7140,
      CE => int_demo_led_in_7_CEINV_7130,
      CLK => int_demo_led_in_7_CLKINV_7131,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(6)
    );
  int_demo_led_in_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_7_DXMUX_7153,
      CE => int_demo_led_in_7_CEINV_7130,
      CLK => int_demo_led_in_7_CLKINV_7131,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(7)
    );
  int_demo_led_in_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(7),
      O => int_demo_led_in_7_DXMUX_7153
    );
  int_demo_led_in_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(6),
      O => int_demo_led_in_7_DYMUX_7140
    );
  int_demo_led_in_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int_demo_led_in_7_CLKINV_7131
    );
  int_demo_led_in_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int_demo_led_in_7_CEINV_7130
    );
  int_demo_led_in_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(8),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(8)
    );
  int_demo_led_in_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(9),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(9)
    );
  int_demo_led_in_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_9_DYMUX_7178,
      CE => int_demo_led_in_9_CEINV_7168,
      CLK => int_demo_led_in_9_CLKINV_7169,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(8)
    );
  int_demo_led_in_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_9_DXMUX_7191,
      CE => int_demo_led_in_9_CEINV_7168,
      CLK => int_demo_led_in_9_CLKINV_7169,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(9)
    );
  int_demo_led_in_9_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(9),
      O => int_demo_led_in_9_DXMUX_7191
    );
  int_demo_led_in_9_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(8),
      O => int_demo_led_in_9_DYMUX_7178
    );
  int_demo_led_in_9_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int_demo_led_in_9_CLKINV_7169
    );
  int_demo_led_in_9_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int_demo_led_in_9_CEINV_7168
    );
  int_demo_led_in_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(10),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(10)
    );
  int_demo_led_in_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(11),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(11)
    );
  int_demo_led_in_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_11_DYMUX_7216,
      CE => int_demo_led_in_11_CEINV_7206,
      CLK => int_demo_led_in_11_CLKINV_7207,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(10)
    );
  int_demo_led_in_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_11_DXMUX_7229,
      CE => int_demo_led_in_11_CEINV_7206,
      CLK => int_demo_led_in_11_CLKINV_7207,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(11)
    );
  int_demo_led_in_11_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(11),
      O => int_demo_led_in_11_DXMUX_7229
    );
  int_demo_led_in_11_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int_demo_led_in_mux0001(10),
      O => int_demo_led_in_11_DYMUX_7216
    );
  int_demo_led_in_11_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int_demo_led_in_11_CLKINV_7207
    );
  int_demo_led_in_11_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int_demo_led_in_11_CEINV_7206
    );
  C1_int4_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int4_3_DYMUX_7257,
      CE => C1_int4_3_CEINV_7246,
      CLK => C1_int4_3_CLKINV_7247,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C1_int4_3_SRINV_7248,
      O => C1_int4(2)
    );
  C1_Mcount_int4_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C"
    )
    port map (
      ADR0 => C1_int4(1),
      ADR1 => C1_int4(2),
      ADR2 => C1_int4(0),
      ADR3 => VCC,
      O => C1_Result_2_1
    );
  C1_Mcount_int4_xor_3_12 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => C1_int4(3),
      ADR1 => C1_int4(2),
      ADR2 => C1_int4(1),
      ADR3 => C1_int4(0),
      O => C1_Result_3_1
    );
  C1_int4_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int4_3_DXMUX_7270,
      CE => C1_int4_3_CEINV_7246,
      CLK => C1_int4_3_CLKINV_7247,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C1_int4_3_SRINV_7248,
      O => C1_int4(3)
    );
  C1_int4_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Result_3_1,
      O => C1_int4_3_DXMUX_7270
    );
  C1_int4_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Result_2_1,
      O => C1_int4_3_DYMUX_7257
    );
  C1_int4_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int4_3_SRINV_7248
    );
  C1_int4_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int4_3_CLKINV_7247
    );
  C1_int4_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_not0001_inv_0,
      O => C1_int4_3_CEINV_7246
    );
  C1_Mcount_int4_xor_5_11 : X_LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      ADR0 => C1_int4(5),
      ADR1 => C1_N2,
      ADR2 => C1_int4(3),
      ADR3 => C1_int4(4),
      O => C1_Result_5_1
    );
  C1_int4_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int4_5_DYMUX_7294,
      CE => C1_int4_5_CEINV_7284,
      CLK => C1_int4_5_CLKINV_7285,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C1_int4_5_SRINV_7286,
      O => C1_int4(5)
    );
  C1_int4_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Result_5_1,
      O => C1_int4_5_DYMUX_7294
    );
  C1_int4_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int4_5_SRINV_7286
    );
  C1_int4_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int4_5_CLKINV_7285
    );
  C1_int4_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_not0001_inv_0,
      O => C1_int4_5_CEINV_7284
    );
  C7_ca1_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux00016,
      O => C7_ca1_6_DXMUX_7330
    );
  C7_ca1_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca1_mux00011,
      O => C7_ca1_6_DYMUX_7319
    );
  C7_ca1_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca1_6_CLKINV_7311
    );
  C7_ca1_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca1_6_DXMUX_7330,
      CE => VCC,
      CLK => C7_ca1_6_CLKINV_7311,
      SET => GND,
      RST => GND,
      O => C7_ca1(6)
    );
  C7_Mrom_ca2_mux000151 : X_LUT4
    generic map(
      INIT => X"ECF2"
    )
    port map (
      ADR0 => tens2_0_0,
      ADR1 => tens2(3),
      ADR2 => tens2_1_0,
      ADR3 => tens2(2),
      O => C7_Mrom_ca2_mux00015
    );
  C7_ca2_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca2_5_DYMUX_7354,
      CE => VCC,
      CLK => C7_ca2_5_CLKINV_7346,
      SET => GND,
      RST => GND,
      O => C7_ca2(0)
    );
  C7_ca2_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca2_mux00015,
      O => C7_ca2_5_DXMUX_7365
    );
  C7_ca2_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca2_5_GYMUX_7353,
      O => C7_ca2_5_DYMUX_7354
    );
  C7_ca2_5_GYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca2_mux0001,
      O => C7_ca2_5_GYMUX_7353
    );
  C7_ca2_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca2_5_CLKINV_7346
    );
  C7_Mrom_ca2_mux000111 : X_LUT4
    generic map(
      INIT => X"CDC2"
    )
    port map (
      ADR0 => tens2_0_0,
      ADR1 => tens2(3),
      ADR2 => tens2_1_0,
      ADR3 => tens2(2),
      O => C7_Mrom_ca2_mux0001
    );
  C7_ca3_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux00011,
      O => C7_ca3_1_DXMUX_7400
    );
  C7_ca3_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca3_1_GYMUX_7388,
      O => C7_ca3_1_DYMUX_7389
    );
  C7_ca3_1_GYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux0001,
      O => C7_ca3_1_GYMUX_7388
    );
  C7_ca3_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca3_1_CLKINV_7381
    );
  C7_ca2_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca2_mux00016,
      O => C7_ca2_6_DYMUX_7418
    );
  C7_ca2_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca2_6_CLKINV_7409
    );
  C7_ca3_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux00016,
      O => C7_ca3_6_DXMUX_7452
    );
  C7_ca3_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux00012,
      O => C7_ca3_6_DYMUX_7441
    );
  C7_ca3_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca3_6_CLKINV_7433
    );
  C7_ca3_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux000141,
      O => C7_ca3_4_DYMUX_7472
    );
  C7_ca3_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => hundreds2_0_0,
      O => C7_ca3_4_SRINV_7463
    );
  C7_ca3_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca3_4_CLKINV_7462
    );
  C7_ca4_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux00015,
      O => C7_ca4_5_DXMUX_7507
    );
  C7_ca4_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux00011,
      O => C7_ca4_5_DYMUX_7496
    );
  C7_ca4_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca4_5_CLKINV_7488
    );
  C7_ca3_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca3_mux00015,
      O => C7_ca3_5_DYMUX_7525
    );
  C7_ca3_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca3_5_CLKINV_7517
    );
  C7_ca4_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux000131,
      O => C7_ca4_3_DYMUX_7545
    );
  C7_ca4_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca4_0_FXMUX_7854,
      O => C7_ca4_3_SRINV_7537
    );
  C7_ca4_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca4_3_CLKINV_7536
    );
  C7_ca4_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux000141,
      O => C7_ca4_4_DYMUX_7566
    );
  C7_ca4_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => thousands2(0),
      O => C7_ca4_4_SRINV_7556
    );
  C7_ca4_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca4_4_CLKINV_7555
    );
  C7_ca4_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux00016,
      O => C7_ca4_6_DYMUX_7585
    );
  C7_ca4_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca4_6_CLKINV_7577
    );
  int4_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_mux0001_4_Q,
      O => int4_1_DXMUX_7622
    );
  int4_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_mux0001_5_Q,
      O => int4_1_DYMUX_7610
    );
  int4_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int4_1_CLKINV_7602
    );
  int4_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int4_1_CEINV_7601
    );
  int4_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_mux0001_0_Q,
      O => int4_5_DYMUX_7643
    );
  int4_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int4_5_CLKINV_7635
    );
  int4_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int4_5_CEINV_7634
    );
  C7_an_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_an_mux0001,
      O => C7_an_0_DYMUX_7662
    );
  C7_an_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_an_0_CLKINV_7652
    );
  C1_prev_sec_not0001_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  int4_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_mux0001_3_Q,
      O => int4_2_DXMUX_7718
    );
  int4_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prev_sec_not0001_pack_2,
      O => prev_sec_not0001
    );
  int4_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => int4_2_CLKINV_7702
    );
  int4_2_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => int4_not0002_0,
      O => int4_2_CEINV_7701
    );
  N190_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N190,
      O => N190_0
    );
  N190_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N139,
      O => N139_0
    );
  N149_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N149,
      O => N149_0
    );
  N149_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_Madd_bcd_7_4_add0001_cy_0_pack_2,
      O => C6_Madd_bcd_7_4_add0001_cy(0)
    );
  tens2_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => tens2(0),
      O => tens2_0_0
    );
  C6_bcd_3_cmp_gt0006_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C6_bcd_3_cmp_gt0006,
      O => C6_bcd_3_cmp_gt0006_0
    );
  C1_int4_0_DXMUX : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4(0),
      O => C1_int4_0_DXMUX_7822
    );
  C1_int4_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_Result_1_1,
      O => C1_int4_0_DYMUX_7815
    );
  C1_int4_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_and0000_0,
      O => C1_int4_0_SRINV_7805
    );
  C1_int4_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C1_int4_0_CLKINV_7804
    );
  C1_int4_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C1_int4_not0001_inv_0,
      O => C1_int4_0_CEINV_7803
    );
  C7_ca4_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca4_0_FXMUX_7854,
      O => C7_ca4_0_DXMUX_7855
    );
  C7_ca4_0_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_Mrom_ca4_mux0001,
      O => C7_ca4_0_FXMUX_7854
    );
  C7_ca4_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N221_pack_1,
      O => N221
    );
  C7_ca4_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => C7_ca4_0_CLKINV_7839
    );
  prev_sec_cmp_eq0000_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prev_sec_cmp_eq0000_7880,
      O => prev_sec_cmp_eq0000_0
    );
  prev_sec_cmp_eq0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N8_pack_1,
      O => N8
    );
  N185_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N185,
      O => N185_0
    );
  C6_bcd_10_mux0001_SW1 : X_LUT4
    generic map(
      INIT => X"DDDD"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => N16
    );
  C4_int_led_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      ADR0 => C4_counter(12),
      ADR1 => C4_counter(10),
      ADR2 => C4_counter(6),
      ADR3 => C4_counter(11),
      O => C4_int_led_cmp_eq0000_wg_lut(2)
    );
  C4_counter_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_16_DXMUX_4065,
      CE => VCC,
      CLK => C4_counter_16_CLKINV_4026,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_16_SRINV_4027,
      O => C4_counter(16)
    );
  C4_counter_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_16_DYMUX_4048,
      CE => VCC,
      CLK => C4_counter_16_CLKINV_4026,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_16_SRINV_4027,
      O => C4_counter(17)
    );
  C4_counter_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_14_DXMUX_4013,
      CE => VCC,
      CLK => C4_counter_14_CLKINV_3974,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_14_SRINV_3975,
      O => C4_counter(14)
    );
  C4_counter_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_14_DYMUX_3996,
      CE => VCC,
      CLK => C4_counter_14_CLKINV_3974,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_14_SRINV_3975,
      O => C4_counter(15)
    );
  C7_Mcount_clkdiv_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => C7_clkdiv(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_Mcount_clkdiv_lut(0)
    );
  C7_clkdiv_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_0_DYMUX_4273,
      CE => VCC,
      CLK => C7_clkdiv_0_CLKINV_4257,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(1)
    );
  C6_bcd_7_mux0001_SW4_G : X_LUT4
    generic map(
      INIT => X"575D"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => C6_bcd_3_mux0001,
      ADR3 => C6_N22,
      O => N255
    );
  C6_bcd_7_mux0001_SW4_F : X_LUT4
    generic map(
      INIT => X"9393"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR2 => N12_0,
      ADR3 => VCC,
      O => N254
    );
  C6_bcd_5_mux000321_G : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_N25,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N285
    );
  C6_bcd_5_mux000321_F : X_LUT4
    generic map(
      INIT => X"F9F9"
    )
    port map (
      ADR0 => N61,
      ADR1 => C6_N24,
      ADR2 => N122,
      ADR3 => VCC,
      O => N284
    );
  C7_Mmux_ca_mux0001_45 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(5),
      ADR2 => C7_ca2(5),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_45_5042
    );
  C7_ca_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_2_DXMUX_4961,
      CE => VCC,
      CLK => C7_ca_2_CLKINV_4943,
      SET => GND,
      RST => GND,
      O => C7_ca(2)
    );
  C7_Mmux_ca_mux0001_35 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(5),
      ADR2 => C7_ca4(5),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_35_5050
    );
  C7_ca_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_6_DXMUX_5085,
      CE => VCC,
      CLK => C7_ca_6_CLKINV_5067,
      SET => GND,
      RST => GND,
      O => C7_ca(6)
    );
  C6_bcd_5_mux00051_SW0 : X_LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR1 => C6_N26,
      ADR2 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      ADR3 => C6_N20,
      O => N55
    );
  C6_bcd_7_mux000411 : X_LUT4
    generic map(
      INIT => X"96BE"
    )
    port map (
      ADR0 => C6_N71,
      ADR1 => C6_bcd_7_cmp_gt0002_0,
      ADR2 => C6_Madd_bcd_7_4_add0002_cy(0),
      ADR3 => N170,
      O => C6_N20_pack_1
    );
  C6_Madd_bcd_7_4_add0001_cy_1_11 : X_LUT4
    generic map(
      INIT => X"F66F"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_Madd_bcd_7_4_add0000_cy_0_0,
      ADR2 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR3 => C6_N23,
      O => C6_Madd_bcd_7_4_add0001_cy(1)
    );
  int_demo_led_in_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_3_DXMUX_7077,
      CE => int_demo_led_in_3_CEINV_7054,
      CLK => int_demo_led_in_3_CLKINV_7055,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(3)
    );
  C7_Mrom_ca1_mux000161 : X_LUT4
    generic map(
      INIT => X"ECC3"
    )
    port map (
      ADR0 => int_demo_led_out_0_0,
      ADR1 => ones2_3_0,
      ADR2 => ones2(2),
      ADR3 => ones2(1),
      O => C7_Mrom_ca1_mux00016
    );
  C7_ca1_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca1_6_DYMUX_7319,
      CE => VCC,
      CLK => C7_ca1_6_CLKINV_7311,
      SET => GND,
      RST => GND,
      O => C7_ca1(1)
    );
  C7_Mrom_ca1_mux0001111 : X_LUT4
    generic map(
      INIT => X"DCE0"
    )
    port map (
      ADR0 => int_demo_led_out_0_0,
      ADR1 => ones2_3_0,
      ADR2 => ones2(2),
      ADR3 => ones2(1),
      O => C7_Mrom_ca1_mux00011
    );
  C6_bcd_7_mux0001_SW1 : X_LUT4
    generic map(
      INIT => X"6363"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR2 => N34,
      ADR3 => VCC,
      O => N110
    );
  C6_Madd_bcd_11_8_add0000_lut_2_1 : X_LUT4
    generic map(
      INIT => X"A8A2"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => C6_bcd_3_mux0001,
      ADR3 => C6_N22,
      O => C6_Madd_bcd_11_8_add0000_lut(2)
    );
  C1_prev_sec : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_prev_sec_DYMUX_2398,
      CE => C1_prev_sec_CEINV_2395,
      CLK => C1_prev_sec_CLKINV_2396,
      SET => GND,
      RST => GND,
      O => C1_prev_sec_2017
    );
  C6_bcd_7_mux000211_SW1 : X_LUT4
    generic map(
      INIT => X"D12E"
    )
    port map (
      ADR0 => N107,
      ADR1 => C6_N23,
      ADR2 => N223_0,
      ADR3 => C6_Madd_bcd_3_0_add0004_lut(3),
      O => N126
    );
  C6_bcd_3_mux000611_SW0 : X_LUT4
    generic map(
      INIT => X"6565"
    )
    port map (
      ADR0 => int_demo_led_out_5_Q,
      ADR1 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR2 => C6_N24,
      ADR3 => VCC,
      O => N96
    );
  C6_bcd_7_mux00052 : X_LUT4
    generic map(
      INIT => X"69CC"
    )
    port map (
      ADR0 => N37_0,
      ADR1 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      ADR2 => C6_N81_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_cy(1),
      O => hundreds2(0)
    );
  C6_bcd_5_mux00051_SW2 : X_LUT4
    generic map(
      INIT => X"F3B7"
    )
    port map (
      ADR0 => N76_0,
      ADR1 => tens2_0_0,
      ADR2 => N55_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_cy(1),
      O => N117
    );
  C6_bcd_3_mux00022 : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR1 => C6_N22,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_Madd_bcd_7_4_add0000_cy(0)
    );
  C6_bcd_3_mux000411 : X_LUT4
    generic map(
      INIT => X"E4F0"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR1 => N108,
      ADR2 => N107,
      ADR3 => C6_N23,
      O => C6_N24_pack_1
    );
  C6_Madd_bcd_3_0_add0005_cy_1_11 : X_LUT4
    generic map(
      INIT => X"DEDD"
    )
    port map (
      ADR0 => int_demo_led_out_5_Q,
      ADR1 => int_demo_led_out_4_Q,
      ADR2 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR3 => C6_N24,
      O => C6_Madd_bcd_3_0_add0005_cy(1)
    );
  C6_bcd_7_mux000411_SW1 : X_LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR2 => C6_N24,
      ADR3 => C6_N18,
      O => N67
    );
  C6_bcd_6_mux0004_SW0 : X_LUT4
    generic map(
      INIT => X"695A"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR2 => C6_N24,
      ADR3 => C6_N18,
      O => N30
    );
  C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"E3C3"
    )
    port map (
      ADR0 => int_demo_led_out_11_Q,
      ADR1 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR2 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR3 => N102_0,
      O => N241
    );
  C6_bcd_2_mux0004_SW0 : X_LUT4
    generic map(
      INIT => X"6565"
    )
    port map (
      ADR0 => int_demo_led_out_7_Q,
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => C6_N22,
      ADR3 => VCC,
      O => N26
    );
  C1_Mcount_int4_xor_3_111 : X_LUT4
    generic map(
      INIT => X"7F7F"
    )
    port map (
      ADR0 => C1_int4(2),
      ADR1 => C1_int4(1),
      ADR2 => C1_int4(0),
      ADR3 => VCC,
      O => C1_N2_pack_2
    );
  C1_Mcount_int4_xor_4_11 : X_LUT4
    generic map(
      INIT => X"9A9A"
    )
    port map (
      ADR0 => C1_int4(4),
      ADR1 => C1_N2,
      ADR2 => C1_int4(3),
      ADR3 => VCC,
      O => C1_Result_4_1
    );
  C1_int4_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int4_4_DXMUX_2577,
      CE => C1_int4_4_CEINV_2558,
      CLK => C1_int4_4_CLKINV_2559,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C1_int4_4_SRINV_2560,
      O => C1_int4(4)
    );
  int4_mux0001_2_SW0 : X_LUT4
    generic map(
      INIT => X"9333"
    )
    port map (
      ADR0 => int4(1),
      ADR1 => int4(3),
      ADR2 => int4(2),
      ADR3 => int4(0),
      O => N278_pack_2
    );
  int4_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      ADR0 => C4_int_led_2014,
      ADR1 => prev_sec_2059,
      ADR2 => prev_sec_cmp_eq0000_0,
      ADR3 => N278,
      O => int4_mux0001_2_Q_2608
    );
  int4_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int4_3_DXMUX_2611,
      CE => int4_3_CEINV_2595,
      CLK => int4_3_CLKINV_2596,
      SET => GND,
      RST => GND,
      O => int4(3)
    );
  C6_bcd_1_mux000621_SW0 : X_LUT4
    generic map(
      INIT => X"6565"
    )
    port map (
      ADR0 => int_demo_led_out_4_Q,
      ADR1 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR2 => C6_N25,
      ADR3 => VCC,
      O => N187
    );
  C6_bcd_6_mux0005_SW0 : X_LUT4
    generic map(
      INIT => X"6969"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_N25,
      ADR2 => C6_bcd_7_cmp_gt0003_0,
      ADR3 => VCC,
      O => N37
    );
  C6_bcd_1_mux000821_SW0 : X_LUT4
    generic map(
      INIT => X"6565"
    )
    port map (
      ADR0 => int_demo_led_out_2_0,
      ADR1 => C6_Madd_bcd_3_0_add0007_lut_3_0,
      ADR2 => C6_N27_0,
      ADR3 => VCC,
      O => N57
    );
  C6_bcd_3_mux000511_1 : X_LUT4
    generic map(
      INIT => X"E4F0"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => N105_0,
      ADR2 => N104_0,
      ADR3 => C6_N24,
      O => C6_bcd_3_mux000511_pack_1
    );
  C6_bcd_3_mux00052 : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => C6_bcd_2_mux0004_0,
      ADR1 => C6_bcd_3_mux000511_2079,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_Madd_bcd_7_4_add0003_cy(0)
    );
  C1_int4_and0000 : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => C1_int4(3),
      ADR1 => C1_int4(2),
      ADR2 => C1_int4(1),
      ADR3 => N4,
      O => C1_int4_and0000_2733
    );
  C6_bcd_3_cmp_gt00031_SW0 : X_LUT4
    generic map(
      INIT => X"6636"
    )
    port map (
      ADR0 => int_demo_led_out_7_Q,
      ADR1 => int_demo_led_out_8_Q,
      ADR2 => N163,
      ADR3 => C6_Madd_bcd_3_0_add0002_lut(3),
      O => N227
    );
  C1_output_0_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(0),
      ADR2 => C1_int_output(0),
      ADR3 => VCC,
      O => int_demo_led_out_0_Q
    );
  C1_output_2_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(2),
      ADR2 => C1_int_output(2),
      ADR3 => VCC,
      O => int_demo_led_out_2_Q
    );
  C1_output_1_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(1),
      ADR2 => C1_int_output(1),
      ADR3 => VCC,
      O => int_demo_led_out_1_Q
    );
  C6_bcd_11_mux000137_SW1 : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR1 => thousands2_2_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N80
    );
  C6_bcd_11_mux000137_SW2 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => C6_bcd_7_mux0001_2066,
      ADR1 => C6_bcd_11_mux000112_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N142
    );
  C6_Madd_bcd_11_8_add0001_cy_1_11_SW2 : X_LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR3 => C6_bcd_11_mux000112_0,
      O => N177
    );
  C6_bcd_11_mux000137_SW3 : X_LUT4
    generic map(
      INIT => X"FD02"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR3 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      O => N144
    );
  C6_Madd_bcd_11_8_add0001_cy_1_11_SW0 : X_LUT4
    generic map(
      INIT => X"69C3"
    )
    port map (
      ADR0 => C6_bcd_7_mux0001_2066,
      ADR1 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR2 => thousands2_2_0,
      ADR3 => C6_bcd_11_mux000112_0,
      O => N113
    );
  C7_an_1 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_an_1_DYMUX_2863,
      CE => VCC,
      CLK => C7_an_1_CLKINV_2860,
      SET => GND,
      RST => GND,
      SSET => C7_an_1_SRINV_2861,
      SRST => GND,
      O => C7_an(1)
    );
  C7_an_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_an_3_DYMUX_2887,
      CE => VCC,
      CLK => C7_an_3_CLKINV_2884,
      SET => GND,
      RST => GND,
      SSET => C7_an_3_SRINV_2885,
      SRST => GND,
      O => C7_an(3)
    );
  prev_sec : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prev_sec_DYMUX_2899,
      CE => prev_sec_CEINV_2896,
      CLK => prev_sec_CLKINV_2897,
      SET => GND,
      RST => GND,
      O => prev_sec_2059
    );
  C6_bcd_7_cmp_gt00021 : X_LUT4
    generic map(
      INIT => X"BBBB"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR1 => C6_N18,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_bcd_7_cmp_gt0002
    );
  C1_Mxor_int4_xor0000_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => C1_prev_sec_2017,
      ADR1 => C4_int_led_2014,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int4_not0001_inv
    );
  int4_not00021 : X_LUT4
    generic map(
      INIT => X"F6F6"
    )
    port map (
      ADR0 => prev_sec_2059,
      ADR1 => C4_int_led_2014,
      ADR2 => reset_IBUF_2113,
      ADR3 => VCC,
      O => int4_not0002
    );
  C6_bcd_7_cmp_gt00031 : X_LUT4
    generic map(
      INIT => X"FBEA"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR1 => N61,
      ADR2 => N159,
      ADR3 => N158,
      O => C6_bcd_7_cmp_gt0003
    );
  Madd_int_demo_led_in_addsub0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => int_demo_led_in(0),
      ADR1 => prev_sec_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_int_demo_led_in_addsub0000_lut_0_Q_2999
    );
  Madd_int_demo_led_in_addsub0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => int_demo_led_in(5),
      ADR1 => prev_sec_cmp_eq0000_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_int_demo_led_in_addsub0000_lut_5_Q_3058
    );
  C4_int_led_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => C4_counter(18),
      ADR1 => C4_counter(16),
      ADR2 => C4_counter(2),
      ADR3 => C4_counter(17),
      O => C4_int_led_cmp_eq0000_wg_lut(4)
    );
  C4_int_led_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => C4_counter(9),
      ADR1 => C4_counter(7),
      ADR2 => C4_counter(4),
      ADR3 => C4_counter(8),
      O => C4_int_led_cmp_eq0000_wg_lut(1)
    );
  C4_int_led_cmp_eq0000_wg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => C4_counter(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_int_led_cmp_eq0000_wg_lut(0)
    );
  C4_int_led_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => C4_counter(13),
      ADR1 => C4_counter(14),
      ADR2 => C4_counter(15),
      ADR3 => C4_counter(3),
      O => C4_int_led_cmp_eq0000_wg_lut(3)
    );
  C1_int_output_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_0_DYMUX_3326,
      CE => C1_int_output_0_CEINV_3309,
      CLK => C1_int_output_0_CLKINV_3310,
      SET => GND,
      RST => GND,
      O => C1_int_output(1)
    );
  C1_Mcount_int_output_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => C1_int_output(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_Mcount_int_output_lut(0)
    );
  C1_int_output_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_0_DXMUX_3346,
      CE => C1_int_output_0_CEINV_3309,
      CLK => C1_int_output_0_CLKINV_3310,
      SET => GND,
      RST => GND,
      O => C1_int_output(0)
    );
  C1_int_output_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_2_DYMUX_3381,
      CE => C1_int_output_2_CEINV_3359,
      CLK => C1_int_output_2_CLKINV_3360,
      SET => GND,
      RST => GND,
      O => C1_int_output(3)
    );
  C1_int_output_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_2_DXMUX_3398,
      CE => C1_int_output_2_CEINV_3359,
      CLK => C1_int_output_2_CLKINV_3360,
      SET => GND,
      RST => GND,
      O => C1_int_output(2)
    );
  C1_int_output_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_4_DYMUX_3433,
      CE => C1_int_output_4_CEINV_3411,
      CLK => C1_int_output_4_CLKINV_3412,
      SET => GND,
      RST => GND,
      O => C1_int_output(5)
    );
  C1_int_output_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_4_DXMUX_3450,
      CE => C1_int_output_4_CEINV_3411,
      CLK => C1_int_output_4_CLKINV_3412,
      SET => GND,
      RST => GND,
      O => C1_int_output(4)
    );
  C1_int_output_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_6_DYMUX_3485,
      CE => C1_int_output_6_CEINV_3463,
      CLK => C1_int_output_6_CLKINV_3464,
      SET => GND,
      RST => GND,
      O => C1_int_output(7)
    );
  C1_int_output_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_6_DXMUX_3502,
      CE => C1_int_output_6_CEINV_3463,
      CLK => C1_int_output_6_CLKINV_3464,
      SET => GND,
      RST => GND,
      O => C1_int_output(6)
    );
  C1_int_output_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_8_DYMUX_3537,
      CE => C1_int_output_8_CEINV_3515,
      CLK => C1_int_output_8_CLKINV_3516,
      SET => GND,
      RST => GND,
      O => C1_int_output(9)
    );
  C1_int_output_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_8_DXMUX_3554,
      CE => C1_int_output_8_CEINV_3515,
      CLK => C1_int_output_8_CLKINV_3516,
      SET => GND,
      RST => GND,
      O => C1_int_output(8)
    );
  C1_int_output_11_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_11_rt_3575
    );
  C1_int_output_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_10_DYMUX_3580,
      CE => C1_int_output_10_CEINV_3566,
      CLK => C1_int_output_10_CLKINV_3567,
      SET => GND,
      RST => GND,
      O => C1_int_output(11)
    );
  C1_int_output_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int_output_10_DXMUX_3599,
      CE => C1_int_output_10_CEINV_3566,
      CLK => C1_int_output_10_CLKINV_3567,
      SET => GND,
      RST => GND,
      O => C1_int_output(10)
    );
  C4_counter_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_0_DYMUX_3629,
      CE => VCC,
      CLK => C4_counter_0_CLKINV_3612,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_0_SRINV_3613,
      O => C4_counter(1)
    );
  C4_Mcount_counter_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => C4_counter(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_Mcount_counter_lut(0)
    );
  C4_counter_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_0_DXMUX_3649,
      CE => VCC,
      CLK => C4_counter_0_CLKINV_3612,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_0_SRINV_3613,
      O => C4_counter(0)
    );
  C4_counter_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_2_DYMUX_3684,
      CE => VCC,
      CLK => C4_counter_2_CLKINV_3662,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_2_SRINV_3663,
      O => C4_counter(3)
    );
  C4_counter_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_2_DXMUX_3701,
      CE => VCC,
      CLK => C4_counter_2_CLKINV_3662,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_2_SRINV_3663,
      O => C4_counter(2)
    );
  C4_counter_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_4_DYMUX_3736,
      CE => VCC,
      CLK => C4_counter_4_CLKINV_3714,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_4_SRINV_3715,
      O => C4_counter(5)
    );
  C4_counter_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_4_DXMUX_3753,
      CE => VCC,
      CLK => C4_counter_4_CLKINV_3714,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_4_SRINV_3715,
      O => C4_counter(4)
    );
  C4_counter_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_6_DYMUX_3788,
      CE => VCC,
      CLK => C4_counter_6_CLKINV_3766,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_6_SRINV_3767,
      O => C4_counter(7)
    );
  C4_counter_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_6_DXMUX_3805,
      CE => VCC,
      CLK => C4_counter_6_CLKINV_3766,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_6_SRINV_3767,
      O => C4_counter(6)
    );
  C4_counter_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_8_DYMUX_3840,
      CE => VCC,
      CLK => C4_counter_8_CLKINV_3818,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_8_SRINV_3819,
      O => C4_counter(9)
    );
  C4_counter_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_8_DXMUX_3857,
      CE => VCC,
      CLK => C4_counter_8_CLKINV_3818,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_8_SRINV_3819,
      O => C4_counter(8)
    );
  C4_counter_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_10_DYMUX_3892,
      CE => VCC,
      CLK => C4_counter_10_CLKINV_3870,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_10_SRINV_3871,
      O => C4_counter(11)
    );
  C4_counter_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_10_DXMUX_3909,
      CE => VCC,
      CLK => C4_counter_10_CLKINV_3870,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_10_SRINV_3871,
      O => C4_counter(10)
    );
  C4_counter_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_12_DYMUX_3944,
      CE => VCC,
      CLK => C4_counter_12_CLKINV_3922,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_12_SRINV_3923,
      O => C4_counter(13)
    );
  C4_counter_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C4_counter_12_DXMUX_3961,
      CE => VCC,
      CLK => C4_counter_12_CLKINV_3922,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C4_counter_12_SRINV_3923,
      O => C4_counter(12)
    );
  C7_clkdiv_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_0_DXMUX_4292,
      CE => VCC,
      CLK => C7_clkdiv_0_CLKINV_4257,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(0)
    );
  C7_clkdiv_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_2_DYMUX_4324,
      CE => VCC,
      CLK => C7_clkdiv_2_CLKINV_4303,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(3)
    );
  C7_clkdiv_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_2_DXMUX_4340,
      CE => VCC,
      CLK => C7_clkdiv_2_CLKINV_4303,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(2)
    );
  C7_clkdiv_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_4_DYMUX_4372,
      CE => VCC,
      CLK => C7_clkdiv_4_CLKINV_4351,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(5)
    );
  C7_clkdiv_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_4_DXMUX_4388,
      CE => VCC,
      CLK => C7_clkdiv_4_CLKINV_4351,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(4)
    );
  C7_clkdiv_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_6_DXMUX_4436,
      CE => VCC,
      CLK => C7_clkdiv_6_CLKINV_4399,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(6)
    );
  C7_clkdiv_8_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_8_rt_4452
    );
  C7_clkdiv_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_clkdiv_8_DXMUX_4457,
      CE => VCC,
      CLK => C7_clkdiv_8_CLKINV_4444,
      SET => GND,
      RST => GND,
      O => C7_clkdiv(8)
    );
  clk_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_IBUFG_2213
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_2113
    );
  min_sec_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => min_sec_INBUF,
      O => min_sec_IBUF_2088
    );
  C6_bcd_2_mux00011_F : X_LUT4
    generic map(
      INIT => X"4018"
    )
    port map (
      ADR0 => int_demo_led_in(8),
      ADR1 => int_demo_led_in(11),
      ADR2 => int_demo_led_in(10),
      ADR3 => int_demo_led_in(9),
      O => N246
    );
  C6_bcd_2_mux00011_G : X_LUT4
    generic map(
      INIT => X"4018"
    )
    port map (
      ADR0 => C1_int_output(8),
      ADR1 => C1_int_output(11),
      ADR2 => C1_int_output(10),
      ADR3 => C1_int_output(9),
      O => N247
    );
  C6_bcd_3_mux00011_F : X_LUT4
    generic map(
      INIT => X"B20C"
    )
    port map (
      ADR0 => int_demo_led_in(8),
      ADR1 => int_demo_led_in(11),
      ADR2 => int_demo_led_in(9),
      ADR3 => int_demo_led_in(10),
      O => N252
    );
  C6_bcd_3_mux00011_G : X_LUT4
    generic map(
      INIT => X"B20C"
    )
    port map (
      ADR0 => C1_int_output(8),
      ADR1 => C1_int_output(11),
      ADR2 => C1_int_output(9),
      ADR3 => C1_int_output(10),
      O => N253
    );
  C6_bcd_2_mux0002_SW0_F : X_LUT4
    generic map(
      INIT => X"18A6"
    )
    port map (
      ADR0 => int_demo_led_in(8),
      ADR1 => int_demo_led_in(11),
      ADR2 => int_demo_led_in(9),
      ADR3 => int_demo_led_in(10),
      O => N268
    );
  C6_bcd_2_mux0002_SW0_G : X_LUT4
    generic map(
      INIT => X"18A6"
    )
    port map (
      ADR0 => C1_int_output(8),
      ADR1 => C1_int_output(11),
      ADR2 => C1_int_output(9),
      ADR3 => C1_int_output(10),
      O => N269
    );
  C6_bcd_7_mux000511_SW2_F : X_LUT4
    generic map(
      INIT => X"5541"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0005_cy_0_0,
      ADR1 => C6_bcd_7_cmp_gt0003_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      O => N244
    );
  C6_bcd_7_mux000511_SW2_G : X_LUT4
    generic map(
      INIT => X"5514"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0005_cy_0_0,
      ADR1 => C6_bcd_7_cmp_gt0003_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      O => N245
    );
  int4_mux0001_1_11 : X_LUT4
    generic map(
      INIT => X"0660"
    )
    port map (
      ADR0 => prev_sec_2059,
      ADR1 => C4_int_led_2014,
      ADR2 => int4(4),
      ADR3 => Madd_int4_addsub0000_cy_3_0,
      O => int4_mux0001_1_1
    );
  int4_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int4_4_DXMUX_4817,
      CE => int4_4_CEINV_4796,
      CLK => int4_4_CLKINV_4797,
      SET => GND,
      RST => GND,
      O => int4(4)
    );
  C7_Mmux_ca_mux0001_4 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(0),
      ADR2 => C7_ca2(0),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_4_4887
    );
  C7_Mmux_ca_mux0001_3 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(0),
      ADR2 => C7_ca4(0),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_3_4895
    );
  C7_ca_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_0_DXMUX_4899,
      CE => VCC,
      CLK => C7_ca_0_CLKINV_4881,
      SET => GND,
      RST => GND,
      O => C7_ca(0)
    );
  C7_Mmux_ca_mux0001_41 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(1),
      ADR2 => C7_ca2(1),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_41_4918
    );
  C7_Mmux_ca_mux0001_31 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(1),
      ADR2 => C7_ca4(1),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_31_4926
    );
  C7_ca_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_1_DXMUX_4930,
      CE => VCC,
      CLK => C7_ca_1_CLKINV_4912,
      SET => GND,
      RST => GND,
      O => C7_ca(1)
    );
  C7_Mmux_ca_mux0001_43 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(3),
      ADR2 => C7_ca2(3),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_43_4980
    );
  C7_Mmux_ca_mux0001_33 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(3),
      ADR2 => C7_ca4(3),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_33_4988
    );
  C7_ca_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_3_DXMUX_4992,
      CE => VCC,
      CLK => C7_ca_3_CLKINV_4974,
      SET => GND,
      RST => GND,
      O => C7_ca(3)
    );
  C7_Mmux_ca_mux0001_44 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca1(4),
      ADR2 => C7_ca2(4),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_44_5011
    );
  C7_Mmux_ca_mux0001_34 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_ca3(4),
      ADR2 => C7_ca4(4),
      ADR3 => VCC,
      O => C7_Mmux_ca_mux0001_34_5019
    );
  C7_ca_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca_4_DXMUX_5023,
      CE => VCC,
      CLK => C7_ca_4_CLKINV_5005,
      SET => GND,
      RST => GND,
      O => C7_ca(4)
    );
  C6_Madd_bcd_3_0_add0000_cy_2_1_F : X_LUT4
    generic map(
      INIT => X"A8A8"
    )
    port map (
      ADR0 => int_demo_led_in(11),
      ADR1 => int_demo_led_in(10),
      ADR2 => int_demo_led_in(9),
      ADR3 => VCC,
      O => N290
    );
  C6_Madd_bcd_3_0_add0000_cy_2_1_G : X_LUT4
    generic map(
      INIT => X"A8A8"
    )
    port map (
      ADR0 => C1_int_output(11),
      ADR1 => C1_int_output(10),
      ADR2 => C1_int_output(9),
      ADR3 => VCC,
      O => N291
    );
  C7_Mrom_ca2_mux0001411_F : X_LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      ADR0 => N55_0,
      ADR1 => C6_Madd_bcd_7_4_add0005_cy(1),
      ADR2 => N76_0,
      ADR3 => N77,
      O => N292
    );
  C7_Mrom_ca2_mux0001411_G : X_LUT4
    generic map(
      INIT => X"6491"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0005_cy(1),
      ADR1 => C6_N81_0,
      ADR2 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      ADR3 => N37_0,
      O => N293
    );
  C7_ca2_4 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca2_4_DXMUX_5143,
      CE => VCC,
      CLK => C7_ca2_4_CLKINV_5126,
      SET => GND,
      RST => GND,
      SSET => C7_ca2_4_SRINV_5127,
      SRST => GND,
      O => C7_ca2(4)
    );
  C6_bcd_1_mux00011_SW0_F : X_LUT4
    generic map(
      INIT => X"D3D3"
    )
    port map (
      ADR0 => int_demo_led_in(10),
      ADR1 => int_demo_led_in(9),
      ADR2 => int_demo_led_in(11),
      ADR3 => VCC,
      O => N248
    );
  C6_bcd_1_mux00011_SW0_G : X_LUT4
    generic map(
      INIT => X"D3D3"
    )
    port map (
      ADR0 => C1_int_output(10),
      ADR1 => C1_int_output(9),
      ADR2 => C1_int_output(11),
      ADR3 => VCC,
      O => N249
    );
  C6_bcd_3_mux000611_SW1_F : X_LUT4
    generic map(
      INIT => X"D3D3"
    )
    port map (
      ADR0 => int_demo_led_out_3_Q,
      ADR1 => int_demo_led_out_5_Q,
      ADR2 => int_demo_led_out_4_Q,
      ADR3 => VCC,
      O => N288
    );
  C6_bcd_3_mux000611_SW1_G : X_LUT4
    generic map(
      INIT => X"96BE"
    )
    port map (
      ADR0 => int_demo_led_out_4_Q,
      ADR1 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR2 => int_demo_led_out_5_Q,
      ADR3 => int_demo_led_out_3_Q,
      O => N289
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW1_F : X_LUT4
    generic map(
      INIT => X"E0D0"
    )
    port map (
      ADR0 => N104_0,
      ADR1 => C6_N24,
      ADR2 => N119_0,
      ADR3 => C6_bcd_2_mux0004_0,
      O => N256
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW1_G : X_LUT4
    generic map(
      INIT => X"0E0D"
    )
    port map (
      ADR0 => N104_0,
      ADR1 => C6_N24,
      ADR2 => N119_0,
      ADR3 => C6_bcd_2_mux0004_0,
      O => N257
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW2_F : X_LUT4
    generic map(
      INIT => X"C44C"
    )
    port map (
      ADR0 => C6_N24,
      ADR1 => N119_0,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => N258
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW2_G : X_LUT4
    generic map(
      INIT => X"5115"
    )
    port map (
      ADR0 => N119_0,
      ADR1 => C6_N24,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => N259
    );
  C6_bcd_2_mux0003 : X_LUT4
    generic map(
      INIT => X"6099"
    )
    port map (
      ADR0 => N20,
      ADR1 => C6_N101,
      ADR2 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_3_0_add0003_cy_1_0,
      O => C6_Madd_bcd_3_0_add0004_lut_3_pack_1
    );
  C6_bcd_5_mux000221_SW0 : X_LUT4
    generic map(
      INIT => X"2ED1"
    )
    port map (
      ADR0 => N107,
      ADR1 => C6_N23,
      ADR2 => N223_0,
      ADR3 => C6_Madd_bcd_3_0_add0004_lut(3),
      O => N92
    );
  C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1 : X_LUT4
    generic map(
      INIT => X"C1C3"
    )
    port map (
      ADR0 => int_demo_led_out_11_Q,
      ADR1 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR2 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR3 => N102_0,
      O => C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1_O_pack_1
    );
  C6_Madd_bcd_7_4_add0001_cy_1_11_SW1 : X_LUT4
    generic map(
      INIT => X"880A"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => C6_Madd_bcd_7_4_add0001_cy_1_11_SW1_SW1_O,
      ADR2 => N241_0,
      ADR3 => C6_N22,
      O => N237
    );
  C6_bcd_11_mux000211 : X_LUT4
    generic map(
      INIT => X"09FF"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR1 => thousands2_1_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_cy(0),
      ADR3 => C6_Madd_bcd_11_8_add0002_lut_2_0,
      O => C6_N29_pack_2
    );
  C7_Mrom_ca4_mux0001211 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => thousands2_1_0,
      ADR1 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR2 => C6_N29,
      ADR3 => VCC,
      O => C7_Mrom_ca4_mux000121
    );
  C6_Madd_bcd_3_0_add0003_cy_1_11 : X_LUT4
    generic map(
      INIT => X"BFBA"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => int_demo_led_out_7_Q,
      ADR2 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR3 => C6_Madd_bcd_3_0_add0003_cy_1_11_SW0_O,
      O => C6_Madd_bcd_3_0_add0003_cy(1)
    );
  C6_Madd_bcd_3_0_add0006_cy_1_11 : X_LUT4
    generic map(
      INIT => X"BEBB"
    )
    port map (
      ADR0 => int_demo_led_out_3_Q,
      ADR1 => int_demo_led_out_4_Q,
      ADR2 => C6_bcd_2_mux0004_0,
      ADR3 => C6_bcd_3_mux000511_2079,
      O => C6_Madd_bcd_3_0_add0006_cy_1_pack_1
    );
  C6_bcd_3_mux00062 : X_LUT4
    generic map(
      INIT => X"7B84"
    )
    port map (
      ADR0 => N96_0,
      ADR1 => C6_Madd_bcd_3_0_add0006_cy(1),
      ADR2 => C6_N141,
      ADR3 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      O => C6_Madd_bcd_7_4_add0004_cy(0)
    );
  C6_bcd_1_mux000621 : X_LUT4
    generic map(
      INIT => X"BABA"
    )
    port map (
      ADR0 => int_demo_led_out_3_Q,
      ADR1 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR2 => C6_N26,
      ADR3 => VCC,
      O => C6_N151_pack_1
    );
  C6_bcd_3_mux00072 : X_LUT4
    generic map(
      INIT => X"7B84"
    )
    port map (
      ADR0 => N187_0,
      ADR1 => C6_Madd_bcd_3_0_add0007_cy_1_0,
      ADR2 => C6_N151,
      ADR3 => C6_Madd_bcd_3_0_add0007_lut_3_0,
      O => C6_Madd_bcd_7_4_add0005_cy(0)
    );
  C1_output_6_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(6),
      ADR2 => C1_int_output(6),
      ADR3 => VCC,
      O => int_demo_led_out_6_pack_1
    );
  C6_bcd_1_mux000321 : X_LUT4
    generic map(
      INIT => X"BABB"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR2 => N234_0,
      ADR3 => C6_Madd_bcd_3_0_add0003_cy_1_0,
      O => C6_N121
    );
  C6_bcd_1_mux000721 : X_LUT4
    generic map(
      INIT => X"AEAE"
    )
    port map (
      ADR0 => int_demo_led_out_2_0,
      ADR1 => C6_bcd_1_mux000721_SW0_O,
      ADR2 => C6_Madd_bcd_3_0_add0007_lut_3_0,
      ADR3 => VCC,
      O => C6_N161
    );
  C6_Madd_bcd_11_8_add0001_cy_1_11_SW3 : X_LUT4
    generic map(
      INIT => X"4A02"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR3 => C6_bcd_11_mux000112_0,
      O => C6_Madd_bcd_11_8_add0001_cy_1_11_SW3_O_pack_1
    );
  C6_bcd_11_mux000137 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR1 => C6_N19_0,
      ADR2 => C6_Madd_bcd_11_8_add0001_cy_1_11_SW3_O,
      ADR3 => N177_0,
      O => thousands2(1)
    );
  C6_Madd_bcd_7_4_add0005_cy_1_1 : X_LUT4
    generic map(
      INIT => X"B7ED"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0007_lut_3_0,
      ADR1 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR2 => C6_N27_0,
      ADR3 => N49_0,
      O => C6_Madd_bcd_7_4_add0005_cy_1_pack_1
    );
  C6_bcd_4_mux00051 : X_LUT4
    generic map(
      INIT => X"5666"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0005_cy_0_0,
      ADR1 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      ADR2 => N47_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_cy(1),
      O => tens2(1)
    );
  C6_bcd_4_mux00051_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_N25,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => C6_N19_0,
      O => C6_bcd_4_mux00051_SW0_SW0_O_pack_1
    );
  C6_bcd_4_mux00051_SW0 : X_LUT4
    generic map(
      INIT => X"9C99"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR1 => C6_bcd_4_mux00051_SW0_SW0_O,
      ADR2 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      ADR3 => C6_N20,
      O => N47
    );
  C6_bcd_7_mux000311_SW0 : X_LUT4
    generic map(
      INIT => X"3C99"
    )
    port map (
      ADR0 => N165,
      ADR1 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR2 => C6_bcd_7_mux0001_SW6_O,
      ADR3 => C6_Madd_bcd_7_4_add0001_cy_1_0,
      O => N119
    );
  C6_Madd_bcd_3_0_add0004_cy_1_11 : X_LUT4
    generic map(
      INIT => X"DEDD"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => int_demo_led_out_5_Q,
      ADR2 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR3 => C6_N23,
      O => C6_Madd_bcd_3_0_add0004_cy_1_pack_1
    );
  C6_bcd_2_mux0004_1 : X_LUT4
    generic map(
      INIT => X"6099"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => C6_N121_0,
      ADR2 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR3 => C6_Madd_bcd_3_0_add0004_cy(1),
      O => C6_bcd_2_mux0004_5664
    );
  C6_bcd_7_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => C6_N22,
      ADR3 => VCC,
      O => N34_pack_1
    );
  C6_bcd_7_mux0001_SW2 : X_LUT4
    generic map(
      INIT => X"396C"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR2 => N12_0,
      ADR3 => N34,
      O => N111
    );
  C6_bcd_7_mux000211_SW0 : X_LUT4
    generic map(
      INIT => X"66A5"
    )
    port map (
      ADR0 => C6_N23,
      ADR1 => N111_0,
      ADR2 => N110_0,
      ADR3 => C6_Madd_bcd_7_4_add0001_cy_1_0,
      O => N86_pack_1
    );
  C6_bcd_7_mux000211_SW2 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => C6_N24,
      ADR2 => N86,
      ADR3 => VCC,
      O => N134
    );
  C6_bcd_3_mux000711_SW2 : X_LUT4
    generic map(
      INIT => X"C77C"
    )
    port map (
      ADR0 => int_demo_led_out_2_0,
      ADR1 => int_demo_led_out_3_Q,
      ADR2 => int_demo_led_out_4_Q,
      ADR3 => C6_bcd_3_cmp_gt0005,
      O => C6_bcd_3_mux000711_SW2_O_pack_1
    );
  C6_bcd_3_mux000711 : X_LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      ADR0 => C6_N26,
      ADR1 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR2 => N193_0,
      ADR3 => C6_bcd_3_mux000711_SW2_O,
      O => C6_N27
    );
  C6_bcd_5_mux000321_SW1 : X_LUT4
    generic map(
      INIT => X"596A"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0002_cy(0),
      ADR1 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR3 => N122,
      O => C6_bcd_5_mux000321_SW1_O_pack_1
    );
  C6_bcd_7_mux000411_SW2 : X_LUT4
    generic map(
      INIT => X"56A6"
    )
    port map (
      ADR0 => C6_bcd_7_cmp_gt0002_0,
      ADR1 => N139_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_cy(1),
      ADR3 => C6_bcd_5_mux000321_SW1_O,
      O => N100
    );
  C6_Madd_bcd_3_0_add0008_cy_1_1 : X_LUT4
    generic map(
      INIT => X"DEDD"
    )
    port map (
      ADR0 => int_demo_led_out_2_0,
      ADR1 => int_demo_led_out_1_0,
      ADR2 => C6_Madd_bcd_3_0_add0007_lut_3_0,
      ADR3 => C6_N27_0,
      O => C6_Madd_bcd_3_0_add0008_cy_1_pack_1
    );
  C6_bcd_3_mux000811 : X_LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      ADR0 => C6_N161_0,
      ADR1 => C6_bcd_3_cmp_gt0006_0,
      ADR2 => int_demo_led_out_3_Q,
      ADR3 => C6_Madd_bcd_3_0_add0008_cy(1),
      O => C6_N28
    );
  C1_output_8_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(8),
      ADR2 => C1_int_output(8),
      ADR3 => VCC,
      O => int_demo_led_out_8_pack_1
    );
  C6_bcd_3_mux00032_SW0 : X_LUT4
    generic map(
      INIT => X"99A9"
    )
    port map (
      ADR0 => int_demo_led_out_8_Q,
      ADR1 => int_demo_led_out_7_Q,
      ADR2 => N163,
      ADR3 => C6_Madd_bcd_3_0_add0002_lut(3),
      O => N276
    );
  C6_bcd_11_mux000211_SW0 : X_LUT4
    generic map(
      INIT => X"1E5A"
    )
    port map (
      ADR0 => C6_bcd_11_mux000134_0,
      ADR1 => N142_0,
      ADR2 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR3 => C6_Madd_bcd_11_8_add0001_cy(1),
      O => C6_bcd_11_mux000211_SW0_O_pack_1
    );
  C6_bcd_8_mux00021 : X_LUT4
    generic map(
      INIT => X"332C"
    )
    port map (
      ADR0 => C6_bcd_11_mux000211_SW0_O,
      ADR1 => C6_Madd_bcd_11_8_add0002_cy(0),
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_2_0,
      ADR3 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      O => hundreds2(1)
    );
  C6_bcd_11_mux000137_SW0 : X_LUT4
    generic map(
      INIT => X"069F"
    )
    port map (
      ADR0 => C6_N19_0,
      ADR1 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR2 => N114_0,
      ADR3 => N113_0,
      O => C6_bcd_11_mux000137_SW0_O_pack_1
    );
  C6_bcd_9_mux00011 : X_LUT4
    generic map(
      INIT => X"3D38"
    )
    port map (
      ADR0 => C6_bcd_11_mux000134_0,
      ADR1 => N80_0,
      ADR2 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR3 => C6_bcd_11_mux000137_SW0_O,
      O => C6_Madd_bcd_11_8_add0002_lut(2)
    );
  C6_bcd_11_mux000211_SW1 : X_LUT4
    generic map(
      INIT => X"6060"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR1 => thousands2_1_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_2_0,
      ADR3 => VCC,
      O => C6_bcd_11_mux000211_SW1_O_pack_1
    );
  C6_bcd_9_mux00021 : X_LUT4
    generic map(
      INIT => X"999A"
    )
    port map (
      ADR0 => N59_0,
      ADR1 => C6_Madd_bcd_11_8_add0002_cy(0),
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR3 => C6_bcd_11_mux000211_SW1_O,
      O => hundreds2(2)
    );
  C7_Mrom_ca1_mux0001311_SW0 : X_LUT4
    generic map(
      INIT => X"DBFA"
    )
    port map (
      ADR0 => int_demo_led_out_1_0,
      ADR1 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR2 => N57_0,
      ADR3 => C6_N28_0,
      O => C7_Mrom_ca1_mux0001311_SW0_O_pack_1
    );
  C7_Mrom_ca1_mux0001311 : X_LUT4
    generic map(
      INIT => X"00D8"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => C1_int_output(0),
      ADR2 => int_demo_led_in(0),
      ADR3 => C7_Mrom_ca1_mux0001311_SW0_O,
      O => C7_Mrom_ca1_mux000131
    );
  C7_ca1_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca1_3_DXMUX_5959,
      CE => VCC,
      CLK => C7_ca1_3_CLKINV_5943,
      SET => GND,
      RST => GND,
      SSET => C7_ca1_3_SRINV_5944,
      SRST => GND,
      O => C7_ca1(3)
    );
  C7_Mrom_ca1_mux0001411_SW0 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR1 => C6_N28_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_Mrom_ca1_mux0001411_SW0_O_pack_1
    );
  C7_Mrom_ca1_mux0001411 : X_LUT4
    generic map(
      INIT => X"E4D8"
    )
    port map (
      ADR0 => int_demo_led_out_1_0,
      ADR1 => N57_0,
      ADR2 => ones2_3_0,
      ADR3 => C7_Mrom_ca1_mux0001411_SW0_O,
      O => C7_Mrom_ca1_mux000141
    );
  C7_ca1_4 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca1_4_DXMUX_5992,
      CE => VCC,
      CLK => C7_ca1_4_CLKINV_5974,
      SET => GND,
      RST => GND,
      SSET => C7_ca1_4_SRINV_5975,
      SRST => GND,
      O => C7_ca1(4)
    );
  C1_output_7_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(7),
      ADR2 => C1_int_output(7),
      ADR3 => VCC,
      O => int_demo_led_out_7_pack_1
    );
  C6_bcd_2_mux0002 : X_LUT4
    generic map(
      INIT => X"3604"
    )
    port map (
      ADR0 => int_demo_led_out_7_Q,
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(2),
      ADR2 => N20,
      ADR3 => C6_Madd_bcd_3_0_add0002_lut(3),
      O => C6_Madd_bcd_3_0_add0003_lut(3)
    );
  C6_bcd_2_mux0005_SW1 : X_LUT4
    generic map(
      INIT => X"6566"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => int_demo_led_out_5_Q,
      ADR2 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR3 => C6_N24,
      O => C6_bcd_2_mux0005_SW1_O_pack_1
    );
  C6_bcd_2_mux0005 : X_LUT4
    generic map(
      INIT => X"6909"
    )
    port map (
      ADR0 => C6_bcd_3_cmp_gt0003,
      ADR1 => C6_bcd_2_mux0005_SW1_O,
      ADR2 => C6_Madd_bcd_3_0_add0005_cy_1_0,
      ADR3 => C6_bcd_2_mux0004_0,
      O => C6_Madd_bcd_3_0_add0006_lut(3)
    );
  C6_bcd_1_mux000521 : X_LUT4
    generic map(
      INIT => X"BABA"
    )
    port map (
      ADR0 => int_demo_led_out_4_Q,
      ADR1 => C6_bcd_2_mux0004_0,
      ADR2 => C6_bcd_3_mux000511_2079,
      ADR3 => VCC,
      O => C6_N141_pack_1
    );
  C6_bcd_2_mux0006 : X_LUT4
    generic map(
      INIT => X"6921"
    )
    port map (
      ADR0 => N96_0,
      ADR1 => C6_Madd_bcd_3_0_add0006_cy(1),
      ADR2 => C6_N141,
      ADR3 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      O => C6_Madd_bcd_3_0_add0007_lut(3)
    );
  C6_bcd_2_mux0007 : X_LUT4
    generic map(
      INIT => X"6921"
    )
    port map (
      ADR0 => N187_0,
      ADR1 => C6_Madd_bcd_3_0_add0007_cy_1_0,
      ADR2 => C6_N151,
      ADR3 => C6_Madd_bcd_3_0_add0007_lut_3_0,
      O => C6_Madd_bcd_3_0_add0008_lut_3_pack_1
    );
  C6_bcd_2_mux0008 : X_LUT4
    generic map(
      INIT => X"6099"
    )
    port map (
      ADR0 => N53_0,
      ADR1 => C6_N161_0,
      ADR2 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR3 => C6_Madd_bcd_3_0_add0008_cy(1),
      O => ones2(3)
    );
  C6_bcd_7_mux00022 : X_LUT4
    generic map(
      INIT => X"95AA"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR1 => N126_0,
      ADR2 => N86,
      ADR3 => C6_Madd_bcd_7_4_add0002_lut(2),
      O => C6_Madd_bcd_11_8_add0000_cy_0_pack_1
    );
  C6_bcd_10_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR1 => C6_bcd_3_mux0001,
      ADR2 => C6_Madd_bcd_7_4_add0000_cy_0_0,
      ADR3 => C6_Madd_bcd_11_8_add0000_cy(0),
      O => C6_bcd_11_mux000112
    );
  C6_bcd_7_mux00032 : X_LUT4
    generic map(
      INIT => X"69F0"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => C6_N61_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_7_4_add0003_cy(1),
      O => C6_Madd_bcd_11_8_add0001_cy_0_pack_1
    );
  C6_bcd_10_mux0002_SW0 : X_LUT4
    generic map(
      INIT => X"E1A5"
    )
    port map (
      ADR0 => C6_bcd_11_mux000134_0,
      ADR1 => N142_0,
      ADR2 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR3 => C6_Madd_bcd_11_8_add0001_cy(1),
      O => N22
    );
  C6_bcd_11_mux000211_SW2 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR1 => thousands2_1_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_bcd_11_mux000211_SW2_O_pack_1
    );
  C6_bcd_11_mux00022 : X_LUT4
    generic map(
      INIT => X"666C"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0002_lut_2_0,
      ADR1 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_cy(0),
      ADR3 => C6_bcd_11_mux000211_SW2_O,
      O => thousands2(0)
    );
  C6_bcd_5_mux00011 : X_LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0000_cy_0_0,
      ADR1 => N149_0,
      ADR2 => N150,
      ADR3 => C6_Madd_bcd_7_4_add0001_cy_1_0,
      O => C6_Madd_bcd_7_4_add0002_lut_2_pack_1
    );
  C6_bcd_5_mux000221 : X_LUT4
    generic map(
      INIT => X"DCDD"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR1 => N92_0,
      ADR2 => N86,
      ADR3 => C6_Madd_bcd_7_4_add0002_lut(2),
      O => C6_N61
    );
  C6_Madd_bcd_7_4_add0004_cy_1_11 : X_LUT4
    generic map(
      INIT => X"CEFF"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR1 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR2 => C6_bcd_7_cmp_gt0003_0,
      ADR3 => C6_N71,
      O => C6_Madd_bcd_7_4_add0004_cy_1_pack_2
    );
  C6_bcd_5_mux000421 : X_LUT4
    generic map(
      INIT => X"AEAF"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR1 => N100_0,
      ADR2 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      ADR3 => C6_Madd_bcd_7_4_add0004_cy(1),
      O => C6_N81
    );
  C6_bcd_7_mux0001_SW5 : X_LUT4
    generic map(
      INIT => X"0208"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0000_cy(2),
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => C6_bcd_3_mux0001,
      ADR3 => C6_N22,
      O => N165_pack_1
    );
  C6_bcd_6_mux0001 : X_LUT4
    generic map(
      INIT => X"D8E4"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR1 => N165,
      ADR2 => N237_0,
      ADR3 => C6_N23,
      O => C6_Madd_bcd_7_4_add0002_lut(3)
    );
  C6_bcd_3_mux00042 : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => C6_N24,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_Madd_bcd_7_4_add0002_cy_0_pack_1
    );
  C6_bcd_6_mux0002 : X_LUT4
    generic map(
      INIT => X"0AC2"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR1 => N119_0,
      ADR2 => C6_Madd_bcd_7_4_add0002_lut(2),
      ADR3 => C6_Madd_bcd_7_4_add0002_cy(0),
      O => C6_Madd_bcd_7_4_add0003_lut(3)
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11 : X_LUT4
    generic map(
      INIT => X"D7EB"
    )
    port map (
      ADR0 => C6_N24,
      ADR1 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR2 => C6_N25,
      ADR3 => N61,
      O => C6_Madd_bcd_7_4_add0003_cy_1_pack_1
    );
  C6_bcd_6_mux0003 : X_LUT4
    generic map(
      INIT => X"6099"
    )
    port map (
      ADR0 => N18_0,
      ADR1 => C6_N61_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_7_4_add0003_cy(1),
      O => C6_Madd_bcd_7_4_add0004_lut(3)
    );
  C6_Madd_bcd_7_4_add0004_cy_1_11_SW01 : X_LUT4
    generic map(
      INIT => X"EEEE"
    )
    port map (
      ADR0 => N205_0,
      ADR1 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_Madd_bcd_7_4_add0004_cy_1_11_SW01_O_pack_1
    );
  C6_bcd_6_mux0004 : X_LUT4
    generic map(
      INIT => X"7820"
    )
    port map (
      ADR0 => C6_N71,
      ADR1 => C6_Madd_bcd_7_4_add0004_cy_1_11_SW01_O,
      ADR2 => N30_0,
      ADR3 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      O => C6_Madd_bcd_7_4_add0005_lut(3)
    );
  C6_bcd_11_mux000137_SW4 : X_LUT4
    generic map(
      INIT => X"363C"
    )
    port map (
      ADR0 => C6_bcd_7_mux0001_2066,
      ADR1 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR2 => C6_bcd_11_mux000134_0,
      ADR3 => C6_bcd_11_mux000112_0,
      O => C6_bcd_11_mux000137_SW4_O_pack_1
    );
  C6_bcd_9_mux000221_SW0 : X_LUT4
    generic map(
      INIT => X"C399"
    )
    port map (
      ADR0 => N144_0,
      ADR1 => C6_N19_0,
      ADR2 => C6_bcd_11_mux000137_SW4_O,
      ADR3 => C6_Madd_bcd_11_8_add0001_cy(1),
      O => N59
    );
  C6_bcd_6_mux0005 : X_LUT4
    generic map(
      INIT => X"48A5"
    )
    port map (
      ADR0 => N37_0,
      ADR1 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      ADR2 => C6_N81_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_cy(1),
      O => tens2_3_pack_1
    );
  C7_Mrom_ca2_mux0001111 : X_LUT4
    generic map(
      INIT => X"CEC0"
    )
    port map (
      ADR0 => tens2_0_0,
      ADR1 => tens2(3),
      ADR2 => tens2_1_0,
      ADR3 => tens2(2),
      O => C7_Mrom_ca2_mux00011
    );
  C7_ca2_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca2_1_DXMUX_6359,
      CE => VCC,
      CLK => C7_ca2_1_CLKINV_6344,
      SET => GND,
      RST => GND,
      O => C7_ca2(1)
    );
  C6_bcd_5_mux00051_SW1 : X_LUT4
    generic map(
      INIT => X"3FB7"
    )
    port map (
      ADR0 => N76_0,
      ADR1 => tens2_0_0,
      ADR2 => N55_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_cy(1),
      O => C6_bcd_5_mux00051_SW1_O_pack_1
    );
  C7_Mrom_ca2_mux0001311 : X_LUT4
    generic map(
      INIT => X"1B00"
    )
    port map (
      ADR0 => N77,
      ADR1 => C6_bcd_5_mux00051_SW1_O,
      ADR2 => N117_0,
      ADR3 => tens2_1_0,
      O => C7_Mrom_ca2_mux000131
    );
  C7_ca2_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca2_3_DXMUX_6391,
      CE => VCC,
      CLK => C7_ca2_3_CLKINV_6375,
      SET => GND,
      RST => GND,
      SSET => C7_ca2_3_SRINV_6376,
      SRST => GND,
      O => C7_ca2(3)
    );
  C7_Mrom_ca1_mux000111_SW0 : X_LUT4
    generic map(
      INIT => X"9A9A"
    )
    port map (
      ADR0 => int_demo_led_out_1_0,
      ADR1 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR2 => C6_N28_0,
      ADR3 => VCC,
      O => C7_Mrom_ca1_mux000111_SW0_O_pack_1
    );
  C7_Mrom_ca1_mux000111 : X_LUT4
    generic map(
      INIT => X"C6F0"
    )
    port map (
      ADR0 => int_demo_led_out_0_0,
      ADR1 => N57_0,
      ADR2 => ones2_3_0,
      ADR3 => C7_Mrom_ca1_mux000111_SW0_O,
      O => C7_Mrom_ca1_mux0001
    );
  C7_ca1_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca1_0_DXMUX_6423,
      CE => VCC,
      CLK => C7_ca1_0_CLKINV_6407,
      SET => GND,
      RST => GND,
      O => C7_ca1(0)
    );
  C6_bcd_1_mux00081 : X_LUT4
    generic map(
      INIT => X"B4A5"
    )
    port map (
      ADR0 => int_demo_led_out_1_0,
      ADR1 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR2 => N57_0,
      ADR3 => C6_N28_0,
      O => ones2_2_pack_1
    );
  C7_Mrom_ca1_mux000121 : X_LUT4
    generic map(
      INIT => X"CDC0"
    )
    port map (
      ADR0 => int_demo_led_out_0_0,
      ADR1 => ones2_3_0,
      ADR2 => ones2(2),
      ADR3 => ones2(1),
      O => C7_Mrom_ca1_mux00012
    );
  C7_ca1_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca1_2_DXMUX_6453,
      CE => VCC,
      CLK => C7_ca1_2_CLKINV_6438,
      SET => GND,
      RST => GND,
      O => C7_ca1(2)
    );
  C6_bcd_0_mux00081 : X_LUT4
    generic map(
      INIT => X"6565"
    )
    port map (
      ADR0 => int_demo_led_out_1_0,
      ADR1 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR2 => C6_N28_0,
      ADR3 => VCC,
      O => ones2_1_pack_1
    );
  C7_Mrom_ca1_mux000151 : X_LUT4
    generic map(
      INIT => X"EFC2"
    )
    port map (
      ADR0 => int_demo_led_out_0_0,
      ADR1 => ones2_3_0,
      ADR2 => ones2(2),
      ADR3 => ones2(1),
      O => C7_Mrom_ca1_mux00015
    );
  C7_ca1_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca1_5_DXMUX_6483,
      CE => VCC,
      CLK => C7_ca1_5_CLKINV_6467,
      SET => GND,
      RST => GND,
      O => C7_ca1(5)
    );
  C6_Madd_bcd_11_8_add0001_cy_1_11 : X_LUT4
    generic map(
      INIT => X"F66F"
    )
    port map (
      ADR0 => thousands2_2_0,
      ADR1 => C6_Madd_bcd_11_8_add0000_cy(0),
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => C6_N19_0,
      O => C6_Madd_bcd_11_8_add0001_cy_1_pack_1
    );
  C6_bcd_10_mux0001 : X_LUT4
    generic map(
      INIT => X"11A0"
    )
    port map (
      ADR0 => C6_bcd_7_mux0001_2066,
      ADR1 => N16_0,
      ADR2 => C6_bcd_11_mux000112_0,
      ADR3 => C6_Madd_bcd_11_8_add0001_cy(1),
      O => C6_Madd_bcd_11_8_add0002_lut(3)
    );
  C6_bcd_7_mux00042 : X_LUT4
    generic map(
      INIT => X"69E1"
    )
    port map (
      ADR0 => N30_0,
      ADR1 => C6_N71,
      ADR2 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      ADR3 => N185_0,
      O => C6_Madd_bcd_11_8_add0002_cy_0_pack_1
    );
  C6_bcd_10_mux0002 : X_LUT4
    generic map(
      INIT => X"2D20"
    )
    port map (
      ADR0 => N22_0,
      ADR1 => C6_Madd_bcd_11_8_add0002_cy(0),
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_2_0,
      ADR3 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      O => hundreds2(3)
    );
  C1_output_5_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(5),
      ADR2 => C1_int_output(5),
      ADR3 => VCC,
      O => int_demo_led_out_5_pack_2
    );
  C6_bcd_3_mux000411_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"0027"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => C1_int_output(6),
      ADR2 => int_demo_led_in(6),
      ADR3 => int_demo_led_out_5_Q,
      O => N183
    );
  C6_Madd_bcd_7_4_add0003_cy_1_11_SW4 : X_LUT4
    generic map(
      INIT => X"9696"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => C6_N61_0,
      ADR3 => VCC,
      O => C6_Madd_bcd_7_4_add0003_cy_1_11_SW4_O_pack_1
    );
  C6_bcd_7_mux000311 : X_LUT4
    generic map(
      INIT => X"F690"
    )
    port map (
      ADR0 => C6_N24,
      ADR1 => N61,
      ADR2 => N180,
      ADR3 => C6_Madd_bcd_7_4_add0003_cy_1_11_SW4_O,
      O => C6_N19
    );
  C1_output_9_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(9),
      ADR2 => C1_int_output(9),
      ADR3 => VCC,
      O => C1_output_9_1_O_pack_2
    );
  C6_bcd_6_mux0001_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => C1_int_output(10),
      ADR2 => int_demo_led_in(10),
      ADR3 => C1_output_9_1_O,
      O => N102
    );
  C6_bcd_7_mux000211 : X_LUT4
    generic map(
      INIT => X"60FF"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => C6_N24,
      ADR2 => N86,
      ADR3 => C6_Madd_bcd_7_4_add0002_lut(2),
      O => C6_N18_pack_1
    );
  C6_thousands_2_1 : X_LUT4
    generic map(
      INIT => X"A8A2"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR1 => C6_Madd_bcd_7_4_add0002_lut_3_0,
      ADR2 => C6_bcd_7_mux0001_2066,
      ADR3 => C6_N18,
      O => thousands2(2)
    );
  C6_bcd_1_mux000221 : X_LUT4
    generic map(
      INIT => X"AEAE"
    )
    port map (
      ADR0 => int_demo_led_out_7_Q,
      ADR1 => N163,
      ADR2 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR3 => VCC,
      O => C6_N101_pack_1
    );
  C6_bcd_3_mux000311_SW1 : X_LUT4
    generic map(
      INIT => X"9696"
    )
    port map (
      ADR0 => int_demo_led_out_8_Q,
      ADR1 => C6_bcd_3_mux0001,
      ADR2 => C6_N101,
      ADR3 => VCC,
      O => N234
    );
  C6_bcd_5_mux00051 : X_LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      ADR0 => N55_0,
      ADR1 => C6_Madd_bcd_7_4_add0005_cy(1),
      ADR2 => N76_0,
      ADR3 => N77,
      O => tens2_2_pack_1
    );
  C7_Mrom_ca2_mux000121 : X_LUT4
    generic map(
      INIT => X"CCD0"
    )
    port map (
      ADR0 => tens2_0_0,
      ADR1 => tens2(3),
      ADR2 => tens2_1_0,
      ADR3 => tens2(2),
      O => C7_Mrom_ca2_mux00012
    );
  C7_ca2_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca2_2_DXMUX_6681,
      CE => VCC,
      CLK => C7_ca2_2_CLKINV_6666,
      SET => GND,
      RST => GND,
      O => C7_ca2(2)
    );
  C6_bcd_3_mux000411_SW1 : X_LUT4
    generic map(
      INIT => X"F9FA"
    )
    port map (
      ADR0 => int_demo_led_out_7_Q,
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => N183_0,
      ADR3 => C6_N22,
      O => N108_pack_1
    );
  C6_bcd_3_mux000411_SW2 : X_LUT4
    generic map(
      INIT => X"1B1B"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR1 => N108,
      ADR2 => N107,
      ADR3 => VCC,
      O => N223
    );
  C6_bcd_3_cmp_gt00031 : X_LUT4
    generic map(
      INIT => X"F9F0"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => N227_0,
      ADR2 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_3_0_add0003_cy_1_0,
      O => C6_bcd_3_cmp_gt0003_pack_1
    );
  C6_bcd_3_mux000511_SW0 : X_LUT4
    generic map(
      INIT => X"9D6E"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => int_demo_led_out_5_Q,
      ADR2 => int_demo_led_out_4_Q,
      ADR3 => C6_bcd_3_cmp_gt0003,
      O => N104
    );
  C1_output_4_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(4),
      ADR2 => C1_int_output(4),
      ADR3 => VCC,
      O => int_demo_led_out_4_pack_1
    );
  C6_bcd_3_mux000511_SW1 : X_LUT4
    generic map(
      INIT => X"AB57"
    )
    port map (
      ADR0 => int_demo_led_out_6_Q,
      ADR1 => int_demo_led_out_5_Q,
      ADR2 => int_demo_led_out_4_Q,
      ADR3 => C6_bcd_3_cmp_gt0003,
      O => N105
    );
  C6_bcd_3_cmp_gt00041_SW2 : X_LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      ADR0 => int_demo_led_out_3_Q,
      ADR1 => min_sec_IBUF_2088,
      ADR2 => int_demo_led_in(4),
      ADR3 => C1_int_output(4),
      O => C6_bcd_3_cmp_gt00041_SW2_O_pack_1
    );
  C6_bcd_3_mux000611_SW2 : X_LUT4
    generic map(
      INIT => X"EDEE"
    )
    port map (
      ADR0 => int_demo_led_out_5_Q,
      ADR1 => C6_bcd_3_cmp_gt00041_SW2_O,
      ADR2 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR3 => C6_N24,
      O => N137
    );
  C6_bcd_3_cmp_gt00051 : X_LUT4
    generic map(
      INIT => X"BBBB"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_bcd_3_mux000511_2079,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_bcd_3_cmp_gt0005_pack_1
    );
  C6_bcd_3_mux000711_SW3 : X_LUT4
    generic map(
      INIT => X"F11F"
    )
    port map (
      ADR0 => int_demo_led_out_2_0,
      ADR1 => int_demo_led_out_3_Q,
      ADR2 => int_demo_led_out_4_Q,
      ADR3 => C6_bcd_3_cmp_gt0005,
      O => N193
    );
  C1_output_3_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(3),
      ADR2 => C1_int_output(3),
      ADR3 => VCC,
      O => int_demo_led_out_3_pack_1
    );
  C6_bcd_3_mux000811_SW0 : X_LUT4
    generic map(
      INIT => X"6565"
    )
    port map (
      ADR0 => int_demo_led_out_3_Q,
      ADR1 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR2 => C6_N26,
      ADR3 => VCC,
      O => N53
    );
  C6_Madd_bcd_7_4_add0004_cy_1_11_SW2 : X_LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      ADR0 => N61,
      ADR1 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR2 => N212_0,
      ADR3 => N211_0,
      O => C6_Madd_bcd_7_4_add0004_cy_1_11_SW2_O_pack_1
    );
  C6_Madd_bcd_7_4_add0005_cy_1_1_SW1 : X_LUT4
    generic map(
      INIT => X"FF46"
    )
    port map (
      ADR0 => C6_N71,
      ADR1 => N67_0,
      ADR2 => C6_Madd_bcd_7_4_add0004_cy_1_11_SW2_O,
      ADR3 => C6_Madd_bcd_7_4_add0004_lut_3_0,
      O => N49
    );
  C6_bcd_7_cmp_gt00031_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => C6_bcd_2_mux0004_0,
      ADR1 => C6_bcd_3_mux000511_2079,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_bcd_7_cmp_gt00031_SW0_SW0_O_pack_1
    );
  C6_bcd_7_cmp_gt00031_SW0 : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => N119_0,
      ADR1 => C6_N61_0,
      ADR2 => C6_bcd_7_cmp_gt00031_SW0_SW0_O,
      ADR3 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      O => N205
    );
  C6_bcd_2_mux0004 : X_LUT4
    generic map(
      INIT => X"6099"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => C6_N121_0,
      ADR2 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR3 => C6_Madd_bcd_3_0_add0004_cy(1),
      O => C6_Madd_bcd_3_0_add0005_lut_3_pack_1
    );
  C6_bcd_7_cmp_gt00031_SW4 : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_N25,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => N158,
      O => N211
    );
  C6_bcd_3_mux000511 : X_LUT4
    generic map(
      INIT => X"E4F0"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0004_lut(3),
      ADR1 => N105_0,
      ADR2 => N104_0,
      ADR3 => C6_N24,
      O => C6_N25_pack_1
    );
  C6_bcd_7_cmp_gt00031_SW5 : X_LUT4
    generic map(
      INIT => X"0009"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_N25,
      ADR2 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR3 => N159,
      O => N212
    );
  C6_bcd_7_mux000511 : X_LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      ADR0 => C6_N81_0,
      ADR1 => C6_bcd_7_cmp_gt0003_0,
      ADR2 => C6_Madd_bcd_7_4_add0003_cy_0_0,
      ADR3 => C6_Madd_bcd_7_4_add0005_cy(1),
      O => C6_bcd_7_mux000511_O_pack_1
    );
  C7_Mrom_ca3_mux0001311 : X_LUT4
    generic map(
      INIT => X"8400"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0005_lut_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => C6_bcd_7_mux000511_O,
      ADR3 => hundreds2_2_0,
      O => C7_Mrom_ca3_mux000131
    );
  C7_ca3_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca3_3_DXMUX_6953,
      CE => VCC,
      CLK => C7_ca3_3_CLKINV_6937,
      SET => GND,
      RST => GND,
      SSET => C7_ca3_3_SRINV_6938,
      SRST => GND,
      O => C7_ca3(3)
    );
  C1_output_11_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => min_sec_IBUF_2088,
      ADR1 => int_demo_led_in(11),
      ADR2 => C1_int_output(11),
      ADR3 => VCC,
      O => int_demo_led_out_11_pack_1
    );
  C6_bcd_6_mux0001_SW0 : X_LUT4
    generic map(
      INIT => X"DF7F"
    )
    port map (
      ADR0 => int_demo_led_out_11_Q,
      ADR1 => C6_Madd_bcd_3_0_add0002_lut(3),
      ADR2 => N102_0,
      ADR3 => C6_N22,
      O => N12
    );
  C6_bcd_7_mux0001 : X_LUT4
    generic map(
      INIT => X"D850"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => N12_0,
      ADR2 => N34,
      ADR3 => C6_Madd_bcd_7_4_add0001_cy_1_0,
      O => C6_bcd_7_mux0001_pack_1
    );
  C6_bcd_6_mux0003_SW0 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0001_cy(0),
      ADR1 => C6_bcd_7_mux0001_2066,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N18
    );
  int_demo_led_in_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(0),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(0)
    );
  int_demo_led_in_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_1_DYMUX_7026,
      CE => int_demo_led_in_1_CEINV_7016,
      CLK => int_demo_led_in_1_CLKINV_7017,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(0)
    );
  int_demo_led_in_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(1),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(1)
    );
  int_demo_led_in_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_1_DXMUX_7039,
      CE => int_demo_led_in_1_CEINV_7016,
      CLK => int_demo_led_in_1_CLKINV_7017,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(1)
    );
  int_demo_led_in_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(2),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(2)
    );
  int_demo_led_in_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int_demo_led_in_3_DYMUX_7064,
      CE => int_demo_led_in_3_CEINV_7054,
      CLK => int_demo_led_in_3_CLKINV_7055,
      SET => GND,
      RST => GND,
      O => int_demo_led_in(2)
    );
  int_demo_led_in_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"2828"
    )
    port map (
      ADR0 => int_demo_led_in_addsub0000(3),
      ADR1 => prev_sec_2059,
      ADR2 => C4_int_led_2014,
      ADR3 => VCC,
      O => int_demo_led_in_mux0001(3)
    );
  C7_ca2_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca2_5_DXMUX_7365,
      CE => VCC,
      CLK => C7_ca2_5_CLKINV_7346,
      SET => GND,
      RST => GND,
      O => C7_ca2(5)
    );
  C7_ca3_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca3_1_DYMUX_7389,
      CE => VCC,
      CLK => C7_ca3_1_CLKINV_7381,
      SET => GND,
      RST => GND,
      O => C7_ca3(0)
    );
  C7_Mrom_ca3_mux000111 : X_LUT4
    generic map(
      INIT => X"AB98"
    )
    port map (
      ADR0 => hundreds2_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => hundreds2_0_0,
      ADR3 => hundreds2_2_0,
      O => C7_Mrom_ca3_mux0001
    );
  C7_Mrom_ca3_mux0001111 : X_LUT4
    generic map(
      INIT => X"BE88"
    )
    port map (
      ADR0 => hundreds2_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => hundreds2_0_0,
      ADR3 => hundreds2_2_0,
      O => C7_Mrom_ca3_mux00011
    );
  C7_ca3_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca3_1_DXMUX_7400,
      CE => VCC,
      CLK => C7_ca3_1_CLKINV_7381,
      SET => GND,
      RST => GND,
      O => C7_ca3(1)
    );
  C7_Mrom_ca2_mux000161 : X_LUT4
    generic map(
      INIT => X"E9E9"
    )
    port map (
      ADR0 => tens2(3),
      ADR1 => tens2_1_0,
      ADR2 => tens2(2),
      ADR3 => VCC,
      O => C7_Mrom_ca2_mux00016
    );
  C7_ca2_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca2_6_DYMUX_7418,
      CE => VCC,
      CLK => C7_ca2_6_CLKINV_7409,
      SET => GND,
      RST => GND,
      O => C7_ca2(6)
    );
  C7_Mrom_ca3_mux000161 : X_LUT4
    generic map(
      INIT => X"EA99"
    )
    port map (
      ADR0 => hundreds2_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => hundreds2_0_0,
      ADR3 => hundreds2_2_0,
      O => C7_Mrom_ca3_mux00016
    );
  C7_ca3_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca3_6_DYMUX_7441,
      CE => VCC,
      CLK => C7_ca3_6_CLKINV_7433,
      SET => GND,
      RST => GND,
      O => C7_ca3(2)
    );
  C7_Mrom_ca3_mux000121 : X_LUT4
    generic map(
      INIT => X"AA8C"
    )
    port map (
      ADR0 => hundreds2_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => hundreds2_0_0,
      ADR3 => hundreds2_2_0,
      O => C7_Mrom_ca3_mux00012
    );
  C7_ca3_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca3_6_DXMUX_7452,
      CE => VCC,
      CLK => C7_ca3_6_CLKINV_7433,
      SET => GND,
      RST => GND,
      O => C7_ca3(6)
    );
  C7_Mrom_ca3_mux0001411 : X_LUT4
    generic map(
      INIT => X"B8B8"
    )
    port map (
      ADR0 => hundreds2_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => hundreds2_2_0,
      ADR3 => VCC,
      O => C7_Mrom_ca3_mux000141
    );
  C7_ca3_4 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca3_4_DYMUX_7472,
      CE => VCC,
      CLK => C7_ca3_4_CLKINV_7462,
      SET => GND,
      RST => GND,
      SSET => C7_ca3_4_SRINV_7463,
      SRST => GND,
      O => C7_ca3(4)
    );
  C7_Mrom_ca4_mux000151 : X_LUT4
    generic map(
      INIT => X"D44D"
    )
    port map (
      ADR0 => thousands2_2_0,
      ADR1 => thousands2_1_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR3 => C6_N29,
      O => C7_Mrom_ca4_mux00015
    );
  C7_ca4_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca4_5_DYMUX_7496,
      CE => VCC,
      CLK => C7_ca4_5_CLKINV_7488,
      SET => GND,
      RST => GND,
      O => C7_ca4(1)
    );
  C7_Mrom_ca4_mux0001111 : X_LUT4
    generic map(
      INIT => X"2882"
    )
    port map (
      ADR0 => thousands2_2_0,
      ADR1 => thousands2_1_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR3 => C6_N29,
      O => C7_Mrom_ca4_mux00011
    );
  C7_ca4_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca4_5_DXMUX_7507,
      CE => VCC,
      CLK => C7_ca4_5_CLKINV_7488,
      SET => GND,
      RST => GND,
      O => C7_ca4(5)
    );
  C7_Mrom_ca3_mux000151 : X_LUT4
    generic map(
      INIT => X"EADC"
    )
    port map (
      ADR0 => hundreds2_3_0,
      ADR1 => hundreds2_1_0,
      ADR2 => hundreds2_0_0,
      ADR3 => hundreds2_2_0,
      O => C7_Mrom_ca3_mux00015
    );
  C7_ca3_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca3_5_DYMUX_7525,
      CE => VCC,
      CLK => C7_ca3_5_CLKINV_7517,
      SET => GND,
      RST => GND,
      O => C7_ca3(5)
    );
  C7_Mrom_ca4_mux0001311 : X_LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      ADR0 => thousands2_1_0,
      ADR1 => thousands2_2_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR3 => C6_N29,
      O => C7_Mrom_ca4_mux000131
    );
  C7_ca4_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca4_3_DYMUX_7545,
      CE => VCC,
      CLK => C7_ca4_3_CLKINV_7536,
      SET => GND,
      RST => GND,
      SSET => C7_ca4_3_SRINV_7537,
      SRST => GND,
      O => C7_ca4(3)
    );
  C7_Mrom_ca4_mux0001411 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => thousands2_2_0,
      ADR1 => thousands2_1_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_Mrom_ca4_mux000141
    );
  C7_ca4_4 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => C7_ca4_4_DYMUX_7566,
      CE => VCC,
      CLK => C7_ca4_4_CLKINV_7555,
      SET => GND,
      RST => GND,
      SSET => C7_ca4_4_SRINV_7556,
      SRST => GND,
      O => C7_ca4(4)
    );
  C7_Mrom_ca4_mux000161 : X_LUT4
    generic map(
      INIT => X"9119"
    )
    port map (
      ADR0 => thousands2_1_0,
      ADR1 => thousands2_2_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR3 => C6_N29,
      O => C7_Mrom_ca4_mux00016
    );
  C7_ca4_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca4_6_DYMUX_7585,
      CE => VCC,
      CLK => C7_ca4_6_CLKINV_7577,
      SET => GND,
      RST => GND,
      O => C7_ca4(6)
    );
  int4_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int4_1_DYMUX_7610,
      CE => int4_1_CEINV_7601,
      CLK => int4_1_CLKINV_7602,
      SET => GND,
      RST => GND,
      O => int4(0)
    );
  int4_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      ADR0 => prev_sec_2059,
      ADR1 => C4_int_led_2014,
      ADR2 => prev_sec_cmp_eq0000_0,
      ADR3 => int4(0),
      O => int4_mux0001_5_Q
    );
  int4_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0660"
    )
    port map (
      ADR0 => prev_sec_2059,
      ADR1 => C4_int_led_2014,
      ADR2 => int4(0),
      ADR3 => int4(1),
      O => int4_mux0001_4_Q
    );
  int4_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int4_1_DXMUX_7622,
      CE => int4_1_CEINV_7601,
      CLK => int4_1_CLKINV_7602,
      SET => GND,
      RST => GND,
      O => int4(1)
    );
  int4_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => prev_sec_not0001,
      ADR1 => int4(5),
      ADR2 => Madd_int4_addsub0000_cy_3_0,
      ADR3 => int4(4),
      O => int4_mux0001_0_Q
    );
  int4_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int4_5_DYMUX_7643,
      CE => int4_5_CEINV_7634,
      CLK => int4_5_CLKINV_7635,
      SET => GND,
      RST => GND,
      O => int4(5)
    );
  C7_Mrom_an_mux000111 : X_LUT4
    generic map(
      INIT => X"7777"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => C7_clkdiv(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_Mrom_an_mux0001
    );
  C7_an_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_an_0_DYMUX_7662,
      CE => VCC,
      CLK => C7_an_0_CLKINV_7652,
      SET => GND,
      RST => GND,
      O => C7_an(0)
    );
  C1_prev_sec_not0001_SW0 : X_LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      ADR0 => C1_int4(1),
      ADR1 => C1_int4(5),
      ADR2 => C1_int4(4),
      ADR3 => C1_int4(0),
      O => N2_pack_1
    );
  C1_prev_sec_not0001 : X_LUT4
    generic map(
      INIT => X"A2AA"
    )
    port map (
      ADR0 => C1_int4_not0001_inv_0,
      ADR1 => C1_int4(3),
      ADR2 => N2,
      ADR3 => C1_int4(2),
      O => C1_prev_sec_not0001_7687
    );
  int4_mux0001_0_11 : X_LUT4
    generic map(
      INIT => X"0606"
    )
    port map (
      ADR0 => prev_sec_2059,
      ADR1 => C4_int_led_2014,
      ADR2 => prev_sec_cmp_eq0000_0,
      ADR3 => VCC,
      O => prev_sec_not0001_pack_2
    );
  int4_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      ADR0 => prev_sec_not0001,
      ADR1 => int4(2),
      ADR2 => int4(0),
      ADR3 => int4(1),
      O => int4_mux0001_3_Q
    );
  int4_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => int4_2_DXMUX_7718,
      CE => int4_2_CEINV_7701,
      CLK => int4_2_CLKINV_7702,
      SET => GND,
      RST => GND,
      O => int4(2)
    );
  C6_bcd_5_mux000321_SW0 : X_LUT4
    generic map(
      INIT => X"6955"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0002_cy(0),
      ADR1 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR2 => C6_N25,
      ADR3 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      O => N139
    );
  C6_bcd_5_mux000321_SW3 : X_LUT4
    generic map(
      INIT => X"287D"
    )
    port map (
      ADR0 => C6_Madd_bcd_7_4_add0003_lut_3_0,
      ADR1 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR2 => C6_N25,
      ADR3 => N122,
      O => N190
    );
  C6_bcd_3_mux00032 : X_LUT4
    generic map(
      INIT => X"96F0"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => N276_0,
      ADR2 => C6_Madd_bcd_3_0_add0003_lut_3_0,
      ADR3 => C6_Madd_bcd_3_0_add0003_cy_1_0,
      O => C6_Madd_bcd_7_4_add0001_cy_0_pack_2
    );
  C6_bcd_7_mux0001_SW3 : X_LUT4
    generic map(
      INIT => X"0F4B"
    )
    port map (
      ADR0 => C6_bcd_3_mux0001,
      ADR1 => N34,
      ADR2 => C6_Madd_bcd_11_8_add0000_lut_2_0,
      ADR3 => C6_Madd_bcd_7_4_add0001_cy(0),
      O => N149
    );
  C6_bcd_3_mux00082 : X_LUT4
    generic map(
      INIT => X"69F0"
    )
    port map (
      ADR0 => N53_0,
      ADR1 => C6_N161_0,
      ADR2 => C6_Madd_bcd_3_0_add0008_lut(3),
      ADR3 => C6_Madd_bcd_3_0_add0008_cy(1),
      O => tens2(0)
    );
  C6_bcd_3_cmp_gt00061 : X_LUT4
    generic map(
      INIT => X"BBBB"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0006_lut_3_0,
      ADR1 => C6_N26,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C6_bcd_3_cmp_gt0006
    );
  C1_Mcount_int4_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => C1_int4(1),
      ADR1 => C1_int4(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_Result_1_1
    );
  C1_int4_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int4_0_DYMUX_7815,
      CE => C1_int4_0_CEINV_7803,
      CLK => C1_int4_0_CLKINV_7804,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C1_int4_0_SRINV_7805,
      O => C1_int4(1)
    );
  C1_int4_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => C1_int4_0_DXMUX_7822,
      CE => C1_int4_0_CEINV_7803,
      CLK => C1_int4_0_CLKINV_7804,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => C1_int4_0_SRINV_7805,
      O => C1_int4(0)
    );
  C7_Mrom_ca4_mux000111_SW0 : X_LUT4
    generic map(
      INIT => X"1F1F"
    )
    port map (
      ADR0 => C6_Madd_bcd_11_8_add0001_cy(0),
      ADR1 => C6_Madd_bcd_11_8_add0002_cy(0),
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_2_0,
      ADR3 => VCC,
      O => N221_pack_1
    );
  C7_Mrom_ca4_mux000111 : X_LUT4
    generic map(
      INIT => X"1221"
    )
    port map (
      ADR0 => thousands2_2_0,
      ADR1 => thousands2_1_0,
      ADR2 => C6_Madd_bcd_11_8_add0002_lut_3_0,
      ADR3 => N221,
      O => C7_Mrom_ca4_mux0001
    );
  C7_ca4_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => C7_ca4_0_DXMUX_7855,
      CE => VCC,
      CLK => C7_ca4_0_CLKINV_7839,
      SET => GND,
      RST => GND,
      O => C7_ca4(0)
    );
  prev_sec_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"F7F7"
    )
    port map (
      ADR0 => int4(5),
      ADR1 => int4(4),
      ADR2 => int4(0),
      ADR3 => VCC,
      O => N8_pack_1
    );
  prev_sec_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      ADR0 => int4(3),
      ADR1 => int4(2),
      ADR2 => int4(1),
      ADR3 => N8,
      O => prev_sec_cmp_eq0000_7880
    );
  C6_Madd_bcd_7_4_add0004_cy_1_11_SW3 : X_LUT4
    generic map(
      INIT => X"F0F9"
    )
    port map (
      ADR0 => C6_Madd_bcd_3_0_add0005_lut(3),
      ADR1 => C6_N25,
      ADR2 => C6_Madd_bcd_7_4_add0004_cy_0_0,
      ADR3 => C6_bcd_7_cmp_gt0003_0,
      O => N185
    );
  int_demo_led_in_addsub0000_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_0_G
    );
  int_demo_led_in_addsub0000_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_2_F
    );
  int_demo_led_in_addsub0000_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_4_F
    );
  int_demo_led_in_addsub0000_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_6_F
    );
  int_demo_led_in_addsub0000_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_6_G
    );
  int_demo_led_in_addsub0000_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_8_F
    );
  int_demo_led_in_addsub0000_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_8_G
    );
  int_demo_led_in_addsub0000_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => int_demo_led_in(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int_demo_led_in_addsub0000_10_F
    );
  C1_int_output_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_0_G
    );
  C1_int_output_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_2_F
    );
  C1_int_output_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_2_G
    );
  C1_int_output_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_4_F
    );
  C1_int_output_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_4_G
    );
  C1_int_output_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_6_F
    );
  C1_int_output_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_6_G
    );
  C1_int_output_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_8_F
    );
  C1_int_output_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_8_G
    );
  C1_int_output_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C1_int_output(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C1_int_output_10_F
    );
  C4_counter_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_0_G
    );
  C4_counter_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_2_F
    );
  C4_counter_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_2_G
    );
  C4_counter_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_4_F
    );
  C4_counter_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_4_G
    );
  C4_counter_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_6_F
    );
  C4_counter_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_6_G
    );
  C4_counter_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_8_F
    );
  C4_counter_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_8_G
    );
  C4_counter_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_10_F
    );
  C4_counter_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_10_G
    );
  C4_counter_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_12_F
    );
  C4_counter_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_12_G
    );
  C4_counter_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_14_F
    );
  C4_counter_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(15),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_14_G
    );
  C4_counter_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_16_F
    );
  C4_counter_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_16_G
    );
  C4_counter_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_18_F
    );
  C4_counter_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_18_G
    );
  C4_counter_20_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(20),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_20_F
    );
  C4_counter_20_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(21),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_20_G
    );
  C4_counter_22_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(22),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_22_F
    );
  C4_counter_22_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C4_counter(23),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C4_counter_22_G
    );
  C7_clkdiv_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_0_G
    );
  C7_clkdiv_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_2_F
    );
  C7_clkdiv_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_2_G
    );
  C7_clkdiv_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_4_F
    );
  C7_clkdiv_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_4_G
    );
  C7_clkdiv_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_6_F
    );
  C7_clkdiv_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => C7_clkdiv(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => C7_clkdiv_6_G
    );
  ca_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(0),
      O => ca_0_O
    );
  ca_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(1),
      O => ca_1_O
    );
  ca_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(2),
      O => ca_2_O
    );
  ca_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(3),
      O => ca_3_O
    );
  ca_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(4),
      O => ca_4_O
    );
  ca_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(5),
      O => ca_5_O
    );
  ca_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_ca(6),
      O => ca_6_O
    );
  ca_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ca_7_OUTPUT_OFF_O1INV_4530,
      O => ca_7_O
    );
  ca_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => ca_7_OUTPUT_OFF_O1INV_4530
    );
  an_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_an(0),
      O => an_0_O
    );
  an_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_an(1),
      O => an_1_O
    );
  an_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_an(2),
      O => an_2_O
    );
  an_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C7_an(3),
      O => an_3_O
    );
  second_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => C4_int_led_2014,
      O => second_O
    );
  int4_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => int4_4_F
    );
  NlwBlock_and_or_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_and_or_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

