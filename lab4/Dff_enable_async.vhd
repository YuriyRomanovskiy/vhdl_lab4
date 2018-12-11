----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:54:49 12/08/2018 
-- Design Name: 
-- Module Name:    Dff_enable_async - Behavioral 
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

entity Dff_enable_async is
    Port ( Clock : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Dff_enable_async;

architecture Behavioral of Dff_enable_async is
	signal t_q: std_logic;
begin

	process (Clock, Clear)
	begin
		if (Clear = '1') then
			t_q <= '0';
		elsif (Clock'event and Clock = '1') then
			if Enable = '1' then
				t_q <= D;
			end if;
		end if;
	end process;
	
	Q <= t_q;

end Behavioral;

