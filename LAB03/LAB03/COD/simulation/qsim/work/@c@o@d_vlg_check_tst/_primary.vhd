library verilog;
use verilog.vl_types.all;
entity COD_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(2 downto 0);
        V               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end COD_vlg_check_tst;
