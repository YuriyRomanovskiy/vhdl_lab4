--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:36:20 12/12/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab4/shift_register_tb.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_register
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
 
ENTITY shift_register_tb IS
END shift_register_tb;
 
ARCHITECTURE behavior OF shift_register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_register
    PORT(
         Din : IN  std_logic;
         Se : IN  std_logic;
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Dout : OUT  std_logic_vector(0 to 4)
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic := '0';
   signal Se : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '1';

 	--Outputs
   signal Dout : std_logic_vector(0 to 4);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register PORT MAP (
          Din => Din,
          Se => Se,
          Clk => Clk,
          Rst => Rst,
          Dout => Dout
        );

	Clk <= not Clk after 10 ns;
	Din <= not Din after 20 ns;
	Se <= not Se after 40 ns;
	Rst <= not Rst after 80 ns;

END;
