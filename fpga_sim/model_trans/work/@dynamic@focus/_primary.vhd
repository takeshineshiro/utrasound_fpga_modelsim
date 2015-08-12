library verilog;
use verilog.vl_types.all;
entity DynamicFocus is
    port(
        address         : in     vl_logic_vector(14 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end DynamicFocus;
