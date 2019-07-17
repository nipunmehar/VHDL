--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:55:56 04/04/2018
-- Design Name:   
-- Module Name:   E:/BT16ece_005_006/SR/SR_TB.vhd
-- Project Name:  SR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SR
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
 
ENTITY SR_TB IS
END SR_TB;
 
ARCHITECTURE behavior OF SR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         CLOCK : IN  std_logic;
         Q : OUT  std_logic;
         QBAR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal CLOCK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBAR : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR PORT MAP (
          S => S,
          R => R,
          CLOCK => CLOCK,
          Q => Q,
          QBAR => QBAR
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;
			S<='0';
			R<='0';
wait for 30 ns;
			S<='0';
			R<='1';
			wait for 30 ns;
			S<='1';
			R<='0';
			wait for 30 ns;
			S<='1';
			R<='1';
      

      -- insert stimulus here 

      wait for 30ns;
   end process;

END;
