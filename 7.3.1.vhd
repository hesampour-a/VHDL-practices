entity q731 is

end entity;


architecture q731_arch of q731 is

    component q522
        port(A,B,C,D:in std_logic;
        F:out std_logic);
    end component;

    signal A_TB,B_TB,C_TB,D_TB: std_logic;
    signal ABCD_TB: std_logic_vector(3 downto 0);
    signal F_TB : std_logic;
  

    begin

    ABCD_TB <= A_TB & B_TB & C_TB & D_TB;

    DUT:q522 port map(ABCD_TB,F_TB);
    TEST:process
    begin
    ABCD_TB<="0000";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    ABCD_TB<="0001";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="0010";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="0011";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="0100";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="0101";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="0110";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="0111";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1000";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1001";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1010";wait for 10 ns;
    
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    ABCD_TB<="1011";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1100";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1101";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1110";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    ABCD_TB<="1111";wait for 10 ns;
    assert(F_TB='1') report "inouting 0000" severity note;
    assert(F_TB='0') report "inouting 0000" severity failure;
    
    
    end process;
end architecture;