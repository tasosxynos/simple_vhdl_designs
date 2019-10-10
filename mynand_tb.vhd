LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mynand_tb IS
END mynand_tb;

ARCHITECTURE mynand_tb OF mynand_tb IS 
    COMPONENT mynand
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic;
   
BEGIN
 uut: mynand PORT MAP (
          a => a,
          b => b,
          c => c
        );
   stim_proc: process
   begin  
     
   a <= '0';
   b <= '0';

      wait for 50 ns; 
   a <= '0';
   b <= '1';

      wait for 50 ns; 
   a <= '1';
   b <= '0';

      wait for 50 ns; 
   a <= '1';
   b <= '1';

      wait;
   end process;

END;
