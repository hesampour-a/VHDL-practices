library IEEE;
use IEEE.std_logic_1164.all;
entity q522 is
    port(
        A , B , C , D : in std_logic;
        F : out std_logic
    );
    end entity;


architecture a522 of q522 is 
begin
    proc522 : process( A,B,C,D )
    variable ABCD : std_logic_vector(3 downto 0);
    begin
        ABCD := A & B & C & D ;

        case(ABCD) is
            when "0001" | "0011" | "1001" | "1011" => F <= '1';
            when others => F <= '0';
        end case;
        
    end process ;
end architecture;