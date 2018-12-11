--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:31:24 12/12/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab4/sync_register_tb.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sync_register
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sync_register_tb IS
END sync_register_tb;
 
ARCHITECTURE behavior OF sync_register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sync_register
    PORT(
         Din : IN  std_logic_vector(3 downto 0);
         En : IN  std_logic;
         Clk : IN  std_logic;
         DOunt : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic_vector(3 downto 0) := (others => '0');
   signal En : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal DOunt : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sync_register PORT MAP (
          Din => Din,
          En => En,
          Clk => Clk,
          DOunt => DOunt
        );

	Clk <= not Clk after 10 ns;
	En <= not En after 20 ns;
	Din <= not Din after 40 ns;

END;
