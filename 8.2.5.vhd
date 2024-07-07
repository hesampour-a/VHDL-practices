entity q825 is
    port(clk:in std_logic;
    Reset:in std_logic;
    A_EN,B_EN,C_EN,D_EN:in std_logic;
    DataBus:in std_logic_vector(15 downto 0);
    A,B,C,D:out std_logic_vector(15 downto 0));
end entity;
    
    
    
    
architecture q825_arch of q825 is
    begin
    
    
    AREG:process(clk,Reset)
    begin
        if(Reset='0')then
        A<="000000000000000";
        elsif(clk'event and clk='1')then
            if(A_EN='1')then
            A<=DataBus;
            end if;
        end if;
    end process;
    
    
    
    BREG:process(clk,Reset)
    begin
        if(Reset='0')then
        B<="000000000000000";
        elsif(clk'event and clk='1')then
            if(B_EN='1')then
            B<=DataBus;
            end if;
        end if;
    end process;
    
    CREG:process(clk,Reset)
    begin
        if(Reset='0')then
        C<="000000000000000";
        elsif(clk'event and clk='1')then
            if(C_EN='1')then
            C<=DataBus;
            end if;
        end if;
    end process;
    
    DREG:process(clk,Reset)
        begin
        if(Reset='0')then
        D<="000000000000000";
        elsif(clk'event and clk='1')then
            if(D_EN='1')then
            D<=DataBus;
            end if;
        end if;
    end process;
end architecture;