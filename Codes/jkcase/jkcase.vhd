----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:54 03/23/2018 
-- Design Name: 
-- Module Name:    jkcase - Behavioral 
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

entity jkcase is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q_bar : out  STD_LOGIC);
end jkcase;

architecture Behavioral of jkcase is


signal jk : std_logic_vector(1 downto 0); signal state : std_logic; 
 begin  
 jk <= j & k; 
 process(clock,reset) 
 begin   case(jk)is    
 when "00" => state <= state;    
 when "01" => state <= '0';   
 when "10" => state <= '1';   
 when "11" => state <= not state;    
 when others => state <= 'X';   
 end case;  end process;  
 q <= state; 
 q_bar <= not state; 
end;

