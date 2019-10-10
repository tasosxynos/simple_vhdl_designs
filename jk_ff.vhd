library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity JK_FF_VHDL is
   port( J,K: in  std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end JK_FF_VHDL;

architecture Behavioral of JK_FF_VHDL is
   signal temp: std_logic;
begin
   process (Clock) 
   begin
      if rising_edge(Clock) then                 
            if (J='0' and K='0') then
               temp <= temp;
            elsif (J='0' and K='1') then
               temp <= '0';
            elsif (J='1' and K='0') then
               temp <= '1';
            elsif (J='1' and K='1') then
               temp <= not (temp);
            end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;
