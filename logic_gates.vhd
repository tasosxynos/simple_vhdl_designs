LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY logic_gates IS
PORT( a,b: IN std_logic;
  c: OUT std_logic_vector(0 to 6));
END logic_gates;

ARCHITECTURE logic_gates OF logic_gates IS
BEGIN
 c(0)<=a and b;
 c(1)<=a or b;
 c(2)<=not a;
 c(3)<=a nand b;
 c(4)<=a nor b;
 c(5)<=a xor b;
 c(6)<=a xnor b;
END logic_gates;
