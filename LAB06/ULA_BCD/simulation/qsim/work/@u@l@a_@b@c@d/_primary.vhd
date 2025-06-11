library verilog;
use verilog.vl_types.all;
entity ULA_BCD is
    port(
        flag_N          : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Sel             : in     vl_logic_vector(1 downto 0);
        flag_Z          : out    vl_logic;
        S               : out    vl_logic_vector(6 downto 0)
    );
end ULA_BCD;
