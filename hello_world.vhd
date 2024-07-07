library std;
use std.standard.all;

entity hello is
    port(A, B ,C : in bit;
    F : out bit
    );
    end entity;

architecture hello_arch of hello is
    signal An,Bn,Cn,m0,m2,m6 : bit;

    begin

        An <= not A;
        Bn <= not B;
        Cn <= not C;

        m0 <= An and Bn and Cn;
        m2 <= An and B and Cn;
        m6 <= A and B and Cn;

        F <= m0 or m2 or m6;


        end architecture;