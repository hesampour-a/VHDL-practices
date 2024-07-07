library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SystemX_TB is 
    port (A,B,C : in bit;
        F: out bit);
end entity;

architecture SystemX_TB_arch of SystemX_TB  is
    component SystemX is 
    port (A,B,C : in bit;
        F: out bit);
    end component;
    signal A_TB,B_TB,C_TB : bit;
    signal F_TB : bit;
    begin
        DUT : SystemX port map(A=>A_TB,
                               B=>B_TB, 
                               C=>C_TB, 
                               F=>F_TB);
    STIMULUS : process
    begin
        A_TB <= '0';B_TB <= '0';C_TB <= '0';wait for 50 ns;
        report "Inputting pattern 000" severity NOTE;
        assert (bool_condi) report "lorem" severity NOTE;--*** if bool_condi is false then report will print
        A_TB <= '0';B_TB <= '0';C_TB <= '0';wait for 50 ns;
        A_TB <= '0';B_TB <= '0';C_TB <= '0';wait for 50 ns;
        A_TB <= '0';B_TB <= '0';C_TB <= '0';wait for 50 ns;
        A_TB <= '0';B_TB <= '0';C_TB <= '0';wait for 50 ns;
        A_TB <= '1';B_TB <= '1';C_TB <= '1';wait for 50 ns;
    end process;
end architecture
   












entity rca_4bit_TB is
end entity

architecture rca_4bit_TB_arch of rca_4bit_TB is
    component rca_4bit is
        port(A,B : in bit_vector(3 downto 0);
            Sum : out bit_vector(3 downto 0);
            Cout : out bit);
    end component;

    signal A_TB,B_TB,Sum_TB : bit_vector(3 downto 0);
    signal C_TB: bit;

    begin
        DUT : rca_4bit port map (A_TB,B_TB,Sum_TB,Cout_TB);

        STIM : process
        begin
            for i in 0 to 15 loop
                for j in 0 to 15 loop --we must use std_logic before
                    --A_TB<= bit_vector()
                    A_TB<= std_logic_vector(to_unsigned(i,4));
                    B_TB<= std_logic_vector(to_unsigned(j,4));
                    wait for 100 ns;
                end loop;
            end loop;
        end process;
end architecture
