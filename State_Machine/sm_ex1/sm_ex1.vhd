library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity sm_ex1 is
	port(
		clk	: in std_logic;
		reset	: in std_logic;
		count : out integer range 0 to 5
	);
end sm_ex1;


architecture behavior of sm_ex1 is

	type STATE_TYPE is (SA, SB, SC, SD, SE, SF);
	signal state : STATE_TYPE;
	
	begin
	process(clk, reset)
		begin
		if reset = '1' then
			state <= SA;
			count <= 0;
			
		elsif (clk'EVENT AND clk = '1') then
			
			case state is
				when SA => 
					state <= SB;
					count <= 0;
				when SB  =>
					state <= SC;
					count <= 1;
				when SC  =>
					state <= SD;
					count <= 2;
				when SD  =>
					state <= SE;
					count <= 3;
				when SE  =>
					state <= SF;
					count <= 4;
				when SF  =>
					state <= SA;
					count <= 5;
					
			end case;
					
		end if;
			
	end process;

end behavior;

