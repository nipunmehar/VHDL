LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
ENTITY SIPO_TB IS
END SIPO_TB;
ARCHITECTURE behavior OF SIPO_TB IS 
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT SIPO
PORT(
din : IN std_logic;
clk : IN std_logic;
reset : IN std_logic;
dout : OUT std_logic_vector(7 downto 0)
);
END COMPONENT;
--Inputs
signal din : std_logic := '0';
signal clk : std_logic := '0';
signal reset : std_logic := '0';
--Outputs 
signal dout : std_logic_vector(7 downto 0);
-- Clock period definitions
constant clk_period : time := 10 ns;
BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: SIPO PORT MAP (
din => din,
clk => clk,
reset => reset,
dout => dout
);
-- Clock process definitions
--  clk_process :process
--  begin
--    clk <= '0';
--    wait for clk_period/2;
--    clk <= '1';
--    wait for clk_period/2;
--  end process;
---- Stimulus process
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