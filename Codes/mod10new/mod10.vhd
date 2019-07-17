----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:58:25 04/11/2018 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity mod10 is
Port ( clk : in STD_LOGIC;
reset : in STD_LOGIC;
count : out STD_LOGIC_VECTOR (3 downto 0));
end mod10;
architecture Behavioral of mod10 is
begin
process(clk)
variable temp:std_logic_vector(3 downto 0);
begin
if(reset='1') then temp:="0000";
elsif(falling_edge(clk)) then
temp:=temp+1;
if(temp="1010") then temp:="0000";
end if;
end if;
count<=temp;
end process;
end Behavioral;