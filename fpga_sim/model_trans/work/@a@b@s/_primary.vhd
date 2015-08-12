library verilog;
use verilog.vl_types.all;
entity \ABS\ is
    port(
        data            : in     vl_logic_vector(29 downto 0);
        result          : out    vl_logic_vector(29 downto 0)
    );
end \ABS\;
