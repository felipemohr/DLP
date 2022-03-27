
entity incrementador is
    port (
        data_in  : in  integer;
        data_out : out integer
    );
end incrementador;

architecture main of incrementador is

    constant valor : integer := 3;

begin

    data_out <= data_in + valor;

end main;
