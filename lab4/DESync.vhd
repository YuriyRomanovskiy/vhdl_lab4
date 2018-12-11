----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:42:23 12/08/2018 
-- Design Name: 
-- Module Name:    DESync - Behavioral 
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

entity DESync is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DESync;

architecture Behavioral of DESync is
	signal data : std_logic;
begin

	process (E, Clk) 
	begin
		if (E = '1') then	   	
			if (rising_edge(Clk)) then
				data <= D;	
			end if;
		end if;
	end process;
	Q <= data;

end Behavioral;

