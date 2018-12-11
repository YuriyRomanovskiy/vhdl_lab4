--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:16:38 12/09/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab4/jason_counter_tb.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jason_counter
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
 
ENTITY jason_counter_tb IS
END jason_counter_tb;
 
ARCHITECTURE behavior OF jason_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jason_counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ls : IN  std_logic;
         pin : IN  std_logic_vector(0 to 3);
         pout : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal ls : std_logic := '0';
   signal pin : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal pout : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jason_counter PORT MAP (
          clk => clk,
          rst => rst,
          ls => ls,
          pin => pin,
          pout => pout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		wait for CLK_Period;
		
		RST <= '0'; wait for CLK_Period;
		RST <= '1'; wait for 2*CLK_Period;
		RST <= '0'; wait for CLK_Period;
		
		PIn <= "1111"; wait for CLK_Period;
		LS <= '1'; wait for 8*CLK_period;
	
   end process;

END;
