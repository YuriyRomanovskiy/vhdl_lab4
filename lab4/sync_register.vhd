----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:58 12/08/2018 
-- Design Name: 
-- Module Name:    sync_register - Behavioral 
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

entity sync_register is
	 generic (n: integer := 4);
    Port ( 
				Din: in std_logic_vector(n-1 downto 0);
				En : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
           DOunt : out  std_logic_vector(n-1 downto 0));
end sync_register;


architecture Struct of sync_register is
	component DESync
		port (
			D, E, Clk : in std_logic;
			Q : out std_logic
			);
	end component;
	signal buf: std_logic_vector(n-1 downto 0);
Begin
	sch: for i in n-1 downto 0 generate
		U_J: DESync port map(Din(i), En, Clk, buf(i));
	end generate;
	DOunt <= buf;
End Struct;


architecture Behavioral of sync_register is
	signal reg: std_logic_vector(n-1 downto 0);
begin
	
	Main: process (Din, en, Clk)
	begin
		if en = '1' then
			if (rising_edge(Clk)) then
				reg <= Din;
			end if;
		end if;
	end process;
	DOunt <= reg;

end Behavioral;

