library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
entity SIPO is
Port ( din : in STD_LOGIC;
clk : in STD_LOGIC;
reset : in STD_LOGIC;
dout : out STD_LOGIC_VECTOR (7 downto 0));
end SIPO;
architecture Behavioral of SIPO is
component d_flip_flop is
port(
clk : in STD_LOGIC;
d : in STD_LOGIC;
reset : in STD_LOGIC;
q : out STD_LOGIC
);
end component d_flip_flop; 
signal s : std_logic_vector (7 downto 0);
begin
-- s<="00000000"; 
u0 : d_flip_flop port map (clk => clk,
d => din,
reset => reset,
q => s(0));
u1 : d_flip_flop port map (clk => clk,
d => s(0),
reset => reset,
q => s(1));
u2 : d_flip_flop port map (clk => clk,
d => s(1),
reset => reset,
q => s(2));
u3 : d_flip_flop port map (clk => clk,
d => s(2),
reset => reset,
q => s(3)); 
u4 : d_flip_flop port map (clk => clk,
d => s(3), 
reset => reset,
q => s(4)); 
u5 : d_flip_flop port map (clk => clk,
d => s(4),
reset => reset,
q => s(5)); 
u6 : d_flip_flop port map (clk => clk,
d => s(5),
reset => reset,
q => s(6)); 
u7 : d_flip_flop port map (clk => clk,
d => s(6),
reset => reset,
q => s(7)); 
dout <= s;
end Behavioral;