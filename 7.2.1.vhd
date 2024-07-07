entity q721 is
    
  end entity;
  
  architecture q721_Arch of q721 is
  
    component q522
        port(A,B,C,D:in std_logic;
            F:out std_logic);
    end component;
   
  
        signal A_TB,B_TB,C_TB,D_TB: std_logic;
        signal ABCD_TB: std_logic_vector(3 downto 0);
        signal F_TB : std_logic;
  
    begin
        ABCD_TB <= A_TB & B_TB & C_TB & D_TB;
        DUT:q522 port map(ABCD_TB);
        TEST: process
        begin
        
            for i in 0 to 15 loop
                ABCD_TB <=std_logic_vector(to_unsigned (i,4));
            wait for 10 ns;
         end loop;
        end process;
      
  
    end architecture;


