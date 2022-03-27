
entity somador_completo is

    port(
        A, B : in  bit;
        TE   : in  bit;
        S    : out bit;
        TS   : out bit
    );

end somador_completo;


architecture main of somador_completo is
begin

    S <= A xor B xor TE;
    TS <= (A and B) or (A and TE) or (B and TE);

end main;

