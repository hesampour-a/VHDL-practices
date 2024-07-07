entity q333 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a333 of q333 is 
begin
    F <= '1' when (A = '0' and B ='0' and C = '0') else
        '1' when (A = '0' and B ='0' and C = '1') else
        '1' when (A = '1' and B ='0' and C = '0') else
        '0';

    
end architecture;