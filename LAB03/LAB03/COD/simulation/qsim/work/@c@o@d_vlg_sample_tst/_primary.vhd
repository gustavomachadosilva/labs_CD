library verilog;
use verilog.vl_types.all;
entity COD_vlg_sample_tst is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end COD_vlg_sample_tst;
