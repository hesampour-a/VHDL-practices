library IEEE;
use IEEE.std_logic_1164.all;
entity q521 is
    port(
        A , B , C , D : in std_logic;
        F : out std_logic
    );
    end entity;


architecture a521 of q521 is 
begin
    proc521 : process( A,B,C,D )
    begin
        if (A = '0' and B = '0' and C = '0' and D = '1') then F <= '1';
        elsif (A = '0' and B = '0' and C = '1' and D = '1') then F <= '1';
        elsif (A = '1' and B = '0' and C = '0' and D = '1') then F <= '1';
        elsif (A = '1' and B = '0' and C = '1' and D = '1') then F <= '1';
        else F <= '0';
        end if;
        
    end process ;
end architecture;