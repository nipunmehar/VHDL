--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:02:07 02/14/2018
-- Design Name:   
-- Module Name:   D:/VHDL/DECODER_38/DECODER_38_TB.vhd
-- Project Name:  DECODER_38
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECODER38
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
 
ENTITY DECODER_38_TB IS
END DECODER_38_TB;
 
ARCHITECTURE behavior OF DECODER_38_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECODER38
    PORT(
         ABC : IN  std_logic_vector(2 downto 0);
         D : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ABC : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal D : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECODER38 PORT MAP (
          ABC => ABC,
          D => D
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;
		ABC <= "000";

		wait for 20 ns;
		ABC <= "001";
		
		wait for 20 ns;
		ABC <= "010";

		wait for 20 ns;
		ABC <= "011";

		wait for 20 ns;
		ABC <= "100";


		wait for 20 ns;
		ABC <= "101";

		wait for 10 ns;
		ABC <= "110";

		wait for 20 ns;
		ABC <= "111";
		

      

      -- insert stimulus here 

   end process;

END;
