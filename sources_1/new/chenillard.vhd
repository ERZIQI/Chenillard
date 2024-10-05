library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;



entity chenillard is
    Port (  
            clk          : in STD_LOGIC;
            btn_speed    : in STD_LOGIC;
            led          : out STD_LOGIC_VECTOR(0 to 7));
end chenillard;

architecture Behavioral of chenillard is

signal count        : STD_LOGIC_VECTOR (26 downto 0)       := conv_std_logic_vector(0,27);
signal speed        : STD_LOGIC_VECTOR (26 downto 0)       := conv_std_logic_vector(0,27); -- compteur pour 1 pas/sec
signal led_temp     : STD_LOGIC_VECTOR (0 to 7)           := conv_std_logic_vector(7,8);

begin

---------------- division d'horloge -------------------------------------

division_clk: 

    process(clk)
        begin
            if rising_edge(clk) then
                if count >= speed then
                    count <= conv_std_logic_vector(0,27);
                    led_temp (0 to 7) <= not(led_temp (7)) & led_temp(0 to 6);
                else 
                count <= count +  conv_std_logic_vector(1,27);   
                end if;                                
            end if;
            
    end process;
    
-------------- changement de vitesse ------------------------------  

changement_vitesse:

    process(btn_speed)
        begin
            if btn_speed = '1' then
                speed <= conv_std_logic_vector(50000000,27); -- 2 pas/sec
            else
                speed <= conv_std_logic_vector(100000000,27); -- 1 pas/sec
            end if;
    end process;

--------------------------------------------------------------------

led <= led_temp;


end Behavioral;
