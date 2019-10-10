LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY my4to1mux_tb IS
END my4to1mux_tb;

ARCHITECTURE my4to1mux_tb OF my4to1mux_tb IS 
    COMPONENT my4to1mux
    PORT(
         d0 : IN  std_logic;
         d1 : IN  std_logic;
		 d2 : IN  std_logic;
		 d3 : IN  std_logic;
		 s1 : IN  std_logic;
		 s0 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    
   signal d0 : std_logic;
   signal d1 : std_logic;
   signal d2 : std_logic;
   signal d3 : std_logic;
   signal s1 : std_logic;
   signal s0 : std_logic;
   signal y : std_logic;
   
BEGIN
 uut: my4to1mux PORT MAP (
          d0 => d0,
          d1 => d1,
		  d2 => d2,
		  d3 => d3,
		  s1 => s1,
		  s0 => s0,
          y => y
        );
   stim_proc: process
   begin  
     
   s1 <= '0';
   s0 <= '0';
   d3 <= '0';
   d2 <= '0';
   d1 <= '0';
   d0 <= '0';

      wait for 50 ns; 
   s1 <= '0';
   s0 <= '0';
   d3 <= '0';
   d2 <= '0';
   d1 <= '0';
   d0 <= '1';

      wait for 50 ns; 
   s1 <= '1';
   s0 <= '0';
   d3 <= '1';
   d2 <= '0';
   d1 <= '1';
   d0 <= '1';

      wait for 50 ns; 
   s1 <= '1';
   s0 <= '0';
   d3 <= '0';
   d2 <= '1';
   d1 <= '0';
   d0 <= '0';
   
      wait;
   end process;

END;
