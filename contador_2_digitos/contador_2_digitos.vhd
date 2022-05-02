library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

ENTITY contador_2_digitos is
	port(
	-- para o somador BCD
		-- digit_1, digit_2 : IN bit_vector(3 downto 0);
		
	-- para o contador
		clk	 : in  std_logic;
		reset  : in  bit;
		count  : out integer range 0 to 100;
		digitU : out std_logic_vector(0 to 7);
		digitD : out std_logic_vector(0 to 7)
		
	);
END contador_2_digitos;


ARCHITECTURE behavior OF contador_2_digitos is
BEGIN
	count_process: process (clk, reset)
		VARIABLE temp : integer range 0 to 100;
		--        dezena   unidade
 		VARIABLE digit_1, digit_2 : std_logic_vector(3 downto 0);
	BEGIN
		if(reset = '1') then
			digit_1 := "0000";
			digit_2 := "0000";
			temp := 0;
		elsif falling_edge(clk) then
			-- Quando a unidade chega a 9 ela é zerada e se adiciona 1 a dezena
			if(digit_2 = "1001") then
				digit_2 := "0000";
				digit_1 := std_logic_vector(unsigned(digit_1) + "0001");
			-- soma 1 a unidade
			else
				digit_2 := std_logic_vector(unsigned(digit_2) + "0001");
			end if;
			
			-- converte o bcd para inteiro
			temp := to_integer(unsigned(digit_1)*10 + unsigned(digit_2));
			if(temp = 100) then
				digit_1 := "0000";
				digit_2 := "0000";
				temp := 0;
			end if;
		end if;
		
		case digit_1 is
			when "0000" => digitD <= "01111110";
			when "0001" => digitD <= "00110000";
			when "0010" => digitD <= "01101101";
			when "0011" => digitD <= "01111001";
			when "0100" => digitD <= "00110011"; 
			when "0101" => digitD <= "01011011";
			when "0110" => digitD <= "01011111";
			when "0111" => digitD <= "01110000";
			when "1000" => digitD <= "01111111";
			when "1001" => digitD <= "01111011";
			when others => digitD <= "00000000";
		end case;
		
		case digit_2 is
			when "0000" => digitU <= "01111110";
			when "0001" => digitU <= "00110000";
			when "0010" => digitU <= "01101101";
			when "0011" => digitU <= "01111001";
			when "0100" => digitU <= "00110011"; 
			when "0101" => digitU <= "01011011";
			when "0110" => digitU <= "01011111";
			when "0111" => digitU <= "01110000";
			when "1000" => digitU <= "01111111";
			when "1001" => digitU <= "01111011";
			when others => digitU <= "00000000";
		end case;

		count <= temp;
	END process;

END behavior;
