library IEEE;
use IEEE.std_logic_1164.all;

entity q715 is
    
  end entity;
  
  architecture q715_Arch of q715 is
  
      component q522 is
          port(
              A , B , C , D : in std_logic;
              F : out std_logic
          );
      end component;
   
  
      signal A_TB , B_TB , C_TB , D_TB , F_TB:  std_logic;
  
  begin
  
      DUT : q522 port map(A_TB , B_TB , C_TB , D_TB , F_TB);

      TEST : process
      begin
          A_TB <= '0'; B_TB <= '0'; C_TB <= '0';D_TB <= '0';wait for 10ns;
          A_TB <= '0'; B_TB <= '0'; C_TB <= '0';D_TB <= '1';wait for 10ns;
          A_TB <= '0'; B_TB <= '0'; C_TB <= '1';D_TB <= '0';wait for 10ns;
          A_TB <= '0'; B_TB <= '0'; C_TB <= '1';D_TB <= '1';wait for 10ns;
          A_TB <= '0'; B_TB <= '1'; C_TB <= '0';D_TB <= '0';wait for 10ns;
          A_TB <= '0'; B_TB <= '1'; C_TB <= '0';D_TB <= '1';wait for 10ns;
          A_TB <= '0'; B_TB <= '1'; C_TB <= '1';D_TB <= '0';wait for 10ns;
          A_TB <= '0'; B_TB <= '1'; C_TB <= '1';D_TB <= '1';wait for 10ns;
          A_TB <= '1'; B_TB <= '0'; C_TB <= '0';D_TB <= '0';wait for 10ns;
          A_TB <= '1'; B_TB <= '0'; C_TB <= '0';D_TB <= '1';wait for 10ns;
          A_TB <= '1'; B_TB <= '0'; C_TB <= '1';D_TB <= '0';wait for 10ns;
          A_TB <= '1'; B_TB <= '0'; C_TB <= '1';D_TB <= '1';wait for 10ns;
          A_TB <= '1'; B_TB <= '1'; C_TB <= '0';D_TB <= '0';wait for 10ns;
          A_TB <= '1'; B_TB <= '1'; C_TB <= '0';D_TB <= '1';wait for 10ns;
          A_TB <= '1'; B_TB <= '1'; C_TB <= '1';D_TB <= '0';wait for 10ns;
          A_TB <= '1'; B_TB <= '1'; C_TB <= '1';D_TB <= '1';wait for 10ns;
      end process ; 

      
  
  end architecture;


