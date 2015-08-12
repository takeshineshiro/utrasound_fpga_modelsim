library verilog;
use verilog.vl_types.all;
entity mult30_9 is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(29 downto 0);
        datab           : in     vl_logic_vector(8 downto 0);
        result          : out    vl_logic_vector(38 downto 0)
    );
end mult30_9;
