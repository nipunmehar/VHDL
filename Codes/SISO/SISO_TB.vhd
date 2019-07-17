--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:28:43 04/20/2018
-- Design Name:   
-- Module Name:   D:/VHDL/SISO/SISO_TB.vhd
-- Project Name:  SISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: siso_behavior
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
 
ENTITY SISO_TB IS
END SISO_TB;
 
ARCHITECTURE behavior OF SISO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT siso_behavior
    PORT(
         din : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal dout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: siso_behavior PORT MAP (
          din => din,
          clk => clk,
          reset => reset,
          dout => dout
        );

   -- Clock process definitions
stim_proc: process
begin
wait for 5ns; 
clk <= not clk; 
END PROCESS; 
PROCESS 
BEGIN 
din<='0'; 
din<= not din;
wait for 7ns;
reset <= '0';   
wait for 100ns; 
reset <= not reset; 
END PROCESS; 
END;
