LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my2to1mux_tb IS
END my2to1mux_tb;

ARCHITECTURE my2to1mux_tb OF my2to1mux_tb IS 
    COMPONENT my2to1mux
    PORT(
         d0 : IN  std_logic;
         d1 : IN  std_logic;
		 s : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    
   signal d0 : std_logic;
   signal d1 : std_logic;
   signal s : std_logic;
   signal y : std_logic;
   
BEGIN
 uut: my2to1mux PORT MAP (
          d0 => d0,
          d1 => d1,
		  s => s,
          y => y
        );
   stim_proc: process
   begin  
     
   s <= '0';
   d1 <= '0';
   d0 <= '0';

      wait for 50 ns; 
   s <= '0';
   d1 <= '0';
   d0 <= '1';

      wait for 50 ns; 
   s <= '0';
   d1 <= '1';
   d0 <= '0';

      wait for 50 ns; 
   s <= '0';
   d1 <= '1';
   d0 <= '1';
   
      wait for 50 ns; 
   s <= '1';
   d1 <= '0';
   d0 <= '0';

      wait for 50 ns; 
   s <= '1';
   d1 <= '0';
   d0 <= '1';

      wait for 50 ns; 
   s <= '1';
   d1 <= '1';
   d0 <= '0';

      wait for 50 ns; 
   s <= '1';
   d1 <= '1';
   d0 <= '1';   
      wait;
   end process;

END;
