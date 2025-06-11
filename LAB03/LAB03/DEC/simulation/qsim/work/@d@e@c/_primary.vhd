library verilog;
use verilog.vl_types.all;
entity DEC is
    port(
        S               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(2 downto 0)
    );
end DEC;
