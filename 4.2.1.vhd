--AND2 START
entity AND2 is 
    port(
        A,B : in bit;
        Q : out bit
    );
END entity;

architecture AND2_Arch of AND2 is
begin

    Q <= A and B;

end architecture; 
-- AND2 END

--INV1 START
entity INV1 is
  port (
    A : in bit;
    Q : out bit
  ) ;
end entity;

architecture INV1_Arch of INV1 is
begin

    Q <= (not A);

end architecture;
-- INV1 END


--OR4 START
entity OR4 is
  port (
    A , B , C , D : in bit;
    Q : out bit
  ) ;
end entity;


architecture OR4_Arch of OR4 is
begin

    Q <= (A or B or C or D);

end architecture; 
-- OR4 END




entity q421 is
  port (
    A , B , C : in bit;
    F : out bit
  ) ;
end entity;

architecture q421_Arch of q421 is

    component OR4 is
        port(
            A , B , C , D : in bit;
            Q : out bit
        );
    end component;

    component INV1 is
        port (
             A : in bit;
             Q : out bit
            ) ;
    end component;

    component AND2 is
        port(
            A,B : in bit;
            Q : out bit
        );  
    end component;
        

    signal An , Cn ,AC1 , AC2 : bit;

begin

    inv_1 : INV1 port map(C,Cn);
    inv_2 : INV1 port map(A,An);

    and_1 : AND2 port map (A,Cn,AC1);
    and_2 : AND2 port map (An,C,AC2);

    or_1 : OR4 port map(AC1,AC2,'0','0',F);
    

end architecture; -- q421_Arch


--F <=((A and (not C))or ((not A)and C));