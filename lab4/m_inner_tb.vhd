--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:01:28 12/12/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab4/m_inner_tb.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: m_inner
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
 
ENTITY m_inner_tb IS
END m_inner_tb;
 
ARCHITECTURE behavior OF m_inner_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 constant n : integer := 3;
    COMPONENT m_inner
    PORT(
          clk : IN  std_logic;
         rst : IN  std_logic;
         st : INOUT  std_logic_vector(0 to n - 1);
         pout : OUT  std_logic
        );
    END COMPONENT;
    

    --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal st : std_logic_vector(0 to n - 1);

 	--Outputs
   signal pout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	uut: m_inner port map (
		 clk => clk,
          rst => rst,
          st => st,
          pout => pout
		);
	
	
	clk <= not clk after 10 ns;
	process_rst: process
	begin
		rst <= '1';
		wait for 10 ns;
		rst <= '0';
		wait for 240 ns;
	end process;
END;

