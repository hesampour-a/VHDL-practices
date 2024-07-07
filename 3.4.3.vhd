entity q343 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a343 of q343 is 
    signal ABC : BIT_VECTOR(2 downto 0);
begin
   ABC <= A & B & C;

    with ABC select

    F <= '1' when "000",
        '1' when "001",
        '1' when "100",
        '0' when others;


    
end architecture;