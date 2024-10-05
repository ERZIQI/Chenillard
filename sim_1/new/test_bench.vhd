
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_bench is
--  Port ( );
end test_bench;

architecture Behavioral of test_bench is
    signal clk          : STD_LOGIC := '0';
    signal btn_speed    : STD_LOGIC := '0';
    signal led          : STD_LOGIC_VECTOR(0 to 7);

begin

uut:entity work.chenillard(Behavioral)
        Port Map (
            clk             => clk,
            btn_speed       => btn_speed,
            led             => led
        );

--------------- Clock Generation -------------------
clk_process :process
                begin
                    clk <= '0';
                    wait for 10 ns;
                    clk <= '1';
                    wait for 10 ns;
                end process;

sim: process
    begin        
        -- Test cas 2
        btn_speed <= '1';
        wait for 5000 ms; -- Wait for some time to observe the change
        btn_speed <= '0';
        wait for 5000 ms;


        wait;
    end process;



end Behavioral;
