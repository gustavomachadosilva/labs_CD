library verilog;
use verilog.vl_types.all;
entity COD is
    port(
        V               : out    vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end COD;
