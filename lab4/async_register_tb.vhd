--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:21:48 12/12/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab4/async_register_tb.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: async_register
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
 
ENTITY async_register_tb IS
END async_register_tb;
 
ARCHITECTURE behavior OF async_register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	 constant n : integer := 5;
 
    COMPONENT async_register
    PORT(
         Din : IN  std_logic_vector(n - 1 downto 0);
         En : IN  std_logic;
         Dout : OUT  std_logic_vector(n - 1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic_vector(n - 1 downto 0) := (others => '0');
   signal En : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(n - 1 downto 0);
   
	constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: async_register PORT MAP (
          Din => Din,
          En => En,
          Dout => Dout
        );
		  
   Din <= Din + '1' after 10 ns;
	En <= not En after 20 ns;

END;
