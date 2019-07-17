--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:14:27 04/10/2018
-- Design Name:   
-- Module Name:   D:/VHDL/iir_4tap/TB.vhd
-- Project Name:  iir_4tap
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: iir_4tap
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB IS
END TB;
 
ARCHITECTURE behavior OF TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT iir_4tap
    PORT(
         Clk : IN  std_logic;
         Xin : IN  signed(7 downto 0);
         Yout : OUT  signed(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Xin : signed(7 downto 0) := (others => '0');

 	--Outputs
   signal Yout : signed(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: iir_4tap PORT MAP (
          Clk => Clk,
          Xin => Xin,
          Yout => Yout
        );

  -- Clock process definitions
   Clk_process :process
   begin
        Clk <= '0';
        wait for Clk_period/2;
        Clk <= '1';
        wait for Clk_period/2;
   end process;
    
   -- Stimulus process
   stim_proc: process
   begin        
      wait for Clk_period*2;
        Xin <= to_signed(-3,8); wait for clk_period*1;
        Xin <= to_signed(1,8); wait for clk_period*1;
        Xin <= to_signed(0,8); wait for clk_period*1;
        Xin <= to_signed(-2,8); wait for clk_period*1;
        Xin <= to_signed(-1,8); wait for clk_period*1;
        Xin <= to_signed(4,8); wait for clk_period*1;
        Xin <= to_signed(-5,8); wait for clk_period*1;
        Xin <= to_signed(6,8); wait for clk_period*1;
        Xin <= to_signed(0,8);
        
      wait;
   end process;

END;