-- LIBRARY IEEE;
-- USE IEEE.std_logic_1164.all;

entity contador_1_digito is
	port(
		CLK   : in  bit;
		digit : out integer range 0 to 9
	);
end contador_1_digito;


architecture main of contador_1_digito is
begin

	count : process
		variable temp : integer range 0 to 10;
	begin
		wait until (clk'EVENT AND clk='1');
		temp := temp + 1;
		if (temp=10) then temp := 0;
		end if;
		digit <= temp;
	end process count;

end main;
