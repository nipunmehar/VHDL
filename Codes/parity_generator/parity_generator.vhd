----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:29 03/28/2018 
-- Design Name: 
-- Module Name:    parity_generator - Behavioral 
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

entity parity_generator is
    Port ( A : in  STD_LOGIC_VECTOR (8 downto 0);
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end parity_generator;

architecture Behavioral of parity_generator is
signal o: std_logic_vector (0 to 8);
component xor_gate
port (m,n: in std_logic;
o: out std_logic);
end component;
begin
o(0)<=A(0);
c: for i in 1 to 8 generate
c1: xor_gate port map (o(i-1), A(i),o(i));
end generate;
Y<= o(8);

Z<= NOT o(8);


end Behavioral;

