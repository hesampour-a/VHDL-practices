entity q351 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a351 of q351 is 
begin
    F <=((A and (not C))or ((not A)and C) after 50 ns);
end architecture;