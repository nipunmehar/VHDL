--------------------------------------------------------------------------------
-- Company:IIITN 
-- Engineer:Nipun Mehar
--
-- Create Date:   23:02:45 04/09/2018
-- Design Name:   
-- Module Name:   D:/VHDL/fir_4tap/tb.vhd
-- Project Name:  fir_4tap
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fir_4tap
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

ENTITY tb IS
END tb;

ARCHITECTURE behavior OF tb IS 

   signal Clk : std_logic := '0';
   signal Xin : signed(7 downto 0) := (others => '0');
   signal Yout : signed(15 downto 0) := (others => '0');
   constant Clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: entity work.fir_4tap PORT MAP (
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