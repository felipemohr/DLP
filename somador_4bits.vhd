
-- Entidades
entity somador_4bits is
    port(
        a, b : in  integer range 0 to 15;
        z    : out integer range 0 to 15
    );
end somador_4bits;

-- Arquitetura
architecture main of somador_4bits is
begin

    z <= a + b;

end main;
