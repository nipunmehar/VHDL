----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:02:23 04/10/2018 
-- Design Name: 
-- Module Name:    iir_4tap - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity iir_4tap is
port(   Clk : in std_logic; --clock signal
        Xin : in signed(7 downto 0); --input signal
        Yout : out signed(15 downto 0)  --filter output
        );
end iir_4tap;

architecture Behavioral of iir_4tap is
component DFF is 
   port(
      Q : out signed(15 downto 0);      --output connected to the adder
      Clk :in std_logic;      -- Clock input
      D :in  signed(15 downto 0)      -- Data input from the MCM block.
   );
end component;  
signal H0,H1,H2,H3 : signed(7 downto 0) := (others => '0');
signal B0,B1,B2,B3 : signed(7 downto 0) := (others => '0');
signal MCM10,MCM11,MCM12,MCM13,add_out1,add_out2,add_out3 : signed(15 downto 0) := (others => '0');
signal MCM20,MCM21,MCM22,MCM23,add_out21,add_out22,add_out23 : signed(15 downto 0) := (others => '0');
signal Q1,Q2,Q3 : signed(15 downto 0) := (others => '0');
signal Q21,Q22,Q23 : signed(15 downto 0) := (others => '0');

begin
--filter coefficient initializations.
--H = [-2 -1 3 4].
H0 <= to_signed(-2,8);
H1 <= to_signed(-1,8);
H2 <= to_signed(3,8);
H3 <= to_signed(4,8);
--B = [-1 -2 4 3].
B0 <= to_signed(-1,8);
B1 <= to_signed(-2,8);
B2 <= to_signed(4,8);
B3 <= to_signed(3,8);

--Multiple constant multiplications.
MCM13 <= H3*Xin;
MCM12 <= H2*Xin;
MCM11 <= H1*Xin;
MCM10 <= H0*Xin;

MCM23 <= B3*Xin;
MCM22 <= B2*Xin;
MCM21 <= B1*Xin;
MCM20 <= B0*Xin;

--adders
add_out1 <= Q1 + MCM12;
add_out2 <= Q2 + MCM11;
add_out3 <= Q3 + MCM10;

add_out21 <= Q21 + MCM22;
add_out22 <= Q22 + MCM21;
add_out23 <= Q23 + MCM20;

--flipflops(for introducing a delay).
dff1 : DFF port map(Q1,Clk,MCM13);
dff2 : DFF port map(Q2,Clk,add_out1);
dff3 : DFF port map(Q3,Clk,add_out2);

dff4 : DFF port map(Q21,Clk,MCM23);
dff5 : DFF port map(Q22,Clk,add_out21);
dff6 : DFF port map(Q23,Clk,add_out22);

--an output produced at every positive edge of clock cycle.
process(Clk)
begin
    if(rising_edge(Clk)) then
        Yout <= add_out3 + add_out23;
    end if;
end process;


end Behavioral;




