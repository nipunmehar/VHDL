--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:42:25 04/20/2018
-- Design Name:   
-- Module Name:   D:/VHDL/PISO/PISO_TB.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: parallel_in_serial_out
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
use ieee.std_logic_unsigned.all;
 
ENTITY PISO_TB IS
END PISO_TB;
 
ARCHITECTURE behavior OF PISO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT parallel_in_serial_out
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
        
         din : IN  std_logic_vector(3 downto 0);
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   
   signal din : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: parallel_in_serial_out PORT MAP (
          clk => clk,
          reset => reset,
       
          din => din,
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
din<="0000"; 
for i in 0 to 15 loop
din<=din+x"1";

wait for 7ns;
end loop;
reset <= '0';   
wait for 100ns; 
reset <= not reset; 
END PROCESS; 



END;
