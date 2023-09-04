----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/08/22 02:16:36
-- Design Name: 
-- Module Name: TB_Counter - Behavioral
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

entity TB_Counter is

end TB_Counter;

architecture Behavioral of TB_Counter is

component Up_Counter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal reset, clk: std_logic;
signal counter : std_logic_vector(3 downto 0);

begin
    UUT:entity work.Up_Counter port map (clk=>clk, reset=> reset, counter=> counter);
    --clock process definition
    clock_process : process
    begin
        clk <='0';
        wait for 5 ns;
        clk <='1';
        wait for 5 ns;
    end process;
-- Stimulus process
stim_proc: process
begin
    -- hold reset state for 100  ns
     reset <='1';
        wait for 10 ns;
        reset <='0';
        wait;
end process;
end Behavioral;
