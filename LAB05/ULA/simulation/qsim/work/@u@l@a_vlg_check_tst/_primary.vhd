library verilog;
use verilog.vl_types.all;
entity ULA_vlg_check_tst is
    port(
        flag_N          : in     vl_logic;
        flag_Z          : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ULA_vlg_check_tst;
