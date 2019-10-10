LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mynand IS
PORT( a,b: IN std_logic;
  c: OUT std_logic);
END mynand;

ARCHITECTURE mynand OF mynand IS
BEGIN
 c <= a nand b;
END mynand;

ARCHITECTURE trollnand OF mynand IS
BEGIN
 c <= a and b;
END trollnand;
