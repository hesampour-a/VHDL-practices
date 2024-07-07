entity q341 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a341 of q341 is 
    signal ABC : BIT_VECTOR(2 downto 0);
begin
   ABC <= A & B & C;

    with ABC select

    F <= '1' when "001",
        '1' when "011",
        '1' when "100",
        '1' when "110",
        '0' when others;


    
end architecture;