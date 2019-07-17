----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:05 02/14/2018 
-- Design Name: 
-- Module Name:    DECODER38 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DECODER38 is
    Port ( ABC : in  STD_LOGIC_VECTOR (2 downto 0);
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end DECODER38;

architecture Behavioral of DECODER38 is

begin
process (ABC)
begin
case ABC is
when "000"=> D<="00000001";
when "001"=> D<="00000010";
when "010"=> D<="00000100";
when "011"=> D<="00001000";
when "100"=> D<="00010000";
when "101"=> D<="00100000";
when "110"=> D<="01000000";
when "111"=> D<="10000000";
when others=> D<="00000000";
end case;
end process;end Behavioral;

