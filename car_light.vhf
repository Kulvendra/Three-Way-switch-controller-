--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab1_car_light.vhf
-- /___/   /\     Timestamp : 08/13/2017 17:13:02
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl lab1_car_light.vhf -w /home/kgopal/lab1_car_light.vhf/lab1_car_light.sch
--Design Name: lab1_car_light
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab1_car_light is
   port ( D1      : in    std_logic; 
          D2      : in    std_logic; 
          D3      : in    std_logic; 
          D4      : in    std_logic; 
          SW_DOOR : in    std_logic; 
          SW_OFF  : in    std_logic; 
          SW_ON   : in    std_logic; 
          INVALID : out   std_logic; 
          LIGHT   : out   std_logic);
end lab1_car_light;

architecture BEHAVIORAL of lab1_car_light is
   attribute BOX_TYPE   : string ;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_20 : OR2
      port map (I0=>D2,
                I1=>D1,
                O=>XLXN_17);
   
   XLXI_21 : OR2
      port map (I0=>D4,
                I1=>D3,
                O=>XLXN_18);
   
   XLXI_22 : OR2
      port map (I0=>XLXN_18,
                I1=>XLXN_17,
                O=>XLXN_19);
   
   XLXI_23 : AND2
      port map (I0=>SW_DOOR,
                I1=>XLXN_19,
                O=>XLXN_20);
   
   XLXI_24 : XNOR2
      port map (I0=>SW_ON,
                I1=>XLXN_20,
                O=>XLXN_21);
   
   XLXI_25 : INV
      port map (I=>XLXN_21,
                O=>XLXN_22);
   
   XLXI_26 : INV
      port map (I=>SW_OFF,
                O=>XLXN_23);
   
   XLXI_28 : AND2
      port map (I0=>XLXN_23,
                I1=>XLXN_22,
                O=>LIGHT);
   
   XLXI_29 : AND3
      port map (I0=>XLXN_31,
                I1=>XLXN_30,
                I2=>XLXN_29,
                O=>XLXN_24);
   
   XLXI_30 : INV
      port map (I=>SW_DOOR,
                O=>XLXN_29);
   
   XLXI_31 : INV
      port map (I=>SW_ON,
                O=>XLXN_30);
   
   XLXI_32 : INV
      port map (I=>SW_OFF,
                O=>XLXN_31);
   
   XLXI_33 : AND2
      port map (I0=>SW_ON,
                I1=>SW_DOOR,
                O=>XLXN_27);
   
   XLXI_34 : AND2
      port map (I0=>SW_OFF,
                I1=>SW_ON,
                O=>XLXN_26);
   
   XLXI_35 : AND2
      port map (I0=>SW_DOOR,
                I1=>SW_OFF,
                O=>XLXN_28);
   
   XLXI_37 : OR2
      port map (I0=>XLXN_25,
                I1=>XLXN_24,
                O=>INVALID);
   
   XLXI_38 : OR3
      port map (I0=>XLXN_28,
                I1=>XLXN_26,
                I2=>XLXN_27,
                O=>XLXN_25);
   
end BEHAVIORAL;



