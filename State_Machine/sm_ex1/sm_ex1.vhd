library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity dlp_test is
	port(
		clk	: in std_logic;
		reset	: in std_logic;
		state_leds : out std_logic_vector(0 to 5);
		digit 	  : out std_logic_vector(0 to 6)
	);
end dlp_test;


architecture behavior of dlp_test is

	type STATE_TYPE is (SA, SB, SC, SD, SE, SF);
	signal state : STATE_TYPE;
	
	begin
	process(clk, reset)
		begin
		if reset = '0' then
			state <= SA;
			state_leds <= "100000";
			digit <= "0000001";
			
		elsif (clk'EVENT AND clk = '0') then
			
			case state is
				when SA  =>
					state <= SB;
					state_leds <= "010000";
					digit <= "1001111";
				when SB  =>
					state <= SC;
					state_leds <= "001000";
					digit <= "0010010";
				when SC  =>
					state <= SD;
					state_leds <= "000100";
					digit <= "0000110";
				when SD  =>
					state <= SE;
					state_leds <= "000010";
					digit <= "1001100";
				when SE  =>
					state <= SF;
					state_leds <= "000001";
					digit <= "0100100";
				when SF  => 
					state <= SA;
					state_leds <= "100000";
					digit <= "0000001";
			end case;
					
		end if;
			
	end process;

end behavior;

