--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:51:56 03/28/2018
-- Design Name:   
-- Module Name:   E:/BT16ece_005_006/parity_generator/parity_generator_tb.vhd
-- Project Name:  parity_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: parity_generator
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
 
ENTITY parity_generator_tb IS
END parity_generator_tb;
 
ARCHITECTURE behavior OF parity_generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT parity_generator
    PORT(
         A : IN  std_logic_vector(8 downto 0);
         Y : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: parity_generator PORT MAP (
          A => A,
          Y => Y,
          Z => Z
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
A<= "001100110";
wait for 10 ns;
A<= "000100110";
wait for 10 ns;
A<= "001000110";
wait for 10 ns;
A<= "000100110";
wait for 10 ns;
A<= "000000110";
wait for 10 ns;



A<= "111100110";
wait for 10 ns;
A<= "110000110";

    wait for 10 ns;
	 wait;
   end process;

END;
