LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lut2_tb IS
END lut2_tb;

ARCHITECTURE lut2_tb OF lut2_tb IS 
    COMPONENT lut2
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
 uut: lut2 PORT MAP (
          abcd => abcd,
          xyz => xyz
        );
   stim_proc: process
   begin  
     
   abcd <= "0000";

      wait for 50 ns; 
   abcd <= "0010";

      wait for 50 ns; 
   abcd <= "1010";

      wait for 50 ns; 
   abcd <= "1110";

      wait;
   end process;

END;
