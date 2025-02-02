library IEEE;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity sigm is
 port (
 Z: in INTEGER range 0 to 511;
 SAL: out INTEGER range 0 to 255
 );
end entity sigm;
architecture sigm_arch of sigm is
signal TEMP: integer range 0 to 255;
signal B1: integer range 0 to 511;
signal A1: integer range 0 to 511;
signal ZTHETA: integer range 0 to 65535;
signal ZZ : integer range 0 to 262144;
constant L : integer range 0 to 255 := 255;
constant M : integer range 0 to 1023 := 512;
begin
A1<=Z;
B1<=M-A1;
ZZ<=B1*A1;
ZTHETA<=ZZ/256;
TEMP<=ZTHETA;
SAL<=TEMP when A1<L else 255;
end architecture sigm_arch;