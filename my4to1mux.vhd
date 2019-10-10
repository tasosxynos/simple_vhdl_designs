LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my4to1mux IS
PORT( d0: IN std_logic;
  d1: IN std_logic;
  d2: IN std_logic;
  d3: IN std_logic;
  s0: IN std_logic;
  s1: IN std_logic;
  y: OUT std_logic);
END my4to1mux;

ARCHITECTURE my4to1mux OF my4to1mux IS
signal outD0,outD1,outD2,outD3,outS1inv,outS0inv : std_logic;
BEGIN
 outS1inv <= not s1;
 outS0inv <= not s0;
 outD0 <= not(d0 and outS1inv and outS0inv);
 outD1 <= not(d1 and outS1inv and s0);
 outD2 <= not(d2 and s1 and outS0inv);
 outD3 <= not(d3 and s1 and s0);
 y <= not(outD0 and outD1 and outD2 and outD3);
END my4to1mux;
