library verilog;
use verilog.vl_types.all;
entity DEC_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end DEC_vlg_sample_tst;
