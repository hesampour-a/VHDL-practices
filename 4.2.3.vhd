entity q423 is
    port (
      A , B , C : in bit;
      F : out bit
    ) ;
  end entity;
  
  architecture q423_Arch of q423 is
  
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
          
  
      signal An, Bn , Cn ,AC1 , AC2 : bit;
  
  begin
  
      inv_1 : INV1 port map(C,Cn);
      inv_2 : INV1 port map(A,An);
      inv_3 : INV1 port map(B,Bn);
  
      and_1 : AND2 port map (Bn,Cn,AC1);
      and_2 : AND2 port map (An,Bn,AC2);
  
      or_1 : OR4 port map(AC1,AC2,'0','0',F);
      
  
  end architecture;


  --F <=(((not B) and (not C)) or ((not A) and (not B)));