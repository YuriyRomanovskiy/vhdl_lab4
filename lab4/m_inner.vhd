----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:58:04 12/11/2018 
-- Design Name: 
-- Module Name:    m_inner - Behavioral 
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

entity m_inner is
	 generic (
		 n : integer := 3;
		 init : std_logic_vector := "111");
    Port ( clk, rst: in std_logic;
           st: inout std_logic_vector(0 to n - 1);
           pout: out std_logic);
end m_inner;

architecture Behavioral of m_inner is

begin
process (clk, rst)
	begin
		if rst = '1' then
			st <= init;
		elsif rising_edge(clk) then
			st <= st(n - 1) & (st(0) xor st(2)) & st(1 to n - 2);
		end if;
	end process;
	pout <= st(n - 1);

end Behavioral;

