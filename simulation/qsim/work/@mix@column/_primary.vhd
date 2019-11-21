library verilog;
use verilog.vl_types.all;
entity MixColumn is
    port(
        col_0           : in     vl_logic_vector(31 downto 0);
        new_col_0       : out    vl_logic_vector(31 downto 0)
    );
end MixColumn;
