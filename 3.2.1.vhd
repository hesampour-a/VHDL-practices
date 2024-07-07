entity q321 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a321 of q321 is 
begin
    F <=((A and (not C))or ((not A)and C));
end architecture; 