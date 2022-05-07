library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity sm_ex3 is
	port(
		clk	 : in std_logic;
		output : out std_logic
	);
end sm_ex3;


architecture behavior of sm_ex3 is

	type STATE_TYPE is (SA, SB, SC, SD, SE, SF, SG, SH);
	signal state : STATE_TYPE;
	
	begin
	process(clk)
		begin

		if (clk'EVENT AND clk = '1') then
			
			case state is
				when SA  =>
					state <= SB;
					output <= '0';
				when SB  =>
					state <= SC;
					output <= '1';
				when SC  =>
					state <= SD;
					output <= '1';
				when SD  =>
					state <= SE;
					output <= '1';
				when SE  =>
					state <= SF;
					output <= '1';
				when SF  => 
					state <= SG;
					output <= '1';
				when SG  => 
					state <= SH;
					output <= '1';
				when SH  => 
					state <= SA;
					output <= '0';
			end case;
					
		end if;
			
	end process;

end behavior;

