
entity multiplexador_4_1 is
    port(
        D0, D1, D2, D3  : in  bit;
        S0, S1          : in  bit;
        Y               : out bit
    );
end multiplexador_4_1;

architecture main of multiplexador_4_1 is

    signal sel : bit_vector(1 downto 0) := "00";

begin

    sel <= S1 & S0;

    Y   <= D0 when sel = "00" else
           D1 when sel = "01" else
           D2 when sel = "10" else
           D3;

end main;
