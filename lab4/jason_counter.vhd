----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:11:13 12/09/2018 
-- Design Name: 
-- Module Name:    jason_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jason_counter is
generic (i:integer := 2);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ls : in  STD_LOGIC;
           pin : in  STD_LOGIC_VECTOR (0 to 2 ** i - 1);
           pout : out  STD_LOGIC_VECTOR (0 to 2 ** i - 1));
end jason_counter;

architecture Behavioral of jason_counter is

signal sreg: std_logic_vector(0 to 2**i-1);
	signal sdat: std_logic_vector(0 to 2**i-1);
Begin
	Main: process (clk, rst, sdat)
	begin
		if rst = '1' then
			sreg <= (others => '0');
		elsif rising_edge(clk) then
			sreg <= sdat;
		end if;
	end process;
	
	Data: process (ls, pin, sreg)
	begin
		if ls = '0' then
			sdat <= pin;
		else
			sdat <= not(sreg(2**i-1)) & sreg(0 to 2**i-2);
		end if;
	end process;
	
	pout <= sreg;


end Behavioral;

