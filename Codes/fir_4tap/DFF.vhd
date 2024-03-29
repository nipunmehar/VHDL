----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:21 04/09/2018 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity DFF is 
   port(
      Q : out signed(15 downto 0);      --output connected to the adder
      Clk :in std_logic;      -- Clock input
      D :in  signed(15 downto 0)      -- Data input from the MCM block.
   );
end DFF;

architecture Behavioral of DFF is 

signal qt : signed(15 downto 0) := (others => '0');

begin 

Q <= qt;

process(Clk) 
begin 
  if ( rising_edge(Clk) ) then 
    qt <= D;
  end if;       
end process; 

end Behavioral;