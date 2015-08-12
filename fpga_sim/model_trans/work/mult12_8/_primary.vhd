library verilog;
use verilog.vl_types.all;
entity mult12_8 is
    port(
        clock           : in     vl_logic;
        dataa           : in     vl_logic_vector(11 downto 0);
        datab           : in     vl_logic_vector(7 downto 0);
        result          : out    vl_logic_vector(19 downto 0)
    );
end mult12_8;
