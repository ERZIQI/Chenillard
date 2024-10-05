----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/02/2024 02:38:50 PM
-- Design Name: 
-- Module Name: wrapper1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wrapper1 is
    Port ( 
           GCLK                                         :       in  STD_LOGIC;
           SW0                                          :       in  STD_LOGIC;
           LD0, LD1, LD2, LD3, LD4, LD5, LD6, LD7       :       out STD_LOGIC);
end wrapper1;

architecture Behavioral of wrapper1 is

begin

uut:entity work.chenillard(Behavioral)
        Port Map (
            clk                 => GCLK,
            btn_speed           => SW0,
            led(0)              => LD0,
            led(1)              => LD1,
            led(2)              => LD2,
            led(3)              => LD3,
            led(4)              => LD4,
            led(5)              => LD5,
            led(6)              => LD6,
            led(7)              => LD7
        );



end Behavioral;
