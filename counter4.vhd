LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY counter4 IS
PORT( clk: IN std_logic;
  y: OUT std_logic_vector(3 downto 0) );
END counter4;

ARCHITECTURE counter4 OF counter4 IS
signal q1,q2,q3,q4,and1,and2 : std_logic;
BEGIN
 jk1: ENTITY work.JK_FF_VHDL(Behavioral) port map('1','1',clk,q1);
 jk2: ENTITY work.JK_FF_VHDL(Behavioral) port map(q1,q1,clk,q2);
 and1 <= q1 and q2;
 jk3: ENTITY work.JK_FF_VHDL(Behavioral) port map(and1,and1,clk,q3);
 and2 <= and1 and q3;
 jk4: ENTITY work.JK_FF_VHDL(Behavioral) port map(and2,and2,clk,q4);
 y(0) <= q1;
 y(1) <= q2;
 y(2) <= q3;
 y(3) <= q4;
END counter4;
