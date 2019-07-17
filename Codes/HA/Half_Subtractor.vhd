----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:41 01/31/2018 
-- Design Name: 
-- Module Name:    Half_Subtractor - Behavioral 
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

entity Half_Subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           d : out  STD_LOGIC;
           b0 : out  STD_LOGIC);
end Half_Subtractor;

architecture Behavioral of Half_Subtractor is

begin
d<= a xor b;
b0<= (not a) and b; 

end Behavioral;

