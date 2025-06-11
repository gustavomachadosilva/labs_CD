library verilog;
use verilog.vl_types.all;
entity E_dupla5_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end E_dupla5_vlg_sample_tst;
