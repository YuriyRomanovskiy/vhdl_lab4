----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:00 12/08/2018 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
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

entity shift_register is
	 generic (N: integer:= 5);
    Port ( Din : in  STD_LOGIC;
           Se : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Dout : out  std_logic_vector(0 to n - 1));
end shift_register;


architecture Struct of shift_register is
	component Dff_enable_async is
		port (
			Clock: in std_logic;
			Enable: in std_logic;
			Clear: in std_logic;
			D: in std_logic;
			Q: out std_logic);
	end component;	  					   
	signal outS: std_logic_vector(N-1 downto 0);
begin			   
	U_0: Dff_enable_async port map(CLK, SE, RST, outS(0));
	
	SCH: for J in 1 to N-1 generate			
		U_J: Dff_enable_async port map (CLK,SE,RST,outS(J-1),outS(J));
	end generate;
	
	Dout <= outS;
end Struct;


architecture Behavioral of shift_register is
	signal sdat: std_logic_vector(0 to N-1);
	signal sreg: std_logic_vector(0 to n-1);
begin

	Main: process (CLK, RST, sdat)
	begin
		if RST = '1' then
			sreg <= (others => '0');
		elsif rising_edge(CLK) then
			sreg <= sdat;
		end if;
	end process;
	
	Data: process (sreg, SE)
	begin
		if (SE = '1') then
			sdat <= Din & sreg(0 to n - 2);
		end if;
		
	end process;
	
	Dout <= sreg;

end Behavioral;

