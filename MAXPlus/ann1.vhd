library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all; 
entity ANN1 is 
port(A,B,UMBRAL: in integer;
SAL: out std_logic); 
end entity ANN1; 
architecture ANN1_arch of ANN1 is 
signal TH,A1, B1 : integer; 

begin 
A1<=A;
B1<=B;
TH<=UMBRAL;
SAL<='1'when A1+B1>TH else '0'; 
end architecture ANN1_arch;
