library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_flip_flop is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  RESET: in STD_LOGIC;
           Q : out  STD_LOGIC);
end d_flip_flop;

architecture Behavioral of d_flip_flop is
component Clock_Divider
port ( clk,reset: in std_logic;
clock_out: out std_logic);
end component;
signal ot: std_logic;

begin
clock1:Clock_Divider port map(clk,reset,ot);
process(ot)
begin
if(Reset='1') then
Q<='0';
elsif(ot='1' and ot'EVENT) then
Q <= D;
end if;
end process;


end Behavioral;