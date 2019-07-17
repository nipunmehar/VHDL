--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:12:17 04/11/2018
-- Design Name:   
-- Module Name:   E:/BT16ece_005_006/mod10/mod10_tb.vhd
-- Project Name:  mod10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mod10
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mod10_tb IS
END mod10_tb;
 
ARCHITECTURE behavior OF mod10_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mod10
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mod10 PORT MAP (
          clk => clk,
          reset => reset,
          count => count
        );

   -- Clock process definitions
   stim_proc: process
begin
wait for 5ns;
clk <= not clk;
END PROCESS;
PROCESS
BEGIN
reset <= '1';
wait for 70ns;
reset <= not reset;
wait;
END PROCESS;
END;