library IEEE;
use IEEE.std_logic_1164.all;

entity minterm_test is
    
  end entity;
  
  architecture minterm_test_Arch of minterm_test is
  
      component qmin is
          port(
              A , reset , clock : in std_logic;
              Z : out std_logic
          );
      end component;
   
  
      signal A_TB , reset_TB , clock_TB  :  std_logic;
      signal  Z_TB :  std_logic;
  
  begin
  
      DUT : qmin port map(A_TB , reset_TB , clock_TB , Z_TB);

      TEST : process
      begin
          A_TB <= '0'; reset_TB <= '0'; clock_TB <= '0';wait for 10ns;
          A_TB <= '0'; reset_TB <= '0'; clock_TB <= '1';wait for 10ns;
          A_TB <= '0'; reset_TB <= '1'; clock_TB <= '0';wait for 10ns;
          A_TB <= '0'; reset_TB <= '1'; clock_TB <= '1';wait for 10ns;
          A_TB <= '1'; reset_TB <= '0'; clock_TB <= '0';wait for 10ns;
          A_TB <= '1'; reset_TB <= '0'; clock_TB <= '1';wait for 10ns;
          A_TB <= '1'; reset_TB <= '1'; clock_TB <= '0';wait for 10ns;
          A_TB <= '1'; reset_TB <= '1'; clock_TB <= '1';wait for 10ns;
          
      end process ; 

      
  
  end architecture;


