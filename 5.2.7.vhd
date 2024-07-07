library IEEE;
use IEEE.std_logic_1164.all;
entity q527 is
    port(
        A , B , C , D : in std_logic;
        F : out std_logic
    );
    end entity;


architecture a527 of q527 is 
begin
    proc527 : process( A,B,C,D )
    begin
        if (A = '0' and B = '0' and C = '0' and D = '1') then F <= '0';
        elsif (A = '1' and B = '1' and C = '0' and D = '1') then F <= '0';
        elsif (A = '1' and B = '0' and C = '0' and D = '1') then F <= '0';
        elsif (A = '1' and B = '0' and C = '1' and D = '1') then F <= '0';
        else F <= '1';
        end if;
        
    end process ;
end architecture;