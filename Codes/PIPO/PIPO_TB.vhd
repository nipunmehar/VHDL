--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:59:33 04/20/2018
-- Design Name:   
-- Module Name:   D:/VHDL/PIPO/PIPO_TB.vhd
-- Project Name:  PIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pipo_behavior
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PIPO_TB IS
END PIPO_TB;
 
ARCHITECTURE behavior OF PIPO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pipo_behavior
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         din : IN  std_logic_vector(3 downto 0);
         dout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal din : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pipo_behavior PORT MAP (
          clk => clk,
          reset => reset,
          din => din,
          dout => dout
        );

stim_proc: process
begin
wait for 5ns; 
clk <= not clk; 
END PROCESS; 
PROCESS 
BEGIN
din<="0000"; 
for i in 0 to 15 loop
din<=din+x"1";

wait for 7ns;
end loop;
reset <= '0';   
wait for 100ns; 
reset <= not reset; 
END PROCESS; 
END;