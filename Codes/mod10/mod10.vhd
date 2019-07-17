----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:10:06 04/11/2018 
-- Design Name: 
-- Module Name:    mod10 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.std_logic_unsigned.all;

entity mod10 is
Port ( clk : in STD_LOGIC;
reset : in STD_LOGIC;
count : out STD_LOGIC_VECTOR (3 downto 0));
end mod10;

architecture Behavioral of mod10 is

component Clock_Divider
port ( clk,reset: in std_logic;
clock_out: out std_logic);
end component;
signal ot: std_logic;
begin
clock1:Clock_Divider port map(clk,reset,ot);
process(ot)
variable temp:std_logic_vector(3 downto 0):="0000";

begin
if(reset='1') then temp:="0000";
elsif(falling_edge(ot)) then
temp:=temp+1;
if(temp="1010") then temp:="0000";
end if;
end if;
count<=temp;
end process;
end Behavioral;