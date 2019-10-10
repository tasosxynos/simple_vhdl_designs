LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lut_tb IS
END lut_tb;

ARCHITECTURE lut_tb OF lut_tb IS 
    COMPONENT Number_of_Ones
    port (
        --- mapped 3=a, 2=b, 1=c, 0=d
        abcd : in std_ulogic_vector(3 downto 0);
        -- mapped x=2, y=1, z=0
        xyz  : out std_ulogic_vector(2 downto 0)
    );
    END COMPONENT;
    
   signal abcd : std_ulogic_vector(3 downto 0);
   signal xyz : std_ulogic_vector(2 downto 0);
   
BEGIN
 uut: Number_of_Ones PORT MAP (
          abcd => abcd,
          xyz => xyz
        );
   stim_proc: process
   begin  
     
   abcd <= "0000";

      wait for 50 ns; 
   abcd <= "0010";

      wait for 50 ns; 
   abcd <= "0110";

      wait for 50 ns; 
   abcd <= "1110";

      wait;
   end process;

END;
