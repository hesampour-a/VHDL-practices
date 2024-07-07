entity q353 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a353 of q353 is 
begin
    F <=(((not B) and (not C)) or ((not A) and (not B))) after 1 ns;
end architecture;