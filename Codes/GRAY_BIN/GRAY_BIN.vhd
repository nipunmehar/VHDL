----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:08:52 03/14/2018 
-- Design Name: 
-- Module Name:    GRAY_BIN - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GRAY_BIN is
    Port ( G : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : out  STD_LOGIC_VECTOR (3 downto 0));
end GRAY_BIN;

architecture Behavioral of GRAY_BIN is

begin
bin(3) <= G(3);
bin(2) <= G(3) xor G(2);
bin(1) <= G(3) xor G(2) xor G(1);
bin(0) <= G(3) xor G(2) xor G(1) xor G(0);


end Behavioral;

