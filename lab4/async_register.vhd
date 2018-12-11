----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:36 12/08/2018 
-- Design Name: 
-- Module Name:    async_register - Behavioral 
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

entity async_register is
generic (n: integer := 5);
    Port ( 
				Din : std_logic_vector(n-1 downto 0);
				En : in  STD_LOGIC;
				Dout : out  std_logic_vector(n-1 downto 0));
end async_register;


architecture Struct of async_register is
	component d_enable_latch
		port (
			D, E : in std_logic;
			Q : out std_logic
			);
	end component;
	signal buf: std_logic_vector(n-1 downto 0);
Begin
	sch: for i in n-1 downto 0 generate
		U_J: d_enable_latch port map(Din(i), en, buf(i));
	end generate;
	Dout <= buf;
End Struct;


architecture Behavioral of async_register is
	signal buf: std_logic_vector(n-1 downto 0);
begin

	Main: process (Din, En)
	begin
		if (EN = '1')  then
			buf <= Din;
		end if;
	end process;
	Dout <= buf;

end Behavioral;

