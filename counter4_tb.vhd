LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY counter4_tb IS
END counter4_tb;

ARCHITECTURE counter4_tb OF counter4_tb IS 
    COMPONENT counter4
    PORT(
         clk : IN  std_logic;
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   signal clk : std_logic := '0';
   signal y : std_logic_vector(3 downto 0);
   
BEGIN
 uut: counter4 PORT MAP (
          clk => clk,
          y => y
        );
   stim_proc: process
   begin  
     
   clk <= '0';

      wait for 50 ns; 
   clk <= '1';

      wait for 50 ns; 
   clk <= '0';

      wait for 50 ns; 
   clk <= '1';
   
    wait for 50 ns; 
   clk <= '0';
   
    wait for 50 ns; 
   clk <= '1';

      wait;
   end process;

END;
