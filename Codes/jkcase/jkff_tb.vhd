--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:42:55 03/23/2018
-- Design Name:   
-- Module Name:   D:/VHDL/jkcase/jkff_tb.vhd
-- Project Name:  jkcase
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jkcase
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
 
ENTITY jkff_tb IS
END jkff_tb;
 
ARCHITECTURE behavior OF jkff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jkcase
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         clock : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic;
         q_bar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic;
   signal k : std_logic; 
   signal clock : std_logic;
   signal reset : std_logic;

 	--Outputs
   signal q : std_logic;
   signal q_bar : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jkcase PORT MAP (
          j => j,
          k => k,
          clock => clock,
          reset => reset,
          q => q,
          q_bar => q_bar
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
   reset <= '1';  
	wait for 50 ns;  
   reset <= '0';  
	j <= '0';   
	k <= '1';   
	wait for 50 ns;      
	reset <= '0';   
	j <= '1';   
	k <= '0';   
	wait for 50 ns;     
	reset <= '0';  
	j <= '1';   
	k <= '1';  
	wait for 50 ns; 
	reset <= '0'; 
	j <= '0'; 
   k <= '0'; 
   wait;
   end process;

END;
