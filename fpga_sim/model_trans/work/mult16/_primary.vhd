library verilog;
use verilog.vl_types.all;
entity mult16 is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(15 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end mult16;
