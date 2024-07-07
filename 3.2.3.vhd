entity q323 is
    port(
        A , B , C : in bit;
        F : out bit
    );
    end entity;


architecture a323 of q323 is 
begin
    F <=(((not B) and (not C)) or ((not A) and (not B)));
end architecture;