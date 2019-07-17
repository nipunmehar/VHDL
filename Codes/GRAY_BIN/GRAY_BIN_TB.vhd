--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:05:16 03/28/2018
-- Design Name:   
-- Module Name:   D:/VHDL/GRAY_BIN/GRAY_BIN_TB.vhd
-- Project Name:  GRAY_BIN
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GRAY_BIN
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
USE ieee.std_logic_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY GRAY_BIN_TB IS
END GRAY_BIN_TB;
 
ARCHITECTURE behavior OF GRAY_BIN_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GRAY_BIN
    PORT(
         G : IN  std_logic_vector(3 downto 0);
         bin : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal G : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal bin : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GRAY_BIN PORT MAP (
          G => G,
          bin => bin
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
     	for i in 0 to 15 loop 
      wait for 100 ns;	
		G<=G + x"1";
		 end loop;

      wait;
   end process;

END;
