library IEEE;
use IEEE.std_logic_1164.all;

entity q921 is
    port(
        Clock , Reset , Din: in std_logic;
        Dout : out std_logic
    );
end entity;


architecture q921_Arch of q921 is


    type state_type is (Start,Midway,Done);
    signal current_state , next_state : state_type; 
    begin

        STATE_MEMORY : process( Clock,Reset)
        begin
            if (Reset = '0') then
                current_state <= Start;
            elsif (Clock'event and Clock = '1') then
                    current_state <= next_state;
            end if ;
  
        end process ; 

        NEXT_STATE_LOGIC : process(current_state ,Din )
        begin

            case( current_state ) is
            
                when Start =>    if (Din = '1') then
                                    next_state <= Midway;

                                    else
                                    next_state <= Start;
                                 end if ;
                when Midway => next_state <= Done;
                when Done =>   next_state <= Start;
                
            end case ;
            end process ; 

            OUTPUT_LOGIC : process(current_state)
            begin
                case( current_state ) is
                
                    when Done => if (Din = '1') then
                                    Dout <= '1';
                                else
                                    Dout <= '0';
                                
                                end if ;
                        
                
                    when others => Dout <= '0';
                
                end case ;
            end process ; 
            
        end architecture;