entity final_C is
    port(   
    A,B,Zin:in bit;
    Zout,C:out bit);
end entity;
    
    
    
    
architecture final_C_arch of final_C is
    component AND2 is
        port(
            A,B : in bit;
            Q : out bit
        );  
    end component;
    component XOR2 is
        port(
            A,B : in bit;
            Q : out bit
        );  
    end component;
    component OR2 is
        port(
            A,B : in bit;
            Q : out bit
        );  
    end component;
    component MUX is
        port(
            A,B,C : in bit;
            Q : out bit
        );  
    end component;
    signal OrResult , XorResult ,AndResult : bit;
    begin
    
        and : AND2 port map (A,Zin,Zout);
        or : XOR2 port map (Zin,A,OrResult);
        xor : OR2 port map (Zin,B,XorResult);
        MUX : MUX port map (OrResult,B,XorResult,C);
    
end architecture;



entity final is
    port(   
    A,B,Zin:in bit;
    c,Zout:out bit;
end entity;
    
    
    
    
architecture final_arch of final is
    component final_C is
        port(
            A,B,Zin : in bit;
            c,Zout : out bit
        );  
    end component;
    
    signal a0,a1,a2,a3 , b1,b2,b3,b4 ,c1,c2,c3,c4, : bit;
    begin
    
        
        MUX1 : final_C port map (a0,b0,c0,Zin0,C0);
        MUX2 : final_C port map (a1,b1,c1,Zin1,C1);
        MUX3 : final_C port map (a2,b2,c2,Zin2,C2);
        MUX4 : final_C port map (a3,b3,c3,Zin3,C3);
       
    
end architecture;