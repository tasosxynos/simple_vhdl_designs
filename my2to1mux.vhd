LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my2to1mux IS
PORT( d0: IN std_logic;
  d1: IN std_logic;
  s: IN std_logic;
  y: OUT std_logic);
END my2to1mux;

ARCHITECTURE my2to1mux OF my2to1mux IS
signal out1,out2,out3 : std_logic;
BEGIN
 nand1: ENTITY work.mynand(mynand) port map(s,s,out1);
 nand2: ENTITY work.mynand(mynand) port map(d1,s,out2);
 nand3: ENTITY work.mynand(mynand) port map(out1,d0,out3);
 nand4: ENTITY work.mynand(mynand) port map(out2,out3,y);
END my2to1mux;

ARCHITECTURE trollmux OF my2to1mux IS
signal out1,out2,out3 : std_logic;
BEGIN
 nand1: ENTITY work.mynand(trollnand) port map(s,s,out1);
 nand2: ENTITY work.mynand(trollnand) port map(d1,s,out2);
 nand3: ENTITY work.mynand(mynand) port map(out1,d0,out3);
 nand4: ENTITY work.mynand(mynand) port map(out2,out3,y);
END trollmux;
