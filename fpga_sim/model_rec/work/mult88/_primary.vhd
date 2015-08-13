library verilog;
use verilog.vl_types.all;
entity mult88 is
    port(
        clock0          : in     vl_logic;
        dataa_0         : in     vl_logic_vector(7 downto 0);
        dataa_1         : in     vl_logic_vector(7 downto 0);
        datab_0         : in     vl_logic_vector(8 downto 0);
        datab_1         : in     vl_logic_vector(8 downto 0);
        result          : out    vl_logic_vector(17 downto 0)
    );
end mult88;
