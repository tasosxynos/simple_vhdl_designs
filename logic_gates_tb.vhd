LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY logic_gates_tb IS
END logic_gates_tb;
ARCHITECTURE logic_gates_tb OF logic_gates_tb IS 
    COMPONENT logic_gates
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic_vector(0 to 6)
        );
    END COMPONENT;
    
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic_vector(0 to 6);
BEGIN
 uut: logic_gates PORT MAP (
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
