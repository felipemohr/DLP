library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity sm_pwm is
	port(
		clk	  	 : in std_logic;
		baud		 : in integer range 0 to 7;	
		output 	 : out std_logic
	);
end sm_pwm;


architecture behavior of sm_pwm is

	type STATE_TYPE is (SA, SB, SC, SD, SE, SF, SG);
	signal state : STATE_TYPE;
	
	begin
	process(clk)
		begin

		if (clk'EVENT AND clk = '1') then
			
			case state is
				when SA  =>
					state <= SB;
					if (baud > 0) then output <= '1';
					else output <= '0';
					end if;
				when SB  =>
					state <= SC;
					if (baud > 1) then output <= '1';
					else output <= '0';
					end if;
				when SC  =>
					state <= SD;
					if (baud > 2) then output <= '1';
					else output <= '0';
					end if;
				when SD  =>
					state <= SE;
					if (baud > 3) then output <= '1';
					else output <= '0';
					end if;
				when SE  =>
					state <= SF;
					if (baud > 4) then output <= '1';
					else output <= '0';
					end if;
				when SF  => 
					state <= SG;
					if (baud > 5) then output <= '1';
					else output <= '0';
					end if;
				when SG  => 
					state <= SA;
					if (baud > 6) then output <= '1';
					else output <= '0';
					end if;
			end case;
					
		end if;
			
	end process;

end behavior;

