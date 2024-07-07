library IEEE;
use IEEE.std_logic_1164.all;

entity qmin is
    port(
        Clock , Reset , A: in std_logic;
        Z : out std_logic
    );
end entity;


architecture qmin_Arch of qmin is


    type state_type is (Start,A0_is_1,A1_is_0,A2_is_1,A3_is_0,A4_is_1,A0_N,A1_N,A2_N,A3_N,A4_N);
    signal current_state , next_state : state_type; 
    begin

        STATE_MEMORY : process( Clock,Reset)
        begin
            if (Reset = '1') then
                current_state <= Start;
            elsif (Clock'event and Clock = '1') then
                    current_state <= next_state;
            end if ;
  
        end process ; 

        NEXT_STATE_LOGIC : process(current_state ,A )
        begin

            case( current_state ) is
            
                when Start =>    if (A = '1') then
                                    next_state <= A0_is_1;
                                    else
                                    next_state <= A0_N;
                                    end if ;
                when A0_is_1 =>    if (A = '0') then
                                    next_state <= A1_is_0;
                                    else
                                    next_state <= A1_N;
                                    end if ;
                when A1_is_0 =>    if (A = '1') then
                                    next_state <= A2_is_1;
                                    else
                                    next_state <= A2_N;
                                    end if ;
                when A2_is_1 =>    if (A = '0') then
                                    next_state <= A3_is_0;
                                    else
                                    next_state <= A3_N;
                                    end if ;
                when A3_is_0 =>    if (A = '1') then
                                    next_state <= A4_is_1;
                                    else
                                    next_state <= A4_N;
                                    end if ;
                when A4_is_1 =>    next_state <= Start;
                when A0_N =>    next_state <= A1_N;
                when A1_N =>    next_state <= A2_N;
                when A2_N =>    next_state <= A3_N;
                when A3_N =>    next_state <= A4_N;
                when A4_N =>    next_state <= Start;
                when others =>  next_state <= Start;
                
            end case ;
            end process ; 

            OUTPUT_LOGIC : process(current_state)
            begin
                case( current_state ) is
                
                    when A4_is_1 => if (A = '0') then
                                        Z <= '1';
                                    else
                                        Z <= '0';
                                    end if ;
                        
                
                    when others => Z <= '0';
                
                end case ;
            end process ; 
            
        end architecture;