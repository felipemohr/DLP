
-- Entidade
entity somador_4bits is
	port(
		A, B : in  integer range 0 to 15;
		Z	  : out integer range 0 to 15
	);
end somador_4bits;

-- Arquitetura
architecture main of somador_4bits is
begin
	Z <= A + B;
end main;
