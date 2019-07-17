--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:16:47 03/27/2018
-- Design Name:   
-- Module Name:   D:/VHDL/BIN_GRAY/BIN_GRAY_TB.vhd
-- Project Name:  BIN_GRAY
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BIN_GRAY
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
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BIN_GRAY_TB IS
END BIN_GRAY_TB;
 
ARCHITECTURE behavior OF BIN_GRAY_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BIN_GRAY
    PORT(
         bin : IN  std_logic_vector(3 downto 0);
         G : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BIN_GRAY PORT MAP (
          bin => bin,
          G => G
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		for i in 0 to 15 loop 
      wait for 100 ns;	
		bin<=bin + x"1";
		 end loop;

      wait;
   end process;

END;
