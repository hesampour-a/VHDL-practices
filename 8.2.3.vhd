entity q823 is
    port(D_IN:in std_logic_vector(31 downto 0);
    enable:in std_logic;
    clock:in std_logic;
    reset:in std_logic;
    D_OUT:out std_logic_vector(31 downto 0));
end entity;

architecture q823_arch of q823 is
    begin
        proregister:process(clock,reset)
        begin
            if(reset='0')then
                D_OUT<=x"0000";
            elsif(clock'event and clock='1')then
                if(enable='1')then
                D_OUT<=D_IN;
                end if;
            end if;
        end process;
end architecture;