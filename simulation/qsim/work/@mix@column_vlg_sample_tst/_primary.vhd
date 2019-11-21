library verilog;
use verilog.vl_types.all;
entity MixColumn_vlg_sample_tst is
    port(
        col_0           : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end MixColumn_vlg_sample_tst;
